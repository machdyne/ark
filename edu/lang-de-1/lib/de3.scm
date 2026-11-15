; German 1, part 3 (Everyday German): figures. Every name starts de3-.

; two digits: 7 -> "07"
(define (de3-2d n) (string-append (if (< n 10) "0" "") (fmt n 0)))

; a clock face at (cx, cy), radius r, showing h:m (h may be 0-23),
; with the time written under it as words, e.g. "halb drei"
(define (de3-clock cx cy r h m words)
  (clock-face cx cy r h m)
  (text cx (+ cy r 22) words 'centre 'body 'bold))

; the days of the week, Monday first, as a row of boxes at y;
; sel is the one picked out (0 = Monday), or -1 for none
(define (de3-week y sel)
  (let ((names '("Mo" "Di" "Mi" "Do" "Fr" "Sa" "So")))
    (for-range 0 7
      (lambda (i)
        (let ((x (+ 20 (* i 40))))
          (if (= i sel) (begin (rect x y 40 40 'cool) (rect (+ x 7) (+ y 11) 26 20 'paper)))
          (frame x y 40 40 'ink (if (= i sel) 3 1))
          (text (+ x 20) (+ y 26) (list-ref names i) 'centre 'body 'bold))))))

; a month as a calendar: title on top, Monday first; first is the
; weekday of the 1st (0 = Monday), days the number of days, sel the
; day picked out (0 for none)
(define (de3-month title first days sel)
  (text 160 18 title 'centre 'body 'bold)
  (for-range 0 7
    (lambda (i)
      (text (+ 34 (* i 42)) 40 (list-ref '("Mo" "Di" "Mi" "Do" "Fr" "Sa" "So") i) 'centre 'small 'bold)))
  (for-range 1 (+ days 1)
    (lambda (d)
      (let* ((k (+ first (- d 1)))
             (x (+ 13 (* 42 (modulo k 7))))
             (y (+ 48 (* 30 (floor (/ k 7))))))
        (if (= d sel) (begin (rect x y 42 30 'cool) (rect (+ x 9) (+ y 6) 24 19 'paper)))
        (frame x y 42 30 'ink (if (= d sel) 3 1))
        (text (+ x 21) (+ y 20) d 'centre 'small)))))

; the ordinal number n (1 to 31) as a word with the ending -e:
; 1 -> "erste", 3 -> "dritte", 20 -> "zwanzigste"
(define (de3-ord n)
  (cond ((< n 20)
         (list-ref '("erste" "zweite" "dritte" "vierte" "fünfte" "sechste" "siebte"
                     "achte" "neunte" "zehnte" "elfte" "zwölfte" "dreizehnte" "vierzehnte"
                     "fünfzehnte" "sechzehnte" "siebzehnte" "achtzehnte" "neunzehnte")
                   (- n 1)))
        ((= n 20) "zwanzigste")
        ((= n 30) "dreißigste")
        ((= n 31) "einunddreißigste")
        (else (string-append
                (list-ref '("ein" "zwei" "drei" "vier" "fünf" "sechs" "sieben" "acht" "neun") (- n 21))
                "undzwanzigste"))))

; the parts of the day on a line from 0 to 24 hours: one row each,
; roughly where people use the word; hour (or -1) marks a time
(define (de3-day hour)
  (let ((rows '(("Morgen" 5 9) ("Vormittag" 9 12) ("Mittag" 12 14)
                ("Nachmittag" 14 18) ("Abend" 18 22) ("Nacht" 22 24))))
    (for-range 0 6
      (lambda (i)
        (let* ((r (list-ref rows i)) (y (+ 20 (* 28 i)))
               (x0 (+ 100 (* 200 (/ (list-ref r 1) 24))))
               (x1 (+ 100 (* 200 (/ (list-ref r 2) 24))))
               (role (if (= 0 (modulo i 2)) 'cool 'warm)))
          (text 92 (+ y 14) (car r) 'right 'small)
          (rect x0 y (- x1 x0) 18 role)
          (frame x0 y (- x1 x0) 18 'ink 1)
          ; the night goes on past midnight, to about 5
          (if (= i 5)
              (begin (rect 100 y (* 5 (/ 200 24)) 18 role)
                     (frame 100 y (* 5 (/ 200 24)) 18 'ink 1))))))
    (line 100 192 300 192 'ink 1.5)
    (for-range 0 9
      (lambda (k)
        (let ((x (+ 100 (* 25 k))))
          (line x 188 x 196 'ink 1)
          (text x 210 (* 3 k) 'centre 'small))))
    (if (>= hour 0)
        (let ((x (+ 100 (* 200 (/ hour 24)))))
          (line x 14 x 196 'ink 2)))))
