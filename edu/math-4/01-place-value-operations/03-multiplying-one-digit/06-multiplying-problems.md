# Multiplying in word problems

```lesson
(objective "Solve one-step word problems by multiplying a number of up to 4 digits by a one-digit number.")
(standards "4.NBT.B.5")
(minutes 25)
```

You can solve stories where equal groups make a total.

A bus has 48 seats. How many seats are on 6 buses?

Each bus is one equal group of 48. There are 6 groups, so multiply:
6 × 48. A tape diagram shows it.

```figure
(m4p1-tape 20 80 280 40 6 "48" "? seats")
(label 160 160 "6 buses of 48 seats: 6 × 48" 'body)
```

```check
(number
  (ask "How many seats are on 6 buses?")
  (answer 288) (unit "seats") (from "6 * 40 + 6 * 8") (true "6 * 48 = 288")
  (wrong-if 54 "That adds 6 + 48. 6 buses of 48 seats are equal groups: multiply.")
  (wrong-if 248 "That is 240 + 8. Multiply the 8 by 6 too: 6 × 8 = 48.")
  (hint "6 × 40 = 240 and 6 × 8 = 48."))
```

---

## Write an equation

Use a letter for the number you want. Then write an equation.

A shop sells 1,250 pens a day. How many pens does it sell in 4 days?
Let p be the pens: 4 × 1,250 = p.

```check
(choice
  (ask "A farm packs 365 eggs a day. Which equation finds e, the eggs it packs in 7 days?")
  (right "7 × 365 = e" (true "7 * 365 = 2555"))
  (wrong "365 + 7 = e"
    "Each day is an equal group of 365 eggs. 7 equal groups means multiply: 7 × 365.")
  (wrong "365 - 7 = e"
    "Nothing is taken away. 7 days of 365 eggs is 7 × 365.")
  (hint "How many equal groups? How many in each?"))
```

---

## Solve the equation

4 × 1,250 = p. The partial products are 4,000 + 800 + 200, so
p = 5,000.

```check
(number
  (ask "Solve: 7 × 365 = e. What is e?")
  (answer 2555) (from "7 * 300 + 7 * 60 + 7 * 5") (true "7 * 365 = 2555")
  (wrong-if 2135 "That is 2,100 + 35. Multiply the 60 by 7 too: 7 × 60 = 420.")
  (wrong-if 372 "That adds 7 + 365. Multiply: 7 × 365.")
  (hint "7 × 300 = 2,100, 7 × 60 = 420, 7 × 5 = 35."))
```

---

## Worked example

```example
(example
  (problem "An orchard has 8 rows of trees. Each row has 135 trees. How many trees are there?")
  (step "8 rows of 135 is 8 × 135 = t.")
  (step "8 × 100 = 800. 8 × 30 = 240. 8 × 5 = 40.")
  (step "800 + 240 + 40 = 1,080. Estimate: 8 × 100 = 800, so 1,080 is about the right size.")
  (answer "There are 1,080 trees."))
```

```example
(example
  (problem "A bike costs 214 dollars. How much do 3 bikes cost?")
  (step "3 bikes at 214 dollars each: 3 × 214 = c.")
  (step "3 × 200 = 600. 3 × 10 = 30. 3 × 4 = 12.")
  (step (number (ask "What is c?") (answer 642) (unit "dollars") (from "3 * 214")
    (wrong-if 614 "That is 600 + 14. Add all 3 partial products: 600 + 30 + 12.")))
  (answer "3 bikes cost 642 dollars."))
```

---

## Practice

```check
(number
  (ask "A school buys 5 boxes of paper. Each box has 2,340 sheets. How many sheets is that?")
  (answer 11700) (unit "sheets") (from "5 * 2000 + 5 * 300 + 5 * 40") (true "5 * 2340 = 11700")
  (wrong-if 10340 "That is 10,000 + 340. Multiply every place by 5: 10,000 + 1,500 + 200.")
  (wrong-if 2345 "That adds 5. 5 boxes of 2,340 sheets is 5 × 2,340.")
  (hint "5 × 2,000 = 10,000, 5 × 300 = 1,500, 5 × 40 = 200."))
```

```check
(number
  (ask "A pack has 76 stickers. How many stickers are in 9 packs?")
  (answer 684) (unit "stickers") (from "9 * 70 + 9 * 6") (true "9 * 76 = 684")
  (wrong-if 85 "That adds 9 + 76. 9 packs of 76 is 9 × 76.")
  (wrong-if 636 "That is 630 + 6. Multiply the 6 by 9 too: 9 × 6 = 54.")
  (hint "9 × 70 = 630 and 9 × 6 = 54."))
```

---

```check
(number
  (ask "A plane flies 1,095 miles each day for 4 days. How many miles does it fly?")
  (answer 4380) (unit "miles") (from "4 * 1000 + 4 * 90 + 4 * 5") (true "4 * 1095 = 4380")
  (wrong-if 4095 "That multiplies only the thousands. Each place is multiplied by 4: 4,000 + 360 + 20.")
  (wrong-if 4056 "The 9 in 1,095 is 9 tens. 4 × 90 = 360, not 36.")
  (hint "1,095 = 1,000 + 90 + 5.")
  (hint "4,000 + 360 + 20 = ?"))
```

```check
(number
  (ask "A tent costs 175 dollars. How much do 6 tents cost?")
  (answer 1050) (unit "dollars") (from "6 * 100 + 6 * 70 + 6 * 5") (true "6 * 175 = 1050")
  (wrong-if 181 "That adds 6 + 175. 6 tents at 175 dollars each is 6 × 175.")
  (wrong-if 1000 "Check the sum: 600 + 420 + 30 = 1,050.")
  (hint "6 × 100 = 600, 6 × 70 = 420, 6 × 5 = 30."))
```

So: equal groups mean multiply; solve the equation with partial products.
