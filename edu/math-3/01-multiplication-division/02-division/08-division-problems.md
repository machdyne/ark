# Division problems

```lesson
(objective "Solve word problems about sharing and grouping by dividing within 100.")
(standards "3.OA.A.3")
(minutes 25)
```

You can solve story problems that split a total into equal groups.

A division story always gives you a total. It also tells you one of
two things:

- how many groups there are (find how many in each), or
- how many are in each group (find how many groups).

Either way, you divide the total.

```check
(choice
  (ask "Zoe has 32 beads. She makes 4 bracelets with the same number of beads. What do you need to find?")
  (right "How many beads go on each bracelet")
  (wrong "How many bracelets she makes"
    "The story says she makes 4 bracelets. You need the number of beads on each one.")
  (wrong "How many beads in all"
    "The story gives the total: 32 beads. You need to find how many go on each bracelet.")
  (hint "Which number does the story not tell you?"))
```

```check
(number
  (ask "How many beads go on each bracelet?")
  (answer 8) (from "32 / 4") (true "4 * 8 = 32")
  (wrong-if 28 "28 is 32 - 4. The 32 beads are shared into 4 equal groups: 32 ÷ 4.")
  (wrong-if 128 "128 is 32 × 4. The beads are split up, not multiplied: 32 ÷ 4.")
  (hint "Think: 4 × ? = 32."))
```

---

## Groups of a given size

```figure
(md-tape 20 80 280 50 7 "5" "35")
(caption "35 in groups of 5: how many parts?")
```

A tape diagram helps. You know the total and the size of each part.
Find how many parts.

```check
(number
  (ask "35 children ride in cars. Each car takes 5 children. How many cars do they need?")
  (answer 7) (from "35 / 5") (true "7 * 5 = 35")
  (wrong-if 30 "30 is 35 - 5, just one car filled. Fill cars of 5 until all 35 children ride.")
  (wrong-if 5 "5 is how many ride in each car. Count how many 5s make 35.")
  (hint "Count by 5s to 35. How many 5s?"))
```

---

## Lengths

Division also works for lengths. A board 48 inches long is cut into 6
equal pieces. Each piece is 48 ÷ 6 inches long.

```check
(number
  (ask "How long is each piece of the 48-inch board?")
  (answer 8) (unit "inches") (from "48 / 6") (true "6 * 8 = 48")
  (wrong-if 42 "42 is 48 - 6. The board is cut into 6 equal pieces: 48 ÷ 6.")
  (hint "6 × ? = 48"))
```

---

## Worked example

```example
(example
  (problem "A teacher has 54 crayons. She puts 9 in each cup. How many cups does she fill?")
  (step "The total is 54. Each group has 9. Find the number of groups.")
  (step "Divide: 54 ÷ 9. Think: 9 × ? = 54.")
  (step "9, 18, 27, 36, 45, 54. That is 6 nines.")
  (answer "54 ÷ 9 = 6. She fills 6 cups."))
```

```example
(example
  (problem "3 friends share 27 marbles equally. How many marbles does each friend get?")
  (step "The total is 27. There are 3 groups. Find how many in each.")
  (step "Divide: 27 ÷ 3. Think: 3 × ? = 27.")
  (step (number (ask "27 ÷ 3 = ?") (answer 9) (from "27 / 3")
    (wrong-if 24 "24 is 27 - 3. Share 27 into 3 equal groups: 3 × 9 = 27.")))
  (answer "Each friend gets 9 marbles."))
```

---

## Practice

```check
(number
  (ask "There are 72 eggs. A carton holds 8. How many cartons can be filled?")
  (answer 9) (unit "cartons") (from "72 / 8") (true "8 * 9 = 72")
  (wrong-if 64 "64 is 72 - 8, just one carton filled. Fill cartons of 8 until all 72 eggs are used.")
  (hint "Think: 8 × ? = 72.")
  (hint "8 × 9 = ?"))
```

```check
(number
  (ask "A rope 20 feet long is cut into 4 equal parts. How long is each part?")
  (answer 5) (unit "feet") (from "20 / 4")
  (wrong-if 16 "16 is 20 - 4. The rope is cut into 4 equal parts: 20 ÷ 4.")
  (hint "4 × ? = 20"))
```

---

```check
(choice
  (ask "Which story can you solve with 40 ÷ 5?")
  (right "40 seeds are planted, 5 in each pot. How many pots?")
  (wrong "5 pots each have 40 seeds. How many seeds?"
    "This story has 5 groups of 40, so you multiply. A division story starts with the total, 40.")
  (wrong "40 seeds are planted. 5 do not grow. How many grow?"
    "This story takes 5 away: 40 - 5. There are no equal groups in it.")
  (hint "Look for a total of 40 split into equal groups."))
```

```check
(number
  (ask "Noah reads 63 pages in 7 days. He reads the same number each day. How many pages a day?")
  (answer 9) (from "63 / 7") (true "7 * 9 = 63")
  (wrong-if 56 "56 is 63 - 7. The 63 pages are shared equally over 7 days: 63 ÷ 7.")
  (hint "7 × ? = 63"))
```

So: a division story gives you a total. Divide it to find the size of each group or the number of groups.
