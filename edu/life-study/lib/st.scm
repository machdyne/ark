; Learning How to Learn: figures. Every name starts with st-.

; A sketched forgetting curve in the box x y w h: memory (up) against
; time (right). With n reviews (0 to 3), memory is brought back to the
; top at each review and then fades more slowly than before. With n > 0
; the curve with no reviews is drawn too, dashed. A sketch, not data.
(define st-review-times '(0.2 0.42 0.7))

(define (st-mem t n)
  (let loop ((k 7) (last 0) (i 0) (ts st-review-times))
    (if (and (< i n) (pair? ts) (>= t (car ts)))
        (loop (/ k 2.2) (car ts) (+ i 1) (cdr ts))
        (exp (- (* k (- t last)))))))

(define (st-curve x y w h n)
  (arrow x (+ y h) x (- y 6) 'ink 1.5)
  (arrow x (+ y h) (+ x w 6) (+ y h) 'ink 1.5)
  (text (+ x 10) (+ y 4) "how much you remember" 'small)
  (text (+ x w) (+ y h 16) "time" 'small 'right)
  (if (> n 0)
      (path (let loop ((t 1.0) (acc '()))
              (if (< t 0) acc
                  (loop (- t 0.04) (cons (+ x (* w t)) (cons (- (+ y h) (* h 0.9 (st-mem t 0))) acc)))))
            'cool 1.5))
  (path (let loop ((t 1.0) (acc '()))
          (if (< t -0.001) acc
              (loop (- t 0.02) (cons (+ x (* w t)) (cons (- (+ y h) (* h 0.9 (st-mem t n))) acc)))))
        'ink 2)
  (let loop ((i 0) (ts st-review-times))
    (if (and (< i n) (pair? ts))
        (begin
          (line (+ x (* w (car ts))) (+ y h) (+ x (* w (car ts))) (+ y h 5) 'ink 1.5)
          (text (+ x (* w (car ts))) (+ y h 16) "review" 'tiny 'centre)
          (loop (+ i 1) (cdr ts))))))

; A row of n days from x, y (cells 24 wide, 22 high), the days in the
; list marks (counted from 0) shaded, with words above it.
(define (st-days x y n marks words)
  (text x (- y 6) words 'small)
  (for-range 0 n
    (lambda (d)
      (let ((cx (+ x (* d 24))))
        (if (memv d marks) (rect (+ cx 1) (+ y 1) 22 20 'warm))
        (frame cx y 24 22 'ink 1)))))

; the day numbers under a row of n days from x, at y
(define (st-day-numbers x y n)
  (for-range 0 n
    (lambda (d) (text (+ x (* d 24) 12) y (number->string (+ d 1)) 'tiny 'centre))))

; A row of practice problems from x, y: one box 26 wide for each letter
; of the string s, with words above it.
(define (st-seq x y s words)
  (text x (- y 6) words 'small)
  (for-range 0 (string-length s)
    (lambda (i)
      (let ((bx (+ x (* i 26))))
        (frame bx y 24 24 'ink 1)
        (text (+ bx 12) (+ y 17) (substring s i (+ i 1)) 'body 'centre 'bold)))))

; Five Leitner boxes across the figure at y, each with the days until
; its questions come back; the box sel (1 to 5) is shaded.
(define st-gaps '("1 day" "3 days" "7 days" "16 days" "35 days"))

(define (st-boxes y sel)
  (for-range 0 5
    (lambda (i)
      (let ((bx (+ 12 (* i 62))))
        (if (= (+ i 1) sel) (rect (+ bx 1) (+ y 1) 50 38 'warm))
        (frame bx y 52 40 'ink 1.5)
        (text (+ bx 26) (- y 6) (string-append "Box " (number->string (+ i 1))) 'small 'centre 'bold)
        (text (+ bx 26) (+ y 58) (list-ref st-gaps i) 'small 'centre)
        (if (< i 4) (arrow (+ bx 53) (+ y 14) (+ bx 61) (+ y 14) 'ink 1.2))))))
