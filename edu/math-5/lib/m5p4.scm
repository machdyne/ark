; math-5, part 4 (measurement, volume, the plane, shapes): prefix m5p4-.
; Units are figure units, y down.

; oblique depth of one unit of an edge s long: right and up
(define (m5p4-dx s) (* 0.45 s))
(define (m5p4-dy s) (* 0.35 s))

; a box of l x w x h unit cubes, s units a cube, its front bottom left
; corner at x y: the front, top and right faces with their cube lines
(define (m5p4-box x y l w h s)
  (let* ((dx (m5p4-dx s)) (dy (m5p4-dy s)) (L (* l s)) (H (* h s))
         (X (+ x L)) (T (- y H)) (Dx (* w dx)) (Dy (* w dy)))
    (rect x T L H 'paper)
    (poly (list x T X T (+ X Dx) (- T Dy) (+ x Dx) (- T Dy)) 'paper)
    (poly (list X y X T (+ X Dx) (- T Dy) (+ X Dx) (- y Dy)) 'cool)
    (for-range 0 (+ l 1) (lambda (i) (let ((a (+ x (* i s))))
      (line a y a T 'ink 1) (line a T (+ a Dx) (- T Dy) 'ink 1))))
    (for-range 0 (+ h 1) (lambda (j) (let ((b (- y (* j s))))
      (line x b X b 'ink 1) (line X b (+ X Dx) (- b Dy) 'ink 1))))
    (for-range 1 (+ w 1) (lambda (k) (let ((a (* k dx)) (b (* k dy)))
      (line (+ x a) (- T b) (+ X a) (- T b) 'ink 1)
      (line (+ X a) (- y b) (+ X a) (- T b) 'ink 1))))))

; the outline of a box l x w x h (no cube lines), units of s
(define (m5p4-boxo x y l w h s)
  (let* ((Dx (* w (m5p4-dx s))) (Dy (* w (m5p4-dy s))) (X (+ x (* l s))) (T (- y (* h s))))
    (rect x T (* l s) (* h s) 'paper)
    (poly (list x T X T (+ X Dx) (- T Dy) (+ x Dx) (- T Dy)) 'paper)
    (poly (list X y X T (+ X Dx) (- T Dy) (+ X Dx) (- y Dy)) 'cool)
    (path (list x y X y X T x T x y) 'ink 2)
    (path (list x T (+ x Dx) (- T Dy) (+ X Dx) (- T Dy) (+ X Dx) (- y Dy) X y) 'ink 2)
    (line X T (+ X Dx) (- T Dy) 'ink 2)))

; one unit cube at column i, row-back k, level j of a stack whose
; front bottom left is x y; draw back rows first, then low to high, left to right
(define (m5p4-cube x y i k j s)
  (m5p4-box (+ x (* i s) (* k (m5p4-dx s))) (- y (* j s) (* k (m5p4-dy s))) 1 1 1 s))

; unit cubes from a list of (i k j), in that drawing order
(define (m5p4-cubes x y s l)
  (for-each (lambda (c) (m5p4-cube x y (car c) (cadr c) (caddr c) s)) l))

; a first-quadrant coordinate plane: left top, sz units a step (or a list:
; across, up), nx by ny, numbers every st, axis names xn yn
(define (m5p4-plane l t sz nx ny st xn yn)
  (if (pair? sz) (graph l t (* nx (car sz)) (* ny (cadr sz)) 0 nx 0 ny)
      (graph l t (* nx sz) (* ny sz) 0 nx 0 ny))
  (for-range 1 (+ nx 1) (lambda (i) (line (gx i) (gy 0) (gx i) (gy ny) 'grey 1)))
  (for-range 1 (+ ny 1) (lambda (j) (line (gx 0) (gy j) (gx nx) (gy j) 'grey 1)))
  (graph-axes st st xn yn)
  (text (- (gx 0) 5) (+ (gy 0) 13) "0" 'right 'tiny))

; a line plot label: k parts of b, as a fraction (whole numbers plain);
; b below 0: k parts of -b, not simplified
(define (m5p4-lab k b0)
  (let* ((b (abs b0)) (w (quotient k b)) (r (modulo k b)))
    (cond ((= r 0) (fmt w 0))
          ((< b0 0) (string-append (if (> w 0) (string-append (fmt w 0) " ") "") (fmt r 0) "/" (fmt b 0)))
          (else (let loop ((n r) (d b))
                  (if (and (even? n) (even? d)) (loop (/ n 2) (/ d 2))
                      (string-append (if (> w 0) (string-append (fmt w 0) " ") "") (fmt n 0) "/" (fmt d 0))))))))

; a line plot from a/b to c/b between x0 and x1 at y; counts of X from a
(define (m5p4-plot x0 x1 y a c b counts)
  (line (- x0 8) y (+ x1 8) y 'ink 1.5)
  (let loop ((k a) (l counts))
    (if (<= k c)
        (let ((x (lerp x0 x1 (/ (- k a) (- c a)))))
          (line x (- y 5) x (+ y 5) 'ink 1)
          (math x (+ y 24) (m5p4-lab k b) 13)
          (if (pair? l)
              (for-range 0 (car l)
                (lambda (i)
                  (let ((yy (- y 14 (* i 14))))
                    (line (- x 5) (- yy 5) (+ x 5) (+ yy 5) 'ink 2)
                    (line (- x 5) (+ yy 5) (+ x 5) (- yy 5) 'ink 2)))))
          (loop (+ k 1) (if (pair? l) (cdr l) l))))))

; the small square of a right angle at cx cy, between directions a and a+90
(define (m5p4-right cx cy a)
  (let* ((c (cos (deg->rad a))) (s (sin (deg->rad a)))
         (x1 (+ cx (* 11 c))) (y1 (- cy (* 11 s))) (x2 (+ cx (* -11 s))) (y2 (- cy (* 11 c))))
    (path (list x1 y1 (+ x1 (- x2 cx)) (+ y1 (- y2 cy)) x2 y2) 'ink 1)))

; a closed outline through x y x y ..., filled with role (or #f)
(define (m5p4-shape pts role)
  (if role (poly pts role))
  (path (append pts (list (car pts) (cadr pts))) 'ink 2))

; n tick marks across the middle of the side x0 y0 - x1 y1
(define (m5p4-tick x0 y0 x1 y1 n)
  (let* ((len (sqrt (+ (* (- x1 x0) (- x1 x0)) (* (- y1 y0) (- y1 y0)))))
         (ux (/ (- x1 x0) len)) (uy (/ (- y1 y0) len))
         (mx (/ (+ x0 x1) 2)) (my (/ (+ y0 y1) 2)))
    (for-range 0 n (lambda (i)
      (let ((cx (+ mx (* ux 4 (- (* 2 i) (- n 1))))) (cy (+ my (* uy 4 (- (* 2 i) (- n 1))))))
        (line (- cx (* 6 uy)) (+ cy (* 6 ux)) (+ cx (* 6 uy)) (- cy (* 6 ux)) 'ink 1.5))))))

; an arrow a third of the way along a side: parallel sides, same mark
(define (m5p4-par x0 y0 x1 y1)
  (let* ((dx (- x1 x0)) (dy (- y1 y0)) (d (/ (sqrt (+ (* dx dx) (* dy dy))) 7))
         (mx (+ x0 (* 0.3 dx))) (my (+ y0 (* 0.3 dy))))
    (arrow (- mx (/ dx d)) (- my (/ dy d)) (+ mx (/ dx d)) (+ my (/ dy d)) 'ink 1.5)))

; a named box of the hierarchy, centred at x y
(define (m5p4-node x y w s)
  (rect (- x (/ w 2)) (- y 11) w 22 'paper)
  (frame (- x (/ w 2)) (- y 11) w 22 'ink 1.5)
  (text x (+ y 4) s 'centre 'small))

; a table: a title row, then rows, each a list of strings; w a column
(define (m5p4-table x y w rows)
  (let loop ((l rows) (yy y) (i 0))
    (if (pair? l)
        (begin
          (let col ((c (car l)) (xx x))
            (if (pair? c)
                (begin
                  (frame xx yy w 22 'ink 1)
                  (text (+ xx (/ w 2)) (+ yy 16) (car c) 'centre 'small (if (= i 0) 'bold 'small))
                  (col (cdr c) (+ xx w)))))
          (loop (cdr l) (+ yy 22) (+ i 1))))))
