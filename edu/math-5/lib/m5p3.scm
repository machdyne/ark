; Grade 5 Math, part 3 (fractions): figure procedures.
; Prefix m5p3-. Units: the figure's 320 x 240, y down.

; "k/b" as a string, for (math ...)
(define (m5p3-s k b) (string-append (fmt k 0) "/" (fmt b 0)))

; a number line from 0 to w wholes, each cut into b equal parts.
; lab: 'whole (whole numbers), 'frac (k/b under every mark), 'none.
; It sets the line for nl-x, nl-mark and nl-jump.
(define (m5p3-line x0 x1 y w b lab)
  (set! %nl (list x0 x1 y 0 w))
  (line (- x0 8) y (+ x1 8) y 'ink 1.5)
  (for-range 0 (+ (* w b) 1)
    (lambda (k)
      (let ((x (lerp x0 x1 (/ k (* w b)))) (whole (= 0 (modulo k b))))
        (line x (- y (if whole 7 5)) x (+ y (if whole 7 5)) 'ink (if whole 2 1))
        (cond ((eq? lab 'frac) (math x (+ y 24) (m5p3-s k b) 14))
              ((and whole (eq? lab 'whole))
               (text x (+ y 22) (fmt (/ k b) 0) 'centre 'body)))))))

; a sum in one bar of b parts: a parts 'cool, then c more 'warm
(define (m5p3-sum x y w h b a c)
  (frac-bar-at x y w h b (+ a c) 'warm)
  (frac-bar-at x y w h b a 'cool))

; a bar of b small parts, a shaded with a light role: thin cuts, no gaps
(define (m5p3-thin x y w h b a role)
  (if (> a 0) (rect x y (* w (/ a b)) h role))
  (for-range 1 b (lambda (i) (let ((xi (+ x (* w (/ i b))))) (line xi y xi (+ y h) 'ink 1))))
  (frame x y w h 'ink 1.5))

; n small hops of 1/b from 0 along the last line (arcs, no heads)
(define (m5p3-hops n b role)
  (for-range 0 n
    (lambda (i)
      (let ((xa (nl-x (/ i b))) (xb (nl-x (/ (+ i 1) b))))
        (arc (/ (+ xa xb) 2) (nl-y) (/ (- xb xa) 2) 0 180 role 1.5)))))

; cuts across a box: n-1 lines at equal steps, paper under ink so they
; show through a fill. dir 'v (columns) or 'h (rows).
(define (m5p3-cuts x y w h n dir wd)
  (for-range 1 n
    (lambda (i)
      (if (eq? dir 'v)
          (let ((xi (+ x (* w (/ i n)))))
            (line xi (+ y 1) xi (+ y h -1) 'paper 3) (line xi y xi (+ y h) 'ink wd))
          (let ((yi (+ y (* h (/ i n)))))
            (line (+ x 1) yi (+ x w -1) yi 'paper 3) (line x yi (+ x w) yi 'ink wd))))))

; a w x h whole cut into b columns and d rows: the first c rows
; shaded 'accent (c/d), the first a columns 'cool (a/b), and where
; they cross 'warm: (a/b) x (c/d) of the whole
(define (m5p3-area x y w h a b c d)
  (let ((cw (* w (/ a b))) (rh (* h (/ c d))))
    (if (> c 0) (rect x y w rh 'accent))
    (if (> a 0) (rect x y cw h 'cool))
    (if (and (> a 0) (> c 0)) (rect x y cw rh 'warm))
    (m5p3-cuts x y w h b 'v 1)
    (m5p3-cuts x y w h d 'h 1)
    (frame x y w h 'ink 2)))

; a rectangle cw by rh units (fractions), s units to 1, drawn over
; nc x nr unit squares, each cut into b columns and d rows (unit
; fraction squares 1/b by 1/d); the rectangle shaded and outlined
(define (m5p3-tile x y s cw rh nc nr b d)
  (rect x y (* s cw) (* s rh) 'cool)
  (for-range 1 (* nc b)
    (lambda (i) (let ((xi (+ x (* s (/ i b))))) (line xi y xi (+ y (* s nr)) 'ink 0.6))))
  (for-range 1 (* nr d)
    (lambda (j) (let ((yj (+ y (* s (/ j d))))) (line x yj (+ x (* s nc)) yj 'ink 0.6))))
  (for-range 0 (+ nc 1)
    (lambda (i) (line (+ x (* s i)) y (+ x (* s i)) (+ y (* s nr)) 'ink 2)))
  (for-range 0 (+ nr 1)
    (lambda (j) (line x (+ y (* s j)) (+ x (* s nc)) (+ y (* s j)) 'ink 2)))
  (frame x y (* s cw) (* s rh) 'ink 3.5))

; a wholes as bars w x h from (x, y), 8 apart, each cut into b equal
; parts, numbered 1 to b for the b people; person 1's parts shaded
(define (m5p3-share x y w h a b)
  (for-range 0 a
    (lambda (i)
      (let ((yi (+ y (* i (+ h 8)))))
        (frac-bar-at x yi w h b 1 'cool)
        (for-range 0 b
          (lambda (j)
            (let ((cx (+ x (* w (/ (+ j 0.5) b)))))
              (rect (- cx 6) (+ yi (/ h 2) -8) 12 16 'paper)
              (text cx (+ yi (/ h 2) 5) (fmt (+ j 1) 0) 'centre 'small 'bold))))))))

; a tape w x h cut into b equal parts, the first a shaded; the total
; written above it and each part's size (a string) under each part
(define (m5p3-tape x y w h b a role total part)
  (frac-bar-at x y w h b a role)
  (line x (- y 8) (+ x w) (- y 8) 'ink 1)
  (line x (- y 12) x (- y 4) 'ink 1)
  (line (+ x w) (- y 12) (+ x w) (- y 4) 'ink 1)
  (text (+ x (/ w 2)) (- y 14) total 'centre 'body 'bold)
  (for-range 0 b
    (lambda (j) (text (+ x (* w (/ (+ j 0.5) b))) (+ y h 16) part 'centre (if (> b 8) 'tiny 'small)))))

; a number line from 0 to top at y, a tick every step (numbers every
; lstep); over it a bar from 0 to n (label ln) and above that a bar
; from 0 to f x n (label lp), both to the line's scale
(define (m5p3-scale y top step lstep n f ln lp)
  (number-line 30 290 y 0 top step lstep)
  (rect 30 (- y 34) (- (nl-x n) 30) 16 'cool)
  (frame 30 (- y 34) (- (nl-x n) 30) 16 'ink 1)
  (text 30 (- y 39) ln 'left 'small)
  (rect 30 (- y 80) (- (nl-x (* f n)) 30) 16 'warm)
  (frame 30 (- y 80) (- (nl-x (* f n)) 30) 16 'ink 1)
  (text 30 (- y 85) lp 'left 'small)
  (line (nl-x n) (- y 84) (nl-x n) y 'ink 1))
