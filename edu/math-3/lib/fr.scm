; Grade 3 Math, part 2 (fractions): figure procedures. Prefix fr-.

; "k/b" as a string, for (math ...)
(define (fr-s k b) (string-append (fmt k 0) "/" (fmt b 0)))

; k/b as a mixed number in lowest terms: "1", "1 1/2", "3/4"
(define (fr-mixed k b)
  (let* ((w (quotient k b)) (r (modulo k b)) (g (gcd r b)))
    (cond ((= r 0) (fmt w 0))
          ((= w 0) (fr-s (/ r g) (/ b g)))
          (else (string-append (fmt w 0) " " (fr-s (/ r g) (/ b g)))))))

; a closed outline through x y x y ...
(define (fr-edge pts) (path (append pts (list (car pts) (cadr pts))) 'ink 1))

; polygons (lists of x y ...) in order; the first `shaded` filled with role
(define (fr-polys ps shaded role)
  (let loop ((l ps) (i 0))
    (if (pair? l)
        (begin (if (< i shaded) (poly (car l) role)) (loop (cdr l) (+ i 1)))))
  (for-each (lambda (p) (path (append p (list (car p) (cadr p))) 'paper 3)) ps)
  (for-each fr-edge ps))

; a w x h box cut at the given places (0 to 1 across, or down if down
; is #t): equal or unequal parts. (fr-cuts 40 60 200 50 '(0.3 0.7) 1 'warm #f)
(define (fr-cuts x y w h cuts shaded role down)
  (let loop ((c (append cuts '(1))) (a 0) (acc '()))
    (if (pair? c)
        (let ((b (car c)))
          (loop (cdr c) b
                (cons (if down
                          (list x (+ y (* a h)) (+ x w) (+ y (* a h)) (+ x w) (+ y (* b h)) x (+ y (* b h)))
                          (list (+ x (* a w)) y (+ x (* b w)) y (+ x (* b w)) (+ y h) (+ x (* a w)) (+ y h)))
                      acc)))
        (fr-polys (reverse acc) shaded role))))

; n equal places 1/n, 2/n ... (n-1)/n, for fr-cuts
(define (fr-even n) (let loop ((i (- n 1)) (acc '())) (if (< i 1) acc (loop (- i 1) (cons (/ i n) acc)))))

; a square of side s cut into n equal parts:
; kind 'grid (2 rows) or 'tri (triangles from the middle; n = 2, 4 or 8)
(define (fr-square x y s n kind shaded role)
  (let* ((m (/ s 2)) (cx (+ x m)) (cy (+ y m)) (r (+ x s)) (b (+ y s)))
    (fr-polys
      (cond ((eq? kind 'grid)
             (let ((c (/ n 2)) (acc '()))
               (for-range 0 n
                 (lambda (i)
                   (let* ((x0 (+ x (* (/ s c) (modulo i c)))) (x1 (+ x0 (/ s c)))
                          (y0 (+ y (* m (quotient i c)))) (y1 (+ y0 m)))
                     (set! acc (cons (list x0 y0 x1 y0 x1 y1 x0 y1) acc)))))
               (reverse acc)))
            ((= n 2) (list (list x y r y x b) (list r y r b x b)))
            (else
             (let* ((p (if (= n 4) (list x y r y r b x b x y)
                           (list x y cx y r y r cy r b cx b x b x cy x y)))
                    (acc '()))
               (let loop ((q p))
                 (if (pair? (cddr q))
                     (begin (set! acc (cons (list cx cy (car q) (cadr q) (caddr q) (cadddr q)) acc))
                            (loop (cddr q)))))
               (reverse acc))))
      shaded role)
    (frame x y s s 'ink 1.5)))

; a circle cut at the given places (0 to 1 of a turn, clockwise from the
; top): unequal parts. The first `shaded` filled.
(define (fr-pie cx cy r cuts shaded role)
  (let loop ((c (append cuts '(1))) (a 0) (i 0))
    (if (pair? c)
        (begin
          (if (< i shaded) (wedge cx cy r (- 90 (* 360 a)) (- 90 (* 360 (car c))) role))
          (loop (cdr c) (car c) (+ i 1)))))
  (ring cx cy r 'ink 1.5)
  (for-each (lambda (a)
              (let ((d (deg->rad (- 90 (* 360 a)))))
                (line cx cy (+ cx (* r (cos d))) (- cy (* r (sin d))) 'ink 1)))
            (cons 0 cuts)))

; "1/b" written in each part of a bar
(define (fr-names x y w h b)
  (for-range 0 b
    (lambda (i) (math (+ x (* (/ w b) (+ i 0.5))) (+ y (/ h 2)) (fr-s 1 b) 13))))

; a number line from 0 to w wholes, each cut into b equal parts.
; lab: 'whole (whole numbers), 'frac (k/b under every mark), 'none.
; It sets the line for nl-x, nl-mark and nl-jump.
(define (fr-line x0 x1 y w b lab)
  (set! %nl (list x0 x1 y 0 w))
  (line (- x0 8) y (+ x1 8) y 'ink 1.5)
  (for-range 0 (+ (* w b) 1)
    (lambda (k)
      (let ((x (lerp x0 x1 (/ k (* w b)))) (whole (= 0 (modulo k b))))
        (line x (- y (if whole 7 5)) x (+ y (if whole 7 5)) 'ink (if whole 2 1))
        (cond ((eq? lab 'frac) (math x (+ y 26) (fr-s k b) 15))
              ((and whole (eq? lab 'whole)) (text x (+ y 22) (fmt (/ k b) 0) 'centre 'body)))))))

; a point at k/b with its fraction above it
(define (fr-point k b role)
  (circle (nl-x (/ k b)) (nl-y) 5 role)
  (ring (nl-x (/ k b)) (nl-y) 5 'ink 1)
  (math (nl-x (/ k b)) (- (nl-y) 26) (fr-s k b) 15))

; a ruler from (x, y), len inches, px units an inch, marks every 1/q inch
; (q = 2 or 4); the long marks are inches, then halves, then quarters
(define (fr-ruler x y len px q)
  (rect x y (* len px) 34 'paper)
  (frame x y (* len px) 34 'ink 1)
  (for-range 0 (+ (* len q) 1)
    (lambda (k)
      (let ((xx (+ x (* k (/ px q)))) (m (modulo k q)))
        (line xx y xx (+ y (cond ((= m 0) 14) ((= (* 2 m) q) 10) (else 6))) 'ink 1)
        (if (= m 0) (text (clamp xx (+ x 5) (- (+ x (* len px)) 5)) (+ y 29) (fmt (/ k q) 0) 'centre 'small))))))

; a line plot: marks every 1/b from a/b to c/b, labelled as mixed
; numbers, with counts (a list, one for each mark) of X stacked above
(define (fr-plot x0 x1 y a c b counts)
  (line (- x0 8) y (+ x1 8) y 'ink 1.5)
  (let loop ((k a) (l counts))
    (if (<= k c)
        (let ((x (lerp x0 x1 (/ (- k a) (- c a)))))
          (line x (- y 5) x (+ y 5) 'ink 1)
          (math x (+ y 24) (fr-mixed k b) 14)
          (if (pair? l)
              (for-range 0 (car l)
                (lambda (i)
                  (let ((yy (- y 16 (* i 15))))
                    (line (- x 5) (- yy 5) (+ x 5) (+ yy 5) 'ink 2)
                    (line (- x 5) (+ yy 5) (+ x 5) (- yy 5) 'ink 2)))))
          (loop (+ k 1) (if (pair? l) (cdr l) l))))))
