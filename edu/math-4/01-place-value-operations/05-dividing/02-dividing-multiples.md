# Dividing tens, hundreds and thousands

```lesson
(objective "Divide a multiple of 10, 100 or 1,000 by a one-digit number, such as 2,400 ÷ 6 = 400, with place value and related facts.")
(standards "4.NBT.B.6")
(minutes 20)
```

You can divide numbers like 2,400 with a fact you know.

2,400 is 24 hundreds. Share 24 hundreds into 6 equal groups: each gets
4 hundreds. So 2,400 ÷ 6 = 400.

Move the slider to see the same fact in other places.

```figure
(define k (slider 'k 0 2 2 "Place" 1))
(for-range 0 3
  (lambda (i)
    (label 160 (+ 50 (* 34 i))
      (string-append (m4p1-num (* 24 (expt 10 i))) " ÷ 6 = " (m4p1-num (* 4 (expt 10 i))))
      'big (if (= i k) 'bold 'ink))))
(frame 70 (+ 30 (* 34 k)) 180 28 'ink 2)
(label 160 180 (string-append "24 " (list-ref '("ones" "tens" "hundreds") k)
  " ÷ 6 = 4 " (list-ref '("ones" "tens" "hundreds") k)) 'body)
```

```check
(number
  (ask "3,500 ÷ 7 = ?")
  (answer 500) (from "3500 / 7") (true "7 * 500 = 3500")
  (wrong-if 50 "3,500 is 35 hundreds. 35 hundreds ÷ 7 is 5 hundreds: 500.")
  (wrong-if 5 "35 ÷ 7 = 5, but these are hundreds. 5 hundreds is 500.")
  (hint "3,500 is 35 hundreds.")
  (hint "35 ÷ 7 = 5. So 5 hundreds."))
```

---

## Use the related fact

Dividing is finding an unknown factor. To find 2,400 ÷ 6, think:
6 × ? = 2,400.

6 × 4 = 24, so 6 × 400 = 2,400. The answer is 400.

```check
(number
  (ask "Fill in the missing number: 8 × ? = 5,600")
  (answer 700) (from "5600 / 8") (true "8 * 700 = 5600")
  (wrong-if 70 "8 × 70 is only 560. 5,600 is 56 hundreds, so the missing factor is 7 hundreds.")
  (wrong-if 7 "8 × 7 = 56, but 5,600 is 56 hundreds. The missing factor is 700.")
  (hint "8 × 7 = 56."))
```

---

## Tens and thousands

It works for every place.

- 280 ÷ 4: 28 tens ÷ 4 = 7 tens, so 70.
- 12,000 ÷ 3: 12 thousands ÷ 3 = 4 thousands, so 4,000.

```check
(number
  (ask "18,000 ÷ 9 = ?")
  (answer 2000) (from "18000 / 9") (true "9 * 2000 = 18000")
  (wrong-if 200 "18,000 is 18 thousands. 18 thousands ÷ 9 = 2 thousands: 2,000.")
  (wrong-if 20000 "9 × 20,000 is 180,000. 18,000 is 18 thousands, so the answer is 2 thousands.")
  (hint "18,000 is 18 thousands."))
```

---

## When the fact has a 0

Count the places with care. 4,000 ÷ 5: 4,000 is 40 hundreds. 40 ÷ 5
= 8, so 8 hundreds: 800.

```check
(number
  (ask "3,000 ÷ 6 = ?")
  (answer 500) (from "3000 / 6") (true "6 * 500 = 3000")
  (wrong-if 5000 "6 × 5,000 is 30,000. 3,000 is 30 hundreds, and 30 ÷ 6 = 5: so 5 hundreds.")
  (wrong-if 50 "6 × 50 is only 300. 3,000 is 30 hundreds: the answer is 5 hundreds.")
  (hint "3,000 is 30 hundreds.")
  (hint "30 ÷ 6 = 5."))
```

---

## Worked example

```example
(example
  (problem "Find 4,200 ÷ 7.")
  (step "4,200 is 42 hundreds.")
  (step "42 ÷ 7 = 6, so 6 hundreds.")
  (step "Check: 7 × 600 = 4,200.")
  (answer "4,200 ÷ 7 = 600"))
```

```example
(example
  (problem "Find 450 ÷ 9.")
  (step "450 is 45 tens.")
  (step "45 ÷ 9 = 5, so 5 tens.")
  (step (number (ask "5 tens = ?") (answer 50) (from "450 / 9") (true "9 * 50 = 450")
    (wrong-if 5 "The answer is 5 tens, which is 50.")))
  (answer "450 ÷ 9 = 50"))
```

---

## Practice

```check
(number
  (ask "320 ÷ 8 = ?")
  (answer 40) (from "320 / 8") (true "8 * 40 = 320")
  (wrong-if 4 "320 is 32 tens. 32 tens ÷ 8 = 4 tens: 40.")
  (wrong-if 400 "8 × 400 is 3,200. 320 is 32 tens, so the answer is 4 tens.")
  (hint "320 is 32 tens."))
```

```check
(number
  (ask "A farmer packs 2,700 apples into 9 equal crates. How many apples go in each crate?")
  (answer 300) (unit "apples") (from "2700 / 9") (true "9 * 300 = 2700")
  (wrong-if 30 "2,700 is 27 hundreds. 27 hundreds ÷ 9 = 3 hundreds: 300.")
  (wrong-if 2709 "Sharing into equal crates means dividing: 2,700 ÷ 9.")
  (hint "27 ÷ 9 = 3."))
```

---

```check
(number
  (ask "Fill in the missing number: ? ÷ 4 = 600")
  (answer 2400) (from "4 * 600") (true "2400 / 4 = 600")
  (wrong-if 150 "150 is 600 ÷ 4. Here 600 is the answer: the missing number is 4 × 600.")
  (wrong-if 240 "240 ÷ 4 is only 60. The missing number is 4 × 600 = 2,400.")
  (hint "Use the related fact: 4 × 600 = ?"))
```

```check
(number
  (ask "35,000 ÷ 5 = ?")
  (answer 7000) (from "35000 / 5") (true "5 * 7000 = 35000")
  (wrong-if 700 "35,000 is 35 thousands. 35 thousands ÷ 5 = 7 thousands: 7,000.")
  (hint "35,000 is 35 thousands."))
```

So: name it in tens, hundreds or thousands, then divide with the fact.
