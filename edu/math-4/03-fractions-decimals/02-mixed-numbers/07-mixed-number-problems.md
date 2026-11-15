# Mixed number problems

```lesson
(objective "Solve word problems that add or subtract mixed numbers with like denominators.")
(standards "4.NF.B.3c" "4.NF.B.3d")
(minutes 25)
```

You can solve word problems with mixed numbers.

Read the problem. Decide: add or subtract? Then add or subtract the
wholes and the parts, and regroup if you need to.

Ella walks $1 3/4$ hours on Saturday and $2 2/4$ hours on Sunday. How
long does she walk in all? Add: $1 3/4 + 2 2/4 = 3 5/4 = 4 1/4$ hours.

```check
(choice
  (ask "A board is" (math "5 1/2") "feet long. Ty cuts off" (math "2 1/2") "feet. Which tells how long the rest is?")
  (right "5 1/2 - 2 1/2" (true "5 1/2 - 2 1/2 = 3"))
  (wrong "5 1/2 + 2 1/2"
    "Cutting a piece off makes the board shorter. Subtract.")
  (wrong "2 1/2 - 5 1/2"
    "Start with the whole board, 5 1/2 feet, and take the piece away.")
  (hint "Does the board get longer or shorter?"))
```

---

## A model helps

Lucas has $3 1/8$ meters of rope. He uses $1 6/8$ meters. How much is
left?

```figure
(m4p3-wholes 40 20 240 26 25 8 'warm)
(caption "3 1/8 meters of rope, in eighths of a meter")
```

```check
(number
  (ask "How much rope is left, in meters? Type it like 2 1/4.")
  (answer 1.375) (unit "meters") (from "3 1/8 - 1 6/8")
  (wrong-if 2.625 "You took 1/8 from 6/8. Regroup: 3 1/8 = 2 9/8. Then 2 9/8 - 1 6/8 = 1 3/8.")
  (wrong-if 4.875 "You added. He uses rope, so less is left.")
  (hint "3 1/8 = 2 9/8.")
  (hint "Wholes: 2 - 1. Parts: 9/8 - 6/8."))
```

---

## Worked example

```example
(example
  (problem "A jug has 2 3/10 liters of milk. Mom adds 1 9/10 liters. How much is in the jug now?")
  (step "Milk is added: add.")
  (step "Wholes: 2 + 1 = 3. Parts: 3/10 + 9/10 = 12/10 = 1 2/10.")
  (step "Regroup: 3 + 1 2/10 = 4 2/10.")
  (answer "4 2/10 liters."))
```

```example
(example
  (problem "Ana's plant is 6 2/12 inches tall. Ben's is 4 7/12 inches. How much taller is Ana's?")
  (step "How much taller: subtract.")
  (step "Regroup: 6 2/12 = 5 14/12.")
  (step (number (ask "5 14/12 - 4 7/12 = ? Type it like 2 1/4.")
    (answer 1.5833333) (within 0.001) (from "6 2/12 - 4 7/12")
    (wrong-if 2.4166667 "You took 2/12 from 7/12. Use 5 14/12 - 4 7/12.")))
  (answer "1 7/12 inches taller."))
```

---

## Practice

```check
(number
  (ask "Jen pours" (math "2 1/3") "liters of water into a tub. Then she pours" (math "1 1/3") "liters more. How many liters is that in all?")
  (answer 3.6666667) (within 0.001) (unit "liters") (from "2 1/3 + 1 1/3")
  (wrong-if 3.3333333 "1/3 + 1/3 = 2/3. So it is 3 2/3 liters.")
  (hint "Wholes: 2 + 1. Parts: 1/3 + 1/3."))
```

```check
(number
  (ask "A bag holds 4 kilograms of sand. Joe uses" (math "1 3/5") "kilograms. How much is left?")
  (answer 2.4) (unit "kilograms") (from "4 - 1 3/5")
  (wrong-if 3.6 "4 - 1 = 3, but you must take the 3/5 too. Write 4 as 3 5/5.")
  (wrong-if 3.4 "Write 4 as 3 5/5. Then 3 5/5 - 1 3/5 = 2 2/5.")
  (hint "4 = 3 5/5."))
```

---

```check
(number
  (ask "Kay runs" (math "1 5/6") "laps. Then she runs" (math "2 4/6") "laps. How many laps in all? Type it like 2 1/4.")
  (answer 4.5) (unit "laps") (from "1 5/6 + 2 4/6")
  (wrong-if 3.5 "5/6 + 4/6 = 9/6 = 1 3/6. Add that whole: 4 3/6.")
  (hint "5/6 + 4/6 = 9/6."))
```

```check
(number
  (ask "A movie is" (math "2 1/4") "hours long. Mia has watched" (math "3/4") "hours. How many hours are left?")
  (answer 1.5) (unit "hours") (from "2 1/4 - 3/4")
  (wrong-if 2.5 "You took 1/4 from 3/4. Regroup: 2 1/4 = 1 5/4. Then 1 5/4 - 3/4 = 1 2/4.")
  (hint "2 1/4 = 1 5/4."))
```

So: decide whether to add or subtract, then work with the wholes and
the parts, regrouping when you need to.
