# The standard algorithm: two digits

```lesson
(objective "Multiply a three- or four-digit number by a two-digit number with the standard algorithm.")
(standards "5.NBT.B.5")
(minutes 25)
```

You can multiply a three- or four-digit number by a two-digit number.

Find 427 × 36.

1. First row: multiply 427 by the 6 ones. $427 * 6 = 2562$.
2. Second row: multiply 427 by the 3 tens. Write a 0 in the ones,
   then $427 * 3 = 1281$ next to it: 12,810.
3. Add the rows: $2562 + 12810 = 15372$.

```figure
(define k (slider 'k 0 2 2 "Rows" 1))
(m5p1-mult 220 50 427 36 '() '(2562 12810) '("427 × 6" "427 × 30") k)
(caption "Regrouped digits are left out to keep the rows clear")
```

```check
(number
  (ask "Find 427 × 36. What is the product?")
  (answer 15372) (from "427 * 36") (true "2562 + 12810 = 15372")
  (wrong-if 3843 "The second row is 427 × 30 = 12,810, not 427 × 3. Write the 0 for the tens.")
  (wrong-if 2562 "That is only the first row. Add the second row, 12,810.")
  (hint "Add the two rows."))
```

---

## Regrouped digits in each row

Each row has its own regrouped digits. When you start the second row,
cross out or ignore the small digits from the first row.

In 427 × 6, you regroup 4 and then 1. In 427 × 3, you start again:
$7 * 3 = 21$, write 1, regroup 2.

```check
(choice
  (ask "Leo finds 58 × 24. In the first row, 8 × 4 = 32, so he regroups 3. In the second row, he finds 8 × 2 = 16 and adds the 3. What went wrong?")
  (right "The 3 belongs to the first row. In the second row, 8 × 2 = 16 has nothing to add." (true "58 * 20 = 1160"))
  (wrong "Nothing: the 3 is added in every row." (false "58 * 20 = 1190")
    "A regrouped digit is used once, in the row that made it. Each row starts fresh.")
  (wrong "He should multiply 3 × 2 as well." (false "3 * 2 = 16")
    "Regrouped digits are added, never multiplied.")
  (hint "Which row made the 3?"))
```

---

## Four digits

The same steps work for a four-digit number. Find 2,315 × 24.

- First row: $2315 * 4 = 9260$.
- Second row: $2315 * 20 = 46300$.
- Add: $9260 + 46300 = 55560$.

```check
(number
  (ask "Find 2,315 × 24.")
  (answer 55560) (from "2315 * 24") (true "9260 + 46300 = 55560")
  (wrong-if 13890 "The second row is 2,315 × 20 = 46,300. Do not forget the 0 for the tens.")
  (hint "First row: 2,315 × 4 = 9,260.")
  (hint "Second row: 2,315 × 20 = 46,300."))
```

---

## Worked example

```example
(example
  (problem "Find 608 × 45.")
  (step "First row: 608 × 5 = 3,040.")
  (step "Second row: 608 × 40 = 24,320.")
  (step "Add: 3,040 + 24,320 = 27,360.")
  (answer "608 × 45 = 27,360"))
```

```example
(example
  (problem "Find 1,207 × 32.")
  (step "First row: 1,207 × 2 = 2,414.")
  (step "Second row: 1,207 × 30 = 36,210.")
  (step (number (ask "Add the rows.") (answer 38624) (from "1207 * 32") (true "2414 + 36210 = 38624")
    (wrong-if 6035 "The second row is 36,210, not 3,621. Add 2,414 + 36,210.")))
  (answer "1,207 × 32 = 38,624"))
```

---

## Practice

```check
(number
  (ask "Find 356 × 27.")
  (answer 9612) (from "356 * 27") (true "356 * 7 + 356 * 20 = 9612")
  (wrong-if 3204 "The second row is 356 × 20 = 7,120. Add it to 2,492.")
  (hint "First row: 356 × 7 = 2,492."))
```

```check
(number
  (ask "Find 4,082 × 15.")
  (answer 61230) (from "4082 * 15") (true "4082 * 5 + 4082 * 10 = 61230")
  (wrong-if 24492 "The second row is 4,082 × 10 = 40,820. Add it to 20,410.")
  (hint "First row: 4,082 × 5 = 20,410."))
```

---

```check
(number
  (ask "A school buys 48 boxes of paper. Each box has 2,500 sheets. How many sheets?")
  (answer 120000) (from "2500 * 48") (unit "sheets")
  (wrong-if 30000 "The second row is 2,500 × 40 = 100,000. Add it to 2,500 × 8 = 20,000.")
  (hint "2,500 × 8 = 20,000."))
```

```check
(number
  (ask "Find 739 × 64.")
  (answer 47296) (from "739 * 64") (true "739 * 4 + 739 * 60 = 47296")
  (wrong-if 7390 "The second row is 739 × 60 = 44,340. Add it to 2,956.")
  (hint "First row: 739 × 4 = 2,956.")
  (hint "Second row: 739 × 60 = 44,340."))
```

So: one row for the ones digit, one for the tens digit, then add the
rows.
