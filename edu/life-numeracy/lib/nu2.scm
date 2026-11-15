; life-numeracy, part 2 (measures and charts): figure procedures, prefix nu2-.
; Units: the figure's 320 x 240, y down. Charts sit in x 52..296, y 30..200.

; the value scale of a chart: lo at the foot (y 200), hi at the top (y 30)
(define (nu2-axis lo hi step)
  (let ((k (/ 170 (- hi lo))))
    (for-range 0 (+ 1 (round (/ (- hi lo) step)))
      (lambda (i)
        (let* ((v (+ lo (* i step))) (y (- 200 (* k (- v lo)))))
          (if (> i 0) (line 52 y 296 y 'grey 1))
          (line 47 y 52 y 'ink 1)
          (text 44 (+ y 4) v 'right 'small))))
    (line 52 26 52 200 'ink 1.5)
    (line 52 200 298 200 'ink 1.5)))

; where value v is on the last nu2-axis lo..hi
(define (nu2-y v lo hi) (- 200 (* (/ 170 (- hi lo)) (- v lo))))

; a bar chart: items ("name" value), the scale from lo to hi by step
(define (nu2-bars items lo hi step role)
  (nu2-axis lo hi step)
  (let ((w (/ 240 (length items))))
    (let loop ((l items) (i 0))
      (if (pair? l)
          (let ((t (nu2-y (cadr (car l)) lo hi)) (x (+ 62 (* i w))))
            (if (< t 200) (rect x t (- w 20) (- 200 t) role))
            (frame x t (- w 20) (- 200 t) 'ink 1)
            (text (+ x (/ (- w 20) 2)) 216 (car (car l)) 'centre 'small)
            (loop (cdr l) (+ i 1)))))))

; a grouped bar chart: items ("name" a b), a in role ra, b in role rb
(define (nu2-bars2 items hi step ra rb)
  (nu2-axis 0 hi step)
  (let* ((w (/ 240 (length items))) (b (/ (- w 16) 2)))
    (let loop ((l items) (i 0))
      (if (pair? l)
          (let ((x (+ 60 (* i w))) (ta (nu2-y (cadr (car l)) 0 hi)) (tb (nu2-y (caddr (car l)) 0 hi)))
            (rect x ta b (- 200 ta) ra) (frame x ta b (- 200 ta) 'ink 1)
            (rect (+ x b) tb b (- 200 tb) rb) (frame (+ x b) tb b (- 200 tb) 'ink 1)
            (text (+ x b) 216 (car (car l)) 'centre 'small)
            (loop (cdr l) (+ i 1)))))))

; a key: a list of ("words" role), one under another from x y
(define (nu2-key x y items)
  (let loop ((l items) (yy y))
    (if (pair? l)
        (begin
          (rect x (- yy 9) 12 10 (cadr (car l))) (frame x (- yy 9) 12 10 'ink 1)
          (text (+ x 17) yy (car (car l)) 'small)
          (loop (cdr l) (+ yy 15))))))

; a line chart: items ("name" value), points joined, scale lo..hi by step
(define (nu2-line items lo hi step)
  (nu2-axis lo hi step)
  (let ((w (/ 218 (- (length items) 1))))
    (let loop ((l items) (i 0) (pts '()))
      (if (pair? l)
          (let ((x (+ 64 (* i w))) (y (nu2-y (cadr (car l)) lo hi)))
            (text x 216 (car (car l)) 'centre 'small)
            (circle x y 3.5 'ink)
            (loop (cdr l) (+ i 1) (append pts (list x y))))
          (path pts 'ink 2)))))

; a pie chart: items ("words" percent role), clockwise from the top
(define (nu2-pie cx cy r items)
  (let loop ((l items) (s 0))
    (if (pair? l)
        (let* ((p (cadr (car l))) (a0 (- 90 (* 3.6 s))) (a1 (- 90 (* 3.6 (+ s p))))
               (m (deg->rad (/ (+ a0 a1) 2))) (c (cos m)))
          (wedge cx cy r a0 a1 (caddr (car l)))
          (line cx cy (+ cx (* r (cos (deg->rad a0)))) (- cy (* r (sin (deg->rad a0)))) 'ink 1.5)
          (text (+ cx (* (+ r 8) c)) (+ (- cy (* (+ r 8) (sin m))) 4) (car (car l))
                'small (if (< c -0.2) 'right (if (> c 0.2) 'left 'centre)))
          (loop (cdr l) (+ s p)))))
  (ring cx cy r 'ink 1.5))

; a straight measuring scale from x y, len long, lo..hi, a label every
; major, a mark every minor (whole numbers), and an arrow at v (or #f)
(define (nu2-gauge x y len lo hi major minor v)
  (let ((k (/ len (- hi lo))))
    (line x y (+ x len) y 'ink 1.5)
    (for-range 0 (+ 1 (round (/ (- hi lo) minor)))
      (lambda (i)
        (let* ((u (+ lo (* i minor))) (xx (+ x (* k (- u lo)))) (big (= 0 (modulo (- u lo) major))))
          (line xx y xx (+ y (if big 14 7)) 'ink 1)
          (if big (text xx (+ y 28) u 'centre 'small)))))
    (if v (arrow (+ x (* k (- v lo))) (- y 36) (+ x (* k (- v lo))) (- y 3) 'ink 2))))

; a line of time in minutes from..to, a mark every tick, words at
; labs ((minutes "words") ...); nl-x, nl-jump and nl-mark then work on it
(define (nu2-timeline x0 x1 y from to tick labs)
  (set! %nl (list x0 x1 y from to))
  (line (- x0 6) y (+ x1 6) y 'ink 1.5)
  (for-range 0 (+ 1 (round (/ (- to from) tick)))
    (lambda (i) (let ((x (nl-x (+ from (* i tick))))) (line x (- y 3) x (+ y 3) 'ink 1))))
  (for-each (lambda (l) (let ((x (nl-x (car l))))
                          (line x (- y 6) x (+ y 6) 'ink 1)
                          (text x (+ y 18) (cadr l) 'centre 'small))) labs))

; a room: a rectangle with words on its top and left sides (or #f)
(define (nu2-room x y w h top left role)
  (if role (rect x y w h role))
  (frame x y w h 'ink 2)
  (if top (text (+ x (/ w 2)) (- y 6) top 'centre 'small))
  (if left (text (- x 6) (+ y (/ h 2) 4) left 'right 'small)))
