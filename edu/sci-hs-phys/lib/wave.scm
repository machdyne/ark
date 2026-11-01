; sci-hs-phys, part 2 (energy, momentum and waves): figure procedures, prefix wv-.
; Units: the figure's 320 x 240, y down; angles in degrees.

; a hatched surface from x0 to x1 at y: the hatching above (ceiling, up=#t) or below
(define (wv-surface x0 x1 y up)
  (line x0 y x1 y 'ink 2)
  (for-range 0 (floor (/ (- x1 x0) 10))
    (lambda (i)
      (let ((x (+ x0 (* i 10))))
        (line x (if up (- y 6) (+ y 6)) (+ x 6) y 'ink 1)))))

; a hatched wall at x from y0 to y1, hatched on its left
(define (wv-wall x y0 y1)
  (line x y0 x y1 'ink 2)
  (for-range 0 (floor (/ (- y1 y0) 10))
    (lambda (i) (line (- x 6) (+ y0 (* i 10) 6) x (+ y0 (* i 10)) 'ink 1))))

; the angle (degrees) of a swing of amplitude a0 and period T at time t
(define (wv-swing a0 T t) (* a0 (cos (/ (* 2 pi t) T))))

; a pendulum hung at (cx cy): string len units at angle a from the vertical
(define (wv-pendulum cx cy len a r role)
  (let* ((d (deg->rad a)) (bx (+ cx (* len (sin d)))) (by (+ cy (* len (cos d)))))
    (line cx cy bx by 'ink 1.2)
    (circle bx by r role)
    (ring bx by r 'ink 1)))

; a zigzag spring at height y from x0 to x1, n coils
(define (wv-spring x0 x1 y n)
  (let* ((a (+ x0 8)) (b (- x1 8)) (s (/ (- b a) (* 2 n))))
    (let loop ((i (* 2 n)) (pts (list x1 y)))
      (if (< i 0)
          (path (cons x0 (cons y pts)) 'ink 1.5)
          (loop (- i 1)
                (cons (+ a (* i s))
                      (cons (if (or (= i 0) (= i (* 2 n))) y (if (odd? i) (- y 9) (+ y 9))) pts)))))))

; a block with its words in the middle
(define (wv-block x y w h role s)
  (rect x y w h role)
  (frame x y w h 'ink 1.5)
  (if s (begin (rect (- (+ x (/ w 2)) (* 4 (string-length s)) 1) (+ y (/ h 2) -7) (+ 2 (* 8 (string-length s))) 13 'paper)
               (text (+ x (/ w 2)) (+ y (/ h 2) 4) s 'centre 'small))))

; a cart on a track at y: left edge x, width w, with words
(define (wv-cart x y w role s)
  (wv-block x (- y 26) w 18 role s)
  (circle (+ x 9) (- y 5) 5 'ink)
  (circle (+ x w -9) (- y 5) 5 'ink))

; one point of a sine wave y = yc - A sin(2 pi ((x - x0)/lam - ph))
(define (wv-y x x0 yc A lam ph)
  (- yc (* A (sin (* 2 pi (- (/ (- x x0) lam) ph))))))

; that wave as a path from x0 to x1, n segments
(define (wv-wave x0 x1 yc A lam ph n role w)
  (let ((dx (/ (- x1 x0) n)))
    (let loop ((i n) (pts '()))
      (if (< i 0)
          (path pts role w)
          (let ((x (+ x0 (* i dx))))
            (loop (- i 1) (cons x (cons (wv-y x x0 yc A lam ph) pts))))))))

; energy bars on a baseline y: items ((name value role) ...), h units for `most`
(define (wv-bars x y h most items)
  (line (- x 4) y (+ x (* 38 (length items))) y 'ink 1.5)
  (let loop ((l items) (i 0))
    (if (pair? l)
        (let* ((it (car l)) (v (cadr it)) (bh (* h (/ (max v 0) most))) (bx (+ x (* i 38))))
          (if (> bh 0.5) (begin (rect bx (- y bh) 30 bh (caddr it)) (frame bx (- y bh) 30 bh 'ink 1)))
          (text (+ bx 15) (+ y 13) (car it) 'centre 'small)
          (text (+ bx 15) (- y bh 4) (fmt v 0) 'centre 'tiny)
          (loop (cdr l) (+ i 1))))))

; an arrow from (x y), len units long, at deg degrees (0 right, 90 up)
(define (wv-dir x y len deg role w)
  (let ((d (deg->rad deg)))
    (arrow x y (+ x (* len (cos d))) (- y (* len (sin d))) role w)))

; a velocity arrow over a cart: v in m/s, s units per m/s, from x at height y
(define (wv-varrow x y v s role)
  (if (> (abs v) 0.01)
      (arrow x y (+ x (* v s)) y role 2)
      (text x (+ y 4) "at rest" 'centre 'tiny)))

; the angle of refraction for incidence a from n1 into n2, or #f past the critical angle
(define (wv-snell n1 n2 a)
  (let ((s (* (/ n1 n2) (sin (deg->rad a)))))
    (if (> s 1) #f (rad->deg (asin s)))))

; a ray from a point on a boundary at (x y): angle a from the normal,
; drawn going up-left into the point (in), or leaving down-right or up-right
(define (wv-ray-in x y a len role)
  (let ((d (deg->rad a)))
    (arrow (- x (* len (sin d))) (- y (* len (cos d))) x y role 1.5)))
(define (wv-ray-out x y a len down role)
  (let ((d (deg->rad a)))
    (arrow x y (+ x (* len (sin d))) (if down (+ y (* len (cos d))) (- y (* len (cos d)))) role 1.5)))

; wavefronts from a source moving right at vs from x0, wave speed v, one front
; every T seconds; the last n fronts at time t (units per second)
(define (wv-fronts x0 y vs v T t n)
  (let ((k (floor (/ t T))))
    (for-range 0 n
      (lambda (i)
        (let ((te (* T (- k i))))
          (if (>= te 0)
              (ring (+ x0 (* vs te)) y (* v (- t te)) 'ink 1)))))))
