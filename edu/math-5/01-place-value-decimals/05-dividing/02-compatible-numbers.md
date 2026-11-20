# Compatible numbers

```lesson
(objective "Estimate a quotient with compatible numbers, such as 2,350 ÷ 58 is about 2,400 ÷ 60 = 40.")
(standards "5.NBT.B.6")
(minutes 20)
(keywords "compatible numbers")
```

You can estimate a quotient with numbers that are easy to divide.

Estimate 2,350 ÷ 58. First round the divisor: 58 is about 60.

Now find a number near 2,350 that 60 divides easily. 6 goes into 24,
so 60 goes into 2,400.

$$ 2400 ÷ 60 = 40 $$

So 2,350 ÷ 58 is about 40. Numbers that are close to the real ones
and easy to divide, like 2,400 and 60, are **compatible numbers**.

```figure
(m5p1-nl 20 300 110 2000 2800 100 400 0)
(nl-mark 2350 'cool "2,350")
(nl-mark 2400 'warm)
(label (nl-x 2400) 150 "2,400 = 60 × 40" 'small 'bold)
(caption "2,400 is near 2,350, and 60 divides it easily")
```

```check
(number
  (ask "Estimate 3,150 ÷ 42 with compatible numbers. Use 40 for the divisor.")
  (answer 80) (from "3200 ÷ 40")
  (wrong-if 8 "40 × 8 is only 320. 3,200 is 320 tens: 3,200 ÷ 40 = 80.")
  (wrong-if 800 "40 × 800 = 32,000, too big. 3,200 ÷ 40 = 80.")
  (hint "4 goes into 32. So 40 goes into 3,200.")
  (hint "32 ÷ 4 = 8."))
```

---

## Look for a basic fact

To choose a compatible number, look at the first digits and find a
basic fact that is close.

For 4,120 ÷ 73: 73 is about 70. Facts for 7 near 41 are $7 * 6 = 42$
and $7 * 5 = 35$. 42 is closer, so use 4,200.

$$ 4200 ÷ 70 = 60 $$

```check
(choice
  (ask "Which compatible numbers fit 1,780 ÷ 29 best?")
  (right "1,800 ÷ 30" (true "1800 ÷ 30 = 60"))
  (wrong "1,780 ÷ 30" "1,780 is not easy to divide by 30. Change it to a number near it that 3 goes into: 1,800.")
  (wrong "2,000 ÷ 20" "Both numbers moved far from the real ones. 29 is closest to 30, and 1,800 to 1,780.")
  (wrong "1,700 ÷ 30" "3 does not go evenly into 17. Look for a fact: 3 × 6 = 18, so use 1,800.")
  (hint "29 is about 30. Which number near 1,780 does 30 divide easily?"))
```

---

## Estimate, not answer

An estimate is close to the quotient, not equal to it. Use it to know
about how big the answer is, or to check one.

```check
(choice
  (ask "Sam says 5,530 ÷ 91 = 6. Use compatible numbers to judge.")
  (right "5,400 ÷ 90 = 60, so 6 is far too small." (true "5400 ÷ 90 = 60"))
  (wrong "54 ÷ 9 = 6, so he is right." (false "5400 ÷ 90 = 6")
    "54 ÷ 9 = 6 is the basic fact. 5,400 is 540 tens and 90 is 9 tens: 540 ÷ 9 = 60.")
  (wrong "5,500 ÷ 100 = 550, so 6 is too small." (false "5500 ÷ 100 = 550")
    "5,500 ÷ 100 = 55, not 550. The estimate is near 60, so 6 is too small.")
  (hint "91 is about 90. What number near 5,530 does 90 divide easily?"))
```

---

## Worked example

```example
(example
  (problem "Estimate 2,760 ÷ 38.")
  (step "38 is about 40.")
  (step "4 goes into 28: use 2,800.")
  (step "2,800 ÷ 40 = 280 ÷ 4 = 70.")
  (answer "2,760 ÷ 38 is about 70."))
```

```example
(example
  (problem "Estimate 1,215 ÷ 31.")
  (step "31 is about 30.")
  (step "3 goes into 12: use 1,200.")
  (step (number (ask "1,200 ÷ 30 = ?") (answer 40) (from "1200 ÷ 30") (true "40 * 30 = 1200")
    (wrong-if 4 "30 × 4 = 120. 1,200 ÷ 30 = 40.")))
  (answer "1,215 ÷ 31 is about 40."))
```

---

## Practice

```check
(number
  (ask "Estimate 6,320 ÷ 79 with compatible numbers.")
  (answer 80) (from "6400 ÷ 80")
  (wrong-if 8 "80 × 8 = 640. 6,400 ÷ 80 = 80.")
  (hint "79 is about 80. 8 goes into 64."))
```

```check
(number
  (ask "Estimate 4,475 ÷ 52 with compatible numbers. Use 50 for the divisor.")
  (answer 90) (from "4500 ÷ 50")
  (wrong-if 9 "50 × 9 = 450. You need 4,500: 4,500 ÷ 50 = 90.")
  (wrong-if 900 "50 × 900 = 45,000, too big.")
  (hint "5 goes into 45."))
```

---

```check
(choice
  (ask "Which are compatible numbers for 3,620 ÷ 62?")
  (right "3,600 ÷ 60" (true "3600 ÷ 60 = 60"))
  (wrong "3,620 ÷ 60" "60 does not divide 3,620 easily. Change 3,620 to 3,600.")
  (wrong "4,000 ÷ 62" "Round the divisor first, to 60. Then pick a number 60 divides easily.")
  (hint "62 is about 60. 6 goes into 36."))
```

```check
(number
  (ask "A farmer packs 2,450 eggs into cartons of 48. About how many cartons? Use compatible numbers.")
  (answer 50) (from "2500 ÷ 50") (unit "cartons")
  (wrong-if 5 "50 × 5 = 250 eggs. 2,500 ÷ 50 = 50 cartons.")
  (hint "48 is about 50. 5 goes into 25."))
```

So: round the divisor, then change the dividend to a nearby number that
divides easily.
