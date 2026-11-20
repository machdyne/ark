# Cubic centimeters, inches and feet

```lesson
(objective "Measure volume in cubic centimeters, cubic inches and cubic feet, and in other units made of cubes, such as sugar cubes.")
(standards "5.MD.C.4")
(minutes 20)
(keywords "cubic centimeter" "cubic inch" "cubic foot")
```

You can measure volume with cubes of a standard size.

A **cubic centimeter** is the volume of a cube with sides 1 centimeter long. It is about the size of the tip of your little finger.

A solid packed with 30 of these cubes has a volume of 30 cubic centimeters.

```figure
(m5p4-box 70 200 5 3 2 30)
(caption "1-centimeter cubes, drawn larger: 5 wide, 3 deep, 2 tall")
```

```check
(number
  (ask "This solid is made of 1-centimeter cubes. What is its volume?")
  (answer 30) (unit "cubic cm") (from "5 * 3 * 2")
  (wrong-if 15 "15 is one layer. There are 2 layers.")
  (hint "One layer: 5 × 3 = 15.")
  (hint "2 layers of 15 = ?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.4: measure volumes by counting unit cubes, using cubic cm, cubic in, cubic ft, and improvised units")
```

---

## A cubic inch

A **cubic inch** is the volume of a cube with sides 1 inch long. An inch is longer than a centimeter, so a cubic inch is bigger than a cubic centimeter.

```check
(number
  (ask "A box is packed with 3 layers of 1-inch cubes, 4 cubes in each layer. What is its volume?")
  (answer 12) (unit "cubic in") (from "3 * 4")
  (wrong-if 7 "That adds 3 + 4. There are 3 layers of 4 cubes: 3 × 4.")
  (hint "3 layers of 4 cubes."))
```

---

## A cubic foot

A **cubic foot** is the volume of a cube with sides 1 foot long. It measures big things, like a closet or a fridge.

```check
(choice
  (ask "Which unit is best for the volume of a large storage box?")
  (right "cubic feet")
  (wrong "cubic centimeters" "You could use them, but you would need many thousands. A bigger unit fits a big box better.")
  (wrong "feet" "A foot measures length. Volume needs a cubic unit.")
  (wrong "square feet" "A square foot measures area. Volume is measured in cubic units.")
  (hint "Pick a big cubic unit."))
```

---

## Cubes of your own

Any same-size cubes can measure volume, like sugar cubes or toy blocks. A box that holds 24 sugar cubes, packed with no gaps, has a volume of 24 sugar cubes.

The count depends on the cube. 24 sugar cubes is not the same volume as 24 cubic inches.

```check
(choice
  (ask "Ann packs a box with 18 sugar cubes. Ben packs the same box with 1-inch cubes. What is true?")
  (right "Ben may need a different number of cubes.")
  (wrong "Ben needs exactly 18 cubes." "18 is the count for sugar cubes. A 1-inch cube may be a different size, so the count can be different.")
  (wrong "The box has two volumes." "The box takes up one amount of space. Different cubes give different counts for it.")
  (hint "Are the cubes the same size?"))
```

---

## A milliliter

A milliliter of water fills exactly 1 cubic centimeter. So 1 liter fills 1,000 cubic centimeters.

```check
(number
  (ask "A small jar has a volume of 250 cubic centimeters. How many milliliters of water fill it?")
  (answer 250) (unit "mL") (from "250")
  (wrong-if 0.25 "That is liters: 250 ÷ 1,000. In milliliters, it is the same number: 250.")
  (hint "1 mL fills 1 cubic centimeter."))
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), Table 8: the liter, 1 L = 1 cubic decimeter = 1000 cubic centimeters")
```

---

## Practice

```check
(number
  (ask "A drawer is packed with 2 layers of cubic-foot boxes, 3 boxes in each layer. What is its volume?")
  (answer 6) (unit "cubic ft") (from "2 * 3")
  (hint "2 layers of 3."))
```

```check
(choice
  (ask "A small box of beads has a volume of 40 of some unit. Which unit makes sense?")
  (right "cubic centimeters")
  (wrong "cubic feet" "40 cubic feet would fill much of a closet. A small box needs a small unit.")
  (wrong "centimeters" "A centimeter measures length. Volume is in cubic units.")
  (hint "A small box: a small cubic unit."))
```

Cubic centimeters, cubic inches and cubic feet are cubes of side 1 cm, 1 in and 1 ft that measure volume.
