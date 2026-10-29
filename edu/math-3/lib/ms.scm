; math-3, part 3 (measurement and geometry): figure procedures, prefix ms-.
; Units: the figure's 320 x 240, y down.

; a closed outline through x y x y ..., filled with role (or #f)
(define (ms-shape pts role)
  (if role (poly pts role))
  (path (append pts (list (car pts) (cadr pts))) 'ink 2))

; words beside the side x0 y0 - x1 y1, outside a shape listed clockwise
(define (ms-len x0 y0 x1 y1 s)
  (let* ((dx (- x1 x0)) (dy (- y1 y0)) (l (sqrt (+ (* dx dx) (* dy dy))))
         (o (+ 10 (* 3.5 (string-length s)))))
    (text (+ (/ (+ x0 x1) 2) (* o (/ dy l))) (+ (/ (+ y0 y1) 2) (* -12 (/ dx l)) 4) s 'centre 'small)))

; a polygon with a label (or #f) for each side, in order
(define (ms-poly pts labs role)
  (ms-shape pts role)
  (let loop ((p pts) (l labs))
    (if (and (pair? l) (pair? p))
        (let ((q (if (pair? (cddr p)) (cddr p) pts)))
          (if (car l) (ms-len (car p) (cadr p) (car q) (cadr q) (car l)))
          (loop (cddr p) (cdr l))))))

; the small square that marks a square corner at b, between a and c
(define (ms-corner ax ay bx by cx cy)
  (let* ((l1 (sqrt (+ (* (- ax bx) (- ax bx)) (* (- ay by) (- ay by)))))
         (l2 (sqrt (+ (* (- cx bx) (- cx bx)) (* (- cy by) (- cy by)))))
         (ux (* 9 (/ (- ax bx) l1))) (uy (* 9 (/ (- ay by) l1)))
         (vx (* 9 (/ (- cx bx) l2))) (vy (* 9 (/ (- cy by) l2))))
    (path (list (+ bx ux) (+ by uy) (+ bx ux vx) (+ by uy vy) (+ bx vx) (+ by vy)) 'ink 1)))

; unit squares: cols x rows, size units each, each filled with role (or #f)
(define (ms-tiles x y cols rows size role)
  (if role
      (for-range 0 rows
        (lambda (r)
          (for-range 0 cols
            (lambda (c) (rect (+ x (* c size) 2) (+ y (* r size) 2) (- size 4) (- size 4) role))))))
  (grid x y cols rows size))

; a rectangle with words on its top and left sides (or #f)
(define (ms-rect x y w h top left role)
  (if role (rect x y w h role))
  (frame x y w h 'ink 2)
  (if top (text (+ x (/ w 2)) (- y 6) top 'centre 'small))
  (if left (text (- x 6) (+ y (/ h 2) 4) left 'right 'small)))

; picture graph: rows of ("name" pictures), half pictures allowed; the key below
(define (ms-sym cx cy half)
  (if half
      (begin (wedge cx cy 9 90 270 'warm) (arc cx cy 9 90 270 'ink 1) (line cx (- cy 9) cx (+ cy 9) 'ink 1))
      (begin (circle cx cy 9 'warm) (ring cx cy 9 'ink 1))))

(define (ms-pgraph rows key)
  (let loop ((l rows) (y 36))
    (if (pair? l)
        (let ((n (cadr (car l))))
          (text 80 (+ y 4) (car (car l)) 'right 'small)
          (for-range 0 (ceiling n) (lambda (i) (ms-sym (+ 102 (* i 24)) y (< (- n i) 1))))
          (loop (cdr l) (+ y 32)))))
  (line 88 18 88 (+ 22 (* 32 (length rows))) 'ink 1)
  (frame 90 196 150 30 'ink 1)
  (ms-sym 108 211 #f)
  (text 124 215 key 'small))

; bar graph with a scale: items ("name" value), the scale to top counting by step
(define (ms-bars items top step role)
  (let ((w (/ 240 (length items))))
    (for-range 0 (+ 1 (/ top step))
      (lambda (k)
        (let ((y (- 200 (* 170 (/ (* k step) top)))))
          (if (> k 0) (line 50 y 292 y 'grey 1))
          (line 46 y 50 y 'ink 1)
          (text 42 (+ y 4) (* k step) 'right 'small))))
    (let loop ((l items) (i 0))
      (if (pair? l)
          (let ((h (* 170 (/ (cadr (car l)) top))) (x (+ 60 (* i w))))
            (if (> h 0) (rect x (- 200 h) (- w 20) h role))
            (frame x (- 200 h) (- w 20) h 'ink 1)
            (text (+ x (/ (- w 20) 2)) 216 (car (car l)) 'centre 'small)
            (loop (cdr l) (+ i 1)))))
    (line 50 200 292 200 'ink 1.5)
    (line 50 26 50 200 'ink 1.5)))

; a pan balance: things on the left and right pans (or #f); tilt -1 left down, 1 right down
(define (ms-pan x y s)
  (line x y (- x 40) (+ y 46) 'ink 1)
  (line x y (+ x 40) (+ y 46) 'ink 1)
  (line (- x 46) (+ y 46) (+ x 46) (+ y 46) 'ink 3)
  (if s (begin (rect (- x 34) (+ y 20) 68 25 'paper) (frame (- x 34) (+ y 20) 68 25 'ink 1)
               (text x (+ y 37) s 'centre 'small))))

(define (ms-balance l r tilt)
  (let ((ly (- 70 (* 16 tilt))) (ry (+ 70 (* 16 tilt))))
    (line 160 70 160 204 'ink 3)
    (line 116 204 204 204 'ink 3)
    (line 75 ly 245 ry 'ink 3)
    (poly '(150 82 170 82 160 68) 'ink)
    (ms-pan 75 ly l)
    (ms-pan 245 ry r)))

; a container marked in liters up to most, filled to level
(define (ms-jug x y w h most level)
  (let ((u (/ h most)))
    (if (> level 0) (rect x (- (+ y h) (* u level)) w (* u level) 'cool))
    (path (list x y x (+ y h) (+ x w) (+ y h) (+ x w) y) 'ink 2)
    (for-range 1 (+ most 1)
      (lambda (k)
        (let ((yy (- (+ y h) (* u k))))
          (line (+ x w -14) yy (+ x w) yy 'ink 1.5)
          (text (+ x w 6) (+ yy 4) (string-append (fmt k 0) " L") 'small))))))

; "3:05" for h:00 plus m minutes (m may pass 60)
(define (ms-hm h m)
  (let* ((t (+ (* h 60) m)) (hh (modulo (quotient t 60) 12)) (mm (modulo t 60)))
    (string-append (fmt (if (= hh 0) 12 hh) 0) ":" (if (< mm 10) "0" "") (fmt mm 0))))

; a time line from h:m, mins long: a mark every step minutes, a time
; under every `every`. It sets the line in minutes from 0 for nl-x, nl-jump.
(define (ms-tline x0 x1 y h m mins step every)
  (set! %nl (list x0 x1 y 0 mins))
  (line (- x0 6) y (+ x1 6) y 'ink 1.5)
  (for-range 0 (+ 1 (quotient mins step))
    (lambda (k)
      (let* ((v (* k step)) (x (nl-x v)) (big (= 0 (modulo v every))))
        (line x (- y (if big 6 3)) x (+ y (if big 6 3)) 'ink 1)
        (if big (text x (+ y 18) (ms-hm h (+ m v)) 'centre 'small))))))

; n small marks across the middle of a side: same marks, same length
(define (ms-tick x0 y0 x1 y1 n)
  (let* ((dx (- x1 x0)) (dy (- y1 y0)) (l (sqrt (+ (* dx dx) (* dy dy))))
         (ux (/ dx l)) (uy (/ dy l)) (mx (/ (+ x0 x1) 2)) (my (/ (+ y0 y1) 2)))
    (for-range 0 n
      (lambda (i)
        (let ((cx (+ mx (* 4 (- (* 2 i) (- n 1)) ux))) (cy (+ my (* 4 (- (* 2 i) (- n 1)) uy))))
          (line (- cx (* 6 uy)) (+ cy (* 6 ux)) (+ cx (* 6 uy)) (- cy (* 6 ux)) 'ink 1.5))))))

; cols x rows squares of size s cut into parts: ids lists each square's
; part (row by row), roles each part's fill; thick lines between parts
(define (ms-parts x y s cols rows ids roles)
  (for-range 0 (* cols rows)
    (lambda (i)
      (let ((cx (+ x (* s (modulo i cols)))) (cy (+ y (* s (quotient i cols)))) (p (list-ref ids i)))
        (rect (+ cx 3) (+ cy 3) (- s 6) (- s 6) (list-ref roles p))
        (if (and (< (modulo i cols) (- cols 1)) (not (= p (list-ref ids (+ i 1)))))
            (line (+ cx s) cy (+ cx s) (+ cy s) 'ink 5))
        (if (and (< i (* cols (- rows 1))) (not (= p (list-ref ids (+ i cols)))))
            (line cx (+ cy s) (+ cx s) (+ cy s) 'ink 5)))))
  (grid x y cols rows s)
  (frame x y (* cols s) (* rows s) 'ink 3))

; a rectangle of cols x rows unit squares, size units each, sides labelled
(define (ms-grect x y cols rows size role top left)
  (ms-tiles x y cols rows size role)
  (ms-rect x y (* cols size) (* rows size) top left #f))
