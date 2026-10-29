# The unknown factor

```lesson
(objective "Solve a division such as 32 / 8 by finding the unknown factor in 8 x ? = 32.")
(standards "3.OA.B.6")
(minutes 20)
(keywords "unknown factor")
```

You can solve a division by thinking of a multiplication.

To find 32 ÷ 8, ask: 8 times what number is 32? The number you are
looking for is the **unknown factor**. You know one factor, 8, and the
product, 32.

So 32 ÷ 8 = ? is the same question as 8 × ? = 32.

```figure
(number-line 20 300 130 0 32 1 8)
(md-jumps 0 4 8 'ink)
(caption "How many jumps of 8 reach 32?")
```

```check
(number
  (ask "8 × ? = 32. What is the unknown factor?")
  (answer 4) (from "32 / 8") (true "8 * 4 = 32")
  (wrong-if 24 "24 is 32 - 8. The question asks: 8 times what number is 32? Count by 8s to 32.")
  (wrong-if 40 "40 is 32 + 8. You need a factor that, times 8, makes 32.")
  (hint "Count by 8s: 8, 16, 24, 32. How many 8s?"))
```

---

## Turn it around

Every division has a multiplication hiding in it. The divisor is the
known factor. The quotient is the unknown factor.

| Division | Think | Unknown factor |
| 20 ÷ 4 = ? | 4 × ? = 20 | 5 |
| 27 ÷ 3 = ? | 3 × ? = 27 | 9 |

```check
(choice
  (ask "Which multiplication helps you find 42 ÷ 6?")
  (right "6 × ? = 42")
  (wrong "42 × 6 = ?"
    "That multiplies the total by 6 and gives a much bigger number. Ask instead: 6 times what makes 42?")
  (wrong "6 + ? = 42"
    "6 + ? = 42 asks what to add to 6. Division undoes multiplying, so ask: 6 times what makes 42?")
  (hint "The divisor, 6, is the known factor. The total, 42, is the product."))
```

---

## Use the facts you know

If you know a multiplication fact, you know its division. 9 × 5 = 45,
so 45 ÷ 9 = 5 and 45 ÷ 5 = 9.

```check
(number
  (ask "You know 7 × 5 = 35. What is 35 ÷ 7?")
  (answer 5) (from "35 / 7")
  (wrong-if 28 "28 is 35 - 7. Think: 7 times what is 35? The fact says 7 × 5 = 35.")
  (wrong-if 7 "7 is the divisor, the known factor. The unknown factor is the other one in 7 × 5 = 35.")
  (hint "Find 7 in the fact. The other factor is the answer."))
```

---

## Worked example

```example
(example
  (problem "Find 56 ÷ 8.")
  (step "Think of the multiplication: 8 × ? = 56.")
  (step "Count by 8s: 8, 16, 24, 32, 40, 48, 56.")
  (step "That is 7 eights. So the unknown factor is 7.")
  (answer "56 ÷ 8 = 7, because 8 × 7 = 56."))
```

```example
(example
  (problem "Find 18 ÷ 3.")
  (step "Think of the multiplication: 3 × ? = 18.")
  (step "Count by 3s: 3, 6, 9, 12, 15, 18.")
  (step (number (ask "How many 3s is that?") (answer 6) (from "18 / 3")
    (wrong-if 15 "15 is 18 - 3. Count the numbers you said: 3, 6, 9, 12, 15, 18. That is 6 of them.")))
  (answer "18 ÷ 3 = 6, because 3 × 6 = 18."))
```

---

## Practice

```check
(number
  (ask "Find the unknown factor: 5 × ? = 40.")
  (answer 8) (from "40 / 5") (true "5 * 8 = 40")
  (wrong-if 35 "35 is 40 - 5. Count by 5s to 40 and count how many 5s you say.")
  (wrong-if 200 "200 is 40 × 5. You need the number that, times 5, makes 40.")
  (hint "5, 10, 15 ... up to 40. How many 5s?"))
```

```check
(number
  (ask "Use a multiplication to find 63 ÷ 9.")
  (answer 7) (from "63 / 9") (true "9 * 7 = 63")
  (wrong-if 54 "54 is 63 - 9. Think: 9 times what is 63?")
  (hint "9 × ? = 63")
  (hint "Count by 9s: 9, 18, 27, 36, 45, 54, 63."))
```

---

```check
(number
  (ask "A tray holds 24 cups in 4 equal rows. How many cups are in each row? Think 4 × ? = 24.")
  (answer 6) (from "24 / 4")
  (wrong-if 20 "20 is 24 - 4. Ask: 4 rows of what number make 24?")
  (hint "Count by 4s to 24. How many 4s do you say?"))
```

So: to divide, find the unknown factor. 32 ÷ 8 = 4 because 8 × 4 = 32.
