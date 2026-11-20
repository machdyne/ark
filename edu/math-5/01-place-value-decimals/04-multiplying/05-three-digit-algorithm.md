# The standard algorithm: three digits

```lesson
(objective "Multiply by a three-digit number with the standard algorithm, including factors with a zero, such as 406 x 238.")
(standards "5.NBT.B.5")
(minutes 30)
```

You can multiply by a three-digit number with the standard algorithm.

A three-digit factor gives three rows: one for its ones, one for its
tens and one for its hundreds. Find 406 × 238.

1. $406 * 8 = 3248$.
2. $406 * 30 = 12180$.
3. $406 * 200 = 81200$.
4. Add the three rows: 96,628.

```figure
(define k (slider 'k 0 3 3 "Rows" 1))
(m5p1-mult 210 30 406 238 '() '(3248 12180 81200) '("406 × 8" "406 × 30" "406 × 200") k)
```

```check
(number
  (ask "Find 406 × 238. What is the product?")
  (answer 96628) (from "406 * 238") (true "3248 + 12180 + 81200 = 96628")
  (wrong-if 5278 "The rows are worth 30 and 200 times 406, not 3 and 2 times. Write 1 zero in the 2nd row and 2 zeros in the 3rd.")
  (wrong-if 15428 "Add all three rows: 3,248 + 12,180 + 81,200.")
  (hint "Add the three rows in the figure."))
```

---

## A zero in the top factor

406 has 0 tens. When you multiply that place, $0 * 8 = 0$; add the
regrouped digit, if there is one.

In 406 × 8: $6 * 8 = 48$, write 8, regroup 4. $0 * 8 = 0$, plus 4 is 4.
$4 * 8 = 32$. So $406 * 8 = 3248$.

```check
(number
  (ask "Find 709 × 6.")
  (answer 4254) (from "709 * 6")
  (wrong-if 4204 "0 × 6 = 0, but add the 5 regrouped from 9 × 6 = 54. The tens digit is 5.")
  (wrong-if 42054 "Write one digit in each place. 9 × 6 = 54: write 4, regroup 5. Then 0 × 6 + 5 = 5.")
  (hint "9 × 6 = 54. Write 4, regroup 5."))
```

---

## A zero in the bottom factor

In 523 × 305, the tens digit of 305 is 0. That row is all zeros, so you
can skip it. Take care to put the next row in the hundreds.

- $523 * 5 = 2615$
- $523 * 300 = 156900$
- Add: $2615 + 156900 = 159515$.

```check
(number
  (ask "Find 523 × 305.")
  (answer 159515) (from "523 * 305") (true "2615 + 156900 = 159515")
  (wrong-if 18305 "The row for the 3 is 523 × 300 = 156,900, with 2 zeros, not 15,690.")
  (hint "The rows are 523 × 5 and 523 × 300."))
```

---

## Worked example

```example
(example
  (problem "Find 312 × 124.")
  (step "312 × 4 = 1,248.")
  (step "312 × 20 = 6,240.")
  (step "312 × 100 = 31,200.")
  (step "Add: 1,248 + 6,240 + 31,200 = 38,688.")
  (answer "312 × 124 = 38,688"))
```

```example
(example
  (problem "Find 245 × 136.")
  (step "245 × 6 = 1,470.")
  (step "245 × 30 = 7,350. 245 × 100 = 24,500.")
  (step (number (ask "Add the three rows.") (answer 33320) (from "245 * 136") (true "1470 + 7350 + 24500 = 33320")
    (wrong-if 2450 "The rows are 7,350 and 24,500. Do not forget their zeros.")))
  (answer "245 × 136 = 33,320"))
```

---

## Practice

```check
(number
  (ask "Find 315 × 204.")
  (answer 64260) (from "315 * 204") (true "1260 + 63000 = 64260")
  (wrong-if 7560 "The 2 in 204 is 2 hundreds: 315 × 200 = 63,000, not 6,300.")
  (hint "The rows are 315 × 4 and 315 × 200."))
```

```check
(number
  (ask "Find 860 × 125.")
  (answer 107500) (from "860 * 125")
  (wrong-if 10750 "Count the places: 860 × 100 alone is 86,000, so the product is more than that.")
  (hint "860 × 5 = 4,300. 860 × 20 = 17,200. 860 × 100 = 86,000."))
```

---

```check
(number
  (ask "Find 709 × 506.")
  (answer 358754) (from "709 * 506") (true "4254 + 354500 = 358754")
  (wrong-if 39704 "The row for the 5 is 709 × 500 = 354,500, with 2 zeros.")
  (hint "709 × 6 = 4,254. The tens row is all zeros.")
  (hint "709 × 500 = 354,500."))
```

```check
(number
  (ask "A stadium has 214 sections. Each section has 126 seats. How many seats?")
  (answer 26964) (from "214 * 126") (unit "seats")
  (wrong-if 340 "That adds 214 + 126. Equal sections means multiply.")
  (hint "214 × 6 = 1,284. 214 × 20 = 4,280. 214 × 100 = 21,400."))
```

So: one row for each digit of the bottom factor, each row worth its
place, then add the rows.
