# Multiplying problems

```lesson
(objective "Solve multi-step word problems that multiply multi-digit whole numbers.")
(standards "5.NBT.B.5")
(minutes 30)
```

You can solve word problems with more than one step that multiply.

A store gets 12 crates. Each crate holds 24 boxes. Each box holds 15
pens. How many pens is that?

1. Boxes: $12 * 24 = 288$.
2. Pens: $288 * 15 = 4320$.

The store gets 4,320 pens. Estimate to check: 10 × 20 × 20 = 4,000.

```figure
(frac-bar-at 20 50 280 36 12 0 'warm)
(for-range 0 12 (lambda (i) (label (+ 32 (* (/ 280 12) i)) 73 "24" 'small)))
(label 160 40 "12 crates of 24 boxes = 288 boxes" 'small 'bold)
(frac-bar-at 20 130 280 36 10 0 'cool)
(for-range 0 10 (lambda (i) (label (+ 34 (* 28 i)) 153 "15" 'small)))
(label 160 120 "each box: 15 pens" 'small 'bold)
(label 160 200 "288 × 15 = 4,320 pens" 'body 'bold)
(caption "The second tape shows 10 of the 288 boxes")
```

```check
(number
  (ask "A school has 18 classes of 26 students. Each student gets 12 stickers. How many stickers in all?")
  (answer 5616) (from "18 * 26 * 12") (unit "stickers")
  (wrong-if 468 "468 is the number of students, 18 × 26. Each one gets 12 stickers: 468 × 12.")
  (wrong-if 56 "That adds 18 + 26 + 12. Equal groups mean multiply.")
  (hint "First find the students: 18 × 26.")
  (hint "Then multiply by 12."))
```

---

## Multiply, then add or subtract

Some problems mix steps. A printer prints 1,260 pages an hour for 12
hours. Then 3,000 pages are used. How many are left?

1. Printed: $1260 * 12 = 15120$.
2. Left: $15120 - 3000 = 12120$.

```check
(number
  (ask "A show sells 325 tickets at 18 dollars each. The show costs 1,200 dollars to put on. How much money is left?")
  (answer 4650) (from "325 * 18 - 1200") (unit "dollars")
  (wrong-if 5850 "5,850 dollars is the money from the tickets. Take away the 1,200 dollars the show costs.")
  (wrong-if 7050 "The cost is taken away, not added: 5,850 - 1,200.")
  (hint "Tickets: 325 × 18 = 5,850 dollars.")
  (hint "5,850 - 1,200."))
```

---

## Two groups

A farm has 36 rows of 125 trees. It plants 18 more rows of 125 trees.
You can find each part and add, or add the rows first:

$$ 36 * 125 + 18 * 125 = 54 * 125 = 6750 $$

This is the distributive property at work.

```check
(choice
  (ask "Which finds the total number of trees on the farm?")
  (right "(36 + 18) × 125" (true "(36 + 18) * 125 = 6750"))
  (wrong "36 + 18 × 125" (false "36 + 18 * 125 = 6750")
    "By the order of operations that is 36 + 2,250. The 36 rows also have 125 trees each.")
  (wrong "36 × 18 × 125" (false "36 * 18 * 125 = 6750")
    "The rows are added, not multiplied. 36 rows and 18 rows make 54 rows.")
  (hint "How many rows are there in all?"))
```

---

## Worked example

```example
(example
  (problem "A theater has 32 rows of 28 seats and 5 boxes of 28 seats. How many seats in all?")
  (step "Rows: 32 × 28 = 896.")
  (step "Boxes: 5 × 28 = 140.")
  (step "Total: 896 + 140 = 1,036.")
  (answer "1,036 seats"))
```

```example
(example
  (problem "A zoo orders 75 bags of feed, each 140 pounds. The animals eat 6,500 pounds. How many pounds are left?")
  (step "Ordered: 75 × 140 = 10,500 pounds.")
  (step (number (ask "Left: 10,500 - 6,500 = ?") (answer 4000) (from "75 * 140 - 6500") (unit "pounds")
    (wrong-if 17000 "The animals ate the feed, so subtract.")))
  (answer "4,000 pounds"))
```

---

## Practice

```check
(number
  (ask "A truck carries 48 boxes. Each box weighs 35 pounds. The truck makes 2 trips. How many pounds does it carry in all?")
  (answer 3360) (from "2 * 48 * 35") (unit "pounds")
  (wrong-if 1680 "That is one trip. There are 2 trips: 1,680 × 2.")
  (hint "One trip: 48 × 35 = 1,680 pounds."))
```

```check
(number
  (ask "Each of 6 teachers orders 144 pencils a month for 12 months. How many pencils in all?")
  (answer 10368) (from "6 * 144 * 12") (unit "pencils")
  (wrong-if 864 "864 pencils is one month. Multiply by 12 months.")
  (hint "One month: 6 × 144 = 864."))
```

---

```check
(number
  (ask "A baker makes 215 loaves a day for 28 days. She sells 5,500. How many are not sold?")
  (answer 520) (from "215 * 28 - 5500") (unit "loaves")
  (wrong-if 6020 "6,020 loaves are made. Take away the 5,500 sold.")
  (hint "Made: 215 × 28 = 6,020."))
```

```check
(choice
  (ask "A store sells 14 boxes of 250 nails and 9 boxes of 500 nails. Which is the total?")
  (right "8,000 nails" (true "14 * 250 + 9 * 500 = 8000"))
  (wrong "5,750 nails" (false "14 * 250 + 9 * 500 = 5750")
    "14 × 250 = 3,500. 9 × 500 = 4,500. Add: 3,500 + 4,500 = 8,000.")
  (wrong "23 × 750 = 17,250 nails" (false "14 * 250 + 9 * 500 = 17250")
    "The boxes hold different numbers of nails. Find each kind first, then add.")
  (hint "Find each kind of box first."))
```

So: break the problem into steps, multiply where groups are equal, and
check with an estimate.
