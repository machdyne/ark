# Kilometers, meters and centimeters

```lesson
(objective "Know that 1 kilometer = 1,000 meters and 1 meter = 100 centimeters, convert kilometers and meters to smaller units, and record them in a two-column table.")
(standards "4.MD.A.1")
(minutes 20)
(keywords "kilometer")
```

You can write a long length in a smaller unit by multiplying.

A meter is about the width of a door. A centimeter is about the width of your little finger.

1 meter = 100 centimeters. So 2 meters = 2 × 100 = 200 centimeters.

```figure
(number-line 30 290 80 0 100 10 10)
(text 160 40 "1 meter" 'centre 'body 'bold)
(caption "1 meter: a mark every 10 centimeters")
```

```check
(number
  (ask "How many centimeters are in 3 meters?")
  (answer 300) (unit "cm") (from "3 * 100")
  (wrong-if 103 "That adds 3 + 100. Each of the 3 meters is 100 cm, so multiply: 3 × 100.")
  (wrong-if 30 "That uses 10 cm in a meter. A meter is 100 cm.")
  (hint "1 meter = 100 centimeters.")
  (hint "3 × 100 = ?"))
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019): the meter; the prefix centi means one hundredth")
```

---

## A kilometer

A **kilometer** is 1,000 meters. It is a unit for long distances, like a walk to the next town.

1 kilometer = 1,000 meters. The abbreviation is km.

```check
(number
  (ask "How many meters are in 4 kilometers?")
  (answer 4000) (unit "m") (from "4 * 1000")
  (wrong-if 400 "That uses 100 meters in a kilometer. A kilometer is 1,000 meters.")
  (wrong-if 1004 "That adds. Each kilometer is 1,000 meters, so multiply: 4 × 1,000.")
  (hint "1 km = 1,000 m.")
  (hint "4 × 1,000 = ?"))
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019): the prefix kilo means 1000")
```

---

## Bigger unit, more of the smaller unit

A kilometer is longer than a meter. So the same length takes more meters than kilometers.

When you change a big unit to a smaller one, the number gets bigger.

```check
(choice
  (ask "A trail is 5 km long. How long is it in meters?")
  (right "5,000 m" (true "5 * 1000 = 5000"))
  (wrong "5 m" "A meter is much shorter than a kilometer. It takes 1,000 meters to make each kilometer.")
  (wrong "500 m" (false "5 * 1000 = 500") "That uses 100 m in a kilometer. There are 1,000 m in 1 km.")
  (hint "Smaller unit, bigger number."))
```

---

## A table

A two-column table keeps equal lengths side by side. Each row is one length, written two ways.

```figure
(m4p4-table 70 30 180 '(("km" "m") ("1" "1,000") ("2" "2,000") ("3" "3,000") ("4" "?")))
(caption "Each row: the same length")
```

```check
(number
  (ask "What number goes in place of the ? in the table?")
  (answer 4000) (unit "m") (from "4 * 1000")
  (wrong-if 3001 "Each row adds 1,000 m, not 1. The next row after 3,000 is 4,000.")
  (hint "Each row goes up by 1,000."))
```

---

## A worked example

```example
(example
  (problem "Make a table for 1 to 3 meters in centimeters.")
  (step "1 meter = 100 centimeters.")
  (step "2 meters = 2 × 100 = 200 centimeters.")
  (step (number (ask "3 meters = ? centimeters") (answer 300) (from "3 * 100")
          (wrong-if 103 "Multiply, do not add: 3 × 100.")))
  (answer "1 m = 100 cm, 2 m = 200 cm, 3 m = 300 cm."))
```

---

## Practice

```check
(number
  (ask "A pool is 25 m long. How long is it in centimeters?")
  (answer 2500) (unit "cm") (from "25 * 100")
  (wrong-if 250 "That uses 10 cm in a meter. A meter is 100 cm: 25 × 100.")
  (wrong-if 125 "That adds. Multiply: 25 × 100.")
  (hint "25 × 100 = ?"))
```

```check
(number
  (ask "A race is 10 km. How many meters is that?")
  (answer 10000) (unit "m") (from "10 * 1000")
  (wrong-if 1000 "1,000 m is only 1 km. The race is 10 of those.")
  (hint "10 × 1,000 = ?"))
```

---

```check
(choice
  (ask "Which length is the same as 7 m?")
  (right "700 cm" (true "7 * 100 = 700"))
  (wrong "70 cm" (false "7 * 100 = 70") "70 cm is less than 1 meter. Each meter is 100 cm.")
  (wrong "7,000 cm" (false "7 * 100 = 7000") "That uses 1,000, the number for kilometers to meters. A meter is 100 cm.")
  (hint "1 m = 100 cm."))
```

To write kilometers in meters, multiply by 1,000; to write meters in centimeters, multiply by 100.
