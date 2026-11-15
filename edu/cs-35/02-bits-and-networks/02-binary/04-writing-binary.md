# Writing binary

```lesson
(objective "Write a number from 0 to 31 in binary.")
(minutes 20)
```

To write a number in binary, fill the places from the biggest one
down.

Start at the biggest place value that fits in your number. Put a 1
there and take it away. Go on with what is left. Every place that does
not fit gets a 0.

Move the slider. The figure tries each place, from 16 down to 1.

```figure
(define n (slider 'n 0 31 13 "Number" 1))
(define (left k) (modulo n (expt 2 (+ k 1))))
(for-range 0 5
  (lambda (j)
    (let* ((k (- 4 j)) (v (expt 2 k)) (have (left k)) (fits (>= have v)) (y (+ 30 (* j 26))))
      (text 20 y (string-append (fmt have 0) " left. Does " (fmt v 0) " fit?") 'body)
      (text 230 y (if fits "yes: 1" "no: 0") 'body 'bold))))
(text 160 190 (string-append (fmt n 0) " = " (cs2-bin n 5) " in binary") 'centre 'big 'bold)
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Counting in Binary")
```

```check
(text
  (ask "Write 6 in binary.")
  (accept "110") (accept "0110") (accept "00110")
  (wrong-if "011" "That has the digits the wrong way round. The biggest place, 4, goes on the left.")
  (wrong-if "111" "111 is 4 + 2 + 1 = 7. 6 is only 4 + 2, so the 1s place gets a 0.")
  (hint "Does 4 fit in 6? Then what is left?")
  (hint "6 is 4 + 2."))
```

---

## Worked example

```example
(example
  (problem "Write 13 in binary.")
  (step "8 is the biggest place that fits in 13. Put a 1 there. 5 is left.")
  (step "4 fits in 5. Put a 1 there. 1 is left.")
  (step "2 does not fit in 1. Put a 0 there.")
  (step "1 fits in 1. Put a 1 there. Nothing is left.")
  (answer "13 is 1101 in binary."))
```

```example
(example
  (problem "Write 20 in binary.")
  (step "16 fits in 20. Put a 1 there. 4 is left.")
  (step "8 does not fit in 4: 0. 4 fits in 4: 1. Nothing is left.")
  (step (text (ask "The 2s and 1s places get 0. Write 20 in binary.")
    (accept "10100")
    (wrong-if "101" "Every place needs a digit, the 0s too. Places 16, 8, 4, 2, 1: 1, 0, 1, 0, 0.")))
  (answer "20 is 10100 in binary."))
```

---

## Check your answer

You can check your answer. Read it back by adding its place values. If
the sum is the number you started with, it is right.

```check
(choice
  (ask "Jo writes 11 in binary as 1101. Is she right?")
  (right "No: 1101 is 13" (true "8 + 4 + 1 = 13"))
  (wrong "Yes" (false "8 + 4 + 1 = 11")
    "Read it back: 1101 has 1s under 8, 4 and 1. That adds up to 13, not 11.")
  (hint "Read 1101 back: add the places with a 1."))
```

---

## Practice

```check
(text
  (ask "Write 9 in binary.")
  (accept "1001") (accept "01001")
  (wrong-if "111" "111 is 7. 9 is 8 + 1, so you need the 8s place.")
  (wrong-if "1100" "1100 is 8 + 4 = 12. After the 8, only 1 is left.")
  (hint "Does 8 fit in 9? What is left?"))
```

---

```check
(text
  (ask "Write 31 in binary.")
  (accept "11111")
  (wrong-if "100000" "100000 is 32, one more than 31.")
  (wrong-if "11110" "11110 is 30. 31 needs the 1s place too.")
  (hint "16 + 8 + 4 + 2 + 1 = 31."))
```

```check
(number
  (ask "A binary number has a 1 in the 16s place and in the 4s place, and 0s in the other places. What number is it?")
  (answer 20) (from "16 + 4")
  (wrong-if 2 "That counts the 1s. Each 1 is worth its place: 16 and 4.")
  (hint "Add 16 and 4."))
```

So: put a 1 in the biggest place that fits, go on with what is left,
and read your answer back to check it.
