# Finding an unknown side

```lesson
(objective "Find an unknown side length of a rectangle from its area and the other side.")
(standards "3.MD.C.7b")
(minutes 20)
```

You can find a missing side length when you know the area.

A rectangle has an area of 24 square units. Its top side is 6 units. How long is its left side?

Move the slider to add rows of 6 until there are 24 squares.

```figure
(define r (slider 'r 1 6 1 "Rows of 6" 1))
(ms-tiles 80 30 6 r 28 'cool)
(ms-rect 80 30 168 (* 28 r) "6 units" (string-append (fmt r 0) " units") #f)
(caption (string-append (fmt r 0) " rows of 6 = " (fmt (* 6 r) 0) " squares"))
```

```check
(number
  (ask "How many rows of 6 make 24 squares? That is the left side length, in units.")
  (answer 4) (unit "units") (from "24 / 6")
  (wrong-if 18 "24 - 6 takes away 1 row. Find how many rows of 6 make 24.")
  (wrong-if 144 "6 x 24 is far too many squares. Find the number that times 6 is 24.")
  (hint "6 x ? = 24")
  (hint "Count by 6s: 6, 12, 18, 24."))
```

---

## Use division

You know the area and 1 side. Think of a multiplication with a missing factor.

6 x ? = 24

Divide to find it: $24 ÷ 6 = 4$. The left side is 4 m.

```figure
(ms-rect 70 60 180 120 "6 m" "? m" #f)
(label 160 125 "Area: 24 sq m" 'small 'bold)
```

```check
(number
  (ask "A rectangle has an area of 35 square meters. One side is 5 meters. How long is the other side, in meters?")
  (answer 7) (unit "m") (from "35 / 5")
  (wrong-if 30 "35 - 5 subtracts a side from the area. Find the number that times 5 is 35.")
  (wrong-if 175 "35 x 5 multiplies again. The area is already the product: divide to find the missing factor.")
  (hint "5 x ? = 35")
  (hint "35 ÷ 5 = ?"))
```

---

## A square

In a square, all sides are the same length. So find the number that times itself gives the area.

A square has an area of 49 square inches. $7 * 7 = 49$, so each side is 7 inches.

```figure
(ms-rect 90 40 140 140 "? in" "? in" #f)
(label 160 115 "Area: 49 sq in" 'small 'bold)
```

```check
(number
  (ask "A square has an area of 36 square feet. How long is each side, in feet?")
  (answer 6) (unit "ft") (from "36 / 6")
  (wrong-if 9 "9 x 9 is 81, not 36. Which number times itself is 36?")
  (wrong-if 18 "18 x 2 is 36, but the 2 sides of a square are the same length. 6 x 6 = 36.")
  (hint "? x ? = 36, with the same number twice."))
```

---

## A worked example

```figure
(ms-rect 70 60 200 80 "? cm" "4 cm" #f)
(label 170 105 "Area: 40 sq cm" 'small 'bold)
```

```example
(example
  (problem "A card has an area of 40 square centimeters. One side is 4 cm. How long is the other side?")
  (step "Write the multiplication: 4 x ? = 40.")
  (step "Divide: 40 ÷ 4.")
  (step (number (ask "40 ÷ 4 = ?") (answer 10) (from "40 / 4")
          (wrong-if 36 "40 - 4 subtracts. 4 x 10 = 40, so 40 ÷ 4 = 10.")))
  (answer "The other side is 10 cm."))
```

---

## Now you finish one

A patio has an area of 48 square feet. One side is 8 feet. So 8 x ? = 48.

```check
(number
  (ask "How long is the other side, in feet?")
  (answer 6) (unit "ft") (from "48 / 8")
  (wrong-if 40 "48 - 8 subtracts a side from the area. Find the number that times 8 is 48.")
  (wrong-if 56 "48 + 8 adds. Find the number that times 8 is 48.")
  (hint "Count by 8s to 48."))
```

---

## Practice

```check
(number
  (ask "A rectangle has an area of 18 square units. One side is 3 units. How long is the other side, in units?")
  (answer 6) (unit "units") (from "18 / 3")
  (wrong-if 15 "18 - 3 subtracts. 3 x 6 = 18, so the other side is 6.")
  (hint "3 x ? = 18"))
```

```check
(number
  (ask "A rug has an area of 54 square feet. It is 9 feet long. How wide is it, in feet?")
  (answer 6) (unit "ft") (from "54 / 9")
  (wrong-if 45 "54 - 9 subtracts. Find the number that times 9 is 54.")
  (hint "9 x ? = 54"))
```

---

```check
(choice
  (ask "A square has an area of 25 square meters. How long is each side?")
  (right "5 meters" (true "5 * 5 = 25"))
  (wrong "25 meters" (false "25 * 25 = 25")
    "25 is the area, not a side. Which number times itself is 25?")
  (wrong "12 and a half meters"
    "Halving 25 does not work for area. 5 x 5 = 25, so each side is 5 meters.")
  (hint "Which number times itself is 25?"))
```

Now you can find a missing side length: divide the area by the side you know.
