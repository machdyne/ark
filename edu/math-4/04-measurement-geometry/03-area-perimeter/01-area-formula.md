# The area formula

```lesson
(objective "Use the formula A = l x w to find the area of a rectangle, and explain it with unit squares.")
(standards "4.MD.A.3")
(minutes 20)
(keywords "formula")
```

You can find the area of any rectangle by multiplying its length by its width.

This rectangle is 6 units long and 4 units wide. It has 4 rows of 6 unit squares.

```figure
(define l (slider 'l 2 8 6 "Length" 1))
(define w (slider 'w 2 5 4 "Width" 1))
(grid 40 30 l w 28)
(frame 40 30 (* l 28) (* w 28) 'ink 2.5)
(text 160 200 (string-append (fmt l 0) " × " (fmt w 0) " = " (fmt (* l w) 0)) 'centre 'big 'bold)
(caption "Area in square units")
```

```check
(number
  (ask "How many unit squares cover a rectangle 6 units long and 4 units wide?")
  (answer 24) (unit "square units") (from "6 * 4")
  (wrong-if 10 "That adds 6 + 4. There are 4 rows of 6 squares: 4 × 6.")
  (wrong-if 20 "20 is the perimeter: the way around. Area counts the squares inside.")
  (hint "4 rows of 6."))
```

---

## A formula

A **formula** is a rule written with letters that tells you how to work out an amount.

The area of a rectangle is its length times its width:

$$ A = l * w $$

A is the area, l is the length and w is the width.

```check
(choice
  (ask "A rectangle is 9 cm long and 3 cm wide. Which shows its area with the formula?")
  (right "A = 9 × 3 = 27 square cm" (true "9 * 3 = 27"))
  (wrong "A = 9 + 3 = 12 square cm" (false "9 * 3 = 12") "That adds the sides. The formula multiplies: l × w.")
  (wrong "A = 9 + 3 + 9 + 3 = 24 square cm" (false "9 * 3 = 24") "That adds all 4 sides: the perimeter. Area is l × w.")
  (hint "A = l × w"))
```

---

## Big rectangles

The formula works when the squares are too many to count. A field 40 m long and 30 m wide has area $40 * 30 = 1200$ square meters.

```check
(number
  (ask "A parking lot is 50 m long and 20 m wide. What is its area, in square meters?")
  (answer 1000) (unit "square m") (from "50 * 20")
  (wrong-if 140 "140 is the perimeter. Area is l × w: 50 × 20.")
  (wrong-if 70 "That adds 50 + 20. Area multiplies: 50 × 20.")
  (hint "5 × 2 = 10, then 2 zeros."))
```

---

## A worked example

```figure
(frame 40 70 240 90 'ink 2.5)
(text 160 60 "16 ft" 'centre 'small)
(text 34 120 "6 ft" 'right 'small)
(caption "A rug, to scale")
```

```example
(example
  (problem "A rug is 16 feet long and 6 feet wide. What is its area?")
  (step "Use the formula A = l × w.")
  (step "A = 16 × 6.")
  (step (number (ask "16 × 6 = ?") (answer 96) (from "16 * 6")
          (wrong-if 22 "That adds. The formula multiplies l × w.")))
  (answer "The rug has an area of 96 square feet."))
```

---

## Practice

```check
(number
  (ask "A garden is 12 m long and 8 m wide. What is its area, in square meters?")
  (answer 96) (unit "square m") (from "12 * 8")
  (wrong-if 40 "40 is the perimeter. Area is l × w: 12 × 8.")
  (wrong-if 20 "That adds 12 + 8. Multiply: 12 × 8.")
  (hint "A = 12 × 8"))
```

```check
(number
  (ask "A poster is 24 inches long and 18 inches wide. What is its area, in square inches?")
  (answer 432) (unit "square in") (from "24 * 18")
  (wrong-if 84 "84 is the perimeter. Area multiplies: 24 × 18.")
  (hint "24 × 18 = 24 × 10 + 24 × 8."))
```

---

```check
(number
  (ask "A square has sides of 15 cm. What is its area, in square centimeters?")
  (answer 225) (unit "square cm") (from "15 * 15")
  (wrong-if 60 "60 is the perimeter of the square. Area is 15 × 15.")
  (wrong-if 30 "That adds 15 + 15. Multiply: 15 × 15.")
  (hint "A square's length and width are the same: 15 × 15."))
```

The area formula A = l × w counts the unit squares for you.
