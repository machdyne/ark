; sci-hs-phys, part 1 (mechanics): figure procedures, prefix mc-.
; Units: the figure's 320 x 240, y down; angles in degrees,
; counter-clockwise from the right, as in physics.

; x modulo m, for reals: a motion that repeats every m seconds
(define (mc-mod x m) (- x (* m (floor (/ x m)))))

; an arrow from (x, y), len units long at deg degrees, words at its tip
(define (mc-vec x y len deg role . lab)
  (let* ((d (deg->rad deg)) (c (cos d)) (s (sin d))
         (x1 (+ x (* len c))) (y1 (- y (* len s))))
    (if (> len 1) (arrow x y x1 y1 role 2.5))
    (if (pair? lab)
        (text (+ x1 (* (+ 8 (* 3.6 (string-length (car lab)) (abs c))) c))
              (+ (- y1 (* 11 s)) 4) (car lab) 'centre 'small))))

; a free-body diagram: a box at (cx, cy) and its forces, k units a
; newton, each (deg newtons "label"), all drawn from the box's center
(define (mc-fbd cx cy k forces)
  (rect (- cx 16) (- cy 16) 32 32 'paper)
  (frame (- cx 16) (- cy 16) 32 32 'ink 2)
  (let loop ((l forces))
    (if (pair? l)
        (let ((f (car l)))
          (mc-vec cx cy (* k (cadr f)) (car f) 'ink (caddr f))
          (loop (cdr l)))))
  (circle cx cy 2.5 'ink))

; the ground under a graph: a line at y = 0 from x0 to x1 (graph units)
(define (mc-ground x0 x1)
  (line (gx x0) (gy 0) (gx x1) (gy 0) 'ink 2)
  (let loop ((x (gx x0)))
    (if (< x (gx x1))
        (begin (line x (+ (gy 0) 7) (+ x 7) (gy 0) 'ink 1) (loop (+ x 14))))))

; a projectile launched at v0 m/s, deg degrees above level, from height
; h m, with g: when it comes down to y = 0
(define (mc-tland v0 deg g h)
  (let ((vy (* v0 (sin (deg->rad deg)))))
    (/ (+ vy (sqrt (+ (* vy vy) (* 2 g h)))) g)))

; where it is at time t, as (x y) in meters
(define (mc-at v0 deg g h t)
  (let ((d (deg->rad deg)))
    (list (* v0 (cos d) t) (- (+ h (* v0 (sin d) t)) (* 0.5 g t t)))))

; its path on the graph, from launch to the ground, in 30 pieces
(define (mc-path v0 deg g h role)
  (let ((T (mc-tland v0 deg g h)))
    (let loop ((i 30) (acc '()))
      (if (< i 0) (path acc role 1.5)
          (let ((p (mc-at v0 deg g h (* T (/ i 30)))))
            (loop (- i 1) (cons (gx (car p)) (cons (gy (cadr p)) acc))))))))

; the ball at time t (held on the ground after it lands)
(define (mc-ball v0 deg g h t role)
  (let ((p (mc-at v0 deg g h (min t (mc-tland v0 deg g h)))))
    (circle (gx (car p)) (gy (cadr p)) 5 role)
    (ring (gx (car p)) (gy (cadr p)) 5 'ink 1)
    p))

; a cart on a track: its middle at x, its wheels on y
(define (mc-cart x y role)
  (rect (- x 18) (- y 22) 36 15 role)
  (frame (- x 18) (- y 22) 36 15 'ink 1.5)
  (circle (- x 10) (- y 4) 4 'ink)
  (circle (+ x 10) (- y 4) 4 'ink))

; a slope rising to the right at deg from (x, y), w wide, and a block of
; side s a fraction f of the way up; returns the block's center (x y)
(define (mc-slope x y w deg f s role)
  (let* ((d (deg->rad deg)) (c (cos d)) (sn (sin d)) (L (/ w c))
         (bx (+ x (* f L c))) (by (- y (* f L sn)))
         (ux c) (uy (- sn)) (nx (- sn)) (ny (- c)))
    (path (list x y (+ x w) y (+ x w) (- y (* w (/ sn c))) x y) 'ink 2)
    (angle-mark x y 34 0 deg (string-append (fmt deg 0) "°"))
    (poly (list bx by (+ bx (* s ux)) (+ by (* s uy))
                (+ bx (* s ux) (* s nx)) (+ by (* s uy) (* s ny))
                (+ bx (* s nx)) (+ by (* s ny))) role)
    (path (list bx by (+ bx (* s ux)) (+ by (* s uy))
                (+ bx (* s ux) (* s nx)) (+ by (* s uy) (* s ny))
                (+ bx (* s nx)) (+ by (* s ny)) bx by) 'ink 1)
    (list (+ bx (* 0.5 s (+ ux nx))) (+ by (* 0.5 s (+ uy ny))))))

; an object on a circle of radius r about (cx, cy), at deg degrees,
; going counter-clockwise: its velocity (vlen units) and its
; acceleration toward the center (alen units), 0 for none
(define (mc-round cx cy r deg vlen alen role)
  (let* ((d (deg->rad deg)) (x (+ cx (* r (cos d)))) (y (- cy (* r (sin d)))))
    (if (> vlen 0) (mc-vec x y vlen (+ deg 90) 'ink "v"))
    (if (> alen 0) (mc-vec x y alen (+ deg 180) 'ink "a"))
    (circle x y 6 role)
    (ring x y 6 'ink 1)))

; a spring along y from x0 to x1, in n zigzags
(define (mc-spring x0 x1 y n)
  (let ((dx (/ (- x1 x0) (* 2 n))))
    (let loop ((i (* 2 n)) (acc (list x1 y)))
      (if (< i 0) (path acc 'ink 1.5)
          (loop (- i 1)
                (cons (+ x0 (* i dx))
                      (cons (if (or (= i 0) (= i (* 2 n))) y (+ y (if (odd? i) -8 8))) acc)))))))

; a planet: a disc with its name
(define (mc-planet cx cy r name)
  (circle cx cy r 'cool)
  (ring cx cy r 'ink 1.5)
  (if (> r 12) (text cx (+ cy 5) name 'centre 'small 'bold)))
