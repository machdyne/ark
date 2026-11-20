# Metric lengths

```lesson
(objective "Convert among kilometers, meters, centimeters and millimeters both ways by multiplying or dividing by a power of ten, such as 5 centimeters = 0.05 meter.")
(standards "5.MD.A.1")
(minutes 25)
(keywords "millimeter")
```

You can change a metric length to a bigger or smaller unit with powers of ten.

A centimeter is cut into 10 equal parts. Each part is a **millimeter**. A millimeter is about the thickness of a coin. Its short form is mm.

1 centimeter = 10 millimeters.

```figure
(number-line 30 290 110 0 10 1 1)
(rect (nl-x 0) 80 (- (nl-x 10) (nl-x 0)) 14 'grey)
(frame (nl-x 0) 80 (- (nl-x 10) (nl-x 0)) 14 'ink 1)
(label 160 60 "1 centimeter = 10 millimeters" 'body)
(caption "1 cm, with a mark every millimeter")
```

```check
(number
  (ask "How many millimeters are in 4 centimeters?")
  (answer 40) (unit "mm") (from "4 * 10")
  (wrong-if 14 "That adds 4 + 10. Each of the 4 centimeters is 10 mm, so multiply: 4 × 10.")
  (wrong-if 400 "That uses 100 mm in a centimeter. A centimeter is 10 mm.")
  (hint "1 cm = 10 mm.")
  (hint "4 × 10 = ?"))
```

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement, units of length (metric)")
(source "BIPM, The International System of Units (SI), 9th edition (2019): the prefix milli means one thousandth")
```

---

## The metric lengths

Each metric length is a meter times a power of ten, or a meter divided by one.

```figure
(m5p4-table 25 30 135 '(("1 of these" "is") ("kilometer" "1,000 meters") ("meter" "100 centimeters") ("meter" "1,000 millimeters") ("centimeter" "10 millimeters")))
(caption "Metric lengths")
```

So 1 meter = $10^2$ centimeters, and 1 meter = $10^3$ millimeters.

```check
(number
  (ask "How many millimeters are in 1 kilometer?")
  (answer 1000000) (unit "mm") (from "1000 * 1000")
  (wrong-if 1000 "1,000 is the meters in a kilometer. Each of those meters is 1,000 mm more.")
  (hint "1 km = 1,000 m, and 1 m = 1,000 mm.")
  (hint "1,000 × 1,000 = ?"))
```

---

## Big unit to small unit: multiply

To change to a smaller unit, multiply. The same length takes more of the small unit.

2.5 meters = $2.5 * 100$ centimeters = 250 centimeters.

Multiplying by 100 moves each digit 2 places to the left.

```check
(number
  (ask "A trail is 4.2 kilometers long. How many meters is that?")
  (answer 4200) (unit "m") (from "4.2 * 1000")
  (wrong-if 420 "That multiplies by 100. A kilometer is 1,000 meters, so move the digits 3 places.")
  (wrong-if 0.0042 "That divides. Meters are smaller than kilometers, so there are more of them: multiply.")
  (hint "1 km = 1,000 m.")
  (hint "4.2 × 1,000 = ?"))
```

---

## Small unit to big unit: divide

To change to a bigger unit, divide. The same length takes fewer of the big unit.

5 centimeters = $5 ÷ 100$ meter = 0.05 meter.

Dividing by 100 moves each digit 2 places to the right.

```check
(text
  (ask "Write 7 centimeters in meters.")
  (accept "0.07") (accept ".07") (accept "0.070") (accept "0.07 m") (accept "0.07 meter") (accept "0.07 meters")
  (true "7 / 100 = 0.07")
  (wrong-if "700" "700 is the answer for 7 meters in centimeters. Here you go to a bigger unit, so divide by 100.")
  (wrong-if "0.7" "That divides by 10. A meter is 100 centimeters, so move the digits 2 places.")
  (hint "Meters are bigger, so divide.")
  (hint "7 ÷ 100 = ?"))
```

---

## A worked example

```example
(example
  (problem "A pencil is 175 millimeters long. How long is it in centimeters? In meters?")
  (step "Centimeters are bigger than millimeters, so divide. 1 cm = 10 mm.")
  (step "175 ÷ 10 = 17.5. The pencil is 17.5 centimeters.")
  (step (text (ask "Now meters: 1 m = 1,000 mm. What is 175 ÷ 1,000?")
          (accept "0.175") (accept ".175") (true "175 / 1000 = 0.175")
          (wrong-if "1.75" "That divides by 100. A meter is 1,000 mm: move the digits 3 places.")))
  (answer "175 mm = 17.5 cm = 0.175 m."))
```

---

## Practice

```check
(number
  (ask "A desk is 1.25 meters wide. How many centimeters is that?")
  (answer 125) (unit "cm") (from "1.25 * 100")
  (wrong-if 12.5 "That multiplies by 10. A meter is 100 centimeters.")
  (hint "1.25 × 100 = ?"))
```

```check
(choice
  (ask "Which length is the same as 350 millimeters?")
  (right "0.35 meter" (true "350 / 1000 = 0.35"))
  (wrong "3.5 meters" (false "350 / 1000 = 3.5") "That divides by 100. A meter is 1,000 millimeters, so divide by 1,000.")
  (wrong "35 meters" (false "350 / 1000 = 35") "That divides by 10, the rule for centimeters. A meter is 1,000 mm.")
  (wrong "350,000 meters" "That multiplies. A meter is bigger than a millimeter, so divide.")
  (hint "Millimeters to meters: divide by 1,000."))
```

---

```check
(number
  (ask "A race is 800 meters. How many kilometers is that?")
  (answer 0.8) (unit "km") (from "800 / 1000")
  (wrong-if 8 "That divides by 100. A kilometer is 1,000 meters.")
  (wrong-if 800000 "That multiplies. Kilometers are bigger, so divide.")
  (hint "800 ÷ 1,000 = ?"))
```

To go to a smaller metric unit, multiply by a power of ten; to a bigger one, divide.
