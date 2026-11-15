# Multi-step problems

```lesson
(objective "Solve multi-step word problems with the four operations, writing an equation with a letter for the unknown.")
(standards "4.OA.A.3")
(minutes 25)
```

You can solve a story that takes more than one step, and write it as one equation.

A family buys 4 adult tickets at 12 dollars each and 3 child tickets
at 8 dollars each. How much do they pay?

- Step 1: adult tickets cost 4 × 12 = 48 dollars.
- Step 2: child tickets cost 3 × 8 = 24 dollars.
- Step 3: add them: 48 + 24.

As one equation, with c for the cost: 4 × 12 + 3 × 8 = c.

```check
(number
  (ask "What is c? How much do they pay?")
  (answer 72) (unit "dollars") (from "4 * 12 + 3 * 8")
  (wrong-if 27 "That adds all the numbers: 4 + 12 + 3 + 8. Each kind of ticket is equal groups: multiply first.")
  (wrong-if 48 "48 is only the adult tickets. Add the child tickets: 3 × 8 = 24.")
  (hint "4 × 12 = 48 and 3 × 8 = 24.")
  (hint "48 + 24 = ?"))
```

---

## Order of the steps

In an equation, multiply and divide before you add and subtract. Use
parentheses when a step that adds or subtracts must come first.

A farmer picks 1,250 apples. She sells 380. She packs the rest in bags
of 5. How many bags does she fill?

First subtract, then divide: (1,250 - 380) ÷ 5 = b.

```check
(choice
  (ask "Which equation fits the apples story?")
  (right "(1,250 - 380) ÷ 5 = b" (true "(1250 - 380) / 5 = 174"))
  (wrong "1,250 - 380 ÷ 5 = b" (false "1250 - 380 / 5 = 174")
    "Without parentheses you would divide 380 ÷ 5 first. She packs the rest, so subtract first: put 1,250 - 380 in parentheses.")
  (wrong "1,250 - 380 - 5 = b" (false "1250 - 380 - 5 = 174")
    "Bags of 5 are equal groups, so divide by 5. Do not take 5 away.")
  (hint "What does she pack: all the apples, or the rest?"))
```

---

## Solve it

(1,250 - 380) ÷ 5 = b. Do the parentheses first: 1,250 - 380 = 870.
Then 870 ÷ 5.

```check
(number
  (ask "870 ÷ 5 = b. How many bags does she fill?")
  (answer 174) (unit "bags") (from "(1250 - 380) / 5") (true "5 * 174 = 870")
  (wrong-if 250 "250 is 1,250 ÷ 5, all the apples. She sold 380 first, so divide 870 by 5.")
  (wrong-if 1174 "Do the parentheses first: 1,250 - 380 = 870. Then 870 ÷ 5.")
  (hint "8 hundreds ÷ 5 = 1 hundred, 3 left. 37 tens ÷ 5 = 7, 2 left.")
  (hint "20 ones ÷ 5 = 4."))
```

---

## Worked example

```example
(example
  (problem "A school has 3 classes of 28 children and 1 class of 25. How many children is that?")
  (step "3 classes of 28: 3 × 28 = 84.")
  (step "Add the class of 25: 84 + 25 = 109.")
  (step "Equation: 3 × 28 + 25 = k, so k = 109.")
  (answer "There are 109 children."))
```

```example
(example
  (problem "A shop has 6 boxes of 45 pens. It sells 75 pens. How many pens are left?")
  (step "6 boxes of 45: 6 × 45 = 270.")
  (step "Equation: 6 × 45 - 75 = p.")
  (step (number (ask "What is p?") (answer 195) (unit "pens") (from "6 * 45 - 75")
    (wrong-if 270 "270 is all the pens. Take away the 75 sold.")))
  (answer "195 pens are left."))
```

---

## Practice

```check
(number
  (ask "A club has 2,400 dollars. It spends 600 dollars, then shares the rest equally among 4 teams. How much does each team get?")
  (answer 450) (unit "dollars") (from "(2400 - 600) / 4")
  (wrong-if 600 "2,400 ÷ 4 = 600 shares all the money. The club spent 600 first: (2,400 - 600) ÷ 4.")
  (wrong-if 1800 "1,800 is what is left. It is shared among 4 teams: 1,800 ÷ 4.")
  (hint "2,400 - 600 = 1,800.")
  (hint "1,800 ÷ 4 = ?"))
```

```check
(choice
  (ask "Eli buys 2 bikes at 350 dollars and 3 helmets at 125 dollars. Which equation finds t, the total?")
  (right "2 × 350 + 3 × 125 = t" (true "2 * 350 + 3 * 125 = 1075"))
  (wrong "(2 + 3) × (350 + 125) = t" (false "(2 + 3) * (350 + 125) = 1075")
    "That pays the bike price and the helmet price for all 5 things. Find each cost on its own, then add.")
  (wrong "2 + 350 + 3 + 125 = t" (false "2 + 350 + 3 + 125 = 1075")
    "2 bikes at 350 dollars is 2 × 350, not 2 + 350.")
  (hint "Bikes: 2 × 350. Helmets: 3 × 125."))
```

---

```check
(number
  (ask "Maya has 1,000 beads. She makes 3 necklaces with 215 beads each. How many beads are left?")
  (answer 355) (unit "beads") (from "1000 - 3 * 215")
  (wrong-if 645 "645 is the beads she uses. Take them away from 1,000.")
  (wrong-if 782 "1,000 - 3 - 215 does not find the beads used. 3 necklaces of 215 is 3 × 215 = 645.")
  (hint "3 × 215 = 645.")
  (hint "1,000 - 645 = ?"))
```

```check
(number
  (ask "Two classes collect 360 and 240 cans. They pack all the cans in boxes of 8. How many boxes do they fill?")
  (answer 75) (unit "boxes") (from "(360 + 240) / 8")
  (wrong-if 600 "600 is all the cans. Pack them in boxes of 8: 600 ÷ 8.")
  (wrong-if 390 "360 + 240 ÷ 8 divides only 240. Add first: (360 + 240) ÷ 8.")
  (hint "360 + 240 = 600.")
  (hint "600 ÷ 8 = ?"))
```

So: plan the steps, and write one equation with a letter for the unknown.
