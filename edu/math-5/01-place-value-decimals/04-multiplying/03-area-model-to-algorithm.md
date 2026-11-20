# From area model to algorithm

```lesson
(objective "Match each row of the standard algorithm for a two-digit by two-digit product to the parts of an area model.")
(standards "5.NBT.B.5")
(minutes 25)
```

You can see how each row of the standard algorithm matches an area
model.

Find 34 × 26 with an area model. Split 34 into 30 + 4 and 26 into
20 + 6. The four parts are partial products:

**600 + 80 + 180 + 24 = 884**

```figure
(define c (choice 'c '("area model" "algorithm") "Show"))
(if (= c 0)
  (m5p1-area 80 40 200 140 '(30 4) '(20 6) 4)
  (m5p1-mult 220 40 34 26 '() '(204 680) '("34 × 6" "34 × 20") 2))
```

```check
(number
  (ask "In the area model for 34 × 26, what is the part 4 × 20?")
  (answer 80) (from "4 * 20")
  (wrong-if 8 "The 2 in 26 is 2 tens, so the side is 20. 4 × 20 = 80.")
  (wrong-if 24 "24 is 4 × 6, the part in the bottom row.")
  (hint "Find the column for 4 and the row for 20."))
```

---

## The first row: times the ones

The standard algorithm multiplies 34 by the ones digit of 26 first.

$$ 34 * 6 = 204 $$

In the area model, that is the bottom row: $180 + 24 = 204$.

```check
(choice
  (ask "Which parts of the area model make the first row of the algorithm, 34 × 6 = 204?")
  (right "180 and 24" (true "180 + 24 = 204"))
  (wrong "600 and 80" (false "600 + 80 = 204")
    "600 and 80 are 30 × 20 and 4 × 20: the row for 20, not 6.")
  (wrong "600 and 180" (false "600 + 180 = 204")
    "Those are the parts in the column for 30. The first row multiplies all of 34 by 6.")
  (hint "Which row of the area model is for 6?"))
```

---

## The second row: times the tens

Next, the algorithm multiplies 34 by the 2 tens of 26: $34 * 20 = 680$.
Many people write a 0 in the ones place first, since 20 has no ones.

In the area model, that is the top row: $600 + 80 = 680$.

Then add the rows: $204 + 680 = 884$.

```check
(number
  (ask "In 34 × 26, the second row of the standard algorithm is 34 × 20. What is it?")
  (answer 680) (from "34 * 20")
  (wrong-if 68 "The 2 in 26 is 2 tens. 34 × 20 = 680, not 34 × 2.")
  (wrong-if 204 "204 is the first row, 34 × 6.")
  (hint "Find 34 × 2, then write a 0."))
```

---

## Worked example

```example
(example
  (problem "Find 52 × 47 with the standard algorithm, and match each row to an area model.")
  (step "First row: 52 × 7 = 364. In the area model, 350 + 14.")
  (step "Second row: 52 × 40 = 2,080. In the area model, 2,000 + 80.")
  (step "Add the rows: 364 + 2,080 = 2,444.")
  (answer "52 × 47 = 2,444"))
```

```example
(example
  (problem "Find 63 × 18.")
  (step "First row: 63 × 8 = 504.")
  (step "Second row: 63 × 10 = 630.")
  (step (number (ask "Add the rows: 504 + 630 = ?") (answer 1134) (from "63 * 18")
    (wrong-if 567 "The second row is 63 × 10 = 630, not 63 × 1 = 63.")))
  (answer "63 × 18 = 1,134"))
```

---

## Practice

```check
(number
  (ask "For 45 × 23, what is the first row of the standard algorithm, 45 × 3?")
  (answer 135) (from "45 * 3")
  (wrong-if 125 "Add the regrouped 1. 5 × 3 = 15: write 5, regroup 1. 4 × 3 + 1 = 13. So 135.")
  (hint "5 × 3 = 15. Write 5, regroup 1."))
```

```check
(number
  (ask "For 45 × 23, the second row is 45 × 20 = 900. What is 45 × 23?")
  (answer 1035) (from "45 * 23") (true "135 + 900 = 1035")
  (wrong-if 225 "The second row is 900, not 90. Add 135 + 900.")
  (hint "Add the rows: 135 + 900."))
```

---

```check
(choice
  (ask "In 71 × 36, the second row is 2,130. Which parts of an area model add to 2,130?")
  (right "2,100 and 30" (true "70 * 30 + 1 * 30 = 2130"))
  (wrong "420 and 6" (false "420 + 6 = 2130")
    "Those are 70 × 6 and 1 × 6, the first row. The second row is for the 3 tens.")
  (wrong "2,100 and 420" (false "2100 + 420 = 2130")
    "Those are both in the column for 70. The second row is 71 × 30: 70 × 30 and 1 × 30.")
  (hint "The second row multiplies by the 30 in 36."))
```

```check
(number
  (ask "Find 29 × 54.")
  (answer 1566) (from "29 * 54") (true "29 * 4 + 29 * 50 = 1566")
  (wrong-if 261 "The second row is 29 × 50 = 1,450, not 29 × 5. Add 116 + 1,450.")
  (hint "First row: 29 × 4 = 116.")
  (hint "Second row: 29 × 50 = 1,450."))
```

So: each row of the standard algorithm is one row of the area model,
added up.
