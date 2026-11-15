; German 1, part 2 (sentences): figures.
; Every name starts with de2-.

; the width of a box for words s in the 'body face (9 units a letter)
(define (de2-w s) (+ 14 (* 9 (string-length s))))

; the total width of boxes for a list of words, with a gap of 8
(define (de2-row-w ws)
  (if (null? ws) -8 (+ (de2-w (car ws)) 8 (de2-row-w (cdr ws)))))

; a sentence as a row of boxes centred on x 160 at y (the boxes' top),
; one word group a box, numbered 1, 2 ... over them; box number v
; (from 1) is the verb's: a heavy frame and "verb" under it
(define (de2-slots y ws v)
  (let loop ((ws ws) (x (- 160 (/ (de2-row-w ws) 2))) (i 1))
    (if (not (null? ws))
      (let ((w (de2-w (car ws))))
        (frame x y w 30 'ink (if (= i v) 3 1))
        (if (= i v)
          (text (+ x (/ w 2)) (+ y 20) (car ws) 'body 'centre 'bold)
          (text (+ x (/ w 2)) (+ y 20) (car ws) 'body 'centre))
        (text (+ x (/ w 2)) (- y 6) (number->string i) 'small 'centre)
        (if (= i v) (text (+ x (/ w 2)) (+ y 46) "verb" 'small 'centre 'bold))
        (loop (cdr ws) (+ x w 8) (+ i 1))))))

; a person in a family tree: a box centred on (cx, cy) with a name,
; and a second line under it (the German word for who it is)
(define (de2-person cx cy name who)
  (let ((w (max (de2-w name) (+ 12 (* 7 (string-length who))))))
    (frame (- cx (/ w 2)) (- cy 18) w 36 'ink 1.5)
    (text cx (- cy 2) name 'body 'centre 'bold)
    (text cx (+ cy 13) who 'small 'centre)))

; a line from a parent pair's middle (x0, y0) down and across to a
; child's box top at (x1, y1)
(define (de2-link x0 y0 x1 y1)
  (let ((ym (/ (+ y0 y1) 2)))
    (path (list x0 y0 x0 ym x1 ym x1 y1) 'ink 1.5)))

; a room of a floor plan: an outline with its name in the middle
(define (de2-room x y w h name)
  (frame x y w h 'ink 2)
  (text (+ x (/ w 2)) (+ y (/ h 2) 5) name 'body 'centre))
