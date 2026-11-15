; Grade 4 Math, part 3 (adding fractions, decimals): figure procedures.
; Prefix m4p3-. Units: the figure's 320 x 240, y down.

; "k/b" as a string, for (math ...)
(define (m4p3-s k b) (string-append (fmt k 0) "/" (fmt b 0)))

; a number line from 0 to w wholes, each cut into b equal parts.
; lab: 'whole (whole numbers), 'frac (k/b under every mark), 'none.
; It sets the line for nl-x, nl-mark and nl-jump.
(define (m4p3-line x0 x1 y w b lab)
  (set! %nl (list x0 x1 y 0 w))
  (line (- x0 8) y (+ x1 8) y 'ink 1.5)
  (for-range 0 (+ (* w b) 1)
    (lambda (k)
      (let ((x (lerp x0 x1 (/ k (* w b)))) (whole (= 0 (modulo k b))))
        (line x (- y (if whole 7 5)) x (+ y (if whole 7 5)) 'ink (if whole 2 1))
        (cond ((eq? lab 'frac) (math x (+ y 24) (m4p3-s k b) 14))
              ((and whole (eq? lab 'whole))
               (text x (+ y 22) (fmt (/ k b) 0) 'centre 'body)))))))

; jumps of 1/b on the last line, from a/b, n of them, each labelled
; when there is room
(define (m4p3-jumps a n b role)
  (let ((wide (> (- (nl-x (/ 1 b)) (nl-x 0)) 28)))
    (for-range 0 n
      (lambda (i)
        (if wide
            (nl-jump (/ (+ a i) b) (/ (+ a i 1) b) role (m4p3-s 1 b))
            (nl-jump (/ (+ a i) b) (/ (+ a i 1) b) role))))))

; a 10 x 10 square, side 10s, from (x, y), its first n hundredths shaded,
; down whole columns first: each column is a tenth
(define (m4p3-hund x y s n role)
  (let ((c (quotient n 10)) (r (modulo n 10)))
    (if (> c 0) (rect x y (* c s) (* 10 s) role))
    (if (> r 0) (rect (+ x (* c s)) y s (* r s) role))
    ; paper under every cut, so the cells show through a dense fill
    (if (> n 0) (for-range 1 10 (lambda (i)
      (line (+ x (* i s)) y (+ x (* i s)) (+ y (* 10 s)) 'paper 3)
      (line x (+ y (* i s)) (+ x (* 10 s)) (+ y (* i s)) 'paper 3))))
    (grid x y 10 10 s)
    (frame x y (* 10 s) (* 10 s) 'ink 2)))

; a strip of 10 tenths, w x h, the first n shaded
(define (m4p3-tenths x y w h n role) (frac-bar-at x y w h 10 n role))

; a place chart from (x, y): ones . tenths hundredths, with the digits
; (strings, "" for none) in the boxes
(define (m4p3-place x y o t h)
  (let ((cols (list (list 0 64 "ones" o) (list 80 70 "tenths" t) (list 150 84 "hundredths" h))))
    (for-each
      (lambda (c)
        (let ((cx (+ x (car c) (/ (cadr c) 2))))
          (frame (+ x (car c)) y (cadr c) 60 'ink 1.5)
          (frame (+ x (car c)) y (cadr c) 22 'ink 1.5)
          (text cx (+ y 16) (caddr c) 'centre 'small)
          (text cx (+ y 52) (cadddr c) 'centre 'big 'bold)))
      cols)
    (circle (+ x 72) (+ y 50) 4 'ink)))

; a mixed number as bars: k parts of b in all, in bars w x h from (x, y),
; one bar a row, 8 units apart; whole bars full, the last part-shaded
(define (m4p3-wholes x y w h k b role)
  (let ((n (max 1 (quotient (+ k b -1) b))))
    (for-range 0 n
      (lambda (i)
        (frac-bar-at x (+ y (* i (+ h 8))) w h b (min b (- k (* i b))) role)))))

; n equal groups in a row from (x, y): bars of b parts, w x h, a shaded
; in each, a gap g between
(define (m4p3-groups x y w h n a b g role)
  (for-range 0 n
    (lambda (i) (frac-bar-at (+ x (* i (+ w g))) y w h b a role))))

; a ruler of 1 meter from x0 to x1 at y, marks every 5 cm, numbers
; every lab cm (10 or 50); a bar of c cm above it
(define (m4p3-meter x0 x1 y c lab role)
  (rect x0 (- y 26) (* (- x1 x0) (/ c 100)) 18 role)
  (frame x0 (- y 26) (* (- x1 x0) (/ c 100)) 18 'ink 1)
  (line x0 y x1 y 'ink 1.5)
  (for-range 0 101
    (lambda (k)
      (let ((x (lerp x0 x1 (/ k 100))) (m (modulo k 10)))
        (if (or (= m 0) (= m 5))
            (line x y x (+ y (if (= m 0) 10 6)) 'ink 1))
        (if (= 0 (modulo k lab)) (text x (+ y 24) (fmt k 0) 'centre 'small))))))
