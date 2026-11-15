; Grade 4 Math, part 2 (factors, patterns, fractions): figure procedures.
; Prefix m4p2-. Units: the figure's 320 x 240, y down.

; "k/b" as a string, for (math ...)
(define (m4p2-s k b) (string-append (fmt k 0) "/" (fmt b 0)))

; a hundred chart: 1 to 100 in rows of 10, cells s units, from (x, y).
; (mark n) gives 'ring, 'cross or #f for each number.
(define (m4p2-hundred x y s mark)
  (grid x y 10 10 s)
  (for-range 1 101
    (lambda (n)
      (let* ((cx (+ x (* s (modulo (- n 1) 10)) (/ s 2)))
             (cy (+ y (* s (quotient (- n 1) 10)) (/ s 2)))
             (m (mark n)) (d (* s 0.42)))
        (text cx (+ cy 4) (fmt n 0) 'centre (if (= n 100) 'tiny 'small))
        (cond ((eq? m 'ring) (ring cx cy (* s 0.46) 'ink 1.5))
              ((eq? m 'cross) (line (- cx d) (+ cy d) (+ cx d) (- cy d) 'ink 1)))))))

; the hundred chart crossed out up to stage s (0 none, 1 the 2s ... 4 the 7s);
; at stage 4 every prime is ringed
(define (m4p2-hit n l)
  (and (pair? l) (or (and (> n (car l)) (= 0 (modulo n (car l)))) (m4p2-hit n (cdr l)))))
(define (m4p2-sieve s)
  (let ((ps (list-tail '(7 5 3 2) (- 4 s))))
    (m4p2-hundred 50 6 22
      (lambda (n)
        (cond ((= s 0) #f) ((= n 1) 'cross) ((memv n ps) 'ring)
              ((m4p2-hit n ps) 'cross) ((= s 4) 'ring) (else #f))))))

; a w x h rectangle cut into b columns, the first a shaded, then cut
; across into n rows (n = 1: none): a/b = (n x a)/(n x b)
(define (m4p2-area x y w h a b n role)
  (let ((sw (* w (/ a b))))
    (if (> a 0) (rect x y sw h role))
    (for-range 1 n
      (lambda (j)
        (let ((yj (+ y (* h (/ j n)))))
          (if (> a 0) (line (+ x 1) yj (+ x sw -1) yj 'paper 3))
          (line x yj (+ x w) yj 'ink 1))))
    (for-range 1 b
      (lambda (i)
        (let ((xi (+ x (* w (/ i b)))))
          (if (<= i a) (line xi (+ y 1) xi (+ y h -1) 'paper 3))
          (line xi y xi (+ y h) 'ink 2))))
    (frame x y w h 'ink 2)))

; a bar in b parts, a shaded, with every part cut again into n:
; thin lines are the new cuts, thick ones the old
(define (m4p2-bar x y w h a b n role)
  (frac-bar-at x y w h (* b n) (* a n) role)
  (for-range 1 b
    (lambda (i)
      (let ((xi (+ x (* w (/ i b)))))
        (line xi (- y 3) xi (+ y h 3) 'ink 2.5)))))

; a number line from 0 to w wholes, each cut into b equal parts.
; lab: 'whole (whole numbers), 'frac (k/b under every mark), 'none.
; It sets the line for nl-x, nl-mark and nl-jump.
(define (m4p2-line x0 x1 y w b lab)
  (set! %nl (list x0 x1 y 0 w))
  (line (- x0 8) y (+ x1 8) y 'ink 1.5)
  (for-range 0 (+ (* w b) 1)
    (lambda (k)
      (let ((x (lerp x0 x1 (/ k (* w b)))) (whole (= 0 (modulo k b))))
        (line x (- y (if whole 7 5)) x (+ y (if whole 7 5)) 'ink (if whole 2 1))
        (cond ((eq? lab 'frac) (math x (+ y 24) (m4p2-s k b) 14))
              ((and whole (eq? lab 'whole))
               (text x (+ y 22) (fmt (/ k b) 0) 'centre 'body)))))))

; "1st", "2nd", "3rd", "4th" ... (up to 20)
(define (m4p2-th i)
  (string-append (fmt i 0) (cond ((= i 1) "st") ((= i 2) "nd") ((= i 3) "rd") (else "th"))))

; the terms of a pattern (a list) in boxes from y, each labelled with its
; place, and op ("+4") on an arc under each step
(define (m4p2-terms y l op)
  (let* ((n (length l)) (sl (/ 300 n)) (w (- sl 12)))
    (for-range 0 n
      (lambda (i)
        (let* ((x (+ 16 (* i sl))) (cx (+ x (/ w 2))))
          (frame x y w 32 'ink 1.5)
          (text cx (+ y 21) (fmt (list-ref l i) 0) 'centre (if (> w 34) 'body 'small) 'bold)
          (text cx (- y 6) (m4p2-th (+ i 1)) 'centre 'tiny)
          (if (< i (- n 1))
              (begin (arc (+ cx (/ sl 2)) (+ y 34) (/ sl 2) 180 360 'ink 1)
                     (text (+ cx (/ sl 2)) (+ y 34 (/ sl 2) 14) op 'centre 'small))))))))

; squares of side s at the cells ((col row) ...) from (x, y)
(define (m4p2-cells x y s cells role)
  (for-each
    (lambda (p)
      (let ((px (+ x (* s (car p)))) (py (+ y (* s (cadr p)))))
        (rect (+ px 3) (+ py 3) (- s 6) (- s 6) role)
        (frame px py s s 'ink 1)))
    cells))

; the cells of a block cols x rows, from column c0 and row r0
(define (m4p2-block c0 r0 cols rows)
  (let ((acc '()))
    (for-range 0 rows
      (lambda (r) (for-range 0 cols (lambda (c) (set! acc (cons (list (+ c0 c) (+ r0 r)) acc))))))
    acc))
