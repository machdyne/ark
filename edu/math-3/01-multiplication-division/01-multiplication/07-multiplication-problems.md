# Multiplication problems

```lesson
(objective "Solve word problems about equal groups, arrays and lengths by multiplying within 100.")
(standards "3.OA.A.3")
(minutes 25)
```

You can solve story problems by spotting equal groups and multiplying.

Ask 3 questions about the story:

1. What are the groups?
2. How many groups are there?
3. How many are in each group?

Then multiply: groups × number in each group.

```check
(choice
  (ask "There are 6 tanks. Each tank has 4 fish. What are the groups?")
  (right "The tanks: 6 groups of 4 fish")
  (wrong "The fish: 4 groups of 6"
    "The fish are what you count. They sit in the tanks, so each tank is a group. There are 6 tanks with 4 in each.")
  (hint "Which thing holds the others?"))
```

```check
(number
  (ask "How many fish are there in all?")
  (answer 24) (unit "fish") (from "6 * 4")
  (wrong-if 10 "10 is 6 + 4. There are 6 tanks with 4 fish each: 6 × 4.")
  (hint "6 × 4: count by 4s 6 times."))
```

---

## Arrays in stories

Words like "rows" and "in each row" tell you there is an array. The
rows are the groups.

```figure
(dot-array 60 50 4 9 25 'ink)
(caption "4 rows of 9 seats")
```

```check
(number
  (ask "A small theater has 4 rows of seats. Each row has 9 seats. How many seats are there?")
  (answer 36) (from "4 * 9")
  (wrong-if 13 "13 is 4 + 9. There are 4 rows, and each has 9 seats: 9 + 9 + 9 + 9.")
  (wrong-if 27 "27 is 3 rows of 9. There are 4 rows.")
  (hint "Multiply the rows by the seats in each row.")
  (hint "9, 18, 27 ..."))
```

---

## Lengths in stories

When each piece has the same length, the pieces are equal groups of
inches, feet or yards. Multiply to find the total length.

```figure
(md-tape 20 70 280 50 5 "8 in" "? inches")
(caption "5 sticks, each 8 inches long")
```

```check
(number
  (ask "Ella lays 5 sticks end to end. Each stick is 8 inches long. How many inches long is the line?")
  (answer 40) (from "5 * 8")
  (wrong-if 13 "13 is 5 + 8. There are 5 sticks, each 8 inches long: 5 × 8.")
  (hint "Count by 8s, 5 times."))
```

---

## Worked example

```example
(example
  (problem "A baker puts 7 muffins on each tray. She fills 3 trays. How many muffins is that?")
  (step "The groups are the trays. There are 3 groups.")
  (step "Each tray holds 7 muffins.")
  (step "Multiply: 3 × 7. Count by 7s: 7, 14, 21.")
  (answer "3 × 7 = 21. That is 21 muffins."))
```

```example
(example
  (problem "A fence has 8 sections. Each section is 5 feet long. How long is the fence?")
  (step "The groups are the sections. There are 8 of them.")
  (step "Each section is 5 feet long, so multiply: 8 × 5.")
  (step (number (ask "8 × 5 = ? feet") (answer 40) (unit "feet") (from "8 * 5")
    (wrong-if 13 "13 is 8 + 5. There are 8 sections of 5 feet: count by 5s 8 times.")))
  (answer "The fence is 40 feet long."))
```

---

## Practice

```check
(number
  (ask "A pack has 10 pencils. Mr. Diaz buys 6 packs. How many pencils does he buy?")
  (answer 60) (unit "pencils") (from "6 * 10")
  (wrong-if 16 "16 is 6 + 10. There are 6 packs of 10: count by 10s 6 times.")
  (hint "Count by 10s, 6 times."))
```

```check
(number
  (ask "A window has 3 rows of panes. Each row has 3 panes. How many panes are there?")
  (answer 9) (unit "panes") (from "3 * 3")
  (wrong-if 6 "6 is 3 + 3. There are 3 rows of 3: 3 + 3 + 3.")
  (hint "3 rows, 3 in each."))
```

---

```check
(number
  (ask "Rosa plays piano for 9 minutes each day. How many minutes does she play in 7 days?")
  (answer 63) (unit "minutes") (from "7 * 9")
  (wrong-if 16 "16 is 7 + 9. There are 7 days, each with 9 minutes: 7 × 9.")
  (wrong-if 56 "56 is 7 × 8. Each day is 9 minutes, so find 7 × 9.")
  (hint "7 groups of 9. Count by 9s: 9, 18, 27 ...")
  (hint "9, 18, 27, 36, 45, 54, 63"))
```

```check
(choice
  (ask "Which story can you solve with 4 × 6?")
  (right "4 vans each carry 6 people. How many people?")
  (wrong "4 people get in a van, then 6 more. How many people?"
    "This story adds 4 and 6. There are no equal groups in it.")
  (wrong "A van has 6 seats. 4 are full. How many are empty?"
    "This story takes 4 away from 6. Multiplying needs equal groups.")
  (hint "Look for a story with equal groups."))
```

So: find the groups, how many there are and how many are in each, then multiply.
