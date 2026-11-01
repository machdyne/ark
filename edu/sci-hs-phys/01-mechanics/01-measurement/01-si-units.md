# SI units

```lesson
(objective "Name the SI units of length, mass and time, and use the prefixes mega-, kilo-, centi-, milli- and micro-.")
(standards "HSN-Q.A.1")
(minutes 20)
(keywords "SI" "mass (of an object)" "kilogram" "second (of time)" "prefix (of a unit)")
```

Every measurement in physics is a number and a unit, and scientists everywhere use the same units.

That shared set is **SI**, from its French name, *Système international d'unités*. It gives each kind of quantity one main unit. Length is measured in **meters** (m). A meter is a little more than 3 feet.

"5" alone means nothing: 5 meters, 5 feet and 5 miles are very different lengths.

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), section 2: the base units")
```

```check
(choice
  (ask "A lab report says a table is \"2 long\". What is wrong with it?")
  (right "It has no unit, so you cannot tell how long the table is")
  (wrong "Nothing: 2 is a number, so it is a measurement"
    "A measurement needs a unit as well as a number. 2 meters and 2 inches are very different tables.")
  (wrong "It should use a bigger number"
    "The size of the number is not the problem. Without a unit, any number is meaningless as a length.")
  (hint "Could the table be 2 inches long? 2 meters?"))
```

---

## Mass and the kilogram

The **mass** of an object is how much matter it has. A bowling ball has more mass than a beach ball of the same size.

The SI unit of mass is the **kilogram** (kg). A liter of water has a mass of about 1 kg. Smaller masses are often given in grams (g): 1 kg = 1,000 g.

Mass is not the same as size. A balloon can be bigger than a rock and still have far less mass.

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), section 2.3.1: the kilogram")
```

```check
(choice
  (ask "Which unit measures the mass of a bag of rice?")
  (right "Kilograms")
  (wrong "Liters"
    "Liters measure volume, the space something takes up. A bag of feathers and a bag of rice can fill the same liters but have very different masses.")
  (wrong "Meters"
    "Meters measure length. The bag's mass is how much matter is in it, in kilograms or grams.")
  (hint "Which unit measures how much matter, not how much space or how long?"))
```

---

## Time and the second

The SI unit of time is the **second** (s). There are 60 s in a minute and 60 minutes in an hour.

Since 1967 the second has been defined by a steady property of cesium atoms, so atomic clocks anywhere agree on it.

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), section 2.3.1: the second")
```

```check
(number
  (ask "How many seconds are there in 1 hour?")
  (answer 3600) (unit "s") (from "60 * 60")
  (wrong-if 60 "60 is the number of seconds in a minute. An hour has 60 minutes, each of 60 seconds.")
  (wrong-if 120 "That adds 60 and 60. Each of the 60 minutes holds 60 seconds, so multiply.")
  (hint "1 hour = 60 minutes.")
  (hint "Each minute is 60 s, so multiply 60 by 60."))
```

---

## Prefixes

A **prefix** is a word part in front of a unit that multiplies it by a fixed factor. The same prefixes go with every SI unit.

| Prefix | Symbol | Means |
|---|---|---|
| mega- | M | 1,000,000 |
| kilo- | k | 1,000 |
| centi- | c | 1/100 |
| milli- | m | 1/1,000 |
| micro- | µ | 1/1,000,000 |

So 1 km = 1,000 m, 1 cm = 1/100 m and 1 mm = 1/1,000 m. The ruler shows 10 cm; each small mark is 1 mm.

```figure
(rect 20 70 280 50 'paper)
(frame 20 70 280 50 'ink 1.5)
(for-range 0 101
  (lambda (i)
    (let ((x (+ 20 (* 2.8 i))))
      (line x 70 x (+ 70 (if (= 0 (modulo i 10)) 16 (if (= 0 (modulo i 5)) 11 6))) 'ink 1))))
(for-range 0 11 (lambda (c) (text (+ 20 (* 28 c)) 102 c 'centre 'small)))
(arrow 48 140 76 140 'ink 1.5)
(arrow 76 140 48 140 'ink 1.5)
(label 62 156 "1 cm = 10 mm")
(caption "A 10 cm ruler, drawn larger than life")
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), section 3: decimal multiples and submultiples of SI units")
```

```check
(number
  (ask "How many millimeters are in 1 centimeter?")
  (answer 10) (unit "mm") (from "(1/100) / (1/1000)")
  (wrong-if 100 "100 is the number of centimeters in a meter. A centimeter is 1/100 m and a millimeter is 1/1,000 m, so 1 cm holds 10 mm.")
  (wrong-if 1000 "1,000 mm make a whole meter, not a centimeter.")
  (hint "Count the small marks between 0 and 1 on the ruler."))
```

---

## Using a prefix

To change a prefixed unit into the plain unit, multiply by what the prefix means.

- 3 km = 3 x 1,000 m = 3,000 m
- 45 cm = 45 x 1/100 m = 0.45 m
- 2 Mm = 2 x 1,000,000 m = 2,000,000 m

```check
(number
  (ask "A runner covers 5 km. How many meters is that?")
  (answer 5000) (unit "m") (from "5 * 1000")
  (wrong-if 500 "Kilo- means 1,000, not 100. 5 km is 5 x 1,000 m.")
  (wrong-if 0.005 "That divides by 1,000. A kilometer is bigger than a meter, so there are more meters than kilometers.")
  (hint "Kilo- means 1,000."))
```

```check
(number
  (ask "A pencil is 18 cm long. How long is it in meters?")
  (answer 0.18) (unit "m") (from "18 / 100")
  (wrong-if 1800 "That multiplies by 100. A centimeter is smaller than a meter, so the number of meters is smaller.")
  (wrong-if 1.8 "Centi- means 1/100, so divide by 100, not by 10.")
  (hint "Centi- means 1/100."))
```

---

## A worked example

```example
(example
  (problem "A pill has a mass of 250 mg. What is its mass in grams?")
  (step "Milli- means 1/1,000, so 1 mg = 1/1,000 g.")
  (step "250 mg = 250 x 1/1,000 g.")
  (step "250 / 1,000 = 0.25.")
  (answer "0.25 g"))
```

Now you finish one.

```check
(number
  (ask "A drop of water has a mass of 50 mg. What is its mass in grams?")
  (answer 0.05) (unit "g") (from "50 / 1000")
  (wrong-if 0.5 "That divides by 100. Milli- means 1/1,000, so divide by 1,000.")
  (wrong-if 50000 "That multiplies. A milligram is much smaller than a gram, so the drop is a small part of a gram.")
  (hint "1 mg = 1/1,000 g.")
  (hint "Divide 50 by 1,000."))
```

---

## Practice

```check
(number
  (ask "Earth's radius is about 6,370 km. How many megameters (Mm) is that?")
  (answer 6.37) (unit "Mm") (from "6370 * 1000 / 1000000")
  (wrong-if 6370000 "That is the radius in meters. A megameter is 1,000,000 m, so divide the meters by 1,000,000.")
  (hint "First change 6,370 km to meters.")
  (hint "6,370,000 m, and 1 Mm = 1,000,000 m."))
```

```check
(number
  (ask "A speck of dust is 40 micrometers across. How many millimeters is that?")
  (answer 0.04) (unit "mm") (from "40 * (1/1000000) / (1/1000)")
  (wrong-if 40000 "A micrometer is smaller than a millimeter, so the answer in millimeters is smaller than 40.")
  (wrong-if 0.4 "1 mm = 1,000 micrometers, so divide 40 by 1,000.")
  (hint "1 mm = 1/1,000 m and 1 micrometer = 1/1,000,000 m.")
  (hint "So 1 mm is 1,000 micrometers."))
```

```check
(choice
  (ask "Which of these is a unit of mass?")
  (right "Milligram")
  (wrong "Millisecond"
    "A millisecond is 1/1,000 of a second: a unit of time. The prefix changes the size, not the kind of quantity.")
  (wrong "Kilometer"
    "A kilometer is 1,000 m: a length. The mass units in this lesson end in -gram.")
  (hint "Look past the prefix to the unit itself."))
```

---

So SI measures length in meters, mass in kilograms and time in seconds, and a prefix such as kilo- or milli- scales any of them by a fixed factor.
