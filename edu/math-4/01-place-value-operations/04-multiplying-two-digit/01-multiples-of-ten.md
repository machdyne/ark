# Multiplying tens by tens

```lesson
(objective "Multiply two multiples of 10, such as 30 x 40 = 1,200, with place value and the associative property.")
(standards "4.NBT.B.5")
(minutes 20)
```

You can multiply numbers like 30 × 40 with a fact you know.

Ten tens make a hundred: 10 × 10 = 100. So tens times tens give
hundreds.

Look at a rectangle 30 by 40. It is 3 rows of 4 hundreds squares. That
is 12 hundreds, or 1,200.

```figure
(for-range 0 3
  (lambda (r) (for-range 0 4 (lambda (c) (base-ten (+ 92 (* c 34)) (+ 46 (* r 34)) 1 0 0)))))
(label 160 36 "40 = 4 tens" 'body 'bold)
(text 84 102 "30" 'right 'body 'bold)
(text 84 118 "= 3 tens" 'right 'small)
(label 160 172 "3 tens × 4 tens = 12 hundreds" 'body)
(label 160 200 "30 × 40 = 1,200" 'big 'bold)
```

```check
(number
  (ask "20 × 30 = ?")
  (answer 600) (from "20 * 30")
  (wrong-if 60 "2 × 3 = 6, but tens times tens give hundreds. So 6 hundreds: 600.")
  (wrong-if 6000 "2 tens × 3 tens = 6 hundreds, which is 600. There are only 2 zeros.")
  (wrong-if 50 "That adds 20 + 30. Multiply: 2 tens × 3 tens.")
  (hint "2 × 3 = 6. Tens times tens give hundreds.")
  (hint "6 hundreds = ?"))
```

---

## Why it works

30 = 3 × 10 and 40 = 4 × 10. By the associative and commutative
properties, you can group the factors in any order:

30 × 40 = (3 × 4) × (10 × 10) = 12 × 100 = 1,200

```check
(choice
  (ask "Which shows why 60 × 70 = 4,200?")
  (right "(6 × 7) × (10 × 10) = 42 × 100" (true "60 * 70 = (6 * 7) * (10 * 10)"))
  (wrong "(6 × 7) × 10 = 42 × 10" (false "60 * 70 = (6 * 7) * 10")
    "Each factor has a 10 in it: 60 = 6 × 10 and 70 = 7 × 10. So there are 2 tens: 10 × 10 = 100.")
  (wrong "(6 + 7) × 100 = 13 × 100" (false "60 * 70 = (6 + 7) * 100")
    "The 6 and the 7 are multiplied, not added: 6 × 7 = 42.")
  (hint "60 = 6 × 10 and 70 = 7 × 10."))
```

---

## When the fact ends in 0

Count the zeros with care. 50 × 60: the fact 5 × 6 = 30 ends in 0. 30
hundreds is 3,000, with 3 zeros.

```check
(number
  (ask "40 × 50 = ?")
  (answer 2000) (from "40 * 50")
  (wrong-if 200 "4 × 5 = 20, and that is 20 hundreds. 20 hundreds is 2,000.")
  (wrong-if 20000 "20 hundreds is 2,000. The fact's 0 and the 2 zeros of the hundreds make 3 zeros.")
  (hint "4 × 5 = 20. How much is 20 hundreds?"))
```

---

## Worked example

```example
(example
  (problem "Find 80 × 90.")
  (step "80 is 8 tens and 90 is 9 tens.")
  (step "8 × 9 = 72, and tens times tens give hundreds: 72 hundreds.")
  (step "72 hundreds is 7,200.")
  (answer "80 × 90 = 7,200"))
```

```example
(example
  (problem "Find 20 × 50.")
  (step "2 tens times 5 tens.")
  (step "2 × 5 = 10, so 10 hundreds.")
  (step (number (ask "10 hundreds = ?") (answer 1000) (from "20 * 50")
    (wrong-if 100 "10 hundreds is 10 groups of 100: 1,000.")))
  (answer "20 × 50 = 1,000"))
```

---

## Practice

```check
(number
  (ask "90 × 30 = ?")
  (answer 2700) (from "90 * 30")
  (wrong-if 270 "9 × 3 = 27, and tens times tens give hundreds. 27 hundreds is 2,700.")
  (wrong-if 120 "That adds 90 + 30. Multiply: 9 tens × 3 tens.")
  (hint "9 × 3 = 27."))
```

```check
(number
  (ask "Fill in the missing number: 70 × ? = 5,600")
  (answer 80) (from "5600 / 70") (true "70 * 80 = 5600")
  (wrong-if 800 "70 × 800 is 56,000. 5,600 is 56 hundreds, so you need 7 tens × 8 tens.")
  (wrong-if 8 "70 × 8 is only 560. You need 8 tens: 80.")
  (hint "5,600 is 56 hundreds. 7 × 8 = 56."))
```

---

```check
(number
  (ask "A garden has 40 rows of 60 plants. How many plants is that?")
  (answer 2400) (unit "plants") (from "40 * 60")
  (wrong-if 240 "4 × 6 = 24, and tens times tens give hundreds. 24 hundreds is 2,400.")
  (wrong-if 100 "That adds 40 + 60. 40 rows of 60 is 40 × 60.")
  (hint "4 tens × 6 tens = ? hundreds"))
```

```check
(number
  (ask "60 × 50 = ?")
  (answer 3000) (from "60 * 50")
  (wrong-if 300 "6 × 5 = 30, and that is 30 hundreds. 30 hundreds is 3,000.")
  (wrong-if 30000 "30 hundreds is 3,000. Count the zeros: 1 from the fact and 2 from the hundreds.")
  (hint "6 × 5 = 30. How much is 30 hundreds?"))
```

So: tens times tens give hundreds, so the fact tells you how many hundreds.
