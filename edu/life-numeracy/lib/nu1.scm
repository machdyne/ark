; Everyday Maths, part 1 (numbers and money): figure procedures, prefix nu1-

; where value v sits on a vertical scale from `from` (at bot) to `to` (at top)
(define (nu1-ty v top bot from to)
  (- bot (* (- bot top) (/ (- v from) (- to from)))))

; a thermometer: a scale at x from top to bot, values from..to, a mark
; every step, and a column from the bottom up to val
(define (nu1-thermo x top bot from to step val)
  (let ((yv (nu1-ty val top bot from to)))
    (frame (- x 7) (- top 4) 14 (+ (- bot top) 8) 'ink 1.5)
    (rect (- x 4) yv 8 (- (+ bot 4) yv) 'warm)
    (circle x (+ bot 14) 12 'warm)
    (ring x (+ bot 14) 12 'ink 1.5)
    (let loop ((v from))
      (if (<= v to)
          (let ((y (nu1-ty v top bot from to)))
            (line (+ x 7) y (+ x 15) y 'ink (if (= v 0) 2.5 1))
            (text (+ x 20) (+ y 4) (fmt v 0) 'small (if (= v 0) 'bold 'small))
            (loop (+ v step)))))))

; a 10 by 10 square of small squares, the first n shaded, row by row
(define (nu1-hundred x y size n role)
  (let* ((rows (floor (/ n 10))) (rest (- n (* rows 10))))
    (if (> rows 0) (rect x y (* 10 size) (* rows size) role))
    (if (> rest 0) (rect x (+ y (* rows size)) (* rest size) size role))
    (grid x y 10 10 size)))

; a strip of a + b equal parts: a in role ra, then b in role rb
(define (nu1-strip x y w h a b ra rb)
  (let ((n (+ a b)))
    (for-range 0 n
      (lambda (i)
        (let ((x0 (+ x (/ (* w i) n))))
          (rect x0 y (/ w n) h (if (< i a) ra rb))
          (line x0 y x0 (+ y h) 'paper 3)
          (line x0 y x0 (+ y h) 'ink 1))))
    (frame x y w h 'ink 1.5)))
