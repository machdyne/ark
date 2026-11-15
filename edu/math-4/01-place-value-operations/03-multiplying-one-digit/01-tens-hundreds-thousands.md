# Multiplying by tens, hundreds and thousands

```lesson
(objective "Multiply a one-digit number by a multiple of 10, 100 or 1,000, such as 6 x 400 = 2,400, with place value.")
(standards "4.NBT.B.5")
(minutes 20)
```

You can multiply by numbers like 400 or 3,000 with a fact you know.

400 is 4 hundreds. So 6 × 400 is 6 groups of 4 hundreds. That is 24
hundreds, and 24 hundreds is 2,400.

Move the slider to see the same fact in bigger places.

```figure
(define k (slider 'k 0 3 2 "Place" 1))
(define p (expt 10 k))
(for-range 0 4
  (lambda (i)
    (label 160 (+ 40 (* 32 i))
      (string-append "6 × " (m4p1-num (* 4 (expt 10 i))) " = " (m4p1-num (* 24 (expt 10 i))))
      'big (if (= i k) 'bold 'ink))))
(frame 60 (+ 20 (* 32 k)) 200 28 'ink 2)
(label 160 190 (string-append "6 × 4 " (list-ref '("ones" "tens" "hundreds" "thousands") k)
  " = 24 " (list-ref '("ones" "tens" "hundreds" "thousands") k)) 'body)
```

```check
(number
  (ask "3 × 500 = ?")
  (answer 1500) (from "3 * 500")
  (wrong-if 150 "3 × 5 = 15. But 500 is 5 hundreds, so the answer is 15 hundreds: 1,500.")
  (wrong-if 503 "That is 3 + 500. Multiply: 3 groups of 5 hundreds.")
  (hint "500 is 5 hundreds. What is 3 × 5?")
  (hint "15 hundreds = ?"))
```

---

## Thousands

The same works for thousands. 3,000 is 3 thousands.

7 × 3,000 is 7 groups of 3 thousands: 21 thousands, which is 21,000.

```check
(number
  (ask "8 × 6,000 = ?")
  (answer 48000) (from "8 * 6000")
  (wrong-if 4800 "8 × 6 = 48, and 6,000 is 6 thousands. So the answer is 48 thousands: 48,000.")
  (wrong-if 480000 "48 thousands is 48,000. There are only 3 zeros from the thousands.")
  (hint "8 × 6 = 48."))
```

---

## When the fact ends in 0

Count the zeros with care. 5 × 800: the fact 5 × 8 = 40 already ends in
0. So 40 hundreds is 4,000, with 3 zeros.

```check
(number
  (ask "4 × 5,000 = ?")
  (answer 20000) (from "4 * 5000")
  (wrong-if 2000 "4 × 5 = 20, and that is 20 thousands. 20 thousands is 20,000.")
  (wrong-if 200000 "20 thousands is 20,000. The fact's 0 and the 3 zeros of the thousands make 4 zeros.")
  (hint "4 × 5 = 20. How much is 20 thousands?"))
```

---

## Why it works

400 = 4 × 100. So by the associative property you can group the
factors in another way:

6 × 400 = 6 × (4 × 100) = (6 × 4) × 100 = 24 × 100 = 2,400

```check
(choice
  (ask "Which shows why 9 × 300 = 2,700?")
  (right "9 × 300 = (9 × 3) × 100 = 27 × 100" (true "9 * 300 = (9 * 3) * 100"))
  (wrong "9 × 300 = 9 × 3 + 100 = 127" (false "9 * 300 = 9 * 3 + 100")
    "300 is 3 × 100, not 3 + 100. Group the factors: (9 × 3) × 100.")
  (wrong "9 × 300 = (9 × 3) × 10 = 270" (false "9 * 300 = (9 * 3) * 10")
    "300 is 3 hundreds, so multiply by 100, not 10.")
  (hint "300 = 3 × 100."))
```

---

## Worked example

```example
(example
  (problem "Find 7 × 900.")
  (step "900 is 9 hundreds.")
  (step "7 × 9 = 63, so the answer is 63 hundreds.")
  (step "63 hundreds is 6,300.")
  (answer "7 × 900 = 6,300"))
```

```example
(example
  (problem "Find 6 × 5,000.")
  (step "5,000 is 5 thousands.")
  (step "6 × 5 = 30, so the answer is 30 thousands.")
  (step (number (ask "30 thousands = ?") (answer 30000) (from "6 * 5000")
    (wrong-if 3000 "30 thousands is 30 groups of 1,000: 30,000.")))
  (answer "6 × 5,000 = 30,000"))
```

---

## Practice

```check
(number
  (ask "9 × 70 = ?")
  (answer 630) (from "9 * 70")
  (wrong-if 63 "9 × 7 = 63, and 70 is 7 tens. So 63 tens: 630.")
  (hint "9 × 7 = 63. How much is 63 tens?"))
```

```check
(number
  (ask "Fill in the missing number: 7 × ? = 2,800")
  (answer 400) (from "2800 / 7") (true "7 * 400 = 2800")
  (wrong-if 40 "7 × 40 is only 280. 2,800 is 28 hundreds, so the missing number is 4 hundreds.")
  (wrong-if 4 "7 × 4 = 28. But 2,800 is 28 hundreds, so the missing number is 400.")
  (hint "2,800 is 28 hundreds.")
  (hint "7 × 4 = 28."))
```

---

```check
(number
  (ask "A box holds 2,000 paper clips. How many clips are in 8 boxes?")
  (answer 16000) (unit "clips") (from "8 * 2000")
  (wrong-if 1600 "8 × 2 = 16, and the boxes hold thousands. 16 thousands is 16,000.")
  (wrong-if 2008 "That adds the 8. There are 8 groups of 2,000, so multiply.")
  (hint "8 × 2 = 16."))
```

```check
(number
  (ask "5 × 600 = ?")
  (answer 3000) (from "5 * 600")
  (wrong-if 300 "5 × 6 = 30, and that is 30 hundreds. 30 hundreds is 3,000.")
  (wrong-if 30000 "30 hundreds is 3,000. The fact's 0 and the 2 zeros of the hundreds make 3 zeros.")
  (hint "5 × 6 = 30. How much is 30 hundreds?"))
```

So: use the fact, then make it that many tens, hundreds or thousands.
