# Multiplying by multiples of 10

```lesson
(objective "Multiply a one-digit number by a multiple of 10, such as 9 x 80.")
(standards "3.NBT.A.3")
(minutes 20)
```

You can multiply by 20, 30, up to 90 using a fact you know.

40 is 4 tens. So 3 × 40 is 3 groups of 4 tens. That is 12 tens, and
12 tens is 120.

Move the sliders. Each rod is 1 ten.

```figure
(define n (slider 'n 1 6 3 "Groups" 1))
(define t (slider 't 1 5 4 "Tens in each" 1))
(for-range 0 n (lambda (i) (md-ten (+ 12 (* i 52)) 30 0 t 0 4)))
(label 160 110 (string-append (fmt n 0) " groups of " (fmt t 0) " tens = " (fmt (* n t) 0) " tens") 'body)
(label 160 150 (string-append (fmt n 0) " × " (fmt (* 10 t) 0) " = " (fmt (* 10 n t) 0)) 'big 'bold)
```

```check
(number
  (ask "2 × 30 is 2 groups of 3 tens. How many tens is that?")
  (answer 6) (from "2 * 3")
  (wrong-if 5 "5 is 2 + 3. There are 2 groups of 3 tens: 3 + 3 = 6 tens.")
  (hint "2 × 3 = ?"))
```

---

## Tens times a fact

To find 9 × 80:

1. Think of the fact without the 0: 9 × 8 = 72.
2. That is 72 tens.
3. 72 tens is 720.

This works because 80 = 8 × 10. So 9 × 80 = (9 × 8) × 10, by the
associative property.

```check
(number
  (ask "9 × 80 = ?")
  (answer 720) (from "9 * 80")
  (wrong-if 72 "72 is 9 × 8. But 80 is 8 tens, so the answer is 72 tens: 720.")
  (wrong-if 89 "89 is 9 + 80. Multiply: 9 × 8 = 72, so 9 × 80 = 72 tens.")
  (hint "9 × 8 = 72. How much is 72 tens?"))
```

---

## Watch out for zeros

Count the zeros carefully. 5 × 60: 5 × 6 = 30. That is 30 tens, which
is 300. The fact already ends in 0, so the answer has 2 zeros.

```check
(number
  (ask "5 × 40 = ?")
  (answer 200) (from "5 * 40")
  (wrong-if 20 "20 is 5 × 4. But 40 is 4 tens, so the answer is 20 tens: 200.")
  (wrong-if 2000 "5 × 4 = 20, and 20 tens is 200. There is only one extra 0.")
  (hint "5 × 4 = 20. How much is 20 tens?"))
```

---

## Worked example

```example
(example
  (problem "Find 6 × 70.")
  (step "Think of the fact: 6 × 7 = 42.")
  (step "70 is 7 tens, so the answer is 42 tens.")
  (step "42 tens is 420.")
  (answer "6 × 70 = 420"))
```

```example
(example
  (problem "Find 4 × 50.")
  (step "Think of the fact: 4 × 5 = 20.")
  (step "50 is 5 tens, so the answer is 20 tens.")
  (step (number (ask "20 tens = ?") (answer 200) (from "4 * 50")
    (wrong-if 20 "20 is the number of tens. 20 tens is 200.")))
  (answer "4 × 50 = 200"))
```

---

## Practice

```check
(number
  (ask "3 × 90 = ?")
  (answer 270) (from "3 * 90")
  (wrong-if 27 "27 is 3 × 9. 90 is 9 tens, so the answer is 27 tens: 270.")
  (hint "3 × 9 = 27. 27 tens is ...?"))
```

```check
(number
  (ask "8 × 20 = ?")
  (answer 160) (from "8 * 20")
  (wrong-if 16 "16 is 8 × 2. 20 is 2 tens, so the answer is 16 tens: 160.")
  (wrong-if 28 "28 is 8 + 20. Multiply: 8 × 2 = 16, so 16 tens.")
  (hint "8 × 2 = 16. 16 tens is ...?"))
```

---

```check
(number
  (ask "A box holds 60 pins. How many pins are in 7 boxes?")
  (answer 420) (unit "pins") (from "7 * 60")
  (wrong-if 42 "42 is 7 × 6. Each box holds 6 tens, so 7 boxes hold 42 tens: 420.")
  (hint "7 × 6 = 42. 42 tens is ...?"))
```

```check
(number
  (ask "Find the missing number: 5 × ? = 350")
  (answer 70) (from "350 / 5") (true "5 * 70 = 350")
  (wrong-if 7 "5 × 7 is only 35. 350 is 35 tens, so the missing number is 7 tens: 70.")
  (hint "350 is 35 tens. 5 × 7 = 35."))
```

So: to multiply by a multiple of 10, use the fact, then make it that many tens.
