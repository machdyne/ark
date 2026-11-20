# Expressions for problems

```lesson
(objective "Write one expression with grouping symbols for a multi-step word problem, and evaluate it.")
(standards "5.OA.A.1" "5.OA.A.2")
(minutes 25)
```

You can write one expression for a whole word problem, then evaluate
it.

Mia has 3 boxes of 12 crayons and 5 boxes of 8 crayons. How many
crayons does she have?

- The first boxes: $3 * 12$. The others: $5 * 8$.
- In all: $(3 * 12) + (5 * 8)$.

The parentheses are not needed here, but they show the two parts
clearly. The value is 36 + 40 = 76 crayons.

```check
(number
  (ask "Evaluate (3 × 12) + (5 × 8).")
  (answer 76) (from "(3 * 12) + (5 * 8)")
  (wrong-if 328 "That works left to right without the rule: 36 + 5 = 41, then 41 × 8. Each pair of parentheses comes first: 36 and 40.")
  (hint "3 × 12 = 36. 5 × 8 = 40."))
```

---

## Plan the order

Ask what must be found first. Put it in parentheses.

Ben buys 4 packs of 6 cans. He gives away 9 cans. How many are left?

First the cans he buys: $4 * 6$. Then take away 9: $(4 * 6) - 9$. The
value is 24 - 9 = 15.

```check
(choice
  (ask "Kim shares 50 stickers equally among 5 friends. Then she gives each friend 2 more. Which expression gives what each friend has?")
  (right "(50 ÷ 5) + 2" (true "(50 ÷ 5) + 2 = 12"))
  (wrong "50 ÷ (5 + 2)"
    "This shares 50 among 7. The 2 more come after sharing among 5: (50 ÷ 5) + 2.")
  (wrong "(50 + 2) ÷ 5"
    "This adds 2 to the whole pile before sharing. Each friend gets 2 more after sharing.")
  (hint "What happens first: sharing, or getting 2 more?"))
```

---

## Brackets for more layers

A problem can need a group inside a group. Use brackets for the outer
group.

A class of 3 rows of 8 desks gets 6 more desks. Then the desks are
split equally among 2 rooms. Each room gets:

`[(3 x 8) + 6] ÷ 2`

Work outward: 3 × 8 = 24, then 24 + 6 = 30, then 30 ÷ 2 = 15 desks.

```check
(number
  (ask "Evaluate [(4 x 5) + 10] ÷ 3.")
  (answer 10) (from "((4 * 5) + 10) ÷ 3")
  (wrong-if 23.33 "Add before you divide: the brackets hold (4 × 5) + 10 = 30. Then 30 ÷ 3 = 10.")
  (wrong-if 30 "30 is the value in the brackets. Divide it by 3.")
  (hint "4 × 5 = 20. 20 + 10 = 30."))
```

---

## Worked example

```example
(example
  (problem "A shop has 120 apples. It sells 6 bags of 9 apples. Then it puts the rest into 2 equal boxes. How many apples are in each box?")
  (step "Sold: 6 × 9.")
  (step "Left: 120 - (6 × 9).")
  (step "In each box: [120 - (6 x 9)] ÷ 2.")
  (step "6 × 9 = 54. 120 - 54 = 66. 66 ÷ 2 = 33.")
  (answer "33 apples in each box"))
```

```example
(example
  (problem "Leo reads 15 pages a day for 4 days, then 20 pages. Write and evaluate one expression for the pages he reads.")
  (step "4 days: 15 × 4. Then 20 more: (15 × 4) + 20.")
  (step (number (ask "Evaluate (15 × 4) + 20.") (answer 80) (from "(15 * 4) + 20")
    (wrong-if 360 "That adds first: 15 × 24. The parentheses say 15 × 4 first, then add 20.")))
  (answer "(15 × 4) + 20 = 80 pages"))
```

---

## Practice

```check
(choice
  (ask "A team has 2 vans with 7 seats and 1 car with 4 seats. Which expression gives the number of seats?")
  (right "(2 × 7) + 4" (true "(2 * 7) + 4 = 18"))
  (wrong "2 × (7 + 4)"
    "This gives 2 cars of 4 seats as well. There is only 1 car: (2 × 7) + 4.")
  (wrong "(2 + 7) × 4"
    "The 2 vans each have 7 seats: 2 × 7. Then add the car's 4.")
  (hint "Vans first: 2 × 7."))
```

```check
(number
  (ask "Evaluate the expression for the seats: (2 × 7) + 4.")
  (answer 18) (from "(2 * 7) + 4")
  (wrong-if 22 "22 is 2 × (7 + 4). Here you multiply 2 × 7 first, then add 4.")
  (hint "2 × 7 = 14."))
```

---

```check
(number
  (ask "Evaluate {100 - [5 x (3 + 7)]} ÷ 10.")
  (answer 5) (from "(100 - (5 * (3 + 7))) ÷ 10")
  (wrong-if 50 "50 is the value in the braces. Divide it by 10.")
  (wrong-if 95 "That divides only the 50 by 10. The braces hold 100 - 50 = 50 as one group: then 50 ÷ 10.")
  (hint "3 + 7 = 10. 5 × 10 = 50. 100 - 50 = 50."))
```

```check
(choice
  (ask "Ella has 3 bags of 10 marbles and finds 6 more. She splits all of them equally between 2 jars. Which expression gives the marbles in each jar?")
  (right "[(3 x 10) + 6] ÷ 2" (true "((3 * 10) + 6) ÷ 2 = 18"))
  (wrong "(3 x 10) + 6 ÷ 2"
    "Here only the 6 is split, since you divide before you add. Put the whole total in brackets.")
  (wrong "3 x (10 + 6) ÷ 2"
    "This puts 6 more marbles in each bag. She found 6 in all: (3 × 10) + 6.")
  (hint "Find the total first, then split it."))
```

So: write what must be found first in parentheses, use brackets for a group around a group, then evaluate from the inside out.
