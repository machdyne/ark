; math-4, part 4 (measurement and geometry): prefix m4p4-.
; Angles in degrees, 0 to the right, counter-clockwise; y down.

; the point at distance r from cx cy in direction a
(define (m4p4-px cx cy r a) (+ cx (* r (cos (deg->rad a)))))
(define (m4p4-py cx cy r a) (- cy (* r (sin (deg->rad a)))))

; a ray from cx cy, len long, in direction a
(define (m4p4-ray cx cy len a)
  (arrow cx cy (m4p4-px cx cy len a) (m4p4-py cx cy len a) 'ink 2))

; an angle: rays at a0 and a1, a dot at the vertex, its arc and label (or #f)
(define (m4p4-angle cx cy len a0 a1 lab)
  (m4p4-ray cx cy len a0)
  (m4p4-ray cx cy len a1)
  (dot cx cy)
  (if lab (angle-mark cx cy 26 a0 a1 lab) (arc cx cy 22 a0 a1 'ink 1)))

; the small square of a right angle at cx cy, between directions a and a+90
(define (m4p4-right cx cy a)
  (let ((x1 (m4p4-px cx cy 11 a)) (y1 (m4p4-py cx cy 11 a))
        (x2 (m4p4-px cx cy 11 (+ a 90))) (y2 (m4p4-py cx cy 11 (+ a 90))))
    (path (list x1 y1 (+ x1 (- x2 cx)) (+ y1 (- y2 cy)) x2 y2) 'ink 1)))

; a half-circle protractor, center cx cy, radius r: ticks every 5 degrees,
; numbers every 10 on both scales (outer from the left, inner from the right)
(define (m4p4-prot cx cy r)
  (wedge cx cy r 0 180 'paper)
  (arc cx cy r 0 180 'ink 1.5)
  (line (- cx r) cy (+ cx r) cy 'ink 1.5)
  (line cx cy cx (- cy 8) 'ink 1)
  (for-range 0 37
    (lambda (k)
      (let* ((a (* k 5)) (c (cos (deg->rad a))) (s (sin (deg->rad a)))
             (t (if (even? k) 12 6)))
        (line (+ cx (* r c)) (- cy (* r s)) (+ cx (* (- r t) c)) (- cy (* (- r t) s)) 'ink 1)
        (if (even? k)
            (let* ((p (deg->rad (clamp a 6 174))) (c (cos p)) (s (sin p)))
              (text (+ cx (* (- r 19) c)) (- (+ cy 4) (* (- r 19) s)) (- 180 a) 'centre 'tiny)
              (text (+ cx (* (- r 33) c)) (- (+ cy 4) (* (- r 33) s)) a 'centre 'tiny)))))))

; a ruler from x y, len inches, px units an inch, marks every 1/8 inch
(define (m4p4-ruler8 x y len px)
  (rect x y (* len px) 36 'paper)
  (frame x y (* len px) 36 'ink 1)
  (for-range 0 (+ (* len 8) 1)
    (lambda (k)
      (let ((xx (+ x (* k (/ px 8)))) (m (modulo k 8)))
        (line xx y xx (+ y (cond ((= m 0) 16) ((= m 4) 12) ((even? m) 9) (else 5))) 'ink 1)
        (if (= m 0) (text (clamp xx (+ x 5) (- (+ x (* len px)) 5)) (+ y 30) (fmt (/ k 8) 0) 'centre 'small))))))

; a line plot from 0 to n/b: labels as fractions (whole numbers plain),
; counts (one for each mark from 0) of X stacked above
(define (m4p4-lab k b)
  (let ((w (quotient k b)) (r (modulo k b)))
    (cond ((= r 0) (fmt w 0))
          (else (let loop ((n r) (d b))
                  (if (and (even? n) (even? d)) (loop (/ n 2) (/ d 2))
                      (string-append (if (> w 0) (string-append (fmt w 0) " ") "") (fmt n 0) "/" (fmt d 0))))))))

(define (m4p4-plot x0 x1 y a c b counts)
  (line (- x0 8) y (+ x1 8) y 'ink 1.5)
  (let loop ((k a) (l counts))
    (if (<= k c)
        (let ((x (lerp x0 x1 (/ (- k a) (- c a)))))
          (line x (- y 5) x (+ y 5) 'ink 1)
          (math x (+ y 24) (m4p4-lab k b) 13)
          (if (pair? l)
              (for-range 0 (car l)
                (lambda (i)
                  (let ((yy (- y 14 (* i 14))))
                    (line (- x 5) (- yy 5) (+ x 5) (+ yy 5) 'ink 2)
                    (line (- x 5) (+ yy 5) (+ x 5) (- yy 5) 'ink 2)))))
          (loop (+ k 1) (if (pair? l) (cdr l) l))))))

; a closed outline through x y x y ..., filled with role (or #f)
(define (m4p4-shape pts role)
  (if role (poly pts role))
  (path (append pts (list (car pts) (cadr pts))) 'ink 2))

; a dashed fold line from x0 y0 to x1 y1
(define (m4p4-fold x0 y0 x1 y1)
  (line x0 y0 x1 y1 'cool 2))

; a two-column table: a title row, then rows of two strings
(define (m4p4-table x y w rows)
  (let loop ((l rows) (yy y) (i 0))
    (if (pair? l)
        (begin
          (frame x yy w 24 'ink 1)
          (frame (+ x (/ w 2)) yy (/ w 2) 24 'ink 1)
          (text (+ x (/ w 4)) (+ yy 17) (car (car l)) 'centre 'small (if (= i 0) 'bold 'small))
          (text (+ x (* 3 (/ w 4))) (+ yy 17) (cadr (car l)) 'centre 'small (if (= i 0) 'bold 'small))
          (loop (cdr l) (+ yy 24) (+ i 1))))))
