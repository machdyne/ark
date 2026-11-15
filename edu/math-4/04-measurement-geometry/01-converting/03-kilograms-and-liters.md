# Kilograms and liters

```lesson
(objective "Know that 1 kilogram = 1,000 grams and 1 liter = 1,000 milliliters, and convert kilograms and liters to smaller units.")
(standards "4.MD.A.1")
(minutes 20)
(keywords "milliliter")
```

You can write kilograms in grams, and liters in a smaller unit, by multiplying by 1,000.

You know grams and kilograms from grade 3. 1 kilogram = 1,000 grams.

So 2 kilograms = 2 × 1,000 = 2,000 grams.

```figure
(line 60 90 260 90 'ink 3)
(line 160 90 160 200 'ink 3)
(line 120 200 200 200 'ink 3)
(frame 70 50 70 40 'ink 2)
(label 105 76 "1 kg")
(frame 180 50 70 40 'ink 2)
(label 215 76 "1,000 g")
(caption "1 kilogram balances 1,000 grams")
```

```check
(number
  (ask "How many grams are in 3 kilograms?")
  (answer 3000) (unit "g") (from "3 * 1000")
  (wrong-if 300 "That uses 100 grams in a kilogram. A kilogram is 1,000 grams.")
  (wrong-if 1003 "That adds. Each kilogram is 1,000 grams: 3 × 1,000.")
  (hint "1 kg = 1,000 g.")
  (hint "3 × 1,000 = ?"))
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019): the kilogram; the prefix kilo means 1000")
```

---

## A milliliter

A **milliliter** is a tiny unit of liquid volume. 1,000 milliliters make 1 liter. A teaspoon holds about 5 milliliters.

1 liter = 1,000 milliliters. We write L and mL.

```figure
(rect 120 60 70 140 'cool)
(path '(120 40 120 200 190 200 190 40) 'ink 2)
(line 176 60 190 60 'ink 1.5)
(text 196 64 "1 L" 'small)
(text 155 30 "1 L = 1,000 mL" 'centre 'body 'bold)
```

```check
(number
  (ask "How many milliliters are in 2 liters?")
  (answer 2000) (unit "mL") (from "2 * 1000")
  (wrong-if 200 "That uses 100 mL in a liter. A liter is 1,000 mL.")
  (wrong-if 1002 "That adds. Each liter is 1,000 mL: 2 × 1,000.")
  (hint "1 L = 1,000 mL."))
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019): the liter, a unit for use with the SI; the prefix milli means one thousandth")
```

---

## Which unit is bigger?

A kilogram is much heavier than a gram. A liter is much more than a milliliter.

```check
(choice
  (ask "A bottle holds 1 L of water. How much is that in milliliters?")
  (right "1,000 mL" (true "1 * 1000 = 1000"))
  (wrong "1 mL" "A milliliter is tiny: just a few drops. A liter needs 1,000 of them.")
  (wrong "100 mL" (false "1 * 1000 = 100") "100 mL is only a small cup. A liter is 1,000 mL.")
  (hint "mL is the smaller unit, so the number gets bigger."))
```

---

## A table

```figure
(m4p4-table 70 30 180 '(("kg" "g") ("1" "1,000") ("2" "2,000") ("5" "?")))
(caption "Each row: the same mass")
```

```check
(number
  (ask "What number goes in place of the ? in the table?")
  (answer 5000) (unit "g") (from "5 * 1000")
  (wrong-if 3000 "The row is for 5 kg, not 3 kg. Multiply 5 × 1,000.")
  (hint "5 × 1,000 = ?"))
```

---

## A worked example

```example
(example
  (problem "A pot holds 4 L of soup. How many milliliters is that?")
  (step "1 L = 1,000 mL.")
  (step "4 L = 4 × 1,000 mL.")
  (step (number (ask "4 × 1,000 = ?") (answer 4000) (from "4 * 1000")
          (wrong-if 400 "4 × 1,000 has 3 zeros after the 4.")))
  (answer "The pot holds 4,000 mL."))
```

---

## Practice

```check
(number
  (ask "A dog has a mass of 12 kg. What is that in grams?")
  (answer 12000) (unit "g") (from "12 * 1000")
  (wrong-if 1200 "That uses 100 g in a kilogram. A kilogram is 1,000 g.")
  (hint "12 × 1,000 = ?"))
```

```check
(number
  (ask "A fish tank holds 30 L. How many milliliters is that?")
  (answer 30000) (unit "mL") (from "30 * 1000")
  (wrong-if 3000 "3,000 mL is only 3 L. The tank holds 30 L: 30 × 1,000.")
  (hint "30 × 1,000 = ?"))
```

---

```check
(choice
  (ask "Which is more?")
  (right "3 L" (true "3000 > 2500"))
  (wrong "2,500 mL" (false "2500 > 3000") "2,500 is a bigger number, but mL are small. 3 L is 3,000 mL, which is more.")
  (hint "Write 3 L in milliliters."))
```

To write kilograms in grams, or liters in milliliters, multiply by 1,000.
