# Sharing out a total

```lesson
(objective "Find how much each container would hold if the total on a line plot were shared out equally, such as the water in 8 beakers.")
(standards "5.MD.B.2")
(minutes 25)
```

You can find how much each container would hold if the total were shared out equally.

8 beakers hold different amounts of water. The line plot shows each amount.

```figure
(m5p4-plot 40 280 160 0 8 8 '(0 1 2 1 1 1 0 1 1))
(caption "Water in 8 beakers (liters)")
```

```check
(number
  (ask "How many beakers hold 1/4 liter?")
  (answer 2) (unit "beakers") (from "2")
  (wrong-if 1 "Look above 1/4, not 1/8. There are 2 Xs above 1/4.")
  (hint "Count the Xs above 1/4."))
```

---

## Step 1: the total

First add all the amounts. Write them in eighths:

$1/8 + 2/8 + 2/8 + 3/8 + 4/8 + 5/8 + 7/8 + 8/8$

```check
(number
  (ask "How many liters of water are there in all?")
  (answer 4) (unit "L") (from "1/8 + 1/4 + 1/4 + 3/8 + 1/2 + 5/8 + 7/8 + 1")
  (wrong-if 8 "8 is the number of beakers. Add the amounts: 32 eighths in all.")
  (wrong-if 32 "32 eighths is right. In liters, that is 32/8 = 4.")
  (hint "Add the numerators: 1 + 2 + 2 + 3 + 4 + 5 + 7 + 8.")
  (hint "32/8 = ?"))
```

---

## Step 2: share it out

Now pour all the water into one jug. Then pour it back, the same amount into each beaker.

4 liters shared by 8 beakers is $4 ÷ 8 = 4/8$ liter each.

```figure
(for-range 0 8 (lambda (i) (let ((x (+ 24 (* i 36)))) (rect x 115 26 45 'cool) (frame x 70 26 90 'ink 1.5))))
(label 160 55 "the same in each: 4/8 liter")
(caption "8 beakers, each 1/2 full")
```

```check
(choice
  (ask "4 liters shared equally by 8 beakers. How much is in each?")
  (right "1/2 liter" (true "4 / 8 = 1/2"))
  (wrong "2 liters" (false "4 / 8 = 2") "That divides 8 by 4. The 4 liters are shared, so divide 4 by 8.")
  (wrong "4 liters" "4 liters is all the water. Each beaker gets only part of it.")
  (wrong "1/8 liter" "1/8 would be 1 liter shared by 8. Here 4 liters are shared.")
  (hint "A fraction is a division: 4 ÷ 8 = 4/8.")
  (hint "4/8 = 1/2"))
```

---

## A worked example

Each beaker would hold 1/2 liter, though some held more and some less before.

```example
(example
  (problem "5 cups hold 1/2, 1/2, 3/4, 3/4 and 1/2 cup of juice. 4 friends share all the juice equally. How much does each get?")
  (step "The total: 2/4 + 2/4 + 3/4 + 3/4 + 2/4 = 12/4 = 3 cups.")
  (step "Share 3 cups among 4 friends: 3 ÷ 4.")
  (step (number (ask "How much juice does each friend get? (cups)") (answer 0.75) (from "3 / 4")
          (wrong-if 1.333 "That divides 4 by 3. The 3 cups are shared by 4 friends: 3 ÷ 4.")))
  (answer "Each friend gets 3 ÷ 4 = 3/4 cup."))
```

---

## Practice

```figure
(m5p4-plot 40 280 160 0 4 4 '(0 1 2 1 2))
(caption "Sand in 6 bags (pounds)")
```

```check
(number
  (ask "How many pounds of sand are in the 6 bags in all?")
  (answer 4) (unit "lb") (from "1/4 + 1/2 + 1/2 + 3/4 + 1 + 1")
  (wrong-if 6 "6 is the number of bags. Add the amounts: 16 quarters in all.")
  (hint "In quarters: 1 + 2 + 2 + 3 + 4 + 4.")
  (hint "16/4 = ?"))
```

```check
(number
  (ask "If the sand were shared equally by the 6 bags, how many pounds would each hold?")
  (answer 0.66667) (within 0.01) (unit "lb") (from "4 / 6")
  (wrong-if 1.5 "That divides 6 by 4. The 4 pounds are shared by 6 bags: 4 ÷ 6 = 4/6.")
  (hint "4 pounds shared by 6 bags: 4 ÷ 6.")
  (hint "4 ÷ 6 = 4/6 = 2/3"))
```

To share a total equally, add all the measurements, then divide by how many share it.
