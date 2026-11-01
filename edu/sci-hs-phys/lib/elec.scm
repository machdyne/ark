; High School Physics, part 3: circuits, charges, magnets, nuclei.
; Every name starts el-. Units are the figure's 320 x 240, y down.

; a resistor from (x0,y0) to (x1,y1) as a zigzag; its label above
; (across) or to the right (upright)
(define (el-res x0 y0 x1 y1 lab)
  (let* ((dx (- x1 x0)) (dy (- y1 y0))
         (l (sqrt (+ (* dx dx) (* dy dy)))) (px (- (/ dy l))) (py (/ dx l)))
    (define (pt k)
      (let ((t (+ 0.2 (* k 0.1)))
            (o (if (or (= k 0) (= k 6)) 0 (if (odd? k) 6 -6))))
        (list (+ x0 (* dx t) (* px o)) (+ y0 (* dy t) (* py o)))))
    (path (append (list x0 y0) (pt 0) (pt 1) (pt 2) (pt 3) (pt 4) (pt 5) (pt 6)
                  (list x1 y1)) 'ink 1.5)
    (if (= dy 0)
        (text (/ (+ x0 x1) 2) (- y0 11) lab 'centre 'small)
        (text (+ x0 12) (+ (/ (+ y0 y1) 2) 4) lab 'small))))

; a battery, upright at x from y0 (+, the long plate) to y1
(define (el-cell x y0 y1 lab)
  (let ((m (/ (+ y0 y1) 2)))
    (line x y0 x (- m 4) 'ink 1.5)
    (line x (+ m 4) x y1 'ink 1.5)
    (line (- x 14) (- m 4) (+ x 14) (- m 4) 'ink 2)
    (line (- x 7) (+ m 4) (+ x 7) (+ m 4) 'ink 4)
    (text (- x 18) (- m 4) "+" 'small 'right)
    (text (+ x 18) (+ m 5) lab 'small)))

; a switch from (x0,y0) to (x1,y1): closed, its blade touches the far
; contact; open, it stands away from it
(define (el-switch x0 y0 x1 y1 closed)
  (let ((dx (- x1 x0)) (dy (- y1 y0)))
    (dot x0 y0) (dot x1 y1)
    (if closed (line x0 y0 x1 y1 'ink 2)
        (line x0 y0 (+ x0 (* 0.87 dx) (* 0.5 dy)) (- (+ y0 (* 0.87 dy)) (* 0.5 dx)) 'ink 2))))

; a lamp at (cx,cy): a circle with a cross. p is its power as a part of
; the brightest (0 to 1): no rays at 0 (dark), longer rays when brighter
(define (el-lamp cx cy p)
  (circle cx cy 12 'paper)
  (ring cx cy 12 'ink 1.5)
  (line (- cx 8) (- cy 8) (+ cx 8) (+ cy 8) 'ink 1)
  (line (- cx 8) (+ cy 8) (+ cx 8) (- cy 8) 'ink 1)
  (if (> p 0.004)
      (let ((r1 (+ 19 (* 14 (min p 1)))))
        (for-each (lambda (d)
                    (line (+ cx (* 16 (car d))) (+ cy (* 16 (cadr d)))
                          (+ cx (* r1 (car d))) (+ cy (* r1 (cadr d))) 'ink 1.5))
                  '((1 0) (-1 0) (0 1) (0 -1) (0.7 0.7) (-0.7 0.7) (0.7 -0.7) (-0.7 -0.7))))))

; a meter at (cx,cy): a circle with its letter, "A" or "V"
(define (el-meter cx cy s)
  (circle cx cy 11 'paper)
  (ring cx cy 11 'ink 1.5)
  (text cx (+ cy 5) s 'centre 'body 'bold))

; a capacitor across x0..x1 at y: two plates
(define (el-cap x0 x1 y lab)
  (let ((m (/ (+ x0 x1) 2)))
    (line x0 y (- m 4) y 'ink 1.5) (line (+ m 4) y x1 y 'ink 1.5)
    (line (- m 4) (- y 12) (- m 4) (+ y 12) 'ink 2.5)
    (line (+ m 4) (- y 12) (+ m 4) (+ y 12) 'ink 2.5)
    (text m (- y 17) lab 'centre 'small)))

; a charge: a disc with + (q > 0) or - (q < 0)
(define (el-charge cx cy q r)
  (circle cx cy r 'paper)
  (ring cx cy r 'ink 1.5)
  (text cx (+ cy (if (> r 9) 6 4)) (if (> q 0) "+" "-") 'centre (if (> r 9) 'big 'small) 'bold))

; n field lines of a lone point charge, from r0 to r1: out of a +, into a -
(define (el-radial cx cy q n r0 r1)
  (for-range 0 n
    (lambda (i)
      (let* ((a (/ (* 2 pi i) n)) (c (cos a)) (s (sin a)))
        (if (> q 0)
            (arrow (+ cx (* r0 c)) (+ cy (* r0 s)) (+ cx (* r1 c)) (+ cy (* r1 s)) 'ink 1)
            (arrow (+ cx (* r1 c)) (+ cy (* r1 s)) (+ cx (* r0 c)) (+ cy (* r0 s)) 'ink 1))))))

; a bar magnet centred at (cx,cy), w long: N on the left, or on the
; right if nr is true
(define (el-magnet cx cy w nr)
  (let ((x0 (- cx (/ w 2))) (h 26))
    (rect x0 (- cy (/ h 2)) (/ w 2) h (if nr 'paper 'grey))
    (rect cx (- cy (/ h 2)) (/ w 2) h (if nr 'grey 'paper))
    (frame x0 (- cy (/ h 2)) w h 'ink 1.5)
    (line cx (- cy (/ h 2)) cx (+ cy (/ h 2)) 'ink 1.5)
    (circle (+ x0 (/ w 4)) cy 9 'paper) (circle (+ cx (/ w 4)) cy 9 'paper)
    (text (+ x0 (/ w 4)) (+ cy 6) (if nr "S" "N") 'centre 'body 'bold)
    (text (+ cx (/ w 4)) (+ cy 6) (if nr "N" "S") 'centre 'body 'bold)))

; field lines outside a bar magnet w long at (cx,cy), N on the left (or
; on the right if nr): k loops above and below, from the N end round to
; the S end, arrows N to S
(define (el-maglines cx cy w k nr)
  (let ((a (/ w 2)) (dir (if nr -1 1)))
    (for-range 1 (+ k 1)
      (lambda (j)
        (let ((b (* j 24)))
          (for-each
            (lambda (sg)
              (let loop ((i 0) (pts '()))
                (if (<= i 12)
                    (let ((t (* pi (/ i 12))))
                      (loop (+ i 1) (append pts (list (- cx (* a (cos t)))
                                                      (- cy (* sg (+ (* 4 j) (* b (sin t)))))))))
                    (path pts 'ink 1)))
              (arrow (- cx (* dir 6)) (- cy (* sg (+ (* 4 j) b))) (+ cx (* dir 6)) (- cy (* sg (+ (* 4 j) b))) 'ink 1.5))
            '(1 -1)))))))

; a coil of n turns from x to x + w, h high, centred on y: one loop a turn
(define (el-coil x y w h n)
  (let ((d (/ w n)))
    (for-range 0 n
      (lambda (i)
        (let ((xc (+ x (* d (+ i 0.5)))))
          (let loop ((k 0) (pts '()))
            (if (<= k 12)
                (let ((t (* pi (/ k 6))))
                  (loop (+ k 1) (append pts (list (+ xc (* 0.45 d (cos t))) (+ y (* 0.5 h (sin t)))))))
                (path pts 'ink 1.5))))))))

; a point s along a w x h loop from its top-left corner, clockwise: (x y)
(define (el-loop-pt x y w h s)
  (let ((s (- s (* (+ w w h h) (floor (/ s (+ w w h h)))))))
    (cond ((< s w) (list (+ x s) y))
          ((< s (+ w h)) (list (+ x w) (+ y (- s w))))
          ((< s (+ w w h)) (list (- (+ x w) (- s w h)) (+ y h)))
          (else (list x (- (+ y h) (- s w w h)))))))

; a sample of rows x cols nuclei, `left` of them not yet decayed. Which
; ones have decayed is fixed (a shuffle by the place), so a frame
; depends only on how many: rows * cols must not be a multiple of 37.
(define (el-nuclei x y rows cols gap left)
  (let ((n (* rows cols)))
    (for-range 0 n
      (lambda (i)
        (let ((px (+ x (* gap (modulo i cols)))) (py (+ y (* gap (quotient i cols)))))
          (if (< (modulo (* i 37) n) left)
              (begin (circle px py (* gap 0.36) 'warm) (ring px py (* gap 0.36) 'ink 1))
              (ring px py (* gap 0.18) 'ink 1)))))))

; a number in scientific notation for (math ...): "6.63 * 10^-34"
(define (el-sci x d)
  (if (= x 0) "0"
      (let* ((e (floor (/ (log (abs x)) (log 10))))
             (m (/ x (exp (* e (log 10)))))
             (m2 (if (>= (abs (string->number (fmt m d))) 10) (/ m 10) m))
             (e2 (if (>= (abs (string->number (fmt m d))) 10) (+ e 1) e)))
        (string-append (fmt m2 d) " * 10^" (fmt e2 0)))))
