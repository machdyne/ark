; First Programs, part 1: the figures' own procedures (all named cs1-...).

; BASIC's screen, 320 x 240 pixels, drawn three quarters size with its
; top left corner at (cs1-x0, cs1-y0). On one bit learn's ground is
; black and ink is white, as in BASIC's window: so the screen is the
; ground, with a frame round it, and what BASIC draws is ink. (A filled
; 'ink screen with 'paper drawings showed it black on white on the board.)
(define cs1-x0 40)
(define cs1-y0 14)
(define cs1-k 0.75)
(define (cs1-sx x) (+ cs1-x0 (* cs1-k x)))
(define (cs1-sy y) (+ cs1-y0 (* cs1-k y)))
(define (cs1-screen) (frame (- cs1-x0 2) (- cs1-y0 2) 244 184 'ink 1))

; BASIC's drawing statements, drawn on that screen to scale
(define (cs1-plot x y) (rect (cs1-sx x) (cs1-sy y) 1.5 1.5 'ink))
(define (cs1-line x1 y1 x2 y2) (line (cs1-sx x1) (cs1-sy y1) (cs1-sx x2) (cs1-sy y2) 'ink 1.2))
(define (cs1-box x1 y1 x2 y2)
  (frame (cs1-sx (min x1 x2)) (cs1-sy (min y1 y2))
         (* cs1-k (+ 1 (abs (- x2 x1)))) (* cs1-k (+ 1 (abs (- y2 y1)))) 'ink 1.2))
(define (cs1-fill x1 y1 x2 y2)
  (rect (cs1-sx (min x1 x2)) (cs1-sy (min y1 y2))
        (* cs1-k (+ 1 (abs (- x2 x1)))) (* cs1-k (+ 1 (abs (- y2 y1)))) 'ink))
(define (cs1-circle x y r) (ring (cs1-sx x) (cs1-sy y) (* cs1-k r) 'ink 1.2))

; a figure position back to the pixel under it, kept on the screen
(define (cs1-px u) (clamp (round (/ (- u cs1-x0) cs1-k)) 0 319))
(define (cs1-py u) (clamp (round (/ (- u cs1-y0) cs1-k)) 0 239))

; a whole number as text
(define (cs1-n v) (fmt v 0))

; the k-th item of a list, from 0, and a list's length
(define (cs1-nth l k) (if (= k 0) (car l) (cs1-nth (cdr l) (- k 1))))
(define (cs1-len l) (if (null? l) 0 (+ 1 (cs1-len (cdr l)))))

; lines of text, one under another, from (x, y), 'body size
(define (cs1-lines x y l gap role)
  (let loop ((i 0) (l l))
    (if (not (null? l))
        (begin
          (text x (+ y (* gap i)) (car l) 'body role)
          (loop (+ i 1) (cdr l))))))

; What a program printed: the screen, framed, with its lines of text.
(define (cs1-shows l)
  (frame 38 12 244 184 'ink 1)
  (cs1-lines 50 36 l 18 'ink))

; A program run one line at a time, a line for each step of a slider.
; lines: the program's lines. states: a list of
; (line "variables" (printed ...) "what happens"), where line is the
; index of the line just run, or -1 once the program has ended.
(define (cs1-trace lines states)
  (let* ((n (cs1-len states))
         (k (slider 'step 1 n 1 "Step" 1))
         (s (cs1-nth states (- k 1)))
         (at (car s))
         (vars (car (cdr s)))
         (out (car (cdr (cdr s))))
         (note (car (cdr (cdr (cdr s))))))
    (let loop ((i 0) (l lines))
      (if (not (null? l))
          (begin
            (text 34 (+ 20 (* 19 i)) (car l) 'body (if (= i at) 'bold 'ink))
            (loop (+ i 1) (cdr l)))))
    (if (>= at 0) (arrow 6 (+ 15 (* 19 at)) 28 (+ 15 (* 19 at)) 'ink 2))
    (text 16 136 "Variables" 'small)
    (text 16 162 vars 'big)
    (text 176 120 "Screen" 'small)
    (frame 176 126 136 86 'ink 1)
    (let loop ((i 0) (l out))
      (if (not (null? l))
          (begin
            (text 182 (+ 141 (* 13 i)) (car l) 'small 'ink)
            (loop (+ i 1) (cdr l)))))
    (text 160 232 note 'small 'centre)))

; A robot on a grid of squares follows steps in order.
; moves: a list of "R" "L" "U" "D" (one square right, left, up, down).
; It starts in the square (c0, r0) and is shown after k moves.
(define (cs1-walk cols rows c0 r0 moves k)
  (let* ((s 32) (gx (- 160 (* s (/ cols 2)))) (gy 14))
    (grid gx gy cols rows s 'ink)
    (let loop ((i 0) (c c0) (r r0) (l moves))
      (if (or (null? l) (>= i k))
          (begin
            (circle (+ gx (* s c) (/ s 2)) (+ gy (* s r) (/ s 2)) 9 'warm)
            (ring (+ gx (* s c) (/ s 2)) (+ gy (* s r) (/ s 2)) 9 'ink 1.5))
          (let* ((m (car l))
                 (c2 (cond ((equal? m "R") (+ c 1)) ((equal? m "L") (- c 1)) (else c)))
                 (r2 (cond ((equal? m "D") (+ r 1)) ((equal? m "U") (- r 1)) (else r))))
            (arrow (+ gx (* s c) (/ s 2)) (+ gy (* s r) (/ s 2))
                   (+ gx (* s c2) (/ s 2)) (+ gy (* s r2) (/ s 2)) 'ink 2)
            (loop (+ i 1) c2 r2 (cdr l)))))
    (text (+ gx (* s c0) 2) (+ gy (* s r0) 9) "S" 'tiny)))
