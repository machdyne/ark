# Square centimeters, inches, feet and meters

```lesson
(objective "Find area by counting square centimeters, square meters, square inches and square feet.")
(standards "3.MD.C.6")
(minutes 25)
(keywords "square centimeter" "square inch" "square foot" "square meter")
```

You can measure area with square units of a known size.

A square that is 1 centimeter on each side has an area of 1 **square centimeter**. This card is covered by 12 of them, so its area is 12 square centimeters. You can write this short: 12 sq cm.

```figure
(ms-tiles 70 50 4 3 40 'cool)
(text 90 42 "1 cm" 'centre 'small)
(text 64 74 "1 cm" 'right 'small)
(caption "Each square is 1 cm on each side. (Drawn larger.)")
```

```check
(number
  (ask "A sticker is covered by 6 squares, each 1 cm on each side. What is its area in square centimeters?")
  (answer 6) (unit "sq cm")
  (wrong-if 1 "Each square is 1 square centimeter. 6 of them are 6 square centimeters.")
  (hint "Count the squares. Each one is 1 square centimeter."))
```

---

## Square inches

A square that is 1 inch on each side has an area of 1 **square inch**. A square inch is bigger than a square centimeter, because an inch is longer than a centimeter. Short: sq in.

```figure
(ms-tiles 90 50 3 3 50 'warm)
(text 115 42 "1 in" 'centre 'small)
(text 84 79 "1 in" 'right 'small)
(caption "9 squares, each 1 inch on a side (drawn larger)")
```

```check
(number
  (ask "What is the area of this shape in square inches?")
  (answer 9) (unit "sq in") (from "3 * 3")
  (wrong-if 3 "That is only 1 row. There are 3 rows of 3 squares.")
  (wrong-if 6 "3 + 3 adds a row and a column. Count every square: 3 rows of 3.")
  (hint "Count the squares in all 3 rows."))
```

---

## Square feet

A square that is 1 foot on each side has an area of 1 **square foot**. Many floor tiles are 1 foot on each side. So you can count tiles to find the area of a floor in square feet (sq ft).

```figure
(ms-tiles 40 40 6 4 36 'grey)
(text 58 32 "1 ft" 'centre 'small)
(caption "A floor of tiles, each 1 foot on a side")
```

```check
(number
  (ask "A hall floor is covered by 24 tiles. Each tile is 1 foot on each side. What is the area of the floor, in square feet?")
  (answer 24) (unit "sq ft")
  (wrong-if 1 "Each tile is 1 square foot. 24 tiles are 24 square feet.")
  (hint "Each tile is 1 square foot."))
```

---

## Square meters

A square that is 1 meter on each side has an area of 1 **square meter**. A meter is longer than a foot. You use square meters (sq m) for big areas, like a room or a garden.

```figure
(ms-tiles 60 50 5 3 40 'plant)
(text 80 42 "1 m" 'centre 'small)
(caption "A garden: each square is 1 meter on a side")
```

```check
(number
  (ask "How many square meters is this garden?")
  (answer 15) (unit "sq m") (from "5 * 3")
  (wrong-if 8 "5 + 3 adds a row and a column. Count all 3 rows of 5.")
  (wrong-if 5 "That is only 1 row. There are 3 rows of 5.")
  (hint "There are 3 rows of 5 squares."))
```

---

## Which unit?

Use small units for small things and big units for big things.

- a stamp: square centimeters or square inches
- a floor or a garden: square feet or square meters

```check
(choice
  (ask "Which unit makes sense for the area of a classroom floor?")
  (right "Square meters")
  (wrong "Square centimeters"
    "A square centimeter is very small. A floor would need far too many of them to count.")
  (wrong "Centimeters"
    "Centimeters measure length. Area needs square units.")
  (hint "A classroom is big. Is the unit big or small?"))
```

---

## A worked example

```figure
(ms-tiles 60 50 5 2 40 'cool)
(text 80 42 "1 in" 'centre 'small)
```

```example
(example
  (problem "A note card is covered by squares that are each 1 inch on a side. What is its area?")
  (step "Each square is 1 square inch.")
  (step "There are 2 rows of 5 squares: 5, 10.")
  (answer "The area is 10 square inches."))
```

---

## Now you finish one

```figure
(ms-tiles 60 50 4 4 40 'warm)
(text 80 42 "1 ft" 'centre 'small)
```

A mat is covered by squares, each 1 foot on a side.

```check
(number
  (ask "What is the area of the mat, in square feet?")
  (answer 16) (unit "sq ft") (from "4 * 4")
  (wrong-if 8 "4 + 4 adds a row and a column. There are 4 rows of 4 squares.")
  (wrong-if 4 "That is only 1 row. Count all 4 rows.")
  (hint "4 rows of 4 squares."))
```

---

## Practice

```check
(choice
  (ask "Which is bigger: 1 square inch or 1 square centimeter?")
  (right "1 square inch")
  (wrong "1 square centimeter"
    "An inch is longer than a centimeter. So a square 1 inch on each side is bigger.")
  (wrong "They are the same"
    "Both are 1 square unit, but the units are different. An inch is longer than a centimeter.")
  (hint "Which is longer: an inch or a centimeter?"))
```

```check
(choice
  (ask "Which unit makes sense for the area of a postage stamp?")
  (right "Square centimeters")
  (wrong "Square meters"
    "A square meter is much bigger than a stamp. Use a small unit for a small thing.")
  (wrong "Square feet"
    "A square foot is bigger than a stamp. Use a small unit for a small thing.")
  (hint "A stamp is small."))
```

---

```check
(number
  (ask "A window is covered by 2 rows of 3 squares. Each square is 1 foot on a side. What is the area?")
  (answer 6) (unit "sq ft") (from "2 * 3")
  (wrong-if 5 "2 + 3 adds. Count all the squares: 3 in each of 2 rows.")
  (hint "3 squares, then 3 more."))
```

Now you can find area in square centimeters, square inches, square feet and square meters by counting unit squares.
