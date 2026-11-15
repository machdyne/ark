; Grade 4 math, part 1: figures. Every name starts with m4p1-.

; 40306 -> "40,306"
(define (m4p1-num n)
 (let loop ((n (round n)) (s ""))
  (if (< n 1000) (string-append (fmt n 0) s)
   (let* ((q (floor (/ n 1000))) (r (- n (* q 1000))))
    (loop q (string-append "," (if (< r 10) "00" (if (< r 100) "0" "")) (fmt r 0) s))))))

; the digit of n in place k (0: ones)
(define (m4p1-digit n k)
 (let ((p (expt 10 k))) (- (floor (/ n p)) (* 10 (floor (/ n (* 10 p)))))))

; place-value chart at y: cols places (up to 6), n's digits, place hi framed
(define m4p1-heads '(("" "ones") ("" "tens") ("" "hundreds") ("" "thousands")
 ("ten" "thousands") ("hundred" "thousands")))
(define (m4p1-chart y n cols hi)
 (let* ((x0 (- 160 (* 25 cols))) (len (string-length (fmt n 0))))
  (frame x0 y (* 50 cols) 74 'ink 1.5)
  (line x0 (+ y 30) (+ x0 (* 50 cols)) (+ y 30) 'ink 1)
  (for-range 0 cols
   (lambda (i)
    (let* ((k (- cols 1 i)) (xi (+ x0 (* 50 i))) (cx (+ xi 25)) (h (list-ref m4p1-heads k)))
     (if (> i 0) (line xi y xi (+ y 74) 'ink (if (= k 2) 2.5 1)))
     (label cx (+ y 12) (car h) 'tiny)
     (label cx (+ y 24) (cadr h) 'tiny)
     (if (< k len) (label cx (+ y 62) (fmt (m4p1-digit n k) 0) 'big 'bold))
     (if (and (< k len) (= k 3)) (label (+ cx 13) (+ y 66) "," 'big 'bold))
     (if (= k hi) (frame xi y 50 74 'ink 3)))))))

; number line: a tick every step, a label with commas every `every`
(define (m4p1-nl x0 x1 y from to step every)
 (set! %nl (list x0 x1 y from to))
 (line (- x0 6) y (+ x1 6) y 'ink 1.5)
 (let loop ((v from))
  (if (<= v (+ to 0.001))
   (let ((x (nl-x v)) (b (near-whole? (/ (- v from) every))))
    (line x (- y (if b 6 3)) x (+ y (if b 6 3)) 'ink 1)
    (if b (text x (+ y 18) (m4p1-num v) 'centre 'small))
    (loop (+ v step))))))

; area model, cols x rows: to scale unless a part would be under 40 wide;
; the first k parts (by columns) show products; q: "?" over the others
(define (m4p1-sizes vals len)
 (let* ((s (apply + vals)) (n (length vals))
        (p (not (memv #t (map (lambda (v) (< (/ (* len v) s) 40)) vals)))))
  (cons p (map (lambda (v) (if p (/ (* len v) s) (+ 40 (/ (* (- len (* 40 n)) v) s)))) vals))))
(define (m4p1-area x y w h cols rows k q)
 (let* ((cs (m4p1-sizes cols w)) (rs (m4p1-sizes rows h)) (nr (length rows)))
  (let cl ((c cols) (cw (cdr cs)) (cx x) (j 0))
   (if (pair? c)
    (let ((mx (+ cx (/ (car cw) 2))))
     (label mx (- y 6) (if (and q (>= (* j nr) k)) "?" (m4p1-num (car c))) 'body 'bold)
     (let rl ((r rows) (rh (cdr rs)) (ry y) (i 0))
      (if (pair? r)
       (let ((my (+ ry (/ (car rh) 2) 5)))
        (frame cx ry (car cw) (car rh) 'ink 1.5)
        (if (= j 0) (text (- x 6) my (m4p1-num (car r)) 'right 'body 'bold))
        (if (< (+ (* j nr) i) k) (label mx my (m4p1-num (* (car c) (car r))) 'small))
        (rl (cdr r) (cdr rh) (+ ry (car rh)) (+ i 1)))))
     (cl (cdr c) (cdr cw) (+ cx (car cw)) (+ j 1)))))
  (if (not (and (car cs) (car rs))) (caption "not to scale"))))

; the digits of s, ones at rx, d apart, a comma after the thousands
(define (m4p1-digits s rx y d size b)
 (let ((m (string-length s)))
  (for-range 0 m
   (lambda (i)
    (label (- rx (* d (- m 1 i))) y (substring s i (+ i 1)) size b)
    (if (= i (- m 4)) (label (- rx (* d 2.5)) (+ y 3) "," size))))))

; top op bottom in columns, the answer so far; carry: strings over the
; columns, the last over the ones; with "-", a digit under one is crossed out
(define (m4p1-column rx y top op bottom answer carry)
 (let* ((ts (fmt top 0)) (bs (fmt bottom 0))
        (n (max (string-length ts) (string-length bs) (string-length answer))))
  (let loop ((c (reverse carry)) (x rx))
   (if (pair? c)
    (begin
     (if (> (string-length (car c)) 0)
      (begin (label x (- y 22) (car c) 'small)
       (if (string=? op "-") (line (- x 6) (+ y 1) (+ x 6) (- y 14) 'ink 1.5))))
     (loop (cdr c) (- x 18)))))
  (m4p1-digits ts rx y 18 'big 'ink)
  (m4p1-digits bs rx (+ y 28) 18 'big 'ink)
  (label (- rx (* 18 n)) (+ y 28) op 'big)
  (line (- rx (* 18 n) 9) (+ y 38) (+ rx 10) (+ y 38) 'ink 2)
  (m4p1-digits answer rx (+ y 62) 18 'big 'ink)))

; top x bottom, the first k partial products with notes, then their sum
(define (m4p1-partials rx y top bottom parts notes k)
 (let ((n (length parts)) (w (- rx 98)))
  (define (num v yy b) (m4p1-digits (fmt v 0) rx yy 16 'body b))
  (num top y 'ink)
  (num bottom (+ y 22) 'ink)
  (label (+ w 8) (+ y 22) "×" 'body)
  (line w (+ y 30) (+ rx 8) (+ y 30) 'ink 1.5)
  (for-range 0 (min k n)
   (lambda (i)
    (num (list-ref parts i) (+ y 50 (* 22 i)) 'ink)
    (text (+ rx 22) (+ y 50 (* 22 i)) (list-ref notes i) 'small)))
  (if (>= k n)
   (begin (line w (+ y 36 (* 22 n)) (+ rx 8) (+ y 36 (* 22 n)) 'ink 1.5)
    (num (apply + parts) (+ y 56 (* 22 n)) 'bold)))))

; n ÷ d by taking away groups: the first k steps, what is left after each
(define (m4p1-quot rx y n d steps k)
 (let loop ((s steps) (i 0) (left n) (yy y))
  (m4p1-digits (fmt left 0) rx yy 16 'body (if (= i k) 'bold 'ink))
  (if (and (pair? s) (< i k))
   (let ((t (* d (car s))))
    (m4p1-digits (fmt t 0) rx (+ yy 20) 16 'body 'ink)
    (label (- rx 70) (+ yy 20) "-" 'body)
    (text (+ rx 22) (+ yy 20) (string-append (fmt (car s) 0) " × " (fmt d 0)) 'small)
    (line (- rx 76) (+ yy 27) (+ rx 8) (+ yy 27) 'ink 1.5)
    (loop (cdr s) (+ i 1) (- left t) (+ yy 46))))))

; tape: w x h in n equal parts labelled `each`, a bracket labelled `total`
(define (m4p1-tape x y w h n each total)
 (frame x y w h 'ink 1.5)
 (for-range 0 n
  (lambda (i)
   (if (> i 0) (line (+ x (/ (* w i) n)) y (+ x (/ (* w i) n)) (+ y h) 'ink 1))
   (label (+ x (/ (* w (+ i 0.5)) n)) (+ y (/ h 2) 5) each 'small)))
 (if (> (string-length total) 0)
  (begin (path (list x (- y 4) x (- y 10) (+ x w) (- y 10) (+ x w) (- y 4)) 'ink 1)
   (label (+ x (/ w 2)) (- y 14) total 'small 'bold))))
