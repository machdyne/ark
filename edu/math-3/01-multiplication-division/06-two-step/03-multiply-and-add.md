# Two steps: multiply, then add or subtract

```lesson
(objective "Solve two-step word problems that multiply and then add or subtract.")
(standards "3.OA.D.8")
(minutes 25)
```

You can solve stories where you multiply first, then add or subtract.

Kai buys 4 packs of juice boxes. Each pack has 6. He already had 5
juice boxes. How many does he have now?

- Step 1: the packs are equal groups. 4 × 6 = 24.
- Step 2: add the ones he had. 24 + 5 = ?

```figure
(md-groups 18 40 4 6 32 4 'ink)
(md-dots 160 150 5 32 'ink)
(ring 160 150 32 'ink 1)
(label 160 205 "4 packs of 6, and 5 more" 'body)
```

```check
(number
  (ask "How many juice boxes does Kai have now?")
  (answer 29) (from "4 * 6 + 5")
  (wrong-if 15 "15 is 4 + 6 + 5. The 4 packs of 6 are equal groups: 4 × 6 = 24 first.")
  (wrong-if 24 "24 is only the packs. Add the 5 he already had.")
  (hint "4 × 6 = 24. Then add 5."))
```

---

## Multiply, then subtract

A teacher has 50 stickers. She gives 6 children 7 stickers each. How
many stickers does she have left?

- Step 1: 6 × 7 = 42 stickers given away.
- Step 2: 50 - 42 = 8 left.

```check
(number
  (ask "Zoe has 40 dollars. She buys 3 books for 9 dollars each. How many dollars are left?")
  (answer 13) (from "40 - 3 * 9")
  (wrong-if 27 "27 is what the books cost. Take it away from the 40 dollars: 40 - 27.")
  (wrong-if 28 "40 - 3 - 9 treats 3 and 9 as 2 take-aways. 3 books at 9 dollars cost 3 × 9 = 27.")
  (hint "3 × 9 = 27. Then 40 - 27."))
```

---

## With a letter

You can write the story as one equation, with a letter for the answer.
For Kai: 4 × 6 + 5 = j. You multiply first, then add.

```check
(choice
  (ask "Which equation fits: 3 rows of 8 chairs, and 2 extra chairs. c is the number of chairs."
  )
  (right "3 × 8 + 2 = c" (true "3 * 8 + 2 = 26"))
  (wrong "3 + 8 + 2 = c"
    "3 rows of 8 are equal groups, so multiply: 3 × 8. Then add the 2 extra.")
  (wrong "3 × 8 × 2 = c"
    "The 2 extra chairs are added, not multiplied. 3 × 8 + 2.")
  (hint "Rows of 8 are equal groups. The extra chairs are added."))
```

---

## Worked example

```example
(example
  (problem "Each of 5 vases has 8 roses. Then 6 roses are taken out. How many roses are left?")
  (step "Step 1: 5 vases of 8 is 5 × 8 = 40 roses.")
  (step "Step 2: 6 are taken out. 40 - 6 = 34.")
  (step "Equation: 5 × 8 - 6 = r, so r = 34.")
  (answer "34 roses are left."))
```

```example
(example
  (problem "A pool has 7 lanes. Each lane has 4 swimmers. 9 more swimmers wait by the pool. How many swimmers in all?")
  (step "Step 1: 7 × 4 = 28 in the lanes.")
  (step "Step 2: add the 9 who wait.")
  (step (number (ask "28 + 9 = ?") (answer 37) (from "7 * 4 + 9")
    (wrong-if 28 "28 is only the swimmers in lanes. Add the 9 who wait.")))
  (answer "There are 37 swimmers."))
```

---

## Practice

```check
(number
  (ask "A baker makes 6 trays of 9 rolls. She sells 30. How many rolls are left?")
  (answer 24) (from "6 * 9 - 30")
  (wrong-if 54 "54 is all the rolls. She sells 30, so take them away: 54 - 30.")
  (wrong-if 15 "6 + 9 adds the trays and rolls. 6 trays of 9 is 6 × 9 = 54.")
  (hint "6 × 9 = 54. Then 54 - 30."))
```

```check
(number
  (ask "Max has 3 bags of 10 marbles and 7 loose marbles. How many marbles does he have?")
  (answer 37) (from "3 * 10 + 7")
  (wrong-if 20 "3 + 10 + 7 adds the bags as if each were 1 marble. 3 bags of 10 is 30.")
  (hint "3 × 10 = 30."))
```

---

```check
(number
  (ask "A movie costs 8 dollars a ticket. A family buys 5 tickets and pays with 50 dollars. How much change do they get?")
  (answer 10) (unit "dollars") (from "50 - 5 * 8")
  (wrong-if 40 "40 is the cost of the tickets. The change is what is left of the 50: 50 - 40.")
  (wrong-if 37 "50 - 5 - 8 does not find the cost. 5 tickets at 8 dollars cost 5 × 8 = 40.")
  (hint "5 × 8 = 40. Then 50 - 40."))
```

So: when a story has equal groups and more, multiply the groups first, then add or subtract.
