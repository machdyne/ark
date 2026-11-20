# Dividing by a two-digit number

```lesson
(objective "Divide a decimal by a two-digit whole number with partial quotients or place by place, such as 25.2 ÷ 12 = 2.1.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can divide a decimal by a two-digit number with partial quotients,
as you did with whole numbers.

Take away groups of the divisor that are easy to find. Then add the
partial quotients. For $25.2 ÷ 12$:

- 12 × 2 = 24. Take it away: 25.2 - 24 = 1.2 is left.
- 12 × 0.1 = 1.2. Take it away: 0 is left.
- Add the partial quotients: 2 + 0.1 = 2.1.

$$ 25.2 ÷ 12 = 2.1 $$

```figure
(text 30 40 "25.2 ÷ 12" 'left 'big 'bold)
(text 120 80 "25.2" 'right 'body)
(text 120 102 "- 24.0" 'right 'body) (text 180 102 "12 × 2" 'left 'small)
(line 40 110 124 110 'ink 1.5)
(text 120 130 "1.2" 'right 'body)
(text 120 152 "- 1.2" 'right 'body) (text 180 152 "12 × 0.1" 'left 'small)
(line 40 160 124 160 'ink 1.5)
(text 120 180 "0.0" 'right 'body)
(text 30 220 "2 + 0.1 = 2.1" 'left 'body 'bold)
```

```check
(text
  (ask "Use partial quotients. 14 × 3 = 42, and 14 × 0.2 = 2.8. What is 44.8 ÷ 14?")
  (accept "3.2") (accept "3.20")
  (true "44.8 ÷ 14 = 3 + 0.2")
  (true "44.8 ÷ 14 = 3.2")
  (wrong-if "5.8" "That adds 3 + 2.8. But 2.8 is what is left after taking 42, not a partial quotient. The partial quotients are 3 and 0.2.")
  (wrong-if "5" "Add the partial quotients 3 + 0.2 as decimals: 3.2, not 3 + 2.")
  (hint "44.8 - 42 = 2.8. And 2.8 = 14 × 0.2."))
```

---

## Think in tenths

Another way: 25.2 is 252 tenths. Divide 252 by 12 as whole numbers:
252 ÷ 12 = 21. So the quotient is 21 tenths, which is 2.1.

```check
(text
  (ask "38.4 is 384 tenths, and 384 ÷ 16 = 24. What is 38.4 ÷ 16?")
  (accept "2.4") (accept "2.40")
  (true "38.4 ÷ 16 = 2.4")
  (wrong-if "24" "24 counts tenths, since 384 counts tenths. 24 tenths = 2.4.")
  (wrong-if "0.24" "24 tenths, not 24 hundredths. 24 tenths = 2.4.")
  (hint "384 tenths ÷ 16 = 24 tenths."))
```

---

## Quotients less than 1

When the divisor is greater than the whole part, the quotient is less
than 1. $9.72 ÷ 18$: 18 × 0.5 = 9, and 0.72 is left. 18 × 0.04 = 0.72.

$$ 9.72 ÷ 18 = 0.5 + 0.04 = 0.54 $$

```check
(text
  (ask "What is 6.75 ÷ 25? (25 × 0.2 = 5 and 25 × 0.07 = 1.75.)")
  (accept "0.27") (accept ".27")
  (true "6.75 ÷ 25 = 0.2 + 0.07")
  (true "6.75 ÷ 25 = 0.27")
  (wrong-if "2.7" "6.75 is less than 25, so the quotient is less than 1: 0.27.")
  (hint "Add the partial quotients 0.2 and 0.07."))
```

---

## Worked example

```example
(example
  (problem "Find 59.8 ÷ 23.")
  (step "23 × 2 = 46. 59.8 - 46 = 13.8 is left.")
  (step "23 × 0.6 = 13.8. 0 is left.")
  (step "2 + 0.6 = 2.6.")
  (answer "59.8 ÷ 23 = 2.6"))
```

```example
(example
  (problem "Find 31.5 ÷ 15.")
  (step "15 × 2 = 30. 31.5 - 30 = 1.5 is left.")
  (step "15 × 0.1 = 1.5.")
  (step (text (ask "So 31.5 ÷ 15 = ?")
    (accept "2.1") (accept "2.10")
    (true "31.5 ÷ 15 = 2.1")
    (wrong-if "3.5" "That adds 2 + 1.5. But 1.5 is what was left, not a partial quotient. 1.5 = 15 × 0.1, so add 0.1.")))
  (answer "31.5 ÷ 15 = 2.1"))
```

---

## Practice

```check
(text
  (ask "What is 27.6 ÷ 12?")
  (accept "2.3") (accept "2.30")
  (true "27.6 ÷ 12 = 2.3")
  (wrong-if "23" "276 tenths ÷ 12 = 23 tenths = 2.3.")
  (hint "12 × 2 = 24. 3.6 is left. 12 × 0.3 = 3.6."))
```

```check
(text
  (ask "What is 8.64 ÷ 32?")
  (accept "0.27") (accept ".27")
  (true "8.64 ÷ 32 = 0.27")
  (wrong-if "2.7" "8.64 is less than 32, so the quotient is less than 1.")
  (hint "32 × 0.2 = 6.4. 2.24 is left.")
  (hint "32 × 0.07 = 2.24."))
```

---

```check
(text
  (ask "A rope 49.5 meters long is cut into 15 equal pieces. How long is each piece, in meters?")
  (accept "3.3") (accept "3.30")
  (unit "meters")
  (true "49.5 ÷ 15 = 3.3")
  (wrong-if "33" "33 counts tenths: 495 tenths ÷ 15 = 33 tenths = 3.3.")
  (hint "15 × 3 = 45. 4.5 is left.")
  (hint "15 × 0.3 = 4.5."))
```

```check
(choice
  (ask "Kai finds 52.8 ÷ 24 with 24 × 2 = 48, then 24 × 0.2 = 4.8. What is the quotient?")
  (right "2.2" (true "52.8 ÷ 24 = 2.2"))
  (wrong "50.4" (false "52.8 ÷ 24 = 50.4")
    "48 and 4.8 are what he took away. The quotient is the count of 24s: 2 + 0.2.")
  (wrong "4" (false "52.8 ÷ 24 = 4")
    "Add 2 and 0.2 as decimals: 2.2. 0.2 is 2 tenths, not 2.")
  (hint "Add the partial quotients."))
```

So: take away easy groups of the divisor and add the partial quotients, or divide the tenths or hundredths as whole numbers.
