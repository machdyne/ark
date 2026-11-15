; German 1, part 1 (first words): figures.
; Every name starts with de1-.

; the number words 0 to 19, and the tens
(define de1-ones '("null" "eins" "zwei" "drei" "vier" "fünf" "sechs" "sieben" "acht" "neun"
  "zehn" "elf" "zwölf" "dreizehn" "vierzehn" "fünfzehn" "sechzehn" "siebzehn" "achtzehn" "neunzehn"))
(define de1-tens '("" "zehn" "zwanzig" "dreißig" "vierzig" "fünfzig" "sechzig" "siebzig" "achtzig" "neunzig"))

; the German word for n, 0 to 100: 21 is einundzwanzig (eins loses its s)
(define (de1-word n)
  (let ((t (quotient n 10)) (o (modulo n 10)))
    (cond ((= n 100) "hundert")
          ((< n 20) (list-ref de1-ones n))
          ((= o 0) (list-ref de1-tens t))
          (else (string-append (if (= o 1) "ein" (list-ref de1-ones o)) "und" (list-ref de1-tens t))))))

; the width of a box for the word s in the 'body face
(define (de1-w s) (+ 12 (* 9 (string-length s))))

; a number from 20 to 99: its two digits, the parts of its word in boxes
; (ones, und, tens), a line from each digit to its part, and the word
(define (de1-build n)
  (let* ((t (quotient n 10)) (o (modulo n 10))
         (a (if (= o 1) "ein" (list-ref de1-ones o))) (c (list-ref de1-tens t)))
    (text 130 70 (number->string t) 48 'centre)
    (text 190 70 (number->string o) 48 'centre)
    (text 130 90 "tens" 'small 'centre)
    (text 190 90 "ones" 'small 'centre)
    (if (= o 0)
        (let ((wc (de1-w c)))
          (frame (- 160 (/ wc 2)) 130 wc 30 'ink 2)
          (text 160 150 c 'body 'centre 'bold)
          (arrow 130 96 150 128 'ink 1.5))
        (let* ((wa (de1-w a)) (wb (de1-w "und")) (wc (de1-w c))
               (xa (- 160 (/ (+ wa wb wc 16) 2))) (xb (+ xa wa 8)) (xc (+ xb wb 8)))
          (frame xa 130 wa 30 'ink 2)
          (text (+ xa (/ wa 2)) 150 a 'body 'centre 'bold)
          (frame xb 130 wb 30 'ink 1)
          (text (+ xb (/ wb 2)) 150 "und" 'body 'centre)
          (frame xc 130 wc 30 'ink 2)
          (text (+ xc (/ wc 2)) 150 c 'body 'centre 'bold)
          (arrow 190 96 (+ xa (/ wa 2)) 128 'ink 1.5)
          (arrow 130 96 (+ xc (/ wc 2)) 128 'ink 1.5)
          (text (+ xa (/ wa 2)) 176 "said first" 'small 'centre)
          (text (+ xc (/ wc 2)) 176 "said last" 'small 'centre)))
    (text 160 210 (de1-word n) 'body 'centre 'bold)))

; the letter keys of a US keyboard, row by row, and where each row starts
(define de1-rows '(("`" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0" "-" "=")
  ("Q" "W" "E" "R" "T" "Y" "U" "I" "O" "P" "[" "]")
  ("A" "S" "D" "F" "G" "H" "J" "K" "L" ";" "'")
  ("Z" "X" "C" "V" "B" "N" "M" "," "." "/")))
; keys 22 apart; Q starts 1.5 keys right of `, A 1.75, Z 2.25, as on a
; real US keyboard (so [ sits half a key right of -, as it does)
(define de1-row-x '(6 39 45 56))

; what a key types instead (sw/common/zkbd_layouts.c): mode 0 the de
; layout, mode 1 us-intl with AltGr
(define (de1-alt mode)
  (if (= mode 0)
      '(("-" "ß") ("[" "ü") (";" "ö") ("'" "ä") ("Y" "z") ("Z" "y") ("]" "+") ("/" "-"))
      '(("Q" "ä") ("P" "ö") ("Y" "ü") ("S" "ß"))))

(define (de1-find k l)
  (cond ((null? l) #f) ((equal? k (car (car l))) (cadr (car l))) (else (de1-find k (cdr l)))))

; the keyboard, each key with its US label; a key that types something
; else in the mode has a heavy frame and that under its label
(define (de1-kbd mode)
  (let ((m (de1-alt mode)))
    (let rows ((rs de1-rows) (xs de1-row-x) (y 30))
      (if (pair? rs)
          (begin
            (let keys ((ks (car rs)) (x (car xs)))
              (if (pair? ks)
                  (let ((g (de1-find (car ks) m)))
                    (frame x y 20 38 'ink (if g 2.5 1))
                    (text (+ x 10) (+ y 15) (car ks) 'small 'centre)
                    (if g (text (+ x 10) (+ y 32) g 'small 'centre 'bold))
                    (keys (cdr ks) (+ x 22)))))
            (rows (cdr rs) (cdr xs) (+ y 46)))))))
