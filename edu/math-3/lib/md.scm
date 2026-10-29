; Grade 3 math, part 1 (multiplication and division): figures.
; Every name starts with md-.

; k dots inside a circle of radius r at (cx, cy), in rows of up to 4
(define (md-dots cx cy k r role)
  (let* ((c (if (<= k 1) 1 (if (<= k 4) 2 (if (<= k 9) 3 4))))
         (rows (ceiling (/ k c)))
         (g (* r (if (> c 3) 0.42 0.5)))
         (x0 (- cx (* g (/ (- c 1) 2))))
         (y0 (- cy (* g (/ (- rows 1) 2)))))
    (for-range 0 k
      (lambda (i)
        (circle (+ x0 (* g (modulo i c))) (+ y0 (* g (quotient i c))) (* g 0.34) role)))))

; n equal groups of k dots: circles of radius r from (x, y), `per` to a line
(define (md-groups x y n k r per role)
  (for-range 0 n
    (lambda (i)
      (let ((cx (+ x r (* (modulo i per) (+ r r 8))))
            (cy (+ y r (* (quotient i per) (+ r r 8)))))
        (ring cx cy r 'ink 1.5)
        (md-dots cx cy k r role)))))

; a tape diagram: a bar w x h at (x, y) in n equal parts, each part
; labelled `each`, and a bracket over it labelled `total`
(define (md-tape x y w h n each total)
  (frame x y w h 'ink 1.5)
  (for-range 1 n
    (lambda (i) (let ((xi (+ x (/ (* w i) n)))) (line xi y xi (+ y h) 'ink 1))))
  (for-range 0 n
    (lambda (i) (label (+ x (/ (* w (+ i 0.5)) n)) (+ y (/ h 2) 5) each 'small)))
  (line x (- y 10) (+ x w) (- y 10) 'ink 1)
  (line x (- y 15) x (- y 5) 'ink 1)
  (line (+ x w) (- y 15) (+ x w) (- y 5) 'ink 1)
  (label (+ x (/ w 2)) (- y 16) total 'body 'bold))

; a tape of n parts with only `shaded` parts filled (a part picked out)
(define (md-tape-shade x y w h n shaded role)
  (for-range 0 shaded
    (lambda (i) (rect (+ x (/ (* w i) n)) y (/ w n) h role))))

; "+3" or "-3"
(define (md-sign k)
  (if (< k 0) (string-append "-" (fmt (- k) 0)) (string-append "+" (fmt k 0))))

; n jumps of k on the last number line, from `from`
(define (md-jumps from n k role)
  (for-range 0 n
    (lambda (i)
      (nl-jump (+ from (* i k)) (+ from (* (+ i 1) k)) role (md-sign k)))))

; "4 + 4 + 4": k added n times
(define (md-adds k n)
  (let loop ((i 1) (s (fmt k 0)))
    (if (>= i n) s (loop (+ i 1) (string-append s " + " (fmt k 0))))))

; a multiplication table from 0 or 1 (lo) to n, cells `size` units,
; with row hr and column hc framed (0 or less: none) and their cell
; filled. Products hidden where show is #f, except row hr and column hc.
(define (md-table x y lo n size hr hc show)
  (let* ((m (+ (- n lo) 2))
         (sz (if (< size 18) 'tiny 'small))
         (dy (if (< size 18) 4 5)))
    (frame x y (* m size) (* m size) 'ink 1)
    (line (+ x size) y (+ x size) (+ y (* m size)) 'ink 1.5)
    (line x (+ y size) (+ x (* m size)) (+ y size) 'ink 1.5)
    (label (+ x (/ size 2)) (+ y (/ size 2) dy) "x" sz)
    (for-range lo (+ n 1)
      (lambda (a)
        (let ((px (+ x (* size (+ 1.5 (- a lo)))))
              (py (+ y (* size (+ 1.5 (- a lo))))))
          (label px (+ y (/ size 2) dy) (fmt a 0) sz)
          (label (+ x (/ size 2)) (+ py dy) (fmt a 0) sz))))
    (for-range lo (+ n 1)
      (lambda (r)
        (for-range lo (+ n 1)
          (lambda (c)
            (let ((cx (+ x (* size (+ 1.5 (- c lo)))))
                  (cy (+ y (* size (+ 1.5 (- r lo))))))
              (if (and (= r hr) (= c hc))
                  (rect (- cx (/ size 2)) (- cy (/ size 2)) size size 'ink))
              (if (or show (= r hr) (= c hc))
                  (label cx (+ cy dy) (fmt (* r c) 0) sz
                         (if (and (= r hr) (= c hc)) 'paper 'ink))))))))
    (if (>= hr lo)
        (frame x (+ y (* size (+ 1 (- hr lo)))) (* m size) size 'ink 2.5))
    (if (>= hc lo)
        (frame (+ x (* size (+ 1 (- hc lo)))) y size (* m size) 'ink 2.5))))

; big place-value blocks, u units a cube: h hundreds (10 x 10), t tens
; (1 x 10), o ones (filled, in 2 columns)
(define (md-ten x y h t o u)
  (let* ((s (* 10 u)) (xt (+ x (* h (+ s 6)))) (xo (+ xt (* t (+ u 5)))))
    (for-range 0 h (lambda (i) (grid (+ x (* i (+ s 6))) y 10 10 u 'ink)))
    (for-range 0 t (lambda (i) (grid (+ xt (* i (+ u 5))) y 1 10 u 'ink)))
    (for-range 0 o
      (lambda (i) (rect (+ xo (* (+ u 3) (modulo i 2))) (+ y (* (+ u 3) (quotient i 2))) u u 'ink)))))

; a sum or difference written in columns, ones place at right edge rx:
; top, op ("+" or "-"), bottom, a rule, and the answer (a string, "" for none).
; carry: a string over the top number's digits, spaces where nothing.
(define (md-column rx y top op bottom answer carry)
  (let ((d 18))
    (define (digits s yy size)
      (let ((n (string-length s)))
        (for-range 0 n
          (lambda (i)
            (label (- rx (* d (- n 1 i))) yy (substring s i (+ i 1)) size)))))
    (digits carry (- y 22) 'small)
    (digits (fmt top 0) y 'big)
    (digits (fmt bottom 0) (+ y 28) 'big)
    (label (- rx (* d 4)) (+ y 28) op 'big)
    (line (- rx (* d 4.5)) (+ y 38) (+ rx 10) (+ y 38) 'ink 2)
    (digits answer (+ y 62) 'big)))
