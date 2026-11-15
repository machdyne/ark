# Partial quotients

```lesson
(objective "Divide a two- or three-digit number by a one-digit number by taking away easy multiples of the divisor and adding the partial quotients.")
(standards "4.NBT.B.6")
(minutes 25)
(keywords "partial quotient")
```

You can divide a big number by taking away easy groups, a few at a time.

To find 96 ÷ 4, ask: how many groups of 4 are in 96?

- 10 groups of 4 are easy: 40. 20 groups are 80. Take away 80: 16 is left.
- 4 groups of 4 are 16. Take away 16: 0 is left.

Each number of groups you take away is a **partial quotient**. Add
them: 20 + 4 = 24. So 96 ÷ 4 = 24.

```figure
(define k (slider 'k 0 2 2 "Steps" 1))
(m4p1-quot 150 30 96 4 '(20 4) k)
(label 160 205 (if (= k 2) "20 + 4 = 24 groups" "") 'body 'bold)
```

```check
(number
  (ask "Find 84 ÷ 3. Take away 20 groups of 3 first.")
  (answer 28) (from "20 + 8") (true "3 * 28 = 84")
  (wrong-if 20 "20 groups use 60, and 24 is left. 24 is 8 more groups of 3. Add the partial quotients: 20 + 8.")
  (wrong-if 8 "8 is only the second partial quotient. Add the 20 groups you took first: 20 + 8.")
  (hint "20 × 3 = 60. 84 - 60 = 24.")
  (hint "24 is how many groups of 3?"))
```

---

## Three digits

Use groups of 100, 10, or any number you know well. 372 ÷ 6:

- 50 × 6 = 300. 372 - 300 = 72.
- 10 × 6 = 60. 72 - 60 = 12.
- 2 × 6 = 12. 12 - 12 = 0.

Add the partial quotients: 50 + 10 + 2 = 62.

```figure
(define k (slider 'k 0 3 3 "Steps" 1))
(m4p1-quot 150 16 372 6 '(50 10 2) k)
(label 160 222 (if (= k 3) "50 + 10 + 2 = 62" "") 'body 'bold)
```

```check
(number
  (ask "Find 615 ÷ 5. Start with 100 groups of 5.")
  (answer 123) (from "615 / 5") (true "5 * 123 = 615")
  (wrong-if 100 "100 groups use 500, and 115 is left. Keep taking away groups: 20 × 5 = 100, then 3 × 5 = 15.")
  (wrong-if 23 "You also took away 100 groups at the start. Add every partial quotient: 100 + 20 + 3.")
  (hint "100 × 5 = 500. 615 - 500 = 115.")
  (hint "115 is 20 groups of 5 and 3 more groups of 5."))
```

---

## With a remainder

Stop when what is left is less than the divisor. That is the
remainder.

158 ÷ 5: take away 30 × 5 = 150, and 8 is left. Take away 1 × 5 = 5,
and 3 is left. 3 is less than 5, so stop.

30 + 1 = 31, so 158 ÷ 5 = 31 R 3.

```check
(number
  (ask "745 ÷ 8 = ? R 1. Take away 90 groups of 8 first. What is the quotient?")
  (answer 93) (from "(745 - 1) / 8") (true "745 = 8 * 93 + 1")
  (wrong-if 90 "90 groups use 720, and 25 is left. 25 still holds 3 groups of 8.")
  (wrong-if 92 "After 90 groups, 25 is left. 3 groups of 8 is 24, so 3 more groups, not 2.")
  (hint "90 × 8 = 720. 745 - 720 = 25.")
  (hint "How many groups of 8 fit in 25?"))
```

---

## Any easy groups work

You can take away different groups and still get the same answer.
92 ÷ 4 can be 10 + 10 + 3 or 20 + 3. Both give 23.

```check
(choice
  (ask "Lin finds 92 ÷ 4 by taking away 10 groups, then 10 groups, then 3 groups. Is that right?")
  (right "Yes: 10 + 10 + 3 = 23, the same as 20 + 3." (true "4 * (10 + 10 + 3) = 92"))
  (wrong "No: she must take 20 groups at once." (false "4 * (10 + 10 + 3) != 92")
    "Any groups you can take away work. Smaller steps just take longer.")
  (wrong "No: the partial quotients should be multiplied." (false "10 * 10 * 3 = 23")
    "The groups add up. 10 + 10 + 3 = 23 groups of 4.")
  (hint "Add her partial quotients."))
```

---

## Worked example

```example
(example
  (problem "Divide 536 ÷ 7.")
  (step "70 × 7 = 490. 536 - 490 = 46.")
  (step "6 × 7 = 42. 46 - 42 = 4. 4 is less than 7: stop.")
  (step "70 + 6 = 76, and 4 is left.")
  (answer "536 ÷ 7 = 76 R 4"))
```

```example
(example
  (problem "Divide 288 ÷ 9.")
  (step "30 × 9 = 270. 288 - 270 = 18.")
  (step "2 × 9 = 18. 18 - 18 = 0.")
  (step (number (ask "Add the partial quotients. What is 288 ÷ 9?") (answer 32) (from "30 + 2") (true "9 * 32 = 288")
    (wrong-if 30 "Add both partial quotients: 30 + 2.")))
  (answer "288 ÷ 9 = 32"))
```

---

## Practice

```check
(number
  (ask "Find 72 ÷ 4 with partial quotients.")
  (answer 18) (from "10 + 8") (true "4 * 18 = 72")
  (wrong-if 10 "10 groups use 40, and 32 is left. 32 is 8 more groups of 4.")
  (hint "10 × 4 = 40. 72 - 40 = 32."))
```

```check
(number
  (ask "Find 436 ÷ 4 with partial quotients.")
  (answer 109) (from "100 + 9") (true "4 * 109 = 436")
  (wrong-if 19 "The first step takes away 100 groups: 400. Then 36 is 9 groups. 100 + 9 = 109.")
  (wrong-if 1009 "Add the partial quotients: 100 + 9 = 109. Do not write them side by side.")
  (hint "100 × 4 = 400. 436 - 400 = 36."))
```

---

```check
(number
  (ask "253 ÷ 6 = ? R 1. What is the quotient?")
  (answer 42) (from "(253 - 1) / 6") (true "253 = 6 * 42 + 1")
  (wrong-if 40 "40 groups use 240, and 13 is left. 13 still holds 2 groups of 6.")
  (hint "40 × 6 = 240. 253 - 240 = 13."))
```

```check
(number
  (ask "A baker puts 168 rolls into bags of 8. How many bags does she fill?")
  (answer 21) (unit "bags") (from "168 / 8") (true "8 * 21 = 168")
  (wrong-if 20 "20 bags hold 160 rolls, and 8 are left: enough for 1 more bag.")
  (wrong-if 176 "Putting rolls into bags of 8 means dividing: 168 ÷ 8.")
  (hint "20 × 8 = 160. How many rolls are left?"))
```

So: take away easy groups, and add up the partial quotients.
