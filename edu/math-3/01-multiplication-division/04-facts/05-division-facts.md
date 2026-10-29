# Division facts

```lesson
(objective "Divide within 100 using the multiplication facts you know.")
(standards "3.OA.C.7")
(minutes 20)
```

Every multiplication fact you know gives you 2 division facts.

To find 42 ÷ 6, think: 6 × ? = 42. You know 6 × 7 = 42. So 42 ÷ 6 = 7.

You can also use a table of facts. Find the row for 6. Go along it
to 42. The number at the top of that column is the answer: 7.

```figure
(md-table 50 8 1 10 20 6 7 #f)
```

```check
(number
  (ask "Use the table: 30 ÷ 6 = ?")
  (answer 5) (from "30 / 6") (true "6 * 5 = 30")
  (wrong-if 24 "24 is 30 - 6. Go along row 6 to 30, then look up to the top of its column.")
  (wrong-if 6 "6 is the divisor, the row you start in. The answer is at the top of the column where 30 is.")
  (hint "In row 6, find 30. Look up."))
```

---

## Think multiplication

You do not need the table if you know the facts. Turn each division
into a multiplication with an unknown factor.

| Division | Think | So |
| 56 ÷ 8 | 8 × ? = 56 | 7 |
| 81 ÷ 9 | 9 × ? = 81 | 9 |
| 36 ÷ 4 | 4 × ? = 36 | 9 |

```check
(number
  (ask "48 ÷ 8 = ?")
  (answer 6) (from "48 / 8") (true "8 * 6 = 48")
  (wrong-if 40 "40 is 48 - 8. Think: 8 × ? = 48.")
  (wrong-if 8 "8 is the divisor. Think: 8 times what is 48?")
  (hint "8 × ? = 48"))
```

---

## Worked example

```example
(example
  (problem "Find 63 ÷ 7.")
  (step "Think: 7 × ? = 63.")
  (step "7 × 9 = 63.")
  (step "So the unknown factor is 9.")
  (answer "63 ÷ 7 = 9"))
```

```example
(example
  (problem "Find 32 ÷ 4.")
  (step "Think: 4 × ? = 32.")
  (step (number (ask "4 times what is 32?") (answer 8) (from "32 / 4")
    (wrong-if 28 "28 is 32 - 4. Count by 4s to 32: 4, 8, 12, 16, 20, 24, 28, 32. That is 8 fours.")))
  (answer "32 ÷ 4 = 8"))
```

---

## Practice

```check
(number
  (ask "27 ÷ 3 = ?")
  (answer 9) (from "27 / 3")
  (wrong-if 24 "24 is 27 - 3. Think: 3 × ? = 27.")
  (hint "3 × 9 = ?"))
```

```check
(number
  (ask "54 ÷ 9 = ?")
  (answer 6) (from "54 / 9")
  (wrong-if 45 "45 is 54 - 9. Think: 9 × ? = 54.")
  (hint "9 × ? = 54. The tens digit 5 is 1 less than the answer."))
```

```check
(number
  (ask "35 ÷ 5 = ?")
  (answer 7) (from "35 / 5")
  (wrong-if 30 "30 is 35 - 5. Count by 5s to 35: how many 5s?")
  (hint "5 × ? = 35"))
```

---

```check
(number
  (ask "64 ÷ 8 = ?")
  (answer 8) (from "64 / 8")
  (wrong-if 56 "56 is 64 - 8. Think: 8 × ? = 64.")
  (hint "8 × 8 = ?"))
```

```check
(number
  (ask "49 ÷ 7 = ?")
  (answer 7) (from "49 / 7")
  (wrong-if 42 "42 is 49 - 7. Think: 7 × ? = 49.")
  (hint "7 × 7 = ?"))
```

```check
(number
  (ask "A class of 24 makes 6 equal teams. How many children are on each team?")
  (answer 4) (from "24 / 6")
  (wrong-if 18 "18 is 24 - 6. 24 children are shared into 6 teams: 24 ÷ 6.")
  (hint "6 × ? = 24"))
```

So: to divide, find the unknown factor in a multiplication fact you know.
