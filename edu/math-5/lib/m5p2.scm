; Grade 5 math, part 2 (decimal operations, expressions): figures.
; Every name starts with m5p2-. Units: 320 x 240, y down.

; 1.250 -> "1.25", 3.000 -> "3" (to thousandths)
(define (m5p2-n v)
 (let loop ((s (fmt v 3)))
  (let* ((k (string-length s)) (c (substring s (- k 1) k)))
   (cond ((string=? c "0") (loop (substring s 0 (- k 1))))
         ((string=? c ".") (substring s 0 (- k 1)))
         (else s)))))

; the cuts and frame of a 10 x 10 square, side 10s, paper under the cuts
(define (m5p2-cells x y s)
 (for-range 1 10 (lambda (i)
  (line (+ x (* i s)) y (+ x (* i s)) (+ y (* 10 s)) 'paper 3)
  (line x (+ y (* i s)) (+ x (* 10 s)) (+ y (* i s)) 'paper 3)))
 (grid x y 10 10 s)
 (frame x y (* 10 s) (* 10 s) 'ink 2))

; shade hundredths i0 .. i1-1 of a 10 x 10 square, down each column
(define (m5p2-span x y s i0 i1 role)
 (for-range 0 10 (lambda (c)
  (let ((a (max i0 (* 10 c))) (b (min i1 (+ 10 (* 10 c)))))
   (if (> b a) (rect (+ x (* c s)) (+ y (* (- a (* 10 c)) s)) s (* (- b a) s) role))))))

; a 10 x 10 square, its first n hundredths shaded, whole columns first
(define (m5p2-hund x y s n role) (m5p2-span x y s 0 n role) (m5p2-cells x y s))

; the first a hundredths in r1, the next b in r2
(define (m5p2-hund2 x y s a b r1 r2)
 (m5p2-span x y s 0 a r1) (m5p2-span x y s a (+ a b) r2) (m5p2-cells x y s))

; a tenths (columns, cool) times b tenths (rows, good): the overlap,
; a x b hundredths, warm
(define (m5p2-times x y s a b)
 (if (> a 0) (rect x y (* a s) (* 10 s) 'cool))
 (if (> b 0) (rect x y (* 10 s) (* b s) 'good))
 (if (and (> a 0) (> b 0)) (rect x y (* a s) (* b s) 'warm))
 (m5p2-cells x y s))

; the characters of s, the last at rx, 20 apart
(define (m5p2-digits s rx y size)
 (let ((m (string-length s)))
  (for-range 0 m (lambda (i)
   (label (- rx (* 20 (- m 1 i))) y (substring s i (+ i 1)) size 'bold)))))

; numbers in columns (strings, lined up by their last character, "."
; a column of its own), op, a line, the answer; carry: small strings
; over the columns, the last over the last column
(define (m5p2-column rx y rows op answer carry)
 (let ((n (apply max (map string-length (cons answer rows)))) (k (length rows)))
  (let loop ((c (reverse carry)) (x rx))
   (if (pair? c) (begin (label x (- y 22) (car c) 'small) (loop (cdr c) (- x 20)))))
  (for-range 0 k (lambda (i) (m5p2-digits (list-ref rows i) rx (+ y (* 26 i)) 'big)))
  (label (- rx (* 20 n) 2) (+ y (* 26 (- k 1))) op 'big)
  (line (- rx (* 20 n) 10) (+ y (* 26 k) -16) (+ rx 10) (+ y (* 26 k) -16) 'ink 2)
  (m5p2-digits answer rx (+ y (* 26 k) 8) 'big)))

; a number line from a to b in n equal steps, a label every e steps
(define (m5p2-line x0 x1 y a b n e)
 (set! %nl (list x0 x1 y a b))
 (line (- x0 6) y (+ x1 6) y 'ink 1.5)
 (for-range 0 (+ n 1) (lambda (k)
  (let ((x (lerp x0 x1 (/ k n))) (big (= 0 (modulo k e))))
   (line x (- y (if big 6 3)) x (+ y (if big 6 3)) 'ink 1)
   (if big (text x (+ y 18) (m5p2-n (+ a (* k (/ (- b a) n)))) 'centre 'small))))))

; area model: cols and rows are the parts of the factors (numbers);
; each part w or h in proportion, but 40 at least; products shown
(define (m5p2-sizes vals len)
 (let* ((s (apply + vals)) (n (length vals))
        (p (not (memv #t (map (lambda (v) (< (/ (* len v) s) 40)) vals)))))
  (cons p (map (lambda (v) (if p (/ (* len v) s) (+ 40 (/ (* (- len (* 40 n)) v) s)))) vals))))
(define (m5p2-area x y w h cols rows show)
 (let ((cs (m5p2-sizes cols w)) (rs (m5p2-sizes rows h)))
  (let cl ((c cols) (cw (cdr cs)) (cx x) (j 0))
   (if (pair? c)
    (let ((mx (+ cx (/ (car cw) 2))))
     (label mx (- y 6) (m5p2-n (car c)) 'body 'bold)
     (let rl ((r rows) (rh (cdr rs)) (ry y))
      (if (pair? r)
       (let ((my (+ ry (/ (car rh) 2) 5)))
        (frame cx ry (car cw) (car rh) 'ink 1.5)
        (if (= j 0) (text (- x 6) my (m5p2-n (car r)) 'right 'body 'bold))
        (label mx my (if show (m5p2-n (* (car c) (car r))) "?") 'small)
        (rl (cdr r) (cdr rh) (+ ry (car rh))))))
     (cl (cdr c) (cdr cw) (+ cx (car cw)) (+ j 1)))))
  (if (not (and (car cs) (car rs))) (caption "not to scale"))))

; a bar w x h in n equal parts, each labelled, a brace-like line over it
; labelled total ("" for none)
(define (m5p2-tape x y w h n each total)
 (frame x y w h 'ink 1.5)
 (for-range 0 n (lambda (i)
  (if (> i 0) (line (+ x (/ (* w i) n)) y (+ x (/ (* w i) n)) (+ y h) 'ink 1))
  (label (+ x (/ (* w (+ i 0.5)) n)) (+ y (/ h 2) 5) each 'small)))
 (if (> (string-length total) 0)
  (begin (path (list x (- y 4) x (- y 10) (+ x w) (- y 10) (+ x w) (- y 4)) 'ink 1)
   (label (+ x (/ w 2)) (- y 14) total 'small 'bold))))
