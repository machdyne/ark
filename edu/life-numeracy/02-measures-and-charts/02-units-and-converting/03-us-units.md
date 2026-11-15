# US units

```lesson
(objective "Use the US units of length, weight and volume and convert between them.")
(minutes 25)
(keywords "US customary units" "inch" "foot" "yard" "mile" "ounce" "pound" "cup" "pint" "quart" "gallon")
```

You can use the units of length, weight and volume that are used every day in the US, and change one into another.

The **US customary units** are the units in daily use in the United States. Unlike metric units, the numbers between them are not 10s and 100s, so you need to know them.

Length:

| Unit | Short | Equals |
|---|---|---|
| **inch** | in | |
| **foot** | ft | 12 inches |
| **yard** | yd | 3 feet |
| **mile** | mi | 5280 feet |

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement")
```

```check
(number
  (ask "How many inches are in 2 feet?")
  (answer 24) (unit "inches") (from "2 * 12")
  (wrong-if 20 "That treats a foot as 10 inches. A foot is 12 inches: 2 * 12.")
  (hint "1 foot is 12 inches."))
```

---

## Feet and inches

Heights and room sizes are often given in feet and inches: 5 ft 8 in. To change it to inches, change the feet and add.

$$ 5 * 12 + 8 = 68 $$

```figure
(ruler 20 90 12 23)
(text 160 150 "1 foot = 12 inches" 'centre 'body)
```

```check
(number
  (ask "A door is 6 ft 8 in tall. How many inches is that?")
  (answer 80) (unit "inches") (from "6 * 12 + 8")
  (wrong-if 68 "That reads 6 ft as 60 inches. A foot is 12 inches, so 6 ft is 72 inches, plus 8.")
  (wrong-if 14 "That adds 6 + 8. Change the feet to inches first: 6 * 12 = 72.")
  (hint "6 feet is 6 * 12 inches.")
  (hint "Then add the 8 inches."))
```

---

## Weight

Weight in US units is in **ounces** (oz) and **pounds** (lb). 16 ounces make 1 pound. A heavier load is given in tons (2000 pounds).

```check
(number
  (ask "A pack of meat weighs 2 lb 4 oz. How many ounces is that?")
  (answer 36) (unit "oz") (from "2 * 16 + 4")
  (wrong-if 24 "That uses 10 ounces to a pound. There are 16: 2 * 16 = 32, plus 4.")
  (hint "1 pound is 16 ounces."))
```

---

## Volume

For liquids, US units step up in 2s and 4s, from 8 fluid ounces (fl oz):

| Unit | Equals |
|---|---|
| **cup** | 8 fl oz |
| **pint** (pt) | 2 cups |
| **quart** (qt) | 2 pints |
| **gallon** (gal) | 4 quarts |

A fluid ounce is a volume, not a weight: it is not the same as the ounce you weigh food in. And a British (imperial) pint and gallon are bigger than US ones, so a recipe from the UK may not match.

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement")
```

```check
(number
  (ask "How many cups are in 1 quart?")
  (answer 4) (unit "cups") (from "2 * 2")
  (wrong-if 2 "2 cups make a pint. A quart is 2 pints, so 2 * 2 = 4 cups.")
  (hint "A quart is 2 pints, and a pint is 2 cups."))
```

---

## A worked example

```example
(example
  (problem "How many quarts are in 3 gallons?")
  (step "Gallons to quarts is big to small, so multiply.")
  (step "There are 4 quarts in a gallon.")
  (step "3 * 4 = 12.")
  (answer "3 gallons is 12 quarts."))
```

```check
(number
  (ask "Now you: a fence is 45 feet long. How many yards is that?")
  (answer 15) (unit "yards") (from "45 / 3")
  (wrong-if 135 "You multiplied. Feet to yards is small to big, so divide by 3.")
  (hint "Small unit to big unit: divide.")
  (hint "There are 3 feet in a yard."))
```

---

## Practice

```check
(number
  (ask "A child is 52 inches tall. How many feet is that, as a decimal to the nearest tenth?")
  (answer 4.3) (within 0.05) (unit "feet") (from "52 / 12")
  (wrong-if 5.2 "That divides by 10. There are 12 inches in a foot: 52 / 12 is about 4.3.")
  (hint "Divide by 12."))
```

```check
(number
  (ask "A recipe needs 3 cups of milk. How many fluid ounces is that?")
  (answer 24) (unit "fl oz") (from "3 * 8")
  (wrong-if 48 "That uses 16, the ounces in a pound. A cup is 8 fluid ounces.")
  (hint "1 cup is 8 fl oz."))
```

```check
(choice
  (ask "Which is longer: 2 yards or 70 inches?")
  (right "2 yards" (true "2 * 36 > 70"))
  (wrong "70 inches"
    "A yard is 3 feet, which is 36 inches. So 2 yards is 72 inches, a little more than 70.")
  (hint "Change 2 yards to inches: 1 yard is 36 inches."))
```

US units step by 12, 3, 16, 2 and 4, not by 10: multiply going to a smaller unit and divide going to a bigger one.
