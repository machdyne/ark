; First Programs, part 2 (bits and networks): figure procedures.
; Every name starts with cs2-.

; bit i of n (bit 0 is worth 1)
(define (cs2-bit n i) (modulo (floor (/ n (expt 2 i))) 2))

; n written with d binary digits, the most significant first
(define (cs2-bin n d)
  (if (< d 1) ""
      (string-append (cs2-bin (floor (/ n 2)) (- d 1))
                     (if (= 1 (modulo n 2)) "1" "0"))))

; a lamp of radius r at (cx, cy): lit (a disc with rays) or off (a ring)
(define (cs2-lamp cx cy r on)
  (let ((a (* r 1.25)) (b (* r 1.6)) (c (* r 0.85)) (d (* r 1.1)))
    (if on
        (begin
          (circle cx cy r 'ink)
          (line (- cx b) cy (- cx a) cy 'ink 2)
          (line (+ cx a) cy (+ cx b) cy 'ink 2)
          (line cx (- cy b) cx (- cy a) 'ink 2)
          (line (- cx d) (- cy d) (- cx c) (- cy c) 'ink 2)
          (line (+ cx d) (- cy d) (+ cx c) (- cy c) 'ink 2))
        (ring cx cy r 'ink 2))))

; d lamps showing the bits of n, the most significant on the left,
; centred on x = 160 with gap units between centres, at height y; the
; digit under each lamp
(define (cs2-lamps y d n gap)
  (let ((x0 (- 160 (/ (* (- d 1) gap) 2))))
    (for-range 0 d
      (lambda (k)
        (let* ((i (- d 1 k)) (cx (+ x0 (* k gap))) (on (= 1 (cs2-bit n i))))
          (cs2-lamp cx y 13 on)
          (text cx (+ y 38) (if on "1" "0") 'centre 'big 'bold))))))

; d boxes w units wide showing the bits of n, centred on x = 160 at
; height y; a 1 is a filled box; each box's place value above it
(define (cs2-places y d n w)
  (let ((x0 (- 160 (/ (* d w) 2))))
    (for-range 0 d
      (lambda (k)
        (let* ((i (- d 1 k)) (bx (+ x0 (* k w))) (cx (+ bx (/ w 2)))
               (one (= 1 (cs2-bit n i))))
          (if one (rect (+ bx 2) (+ y 2) (- w 4) (- w 4) 'ink))
          (frame bx y w w 'ink 1.5)
          (text cx (+ y (/ w 2) 7) (if one "1" "0") 'centre 'big 'bold (if one 'paper 'ink))
          (text cx (- y 8) (fmt (expt 2 i) 0) 'centre 'body))))))

; the place values of n's 1 bits as a sum: "8 + 2 + 1"
(define (cs2-sum n d)
  (let loop ((i (- d 1)) (acc ""))
    (if (< i 0) (if (string=? acc "") "0" acc)
        (loop (- i 1)
              (if (= 1 (cs2-bit n i))
                  (string-append acc (if (string=? acc "") "" " + ") (fmt (expt 2 i) 0))
                  acc)))))

; a black-and-white picture: rows is a list of numbers, one a row, each
; row's bits the pixels (the most significant on the left), cols wide;
; a 1 is a filled square (in ink). Squares of size units from (x, y).
(define (cs2-pixels x y cols size rows)
  (let loop ((r 0) (rs rows))
    (if (pair? rs)
        (begin
          (for-range 0 cols
            (lambda (k)
              (let ((px (+ x (* k size))) (py (+ y (* r size))))
                (if (= 1 (cs2-bit (car rs) (- cols 1 k)))
                    (rect px py size size 'ink))
                (frame px py size size 'ink 1))))
          (loop (+ r 1) (cdr rs))))))

; each row's bits written beside a picture, from (x, y), one row a line
(define (cs2-pixel-bits x y cols size rows)
  (let loop ((r 0) (rs rows))
    (if (pair? rs)
        (begin
          (text x (+ y (* r size) (/ size 2) 5) (cs2-bin (car rs) cols) 'body)
          (loop (+ r 1) (cdr rs))))))

; a small network: two computers, A and B, and four routers
(define cs2-nodes
  '((30 120 "A" pc) (95 120 "R1" r) (160 55 "R2" r)
    (160 185 "R3" r) (225 120 "R4" r) (290 120 "B" pc)))
(define cs2-links '((0 1) (1 2) (1 3) (2 4) (3 4) (2 3) (4 5)))

(define (cs2-xy k) (list-ref cs2-nodes k))

; the network: links, then routers as rings and computers as screens;
; names replaces the computers' labels when it is a list of two strings
(define (cs2-net names)
  (for-each
    (lambda (l)
      (let ((a (cs2-xy (car l))) (b (cs2-xy (cadr l))))
        (line (car a) (cadr a) (car b) (cadr b) 'grey 2)))
    cs2-links)
  (for-each
    (lambda (n)
      (let ((x (car n)) (y (cadr n)) (s (caddr n)))
        (if (eq? (cadddr n) 'pc)
            (begin
              (rect (- x 20) (- y 15) 40 28 'paper)
              (frame (- x 20) (- y 15) 40 28 'ink 2)
              (rect (- x 8) (+ y 13) 16 4 'ink)
              (text x (+ y 5) (if (pair? names) (if (string=? s "A") (car names) (cadr names)) s)
                    'centre 'small 'bold))
            (begin
              (circle x y 15 'paper)
              (ring x y 15 'ink 2)
              (text x (+ y 4) s 'centre 'small 'bold)))))
    cs2-nodes))

; where a packet is t hops along path (a list of node numbers): it moves
; one hop a unit of t, and waits at the end
(define (cs2-hop path t)
  (let* ((n (- (length path) 1))
         (tt (clamp t 0 n))
         (k (min (floor tt) (- n 1)))
         (f (- tt k))
         (a (cs2-xy (list-ref path k)))
         (b (cs2-xy (list-ref path (+ k 1)))))
    (list (lerp (car a) (car b) f) (lerp (cadr a) (cadr b) f))))

; a packet: a small filled card at (x, y) with words on it
(define (cs2-packet x y s)
  (rect (- x 13) (- y 9) 26 18 'ink)
  (text x (+ y 4) s 'centre 'small 'bold 'paper))
