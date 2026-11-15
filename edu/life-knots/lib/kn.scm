; Knots -- ropes for figures (prefix kn-).
;
; A rope is a flat list of control points '(x0 y0 x1 y1 ...), from the
; standing end to the working end. It is drawn as a smooth curve: from
; the first point to the midpoint of the first leg, then round each
; inner point to the next midpoint, then to the last point. Each piece
; of the curve has a thick ink outline and a white middle, and is drawn
; over what came before, so a later part of the rope lies on top where
; it crosses an earlier one. Where the later part goes UNDER, (kn-over
; pts i) lays piece i (the curve round point i) back on top, so the
; under-strand shows broken at that crossing.

(define kn-w 6)
(define kn-m 3.5)

; one straight bit of rope; cap: an ink disc at its end (rounds a bend)
(define (kn-seg x0 y0 x1 y1 cap)
  (let* ((dx (- x1 x0)) (dy (- y1 y0)) (d (sqrt (+ (* dx dx) (* dy dy)))))
    (if (> d 0.01)
        (let* ((nx (/ (- dy) d)) (ny (/ dx d))
               (ax (* nx kn-w)) (ay (* ny kn-w)) (bx (* nx kn-m)) (by (* ny kn-m)))
          (poly (list (+ x0 ax) (+ y0 ay) (+ x1 ax) (+ y1 ay) (- x1 ax) (- y1 ay) (- x0 ax) (- y0 ay)) 'ink)
          (if cap (circle x1 y1 kn-w 'ink))
          (poly (list (+ x0 bx) (+ y0 by) (+ x1 bx) (+ y1 by) (- x1 bx) (- y1 by) (- x0 bx) (- y0 by)) 'paper)
          (circle x0 y0 kn-m 'paper)
          (circle x1 y1 kn-m 'paper)))))

; draw along a flat point list
(define (kn-run ps cap)
  (if (and (pair? ps) (pair? (cddr ps)))
      (begin (kn-seg (car ps) (cadr ps) (caddr ps) (car (cdddr ps)) cap)
             (kn-run (cddr ps) cap))))

(define (kn-x pts i) (list-ref pts (* 2 i)))
(define (kn-y pts i) (list-ref pts (+ 1 (* 2 i))))

; the points of piece i of a rope of n control points
(define (kn-piece pts n i)
  (cond ((< n 2) '())
        ((= n 2) (if (= i 0) (list (kn-x pts 0) (kn-y pts 0) (kn-x pts 1) (kn-y pts 1)) '()))
        ((= i 0) (list (kn-x pts 0) (kn-y pts 0)
                       (/ (+ (kn-x pts 0) (kn-x pts 1)) 2) (/ (+ (kn-y pts 0) (kn-y pts 1)) 2)))
        ((= i (- n 1)) (list (/ (+ (kn-x pts (- n 2)) (kn-x pts i)) 2) (/ (+ (kn-y pts (- n 2)) (kn-y pts i)) 2)
                             (kn-x pts i) (kn-y pts i)))
        (else
         (let* ((cx (kn-x pts i)) (cy (kn-y pts i))
                (ax (/ (+ (kn-x pts (- i 1)) cx) 2)) (ay (/ (+ (kn-y pts (- i 1)) cy) 2))
                (bx (/ (+ (kn-x pts (+ i 1)) cx) 2)) (by (/ (+ (kn-y pts (+ i 1)) cy) 2)))
           (let loop ((k 4) (acc '()))
             (if (< k 0) acc
                 (let* ((t (/ k 4)) (u (- 1 t))
                        (x (+ (* u u ax) (* 2 u t cx) (* t t bx)))
                        (y (+ (* u u ay) (* 2 u t cy) (* t t by))))
                   (loop (- k 1) (cons x (cons y acc))))))))))

; the rope through the first n control points
(define (kn-rope pts n)
  (if (> n 0) (circle (kn-x pts 0) (kn-y pts 0) kn-w 'ink))
  (for-range 0 n (lambda (i) (kn-run (kn-piece pts n i) #t))))

; lay piece i of the whole rope back on top
(define (kn-over pts i)
  (kn-run (kn-piece pts (/ (length pts) 2) i) #f))

; where the end goes next: a thin line through points a..b, with a head
(define (kn-guide pts a b)
  (if (< a b)
      (begin
        (for-range a (- b 1)
          (lambda (i) (line (kn-x pts i) (kn-y pts i) (kn-x pts (+ i 1)) (kn-y pts (+ i 1)) 'ink 1)))
        (arrow (kn-x pts (- b 1)) (kn-y pts (- b 1)) (kn-x pts b) (kn-y pts b) 'ink 1.2))))

; a knot tied in steps: stages lists the number of control points shown
; at each step; overs lists (i j): piece i on top once point j is shown.
; s is the step, from 1. The guide shows where the end goes next.
(define (kn-tie pts stages overs s)
  (let* ((n (list-ref stages (- s 1))))
    (kn-rope pts n)
    (for-each (lambda (o) (if (> n (cadr o)) (kn-over pts (car o)))) overs)
    (if (< s (length stages))
        (kn-guide pts (- n 1) (- (list-ref stages s) 1)))))

; two ropes: a drawn whole, b tied in steps over it; aovers (i j): piece
; i of a on top once point j of b is shown (where b passes under a)
(define (kn-tie2 a aovers b stages bovers s)
  (let ((n (list-ref stages (- s 1))))
    (kn-rope a (/ (length a) 2))
    (kn-tie b stages bovers s)
    (for-each (lambda (o) (if (> n (cadr o)) (kn-over a (car o)))) aovers)))
