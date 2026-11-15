; life-think figures. Every name starts with th-.

; 100 people as a 10 x 10 grid of squares, the first n filled with role.
; x y is the top left; each square is 14 units, 16 apart.
(define (th-people x y n role)
  (for-range 0 100
    (lambda (i)
      (let ((px (+ x (* 16 (modulo i 10))))
            (py (+ y (* 16 (quotient i 10)))))
        (if (< i n)
            (rect px py 14 14 role)
            (frame px py 14 14 'ink 1))))))

; a box with centred words, for trees
(define (th-node cx cy w s)
  (rect (- cx (/ w 2)) (- cy 13) w 24 'paper)
  (frame (- cx (/ w 2)) (- cy 13) w 24 'ink 1)
  (text cx (+ cy 4) s 'centre 'small))

; a bar chart whose axis runs from lo to hi (lo above 0 cuts the bars).
; items: (("A" 52) ...); the chart fills x 60..300, y 30..200.
(define (th-bars items lo hi role)
  (let* ((n (length items)) (w (/ 240 n)))
    (line 56 30 56 200 'ink 1)
    (line 56 200 300 200 'ink 1.5)
    (text 52 204 lo 'right 'small)
    (text 52 34 hi 'right 'small)
    (let loop ((l items) (i 0))
      (if (pair? l)
          (let* ((v (cadr (car l)))
                 (h (* 170 (/ (- v lo) (- hi lo))))
                 (bx (+ 66 (* i w))))
            (rect bx (- 200 h) (- w 20) h role)
            (frame bx (- 200 h) (- w 20) h 'ink 1)
            (text (+ bx (/ (- w 20) 2)) 216 (car (car l)) 'centre 'small)
            (text (+ bx (/ (- w 20) 2)) (- 196 h) v 'centre 'small)
            (loop (cdr l) (+ i 1)))))))
