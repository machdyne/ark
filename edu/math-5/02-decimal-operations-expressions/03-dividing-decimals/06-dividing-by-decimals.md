# Dividing by a decimal

```lesson
(objective "Divide by a decimal by multiplying both numbers by 10 or 100, such as 1.2 ÷ 0.04 = 120 ÷ 4 = 30, and explain why the quotient stays the same.")
(standards "5.NBT.B.7" "5.NBT.A.2")
(minutes 25)
```

You can divide by a decimal by turning it into a division by a whole
number with the same quotient.

$1.2 ÷ 0.04$ asks: how many 4 hundredths fit in 1.2? Count both in
hundredths:

- 1.2 is 120 hundredths.
- 0.04 is 4 hundredths.

How many 4 hundredths are in 120 hundredths? The same as how many 4s
are in 120:

$$ 1.2 ÷ 0.04 = 120 ÷ 4 = 30 $$

```check
(number
  (ask "0.6 is 60 hundredths, and 0.02 is 2 hundredths. What is 0.6 ÷ 0.02?")
  (answer 30) (from "60 ÷ 2") (true "0.6 ÷ 0.02 = 60 ÷ 2")
  (wrong-if 3 "0.6 is 60 hundredths, not 6. 60 hundredths ÷ 2 hundredths = 30.")
  (wrong-if 0.3 "Count groups: how many 2 hundredths in 60 hundredths? 30.")
  (hint "60 ÷ 2 = ?"))
```

---

## Both times the same power of ten

Counting both in hundredths is the same as multiplying both numbers
by 100. Each digit moves 2 places to the left in both numbers.

Look at this pattern. Both numbers are multiplied by 10 each time, and
the quotient stays 3:

| Division | Quotient |
|---|---|
| 0.12 ÷ 0.04 | 3 |
| 1.2 ÷ 0.4 | 3 |
| 12 ÷ 4 | 3 |
| 120 ÷ 40 | 3 |

12 cookies in bags of 4 make 3 bags. 120 cookies in bags of 40 also
make 3 bags. 10 times as many cookies and 10 times as big bags: the
same number of bags.

```check
(choice
  (ask "Which division has the same quotient as 2.4 ÷ 0.6?")
  (right "24 ÷ 6" (true "2.4 ÷ 0.6 = 24 ÷ 6"))
  (wrong "24 ÷ 0.6" (false "2.4 ÷ 0.6 = 24 ÷ 0.6")
    "Only 2.4 was multiplied by 10. Multiply both numbers by 10: 24 ÷ 6.")
  (wrong "2.4 ÷ 6" (false "2.4 ÷ 0.6 = 2.4 ÷ 6")
    "Only 0.6 was multiplied by 10. That makes the quotient 1 tenth as large. Multiply both: 24 ÷ 6.")
  (hint "Multiply both numbers by the same power of ten."))
```

---

## Which power of ten?

Make the divisor a whole number:

- A divisor in tenths, such as 0.3: multiply both by 10.
- A divisor in hundredths, such as 0.04: multiply both by 100.

$4.5 ÷ 0.5$: multiply both by 10. $45 ÷ 5 = 9$.

$3.6 ÷ 0.12$: multiply both by 100. $360 ÷ 12 = 30$.

The decimal point does not move. The digits move to greater places in
both numbers.

```check
(number
  (ask "What is 4.8 ÷ 0.06?")
  (answer 80) (from "480 ÷ 6") (true "4.8 ÷ 0.06 = 480 ÷ 6")
  (wrong-if 8 "Multiply both by 100, not 10: 4.8 becomes 480. 480 ÷ 6 = 80.")
  (wrong-if 0.8 "The divisor is less than 1, so the quotient is more than 4.8. 480 ÷ 6 = 80.")
  (hint "0.06 is hundredths: multiply both by 100.")
  (hint "480 ÷ 6 = ?"))
```

---

## Worked example

```example
(example
  (problem "Find 7.2 ÷ 0.8.")
  (step "0.8 is in tenths: multiply both by 10.")
  (step "7.2 becomes 72. 0.8 becomes 8.")
  (step "72 ÷ 8 = 9.")
  (answer "7.2 ÷ 0.8 = 9"))
```

```example
(example
  (problem "Find 1.5 ÷ 0.25.")
  (step "0.25 is in hundredths: multiply both by 100.")
  (step "1.5 becomes 150. 0.25 becomes 25.")
  (step (number (ask "150 ÷ 25 = ?") (answer 6) (from "150 ÷ 25") (true "1.5 ÷ 0.25 = 6")
    (wrong-if 60 "150 ÷ 25: 25 × 6 = 150. So 6.")))
  (answer "1.5 ÷ 0.25 = 6"))
```

---

## Practice

```check
(number
  (ask "What is 5.6 ÷ 0.7?")
  (answer 8) (from "56 ÷ 7") (true "5.6 ÷ 0.7 = 56 ÷ 7")
  (wrong-if 0.8 "Multiply both by 10: 56 ÷ 7 = 8.")
  (hint "Multiply both by 10."))
```

```check
(text
  (ask "What is 2.4 ÷ 0.5? (Multiply both by 10.)")
  (accept "4.8") (accept "4.80")
  (true "2.4 ÷ 0.5 = 24 ÷ 5")
  (true "24 ÷ 5 = 4.8")
  (wrong-if "48" "24 ÷ 5 is not 48. 5 × 4 = 20, 4 left. Write a 0: 40 tenths ÷ 5 = 8 tenths. So 4.8.")
  (wrong-if "0.48" "The divisor is less than 1, so the quotient is more than 2.4: 24 ÷ 5 = 4.8.")
  (hint "24 ÷ 5 = 4, 4 left. Keep dividing in tenths."))
```

---

```check
(number
  (ask "What is 0.36 ÷ 0.09?")
  (answer 4) (from "36 ÷ 9") (true "0.36 ÷ 0.09 = 36 ÷ 9")
  (wrong-if 0.4 "Both are hundredths: multiply both by 100. 36 ÷ 9 = 4.")
  (hint "Multiply both by 100."))
```

```check
(choice
  (ask "Why is 1.2 ÷ 0.04 the same as 120 ÷ 4?")
  (right "Both count how many 4 hundredths are in 120 hundredths" (true "1.2 ÷ 0.04 = 120 ÷ 4"))
  (wrong "Because you move the decimal point 2 places"
    "The decimal point stays put. Both numbers are multiplied by 100, so both are counted in hundredths, and the count of groups is the same.")
  (wrong "It is not: 120 ÷ 4 is 100 times as much" (false "1.2 ÷ 0.04 = 0.3")
    "That would be true if only 1.2 were multiplied by 100. Both numbers are, so the quotient stays 30.")
  (hint "How many hundredths are in 1.2? In 0.04?"))
```

So: multiply the dividend and the divisor by the same power of ten to make the divisor a whole number; the quotient stays the same.
