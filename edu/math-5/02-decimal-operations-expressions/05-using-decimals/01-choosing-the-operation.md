# Choosing the operation

```lesson
(objective "Decide whether a decimal word problem needs adding, subtracting, multiplying or dividing, and solve it.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can choose the operation for a decimal problem by asking what the
problem does with its amounts.

- **Add** to join amounts: 1.5 liters and 0.75 liter more.
- **Subtract** to take away or compare: how much more, how much is left.
- **Multiply** for equal groups or a price for each unit: 4 bags of
  2.5 kilograms.
- **Divide** to share equally or find how many fit: 6 liters into
  0.5 liter cups.

The decimals do not change the choice. Think of the same problem with
whole numbers, and choose as you would there.

```check
(choice
  (ask "A pen costs 1.35 dollars. What do 4 pens cost? Which operation?")
  (right "Multiply: 4 × 1.35" (true "4 * 1.35 = 5.40"))
  (wrong "Add: 4 + 1.35"
    "Adding counts the price once and adds 4 dollars. Each of 4 pens costs 1.35: equal groups, so multiply.")
  (wrong "Divide: 1.35 ÷ 4"
    "That shares the price of 1 pen among 4. You want the cost of 4 pens: multiply.")
  (hint "Think of 4 pens at 2 dollars each. What would you do?"))
```

---

## Compare or join?

"How much longer?" and "how much more?" compare two amounts: subtract.
"How much in all?" joins amounts: add.

A green rope is 3.4 meters long. A blue rope is 2.75 meters long. How
much longer is the green rope?

$$ 3.4 - 2.75 = 0.65 $$

```check
(text
  (ask "Tom jumps 2.8 meters. Ana jumps 3.15 meters. How much farther does Ana jump, in meters?")
  (accept "0.35") (accept ".35") (accept "0.350")
  (true "3.15 - 2.8 = 0.35")
  (wrong-if "5.95" "That adds the jumps. \"How much farther\" compares them: subtract.")
  (wrong-if "1.75" "That takes the smaller digit from the bigger in each place. Regroup 1 one as 10 tenths: 11 - 8 = 3 tenths.")
  (hint "3.15 - 2.80 = ?"))
```

---

## Share or count groups?

Both are dividing. 6 liters shared into 3 jugs: $6 ÷ 3 = 2$ liters a
jug. 6 liters poured into 0.5 liter cups: $6 ÷ 0.5 = 12$ cups.

```check
(number
  (ask "A 4.5 meter board is cut into pieces 0.9 meter long. How many pieces?")
  (answer 5) (from "45 ÷ 9") (true "4.5 ÷ 0.9 = 5")
  (wrong-if 4.05 "That multiplies. Count how many 0.9s fit in 4.5: divide.")
  (wrong-if 0.5 "Multiply both by 10: 45 ÷ 9 = 5, not 0.5.")
  (hint "How many 0.9s fit in 4.5? Multiply both by 10."))
```

---

## Worked example

```example
(example
  (problem "Fuel costs 1.60 dollars a liter. Dan buys 20 liters. Then he buys a 1.75 dollar drink. What does he spend?")
  (step "A price for each liter: 20 × 1.60 = 32.00 dollars for fuel.")
  (step "Join: 32.00 + 1.75 = 33.75 dollars.")
  (answer "33.75 dollars"))
```

```example
(example
  (problem "A 2.4 kilogram bag of nuts is shared equally by 8 people. How much does each get?")
  (step "Sharing equally: divide.")
  (step (text (ask "2.4 ÷ 8 = ?")
    (accept "0.3") (accept ".3") (accept "0.30")
    (true "2.4 ÷ 8 = 0.3")
    (wrong-if "19.2" "That multiplies. Sharing means dividing: 24 tenths ÷ 8 = 3 tenths.")))
  (answer "0.3 kilogram each"))
```

---

## Practice

```check
(choice
  (ask "Sue walks 1.2 kilometers to school and 1.2 kilometers back, each day for 5 days. Which finds her total distance?")
  (right "5 × (1.2 + 1.2)" (true "5 * (1.2 + 1.2) = 12"))
  (wrong "5 + 1.2 + 1.2"
    "She walks the same distance on each of 5 days: equal groups, so multiply.")
  (wrong "(1.2 + 1.2) ÷ 5"
    "Dividing shares 1 day's walk into 5 parts. She walks it 5 times: multiply.")
  (hint "1 day: 1.2 + 1.2. How many days?"))
```

```check
(text
  (ask "A bottle holds 1.5 liters. Max drinks 0.35 liter. How much is left, in liters?")
  (accept "1.15") (accept "1.150")
  (true "1.5 - 0.35 = 1.15")
  (wrong-if "1.85" "That adds. \"How much is left\" means take away: subtract.")
  (wrong-if "1.2" "0.35 is 35 hundredths. 1.50 - 0.35 = 1.15.")
  (hint "1.50 - 0.35 = ?"))
```

---

```check
(text
  (ask "Grapes cost 2.50 dollars a pound. Kim buys 1.4 pounds. What does she pay, in dollars?")
  (accept "3.50") (accept "3.5") (accept "$3.50") (accept "$3.5")
  (true "1.4 * 2.50 = 3.5")
  (wrong-if "3.90" "That adds. A price for each pound times the pounds: multiply.")
  (wrong-if "35" "14 × 250 = 3,500, with 3 places: 3.500. That is 3.50 dollars.")
  (hint "1.4 × 2.50. Estimate: about 1 × 2.5 or 1.5 × 2.5."))
```

```check
(choice
  (ask "A runner runs 12.6 kilometers in 3 equal parts. Which operation finds 1 part?")
  (right "Divide: 12.6 ÷ 3 = 4.2" (true "12.6 ÷ 3 = 4.2"))
  (wrong "Multiply: 12.6 × 3"
    "That would be 3 runs of 12.6. The 12.6 is split into 3 equal parts: divide.")
  (wrong "Subtract: 12.6 - 3"
    "Subtracting takes away 3 kilometers. You want 1 of 3 equal parts: divide.")
  (hint "Equal parts of a total: which operation?"))
```

So: choose the operation by what the problem does (join, take away or compare, equal groups, or share), just as with whole numbers.
