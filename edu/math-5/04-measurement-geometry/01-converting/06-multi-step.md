# Problems with converting

```lesson
(objective "Solve multi-step real-world problems that convert units within one system, such as how many 25-centimeter pieces a 3-meter ribbon makes.")
(standards "5.MD.A.1")
(minutes 25)
```

You can solve a problem with two units by first writing both in the same unit.

A ribbon is 3 meters long. You cut it into pieces 25 centimeters long. How many pieces?

1. Write both in centimeters: 3 meters = $3 * 100$ = 300 centimeters.
2. Divide: $300 ÷ 25 = 12$.

```check
(number
  (ask "How many 25-centimeter pieces does the 3-meter ribbon make?")
  (answer 12) (unit "pieces") (from "3 * 100 / 25")
  (wrong-if 0.12 "That divides 3 by 25 before changing units. Write 3 meters as 300 cm first.")
  (hint "3 m = 300 cm.")
  (hint "300 ÷ 25 = ?"))
```

---

## Pick the smaller unit

Change to the smaller unit. Then the numbers are often whole, and easy to work with.

A bottle holds 2 liters. A glass holds 250 milliliters. How many glasses does the bottle fill?

```check
(number
  (ask "How many glasses does the 2-liter bottle fill?")
  (answer 8) (unit "glasses") (from "2 * 1000 / 250")
  (wrong-if 125 "That divides 250 by 2. Write 2 liters as 2,000 mL, then divide by 250.")
  (hint "2 L = 2,000 mL.")
  (hint "2,000 ÷ 250 = ?"))
```

---

## Adding with two units

Ana walks 1.2 kilometers to school and 650 meters to the park. How far in all, in meters?

```example
(example
  (problem "1.2 kilometers + 650 meters = ? meters")
  (step "1.2 kilometers = 1.2 × 1,000 = 1,200 meters.")
  (step "Both are in meters now. Add them.")
  (step (number (ask "1,200 + 650 = ? meters") (answer 1850) (from "1.2 * 1000 + 650")
          (wrong-if 651.2 "1.2 is kilometers, not meters. Change it to 1,200 meters first.")))
  (answer "Ana walks 1,850 meters."))
```

---

## Money and units

Rope costs \$2 a foot. You buy 4 yards. What do you pay?

```check
(number
  (ask "How many dollars do 4 yards of rope cost at 2 dollars a foot?")
  (answer 24) (unit "dollars") (from "4 * 3 * 2")
  (wrong-if 8 "That uses yards, but the price is for a foot. 4 yards = 12 feet.")
  (hint "4 yards = 12 feet.")
  (hint "12 × 2 = ?"))
```

---

## Time

1 hour = 60 minutes, and 1 minute = 60 seconds. 1 day = 24 hours.

```check
(number
  (ask "A movie is 2 1/4 hours long. How many minutes is that?")
  (answer 135) (unit "min") (from "(9/4) * 60")
  (wrong-if 145 "1/4 hour is not 25 minutes. It is 1/4 of 60 = 15 minutes.")
  (wrong-if 225 "That counts 100 minutes in an hour. An hour is 60 minutes: 2 × 60 + 15.")
  (hint "2 hours = 120 minutes.")
  (hint "1/4 of 60 minutes = 15 minutes."))
```

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement, units of time")
```

---

## Practice

```check
(number
  (ask "A baker has 5 pounds of flour. Each loaf uses 20 ounces. How many loaves can she make?")
  (answer 4) (unit "loaves") (from "5 * 16 / 20")
  (wrong-if 0.25 "That divides 5 by 20. Write 5 pounds as 80 ounces first.")
  (hint "5 pounds = 80 ounces.")
  (hint "80 ÷ 20 = ?"))
```

```check
(choice
  (ask "A jug has 1 gallon of juice. You pour out 6 cups. How much is left?")
  (right "10 cups" (true "16 - 6 = 10"))
  (wrong "0 cups" "A gallon is not 6 cups. It is 16 cups, so 16 - 6 cups are left.")
  (wrong "4 cups" "That uses 10 cups in a gallon. A gallon is 16 cups.")
  (wrong "2 cups" "That uses 8, the fluid ounces in a cup. A gallon is 16 cups.")
  (hint "1 gallon = 16 cups."))
```

---

```check
(text
  (ask "A path is 2 km. 450 m are paved. How many kilometers are not paved? Write a decimal.")
  (accept "1.55") (accept "1.550") (accept "1.55 km")
  (true "2 - 450 / 1000 = 1.55")
  (wrong-if "1.45" "Check by adding back: 1.45 + 0.45 = 1.9, not 2. Line up the places: 2.00 - 0.45 = 1.55.")
  (wrong-if "448" "That takes 2 from 450. Write both in the same unit first: 2 km = 2,000 m.")
  (hint "450 m = 0.45 km.")
  (hint "2 - 0.45 = ?"))
```

In a problem with two units, change to one unit first, then add, subtract, multiply or divide.
