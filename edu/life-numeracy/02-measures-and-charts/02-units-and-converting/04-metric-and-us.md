# Metric and US units

```lesson
(objective "Convert between metric and US units with a calculator, and check by estimating.")
(minutes 25)
(keywords "conversion factor")
```

You can change inches to centimeters, pounds to kilograms and more, and check that the answer is about right.

A **conversion factor** is the number you multiply by to change one unit into another. Some useful ones:

| From | To | Times |
|---|---|---|
| in | cm | 2.54 exactly |
| mi | km | about 1.61 |
| lb | kg | about 0.454 |
| kg | lb | about 2.2 |
| US gal | L | about 3.79 |

Only the inch is exact here; the others are rounded. The exact values are 1 mi = 1.609344 km, 1 lb = 0.45359237 kg and 1 US gal = 3.785411784 L.

```sources
(source "NIST Special Publication 811, Guide for the Use of the International System of Units (2008), Appendix B.8")
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement")
```

```figure
(nu2-gauge 20 80 280 0 10 1 1 #f)
(text 160 70 "centimeters" 'centre 'small)
(for-range 0 4 (lambda (i) (line (+ 20 (* i 71.12)) 140 (+ 20 (* i 71.12)) 154 'ink 1)))
(line 20 140 300 140 'ink 1.5)
(for-range 0 4 (lambda (i) (text (+ 20 (* i 71.12)) 170 i 'centre 'small)))
(text 160 195 "inches: 1 inch is 2.54 cm" 'centre 'small)
```

```check
(number
  (ask "A screen is 15 inches wide. How many centimeters is that?")
  (answer 38.1) (unit "cm") (from "15 * 2.54")
  (wrong-if 5.9 "You divided. Each inch is 2.54 cm, so there are more centimeters than inches: multiply.")
  (hint "Multiply by 2.54."))
```

---

## Which way?

Going the other way, divide by the same factor. Check the direction: a centimeter is smaller than an inch, so there are always more centimeters than inches for the same length.

```check
(number
  (ask "A bag is 50 cm long. How many inches is that, to the nearest whole inch?")
  (answer 20) (within 0.5) (unit "inches") (from "50 / 2.54")
  (wrong-if 127 "You multiplied. Centimeters to inches gives fewer, bigger units, so divide: 50 / 2.54.")
  (hint "Inches are bigger than centimeters, so the number gets smaller.")
  (hint "Divide by 2.54."))
```

---

## Estimate to check

Round the factor to estimate. A kilogram is about 2 pounds; a mile is about 1.5 km; a gallon is about 4 liters. If your calculator answer is far from the estimate, check what you typed.

```check
(choice
  (ask "A runner does a 10 km race. About how many miles is that?")
  (right "About 6 miles" (true "10 / 1.61 > 6"))
  (wrong "About 16 miles"
    "That multiplies by 1.61. A mile is longer than a kilometer, so there are fewer miles than km: 10 / 1.61 is about 6.2.")
  (wrong "About 10 miles"
    "Miles and kilometers are not the same. A mile is about 1.6 km, so 10 km is about 6 miles.")
  (hint "Is a mile longer or shorter than a kilometer?"))
```

---

## A worked example

```example
(example
  (problem "A suitcase may weigh at most 23 kg. How many pounds is that?")
  (step "Estimate: 1 kg is about 2 pounds, so about 46 pounds.")
  (step "Calculate: 23 * 2.2 = 50.6.")
  (step "50.6 is close to 46 and a bit more, since 2.2 is a bit more than 2.")
  (answer "About 51 pounds."))
```

```check
(number
  (ask "Now you: a dog weighs 30 kg. About how many pounds is that? Use 2.2.")
  (answer 66) (unit "pounds") (from "30 * 2.2")
  (wrong-if 13.6 "You divided. A kilogram is about 2.2 pounds, so there are more pounds than kilograms.")
  (hint "Estimate first: about 2 pounds for each kilogram.")
  (hint "Then 30 * 2.2."))
```

---

## Practice

```try
(try (app "calc") (task "Change 12 US gallons into liters with the calculator, using 3.79. Then come back to learn.")
  (check (number (ask "About how many liters is it?") (answer 45.48) (within 0.1) (from "12 * 3.79"))))
```

```check
(number
  (ask "A road sign says 40 miles. About how many km is that? Use 1.61.")
  (answer 64.4) (within 0.1) (unit "km") (from "40 * 1.61")
  (wrong-if 24.8 "You divided. A mile is longer than a km, so there are more km than miles.")
  (hint "Multiply by 1.61."))
```

```check
(choice
  (ask "A shop sells a 2 lb bag and a 1 kg bag. Which holds more?")
  (right "The 1 kg bag: 1 kg is about 2.2 lb" (true "2.2 > 2"))
  (wrong "The 2 lb bag"
    "2 is the bigger number, but the units differ. 1 kg is about 2.2 lb, which is more than 2 lb.")
  (wrong "They are the same"
    "1 kg is about 2.2 lb, not 2 lb. The kilogram bag holds a little more.")
  (hint "Change 1 kg to pounds."))
```

Multiply by the conversion factor to change units, divide to go back, and estimate with a rounded factor to check.
