# Writing word problems

```lesson
(objective "Write a word problem that fits a given equation.")
(standards "3.OA.A.3" "3.OA.D.8")
(minutes 25)
```

You can turn an equation into a story of your own.

Each sign tells the story what to do:

| Sign | Story words |
| × | equal groups, rows, each, every |
| ÷ | share equally, split into groups of |
| + | more, join, in all, together |
| - | left, take away, give away, fewer |

For 4 × 5 = ?, a story needs 4 equal groups of 5: "4 dogs each have 5
toys. How many toys in all?"

```check
(choice
  (ask "Which story fits 6 × 3 = ?")
  (right "6 boxes each hold 3 eggs. How many eggs?")
  (wrong "6 eggs, and 3 more. How many eggs?"
    "This story adds: 6 + 3. A × story needs equal groups.")
  (wrong "6 boxes hold 3 eggs in all. How many in each box?"
    "This story shares 3 eggs among 6 boxes. 6 × 3 needs 6 equal groups of 3, and asks for the total.")
  (hint "6 groups, with 3 in each."))
```

---

## A division story

For 20 ÷ 4 = ?, the story starts with a total of 20. Then it shares
them into 4 equal groups, or puts them in groups of 4.

```check
(choice
  (ask "Which story fits 20 ÷ 4 = ?")
  (right "20 pears go into 4 bowls equally. How many in each bowl?")
  (wrong "4 bowls each hold 20 pears. How many pears?"
    "This is 4 groups of 20: 4 × 20. A ÷ story starts with the total of 20 and splits it.")
  (wrong "20 pears, and 4 are eaten. How many are left?"
    "Eating 4 pears takes them away: 20 - 4. A ÷ story splits 20 into equal groups.")
  (hint "Start with 20 and split them equally."))
```

---

## A 2-step story

For 5 × 4 + 3 = ?, the story has 2 parts: 5 equal groups of 4, and 3
more added once.

"5 vases each hold 4 flowers. There are 3 more flowers on the table.
How many flowers in all?"

```check
(choice
  (ask "Which story fits 30 - 3 × 6 = ?")
  (right "Ben has 30 dollars. He buys 3 toys for 6 dollars each. How much is left?")
  (wrong "Ben has 30 dollars. He spends 3 dollars, then 6 more. How much is left?"
    "That is 30 - 3 - 6. In 3 × 6, the 3 and the 6 make equal groups: 3 toys at 6 dollars each.")
  (wrong "Ben buys 30 toys, then 3 more boxes of 6. How many toys?"
    "This story adds the boxes. The equation takes away: 30 - 3 × 6.")
  (hint "3 × 6 is done first. What are 3 groups of 6 here?"))
```

```check
(number
  (ask "Solve Ben's story: 30 - 3 × 6 = ?")
  (answer 12) (from "30 - 3 * 6")
  (wrong-if 162 "That subtracts first: 27 × 6. Multiply first: 3 × 6 = 18, then 30 - 18.")
  (hint "3 × 6 = 18. Then 30 - 18."))
```

---

## Worked example

```example
(example
  (problem "Write a story for 24 ÷ 3 = ?.")
  (step "24 is the total. Pick something to share: 24 crayons.")
  (step "÷ 3: share them equally among 3 children.")
  (step "Ask the question: how many does each child get?")
  (answer "24 crayons are shared equally by 3 children. How many does each child get? (8)"))
```

```example
(example
  (problem "Write a story for 2 × 7 + 5 = ?.")
  (step "2 × 7: 2 weeks of 7 days.")
  (step "+ 5: 5 more days.")
  (step (number (ask "Solve: 2 × 7 + 5 = ?") (answer 19) (from "2 * 7 + 5")
    (wrong-if 24 "That adds first: 2 × 12. Multiply first: 14, then 14 + 5.")))
  (answer "A trip lasts 2 weeks and 5 more days. How many days is that? (19)"))
```

---

## Your turn

Write a story for 8 × 5 = ? on paper or in your head. Check it: does it
have 8 equal groups, with 5 in each? Does it ask for the total?

```check
(choice
  (ask "Sam wrote: \"8 children each have 5 pencils. How many pencils?\" Does it fit 8 × 5?")
  (right "Yes: 8 equal groups of 5, and it asks for the total")
  (wrong "No: it should be about 5 children"
    "8 children, each with 5 pencils, is 8 groups of 5: that is 8 × 5. A story about 5 children with 8 each would fit too, with the same total.")
  (hint "Count the groups. Count how many in each."))
```

```check
(choice
  (ask "Lin wrote: \"I have 40 stickers and give 8 away. How many are left?\" Which equation fits her story?")
  (right "40 - 8 = ?")
  (wrong "40 ÷ 8 = ?"
    "Giving 8 away takes them off once. Sharing into groups of 8 would be ÷. Lin's story is 40 - 8.")
  (wrong "8 × 5 = ?"
    "There are no equal groups in Lin's story. She takes 8 away from 40.")
  (hint "What does \"give away\" do?"))
```

So: pick story words that match each sign, and check that the question asks for the unknown number.
