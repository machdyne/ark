# Checking products

```lesson
(objective "Check a product with an estimate and by multiplying the factors in the other order.")
(standards "5.NBT.B.5")
(minutes 20)
```

You can check a product in two ways: with an estimate, and by
multiplying in the other order.

**Way 1: estimate.** Ivy finds 263 × 54 = 14,202. Round each factor to
its greatest place: 300 × 50 = 15,000. Her answer is near 15,000, so it
is reasonable.

An estimate catches big mistakes, like a missing zero. It cannot show
that every digit is right.

```check
(choice
  (ask "Raj finds 615 × 42 = 4,920. Which estimate shows a mistake?")
  (right "600 × 40 = 24,000, much bigger than 4,920" (true "600 * 40 = 24000"))
  (wrong "6 × 4 = 24, which is near 49" (false "6 * 4 = 4920")
    "6 × 4 leaves out the powers of ten. 600 × 40 = 24,000, so 4,920 is far too small.")
  (wrong "615 + 42 = 657, which is less than 4,920" (false "615 + 42 = 4920")
    "Adding does not estimate a product. Round and multiply.")
  (hint "Round 615 and 42 to their greatest places, then multiply."))
```

---

## Way 2: the other order

The commutative property says you can multiply factors in either order
and get the same product. So work 54 × 263 as well as 263 × 54.

The rows are different, but the sum must be the same:

| 263 × 54 | 54 × 263 |
| 263 × 4 = 1,052 | 54 × 3 = 162 |
| 263 × 50 = 13,150 | 54 × 60 = 3,240 |
| | 54 × 200 = 10,800 |
| 14,202 | 14,202 |

```check
(number
  (ask "Check 38 × 472 by finding 472 × 38. What is the product?")
  (answer 17936) (from "472 * 38") (true "38 * 472 = 472 * 38")
  (wrong-if 5192 "The second row is 472 × 30 = 14,160, not 1,416. Add 3,776 + 14,160.")
  (hint "472 × 8 = 3,776.")
  (hint "472 × 30 = 14,160."))
```

---

## If the checks disagree

If the two orders give different products, at least one is wrong. Look
for:

- a regrouped digit added in the wrong row;
- a missing 0 at the start of a row;
- a mistake when adding the rows.

```check
(choice
  (ask "Zoe gets 1,825 × 37 = 12,775 + 5,475 = 18,250. Her estimate is 2,000 × 40 = 80,000. What is the likely mistake?")
  (right "The second row should be 1,825 × 30 = 54,750, not 5,475." (true "1825 * 30 = 54750"))
  (wrong "The estimate is wrong, so her answer is fine." (false "2000 * 40 = 18250")
    "The estimate 80,000 is far from 18,250. Trust the estimate to show a big mistake.")
  (wrong "The first row should be 1,825 × 7 = 1,277." (false "1825 * 7 = 1277")
    "1,825 × 7 = 12,775, so the first row is right. Look at the second row's zero.")
  (hint "Compare the second row with 1,825 × 30."))
```

---

## Worked example

```example
(example
  (problem "Check 125 × 36 = 4,500.")
  (step "Estimate: 100 × 40 = 4,000. 4,500 is near it.")
  (step "Other order: 36 × 125 = 36 × 5 + 36 × 20 + 36 × 100 = 180 + 720 + 3,600 = 4,500.")
  (answer "Both checks agree: 125 × 36 = 4,500."))
```

```example
(example
  (problem "Check 45 × 28 = 1,260 with an estimate.")
  (step "45 is about 50 and 28 is about 30.")
  (step (number (ask "50 × 30 = ?") (answer 1500) (from "50 * 30")
    (wrong-if 150 "5 × 3 = 15, and 10 × 10 = 100. So 1,500.")))
  (answer "1,260 is near 1,500: reasonable."))
```

---

## Practice

```check
(choice
  (ask "Which product is reasonable for 492 × 21?")
  (right "10,332" (true "492 * 21 = 10332"))
  (wrong "1,033" (false "492 * 21 = 1033")
    "500 × 20 = 10,000. 1,033 is about 10 times too small: a 0 is missing.")
  (wrong "103,320" (false "492 * 21 = 103320")
    "500 × 20 = 10,000. 103,320 is about 10 times too big.")
  (hint "Estimate: 500 × 20."))
```

```check
(number
  (ask "Check 54 × 263 by finding 263 × 54.")
  (answer 14202) (from "263 * 54") (true "54 * 263 = 263 * 54")
  (wrong-if 2367 "The second row is 263 × 50 = 13,150. Add 1,052 + 13,150.")
  (hint "263 × 4 = 1,052."))
```

---

```check
(choice
  (ask "Why does 38 × 472 give the same product as 472 × 38?")
  (right "Factors can be multiplied in either order: the commutative property." (true "38 * 472 = 472 * 38"))
  (wrong "Because both have the digits 3, 8, 4, 7 and 2." "Same digits do not make the same product: 38 × 472 and 83 × 274 differ. The order of the factors does not matter.")
  (wrong "They do not: the bigger factor must go first." (false "38 * 472 != 472 * 38")
    "Either factor can go first. The rows differ, but the product is the same.")
  (hint "Think of an array turned on its side."))
```

```check
(number
  (ask "Estimate 6,180 × 47 to check a product. Round each factor to its greatest place.")
  (answer 300000) (from "6000 * 50")
  (wrong-if 30000 "6 × 5 = 30, then × 10,000 for 1,000 × 10. So 300,000.")
  (hint "6,000 × 50."))
```

So: an estimate shows whether a product is about right, and the other
order checks every digit.
