# Mass and liquid volume problems

```lesson
(objective "Solve word problems about masses and liquid volumes, including amounts with simple fractions or decimals of a unit.")
(standards "4.MD.A.2")
(minutes 25)
```

You can solve problems about mass and liquid volume, even with parts of a unit.

A jug holds 2 liters of juice. That is 2,000 mL. You pour 4 glasses of 250 mL each. How much juice is left?

```figure
(number-line 30 290 120 0 2000 250 500)
(nl-jump 0 250 'warm)
(nl-jump 250 500 'warm)
(nl-jump 500 750 'warm)
(nl-jump 750 1000 'warm)
(nl-mark 2000 'ink "2 L")
(caption "Juice in milliliters")
```

4 glasses: $4 * 250 = 1000$ mL. Left: $2000 - 1000 = 1000$ mL.

```check
(number
  (ask "How many milliliters are left?")
  (answer 1000) (unit "mL") (from "2000 - 4 * 250")
  (wrong-if 1750 "That takes away just 1 glass. You pour 4 glasses: 4 × 250 = 1,000 mL.")
  (wrong-if 1996 "That takes away 4 mL. Each glass is 250 mL.")
  (hint "4 × 250 = 1,000."))
```

---

## Half a unit

Half of a liter is half of 1,000 mL. $1000 ÷ 2 = 500$. So 1/2 L = 500 mL.

In the same way, 1/2 kg = 500 g.

```check
(number
  (ask "A bag of flour has a mass of 1/2 kg. How many grams is that?")
  (answer 500) (unit "g") (from "1000 / 2")
  (wrong-if 50 "Half of 1,000 is 500, not 50. 1 kg is 1,000 g.")
  (wrong-if 2000 "That doubles. Half means share 1,000 g into 2 equal parts.")
  (hint "1 kg = 1,000 g. What is half of 1,000?"))
```

---

## A quarter of a unit

1/4 L is 1 of 4 equal parts of 1,000 mL. $1000 ÷ 4 = 250$. So 1/4 L = 250 mL.

```check
(number
  (ask "A bottle holds 1/4 L of water. How many milliliters is that?")
  (answer 250) (unit "mL") (from "1000 / 4")
  (wrong-if 4000 "That multiplies. A quarter is 1 of 4 equal parts: divide.")
  (wrong-if 25 "1,000 ÷ 4 is 250. Check: 4 × 250 = 1,000.")
  (hint "4 × ? = 1,000"))
```

---

## A decimal amount

0.5 is the same as 5/10, and that is 1/2. So 0.5 L = 500 mL, and 1.5 L = 1,000 mL + 500 mL = 1,500 mL.

```check
(number
  (ask "A pot holds 1.5 L of soup. How many milliliters is that?")
  (answer 1500) (unit "mL") (from "1000 + 1000 / 2")
  (wrong-if 15 "1.5 L is 1 and a half liters. Each liter is 1,000 mL.")
  (wrong-if 1005 "0.5 L is half a liter: 500 mL, not 5 mL.")
  (hint "1 L = 1,000 mL; 0.5 L = 500 mL."))
```

---

## A worked example

```example
(example
  (problem "A melon has a mass of 2 kg. An apple has a mass of 200 g. How much more is the melon?")
  (step "Write both in grams: 2 kg = 2,000 g.")
  (step "Subtract: 2,000 - 200.")
  (step (number (ask "2,000 - 200 = ?") (answer 1800) (unit "g") (from "2000 - 200")
          (wrong-if 0 "2 kg and 200 g are not the same. Write 2 kg as 2,000 g first.")))
  (answer "The melon is 1,800 g more."))
```

---

## Practice

```check
(number
  (ask "3 boxes each have a mass of 4 kg. What is their mass in all, in kilograms?")
  (answer 12) (unit "kg") (from "3 * 4")
  (wrong-if 7 "That adds 3 + 4. There are 3 boxes of 4 kg each: 3 × 4.")
  (hint "3 × 4 = ?"))
```

```check
(number
  (ask "A pitcher holds 1 L. You pour out 1/4 L. How many milliliters are left?")
  (answer 750) (unit "mL") (from "1000 - 1000 / 4")
  (wrong-if 250 "250 mL is what you poured out. What is left is 1,000 - 250.")
  (wrong-if 996 "1/4 L is 250 mL, not 4 mL.")
  (hint "1/4 L = 250 mL."))
```

---

```check
(number
  (ask "6 kg of rice is shared into 3 equal bags. What is the mass of each bag, in grams?")
  (answer 2000) (unit "g") (from "6 * 1000 / 3")
  (wrong-if 2 "2 is in kilograms. The question asks for grams: 2 kg = 2,000 g.")
  (wrong-if 18000 "That multiplies. Sharing into bags means divide.")
  (hint "6 ÷ 3 = 2 kg.")
  (hint "2 kg = ? g"))
```

To solve mass and liquid volume problems, write the amounts in the same unit, then add, subtract, multiply or divide.
