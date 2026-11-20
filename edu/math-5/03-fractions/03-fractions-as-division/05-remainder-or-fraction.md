# Remainder or fraction?

```lesson
(objective "Decide whether a division problem wants a whole number with a remainder or a fraction or mixed number, such as people in cars versus pizza shared.")
(standards "5.NF.B.3")
(minutes 25)
```

The same division can have different answers. Read the problem to
decide which one it wants.

$$ 14 ÷ 4 = 3 R 2 = 3 2/4 = 3 1/2 $$

- 4 friends share 14 pizzas: each gets $3 1/2$ pizzas. Pizza can be
  cut, so the remainder is shared as a fraction.
- 14 people ride in cars that hold 4: you need 4 cars. A person cannot
  be cut! The 2 left over need one more car.

```check
(choice
  (ask "4 friends share 9 muffins equally. How much does each get?")
  (right "2 1/4 muffins" (true "9 ÷ 4 = 2 1/4"))
  (wrong "2 R 1"
    "A muffin can be cut, so the 1 left over is shared too: 1/4 each.")
  (wrong "3 muffins"
    "3 each would need 12 muffins. Only 9 are shared: 2 1/4 each.")
  (hint "Can a muffin be cut into parts?"))
```

---

## When things cannot be cut

People, cars, tickets and marbles come in whole numbers. Then the
answer is a whole number, and the remainder tells you what to do:

- Add 1 when everyone must fit: 26 students, 6 to a table, need 5
  tables.
- Leave the remainder out when only full groups count: 26 eggs fill
  2 boxes of 12, with 2 eggs left.

```check
(number
  (ask "30 students go on a trip. Each van holds 8 students. How many vans are needed?")
  (answer 4) (from "(30 + 2) / 8")
  (wrong-if 3 "3 vans hold 24 students. The 6 students left need a van too.")
  (wrong-if 3.75 "You cannot have 3/4 of a van. Every student needs a seat, so add 1: 4 vans.")
  (hint "30 ÷ 8 = 3 R 6.")
  (hint "Where do the 6 left over ride?"))
```

---

## When only full groups count

Sam has 50 photos. A page holds 6. How many pages can he fill?

$50 ÷ 6 = 8 R 2$. He fills 8 pages. The 2 photos left do not fill a
page, so the answer is 8, not 9 and not $8 1/3$.

```check
(number
  (ask "A baker has 45 eggs. A box holds 12. How many full boxes can she fill?")
  (answer 3) (from "(45 - 9) / 12")
  (wrong-if 4 "The 4th box would have only 9 eggs. It is not full.")
  (wrong-if 3.75 "The question asks for full boxes: a whole number. 3 boxes are full.")
  (hint "45 ÷ 12 = 3 R 9."))
```

---

## Worked example

```example
(example
  (problem "6 friends share 20 yards of string equally. How much does each get?")
  (step "String can be cut, so share the remainder.")
  (step "20 ÷ 6 = 3 R 2. The 2 yards left shared by 6 is 2/6 = 1/3.")
  (step "Each gets 3 1/3 yards.")
  (answer "3 1/3 yards each."))
```

```example
(example
  (problem "6 friends share 20 marbles equally. How many does each get?")
  (step "Marbles cannot be cut. 20 ÷ 6 = 3 R 2.")
  (step (choice (ask "So what is the answer?")
    (right "3 marbles each, with 2 left over")
    (wrong "3 1/3 marbles each" "A marble cannot be cut into thirds. Each gets 3, and 2 are left.")))
  (answer "3 each, 2 left over."))
```

---

## Practice

```check
(choice
  (ask "5 children share 12 granola bars equally. Which answer fits best?")
  (right "2 2/5 bars each" (true "12 ÷ 5 = 2 2/5"))
  (wrong "2 bars each, 2 left"
    "Granola bars can be cut. To share equally, cut the 2 left over: 2/5 each.")
  (wrong "3 bars each"
    "3 each needs 15 bars. There are only 12.")
  (hint "Can a granola bar be cut?"))
```

```check
(number
  (ask "A ride holds 9 people at a time. 40 people are waiting. How many rides are needed for everyone?")
  (answer 5) (from "(40 + 5) / 9")
  (wrong-if 4 "4 rides take 36 people. The 4 people left need a 5th ride.")
  (wrong-if 4.4444444444 "There is no part of a ride. Everyone needs a ride, so 5.")
  (hint "40 ÷ 9 = 4 R 4."))
```

---

```check
(number
  (ask "3 sisters share 10 liters of lemonade equally. How many liters does each get? Type it like 2 1/4.")
  (answer 3.3333333333) (within 0.0001) (unit "liters") (from "10 ÷ 3")
  (wrong-if 3 "Lemonade can be shared to the last drop. The 1 liter left is 1/3 liter each.")
  (wrong-if 4 "4 each needs 12 liters. There are only 10.")
  (hint "10 ÷ 3 = 3 R 1."))
```

```check
(choice
  (ask "Tickets cost 7 dollars. Lin has 45 dollars. How many tickets can she buy?")
  (right "6" (true "6 * 7 <= 45") (true "7 * 7 > 45"))
  (wrong "7"
    "7 tickets cost 49 dollars, more than she has.")
  (wrong "6 3/7"
    "She cannot buy part of a ticket. 6 tickets, and 3 dollars are left.")
  (hint "45 ÷ 7 = 6 R 3."))
```

Before you answer, ask: can the thing be cut? If yes, share the
remainder as a fraction; if not, decide what the remainder means.
