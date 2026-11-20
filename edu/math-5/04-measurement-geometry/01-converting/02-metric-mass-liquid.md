# Grams, kilograms, milliliters, liters

```lesson
(objective "Convert between grams and kilograms and between milliliters and liters both ways, such as 350 grams = 0.35 kilogram.")
(standards "5.MD.A.1")
(minutes 20)
```

You can change grams to kilograms, and milliliters to liters, the same way as lengths.

Grams and kilograms measure mass. 1 kilogram = 1,000 grams.

To go to the smaller unit, multiply by 1,000. 2.4 kilograms = $2.4 * 1000$ grams = 2,400 grams.

```check
(number
  (ask "A bag of rice has a mass of 1.5 kilograms. How many grams is that?")
  (answer 1500) (unit "g") (from "1.5 * 1000")
  (wrong-if 150 "That multiplies by 100. A kilogram is 1,000 grams.")
  (wrong-if 1001.5 "That adds 1,000. Each kilogram is 1,000 grams, so multiply.")
  (hint "1 kg = 1,000 g.")
  (hint "1.5 × 1,000 = ?"))
```

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement, units of mass and of capacity (metric)")
```

---

## Grams to kilograms

To go to the bigger unit, divide by 1,000. Each digit moves 3 places to the right.

350 grams = $350 ÷ 1000$ kilogram = 0.35 kilogram.

```figure
(m5p4-table 60 40 100 '(("grams" "kilograms") ("1,000" "1") ("500" "0.5") ("350" "0.35") ("50" "0.05")))
(caption "Each row: the same mass")
```

```check
(text
  (ask "Write 750 grams in kilograms.")
  (accept "0.75") (accept ".75") (accept "0.750") (accept "0.75 kg") (accept "0.75 kilogram")
  (true "750 / 1000 = 0.75")
  (wrong-if "7.5" "That divides by 100. A kilogram is 1,000 grams: move the digits 3 places.")
  (wrong-if "750000" "That multiplies. Kilograms are bigger, so there are fewer of them: divide.")
  (hint "Bigger unit: divide by 1,000."))
```

---

## Liters and milliliters

Liters and milliliters measure liquid volume. 1 liter = 1,000 milliliters. They are written L and mL.

The rule is the same: multiply by 1,000 to get milliliters, divide by 1,000 to get liters.

```check
(number
  (ask "A bottle holds 2.25 liters. How many milliliters is that?")
  (answer 2250) (unit "mL") (from "2.25 * 1000")
  (wrong-if 225 "That multiplies by 100. A liter is 1,000 milliliters.")
  (hint "2.25 × 1,000 = ?"))
```

---

```check
(text
  (ask "A cup of tea is 250 mL. How many liters is that?")
  (accept "0.25") (accept ".25") (accept "0.250") (accept "0.25 L") (accept "0.25 liter")
  (true "250 / 1000 = 0.25")
  (wrong-if "2.5" "That divides by 100. Divide by 1,000: move the digits 3 places right.")
  (wrong-if "250000" "That multiplies. Liters are bigger than milliliters, so divide.")
  (hint "250 ÷ 1,000 = ?"))
```

---

## A worked example

```example
(example
  (problem "A dog has a mass of 8 kilograms 400 grams. Write it in kilograms.")
  (step "400 grams = 400 ÷ 1,000 kilogram = 0.4 kilogram.")
  (step "Add the whole kilograms: 8 + 0.4.")
  (step (text (ask "So the dog is how many kilograms?") (accept "8.4") (accept "8.40")
          (true "8 + 400 / 1000 = 8.4")
          (wrong-if "8.04" "400 grams is 0.4 kilogram, 4 tenths. 0.04 kilogram would be only 40 grams.")))
  (answer "8 kilograms 400 grams = 8.4 kilograms."))
```

---

## Practice

```check
(choice
  (ask "Which mass is the same as 60 grams?")
  (right "0.06 kilogram" (true "60 / 1000 = 0.06"))
  (wrong "0.6 kilogram" (false "60 / 1000 = 0.6") "0.6 kilogram is 600 grams. Divide 60 by 1,000: the 6 moves to the hundredths.")
  (wrong "6 kilograms" (false "60 / 1000 = 6") "6 kilograms is 6,000 grams, far more than 60 grams.")
  (wrong "60,000 kilograms" "That multiplies. Kilograms are bigger, so divide.")
  (hint "60 ÷ 1,000 = ?"))
```

```check
(number
  (ask "A jug holds 3.5 L of juice. How many milliliters?")
  (answer 3500) (unit "mL") (from "3.5 * 1000")
  (wrong-if 350 "A liter is 1,000 mL, not 100.")
  (hint "3.5 × 1,000 = ?"))
```

Grams and kilograms, and milliliters and liters, are 1,000 apart: multiply or divide by 1,000.
