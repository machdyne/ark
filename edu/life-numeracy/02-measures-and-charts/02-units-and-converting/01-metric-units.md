# Metric units

```lesson
(objective "Name the metric units of length, mass and volume and what their prefixes stand for.")
(minutes 20)
(keywords "metric system" "meter" "gram" "liter" "prefix (of a unit)")
```

You can tell what a metric unit measures and how big it is from its name.

You met units with hours and minutes. The **metric system** is the set of units used in most of the world and in science. It has one main unit for each kind of measure:

| Measures | Unit | Short |
|---|---|---|
| length | **meter** | m |
| mass (weight, in daily life) | **gram** | g |
| volume (how much a container holds) | **liter** | L |

A gram is small: about the mass of a paper clip. A liter of water has a mass of about 1000 grams.

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), chapter 3 (prefixes) and table 8 (the liter)")
(source "NIST Special Publication 811, Guide for the Use of the International System of Units (SI) (2008)")
```

```check
(choice
  (ask "A bottle of cooking oil is labeled 750. Which unit makes sense?")
  (right "mL (milliliters): it is a volume")
  (wrong "m (meters)"
    "Meters measure length. Oil in a bottle is measured by how much space it fills: a volume.")
  (wrong "kg (kilograms)"
    "750 kilograms would be as heavy as a small car. Liquids on labels are measured by volume.")
  (hint "Is the label about how long, how heavy, or how much it holds?"))
```

---

## Prefixes

Bigger and smaller units are made by putting a **prefix** in front of the main unit. The prefix says how many times bigger or smaller:

| Prefix | Stands for | Example |
|---|---|---|
| kilo- (k) | 1000 times | 1 km = 1000 m |
| centi- (c) | a hundredth | 100 cm = 1 m |
| milli- (m) | a thousandth | 1000 mL = 1 L |

The same prefix does the same thing for every unit: a kilogram is 1000 grams, just as a kilometer is 1000 meters.

```check
(number
  (ask "How many grams are in 1 kilogram?")
  (answer 1000) (unit "grams")
  (wrong-if 100 "100 goes with centi-: 100 cm in a meter. Kilo- always stands for 1000.")
  (hint "What does kilo- stand for?"))
```

---

## Millimeters and centimeters

On a ruler, the long numbered marks are centimeters and the small marks between them are millimeters. There are 10 millimeters in a centimeter, so 1000 in a meter.

```figure
(ruler 20 80 10 28)
(for-range 0 100 (lambda (i) (line (+ 20 (* i 2.8)) 80 (+ 20 (* i 2.8)) 84 'ink 1)))
(text 160 140 "a ruler in centimeters (cm)" 'centre 'small)
(text 160 160 "each small mark is 1 millimeter (mm)" 'centre 'small)
```

```check
(number
  (ask "A screw is 3 cm 5 mm long. How many millimeters is that?")
  (answer 35) (unit "mm") (from "3 * 10 + 5")
  (wrong-if 305 "That is 300 + 5. A centimeter is 10 mm, so 3 cm is 30 mm.")
  (wrong-if 8 "That adds 3 + 5. Change the centimeters to millimeters first: 3 cm = 30 mm.")
  (hint "There are 10 mm in each centimeter."))
```

---

## Which unit?

Pick a unit that fits the size of the thing:

- kilometers for a trip, meters for a room, centimeters for a shelf, millimeters for a screw;
- kilograms for a person or a bag of potatoes, grams for a slice of cheese;
- liters for a bucket or a car's fuel, milliliters for a spoon of medicine.

```check
(choice
  (ask "Which is the best unit for the distance from one town to the next?")
  (right "kilometers")
  (wrong "centimeters"
    "Centimeters are for small things, like a book. A distance between towns would be millions of centimeters.")
  (wrong "millimeters"
    "Millimeters are for tiny lengths, like the width of a wire. Kilometers suit long distances.")
  (hint "Use the biggest unit of length."))
```

---

## Practice

```check
(number
  (ask "How many millimeters are in 1 meter?")
  (answer 1000) (unit "mm")
  (wrong-if 100 "100 is centimeters in a meter. Milli- stands for a thousandth, so there are 1000 mm.")
  (hint "Milli- stands for a thousandth."))
```

```check
(choice
  (ask "A recipe needs 250 g of flour. How much of a kilogram is that?")
  (right "A quarter of a kilogram" (true "250 * 4 = 1000"))
  (wrong "Two and a half kilograms"
    "A kilogram is 1000 g, not 100 g. 250 g is less than 1 kg: 4 lots of 250 g make 1000 g.")
  (wrong "Half a kilogram"
    "Half a kilogram is 500 g. 250 g is half of that: a quarter of a kilogram.")
  (hint "How many grams are in a kilogram?"))
```

The metric system has meters, grams and liters, kilo- makes a unit 1000 times bigger, and centi- and milli- make it 100 and 1000 times smaller.
