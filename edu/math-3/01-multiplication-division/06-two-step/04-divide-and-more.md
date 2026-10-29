# Two steps with division

```lesson
(objective "Solve two-step word problems that divide and use one more operation.")
(standards "3.OA.D.8")
(minutes 25)
```

You can solve stories where one of the 2 steps is a division.

Ana has 30 cookies. She keeps 6. She shares the rest equally among 4
friends. How many does each friend get?

- Step 1: the rest. 30 - 6 = 24.
- Step 2: share the rest. 24 ÷ 4 = ?

```figure
(md-tape 20 70 280 50 4 "?" "24")
(caption "24 shared by 4 friends")
```

```check
(number
  (ask "How many cookies does each friend get?")
  (answer 6) (from "(30 - 6) / 4")
  (wrong-if 24 "24 is the rest, before sharing. Share it among 4 friends: 24 ÷ 4.")
  (wrong-if 5 "30 ÷ 6 = 5 divides by the 6 Ana keeps. She keeps them, so take them away: 30 - 6 = 24. Then share by 4.")
  (hint "30 - 6 = 24. Then 24 ÷ 4."))
```

---

## Divide first

Sometimes you divide first. 5 friends share 35 stickers equally. Then
Sam gets 3 more from his brother. How many does Sam have now?

- Step 1: 35 ÷ 5 = 7 each.
- Step 2: Sam gets 3 more. 7 + 3 = 10.

```check
(number
  (ask "4 children share 28 crayons equally. Then each child loses 2. How many crayons does each child have now?")
  (answer 5) (from "28 / 4 - 2")
  (wrong-if 7 "7 is each share before any are lost. Each child loses 2: 7 - 2.")
  (wrong-if 26 "28 - 2 takes 2 from the whole box. First share: 28 ÷ 4 = 7. Then 7 - 2.")
  (hint "28 ÷ 4 = 7. Then take away 2."))
```

---

## Divide, then multiply

A pack of 6 pens costs 12 dollars. How much do 4 pens cost?

- Step 1: 1 pen costs 12 ÷ 6 = 2 dollars.
- Step 2: 4 pens cost 4 × 2 = 8 dollars.

```check
(number
  (ask "3 bags hold 27 apples, the same in each. How many apples are in 5 bags?")
  (answer 45) (from "5 * (27 / 3)")
  (wrong-if 9 "9 is the apples in 1 bag. There are 5 bags: 5 × 9.")
  (wrong-if 135 "27 × 5 counts 5 groups of all 3 bags. First find 1 bag: 27 ÷ 3 = 9.")
  (hint "1 bag: 27 ÷ 3 = 9. Then 5 bags."))
```

---

## Worked example

```example
(example
  (problem "A class of 24 makes teams of 4. Then 2 teams go out to play. How many teams are left?")
  (step "Step 1: 24 ÷ 4 = 6 teams.")
  (step "Step 2: 2 teams go out. 6 - 2 = 4.")
  (step "Equation: 24 ÷ 4 - 2 = t, so t = 4.")
  (answer "4 teams are left."))
```

```example
(example
  (problem "Rosa had 50 beads. She used 14. She puts the rest in 4 equal boxes. How many beads are in each box?")
  (step "Step 1: 50 - 14 = 36 beads left.")
  (step "Step 2: share 36 among 4 boxes.")
  (step (number (ask "36 ÷ 4 = ?") (answer 9) (from "(50 - 14) / 4")
    (wrong-if 32 "32 is 36 - 4. The beads are shared into 4 boxes: 36 ÷ 4.")))
  (answer "Each box has 9 beads."))
```

---

## Practice

```check
(number
  (ask "Leo has 45 cards. He gives away 5. He puts the rest in 8 equal piles. How many cards are in each pile?")
  (answer 5) (from "(45 - 5) / 8")
  (wrong-if 40 "40 is the cards left. Share them into 8 piles: 40 ÷ 8.")
  (hint "45 - 5 = 40. Then 40 ÷ 8."))
```

```check
(number
  (ask "18 children ride in cars, 3 in each car. Each car needs 2 grown-ups to drive and help. How many grown-ups are needed?")
  (answer 12) (from "(18 / 3) * 2")
  (wrong-if 6 "6 is the number of cars. Each car needs 2 grown-ups: 6 × 2.")
  (wrong-if 36 "18 × 2 gives each child 2 grown-ups. First find the cars: 18 ÷ 3 = 6.")
  (hint "18 ÷ 3 = 6 cars. Then 6 × 2."))
```

---

```check
(number
  (ask "Mo has 63 stamps in 7 equal rows. He adds 4 stamps to one row. How many stamps are in that row now?")
  (answer 13) (from "63 / 7 + 4")
  (wrong-if 9 "9 is the row before Mo adds stamps. Add 4: 9 + 4.")
  (wrong-if 67 "63 + 4 is all the stamps. The question asks about one row: 63 ÷ 7 = 9, then 9 + 4.")
  (hint "1 row: 63 ÷ 7 = 9."))
```

So: in a 2-step story with division, find which step comes first, then use its answer in the other step.
