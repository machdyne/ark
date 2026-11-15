# Between two whole numbers

```lesson
(objective "Tell between which two whole numbers a product such as 5 x 3/8 lies.")
(standards "4.NF.B.4c")
(minutes 20)
```

You can tell between which two whole numbers a product lies.

$5 * (3/8) = 15/8$. 8 eighths make 1, and 16 eighths make 2. 15 is
between 8 and 16. So $15/8$ is between 1 and 2.

```figure
(m4p3-line 30 290 100 3 8 'whole)
(nl-mark (/ 15 8) 'warm)
(math (nl-x (/ 15 8)) 60 "15/8" 16)
(caption "15/8 lies between 1 and 2.")
```

```check
(choice
  (ask "Between which two whole numbers is" (math "4 * (2/3)") "?")
  (right "2 and 3" (true "2 < 4 * 2/3 < 3"))
  (wrong "8 and 9"
    "8 is the numerator: 8/3. 8 thirds is less than 3 wholes, since 3 wholes = 9 thirds.")
  (wrong "0 and 1"
    "One 2/3 is less than 1, but 4 groups of it are more. 8/3 is more than 6/3 = 2.")
  (hint "8/3: 6/3 = 2 and 9/3 = 3."))
```

---

## Use multiples of the denominator

To place $a/b$, find the multiples of $b$ just below and just above
$a$. For $17/5$: $15 = 3 * 5$ and $20 = 4 * 5$. 17 is between them, so
$17/5$ is between 3 and 4.

Move the slider.

```figure
(define n (slider 'n 1 8 5 "Groups of 3/8" 1))
(define k (* n 3))
(m4p3-line 30 290 100 3 8 'whole)
(nl-mark (/ k 8) 'warm)
(math (nl-x (/ k 8)) 60 (m4p3-s k 8) 16)
(math 160 180 (string-append (fmt n 0) " * (3/8) = " (m4p3-s k 8)) 22)
```

```check
(number
  (ask "6 × 3/4 = 18/4. It lies between which whole number and the next? Type the smaller one.")
  (answer 4) (true "4 < 18/4 < 5")
  (wrong-if 18 "18 is the numerator. 18 fourths is 4 wholes and 2 fourths.")
  (wrong-if 5 "5 wholes would be 20 fourths. 18/4 is less than that.")
  (hint "16/4 = 4 and 20/4 = 5."))
```

---

## Worked example

```example
(example
  (problem "Between which two whole numbers is 7 × 2/5?")
  (step "7 × 2/5 = 14/5.")
  (step "10/5 = 2 and 15/5 = 3. 14 is between 10 and 15.")
  (answer "Between 2 and 3."))
```

```example
(example
  (problem "Between which two whole numbers is 3 × 5/6?")
  (step "3 × 5/6 = 15/6.")
  (step (choice (ask "12/6 = 2 and 18/6 = 3. So 15/6 is between ...")
    (right "2 and 3" (true "2 < 15/6 < 3"))
    (wrong "15 and 16" "15 is the numerator, not the number of wholes.")))
  (answer "Between 2 and 3."))
```

---

## Practice

```check
(number
  (ask "5 × 3/10 = 15/10. Type the whole number just below it.")
  (answer 1) (true "1 < 15/10 < 2")
  (wrong-if 15 "15 tenths is 1 whole and 5 tenths.")
  (wrong-if 2 "2 = 20/10, which is more than 15/10.")
  (hint "10/10 = 1."))
```

```check
(choice
  (ask "Between which two whole numbers is" (math "9 * (1/2)") "?")
  (right "4 and 5" (true "4 < 9 * 1/2 < 5"))
  (wrong "9 and 10" "9 halves is not 9 wholes. 2 halves make 1 whole.")
  (wrong "1 and 2" "9/2 is more than 4/2 = 2. Keep going: 8/2 = 4.")
  (hint "8/2 = 4 and 10/2 = 5."))
```

---

```check
(choice
  (ask "Is" (math "6 * (2/12)") "more than 1, less than 1, or equal to 1?")
  (right "Equal to 1" (true "6 * 2/12 = 1"))
  (wrong "More than 1" (false "6 * 2/12 > 1")
    "6 × 2/12 = 12/12, and 12 twelfths is exactly 1 whole.")
  (wrong "Less than 1" (false "6 * 2/12 < 1")
    "12/12 has all 12 parts of the whole. That is 1.")
  (hint "6 × 2 = 12."))
```

So: write the product as a fraction, then find the multiples of the
denominator just below and above the numerator.
