# Estimating products

```lesson
(objective "Estimate a product by rounding each factor to its greatest place and using powers of ten, such as 382 x 47 is about 400 x 50 = 20,000.")
(standards "5.NBT.B.5" "5.NBT.A.2")
(minutes 20)
```

You can estimate a product by rounding each factor first.

To estimate 382 × 47:

1. Round each factor to its greatest place: 382 is about 400, and 47 is
   about 50.
2. Multiply the digits that are not 0: $4 * 5 = 20$.
3. Multiply by the powers of ten: 400 is $4 * 10^2$ and 50 is
   $5 * 10$. Together that is $20 * 10^3$.

$$ 400 * 50 = 20000 $$

So 382 × 47 is about 20,000.

```figure
(m5p1-area 70 40 200 120 '(400) '(50) 1)
(label 170 190 "382 × 47 is about 400 × 50" 'body)
(label 170 214 "= 20,000" 'body 'bold)
```

```check
(number
  (ask "Estimate 618 × 32 by rounding each factor to its greatest place.")
  (answer 18000) (from "600 * 30")
  (wrong-if 1800 "6 × 3 = 18, but you must also multiply by the powers of ten: 100 × 10 = 1,000. So 18,000.")
  (wrong-if 180000 "Count the zeros: 600 has 2 and 30 has 1. That is 3 zeros: 18,000.")
  (wrong-if 21000 "618 rounds to 600, not 700. The tens digit, 1, is less than 5.")
  (hint "618 is about 600, and 32 is about 30.")
  (hint "6 × 3 = 18. Then 100 × 10 = 1,000."))
```

---

## Count the zeros

The powers of ten in the rounded factors tell how many zeros to write
after the product of the other digits.

$$ 700 * 90 = 63 * 10^3 = 63000 $$

Take care when that product ends in 0: $500 * 40$ is $20 * 10^3$, which
is 20,000, with 4 zeros.

```check
(number
  (ask "What is 500 × 80?")
  (answer 40000) (from "500 * 80")
  (wrong-if 4000 "5 × 8 = 40 already ends in a 0. Then write 3 more zeros for 100 × 10: 40,000.")
  (wrong-if 400000 "5 × 8 = 40, and 100 × 10 = 1,000. 40 × 1,000 = 40,000.")
  (hint "5 × 8 = 40.")
  (hint "40 × 1,000."))
```

---

## Why estimate

An estimate tells you about how big the answer is. If an exact answer
is far from the estimate, check your work.

```check
(choice
  (ask "Mia finds 289 × 61 = 1,763. Use an estimate to judge her answer.")
  (right "It is too small: 300 × 60 = 18,000." (true "300 * 60 = 18000"))
  (wrong "It looks right: 3 × 6 = 18." (false "3 * 6 = 1763")
    "3 × 6 = 18 is only the first part. 300 × 60 is 18 × 1,000, so the answer is near 18,000.")
  (wrong "It is too big: 289 + 61 = 350." (false "289 + 61 = 1763")
    "Adding the factors does not estimate a product. Round and multiply: 300 × 60.")
  (hint "Round 289 and 61 to their greatest places, then multiply."))
```

---

## Worked example

```example
(example
  (problem "Estimate 4,190 × 26.")
  (step "4,190 is about 4,000. 26 is about 30.")
  (step "4 × 3 = 12.")
  (step "1,000 × 10 = 10,000, which is 10 to the 4th power.")
  (answer "4,190 × 26 is about 120,000."))
```

```example
(example
  (problem "Estimate 853 × 7.")
  (step "853 is about 900. 7 stays 7.")
  (step (number (ask "900 × 7 = ?") (answer 6300) (from "900 * 7")
    (wrong-if 630 "9 × 7 = 63, then × 100: 6,300.")))
  (answer "853 × 7 is about 6,300."))
```

---

## Practice

```check
(number
  (ask "Estimate 72 × 48 by rounding each factor to its greatest place.")
  (answer 3500) (from "70 * 50")
  (wrong-if 350 "7 × 5 = 35, and 10 × 10 = 100. So 3,500.")
  (wrong-if 4000 "72 rounds to 70, not 80: its ones digit is 2.")
  (hint "70 × 50."))
```

```check
(number
  (ask "Estimate 2,815 × 91 by rounding each factor to its greatest place.")
  (answer 270000) (from "3000 * 90")
  (wrong-if 27000 "3 × 9 = 27, and 1,000 × 10 = 10,000. So 270,000.")
  (wrong-if 180000 "2,815 rounds to 3,000, not 2,000. The hundreds digit, 8, is 5 or more.")
  (hint "3,000 × 90."))
```

---

```check
(choice
  (ask "Which is the best estimate of 47 × 52?")
  (right "2,500" (true "50 * 50 = 2500"))
  (wrong "250" (false "50 * 50 = 250")
    "5 × 5 = 25, but 10 × 10 = 100. 25 × 100 = 2,500.")
  (wrong "25,000" (false "50 * 50 = 25000")
    "There are only 2 zeros in 50 × 50, one in each factor.")
  (wrong "99" (false "47 + 52 = 2500")
    "99 is the sum, 47 + 52. A product of two numbers near 50 is near 2,500.")
  (hint "Both are about 50."))
```

```check
(number
  (ask "What is 6,000 × 50?")
  (answer 300000) (from "6000 * 50")
  (wrong-if 30000 "6 × 5 = 30, which has its own 0. Then 4 more zeros: 300,000.")
  (wrong-if 3000000 "Count again: 6 × 5 = 30, then × 10,000 = 300,000.")
  (hint "6 × 5 = 30, and 1,000 × 10 = 10,000."))
```

So: round each factor to its greatest place, multiply the digits, then
write the zeros for the powers of ten.
