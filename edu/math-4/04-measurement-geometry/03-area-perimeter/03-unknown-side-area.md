# A missing side from the area

```lesson
(objective "Find an unknown side of a rectangle from its area and the other side, such as the width of a room from its floor area and length.")
(standards "4.MD.A.3")
(minutes 20)
```

You can find a missing side of a rectangle when you know its area and one side.

A rectangle has an area of 24 square units. It is 6 units long. How wide is it?

```figure
(grid 70 50 6 4 28)
(frame 70 50 168 112 'ink 2.5)
(text 154 42 "6" 'centre 'small)
(text 62 112 "?" 'right 'body 'bold)
(caption "Area: 24 square units")
```

Use the formula: $24 = 6 * w$. 6 times what is 24? $24 ÷ 6 = 4$.

```check
(number
  (ask "How wide is the rectangle, in units?")
  (answer 4) (unit "units") (from "24 / 6")
  (wrong-if 18 "That subtracts 24 - 6. Area is l × w, so 6 × ? = 24: divide.")
  (wrong-if 144 "That multiplies 24 × 6. The area is already the product. Divide: 24 ÷ 6.")
  (hint "6 × ? = 24"))
```

---

## A room

A room has a floor area of 120 square feet. It is 12 feet long.

$120 = 12 * w$, so $w = 120 ÷ 12 = 10$ feet.

```check
(number
  (ask "A room has a floor area of 150 square feet. It is 15 feet long. How wide is it, in feet?")
  (answer 10) (unit "ft") (from "150 / 15")
  (wrong-if 135 "That subtracts. Area = l × w, so 15 × ? = 150.")
  (wrong-if 60 "That treats 150 as the perimeter. 150 is the area: 15 × ? = 150.")
  (hint "15 × ? = 150"))
```

---

## A worked example

```example
(example
  (problem "A garden has an area of 72 square meters. It is 9 m wide. How long is it?")
  (step "A = l × w, so 72 = l × 9.")
  (step "Divide: 72 ÷ 9.")
  (step (number (ask "72 ÷ 9 = ?") (answer 8) (from "72 / 9")
          (wrong-if 63 "72 - 9 subtracts. You need ? × 9 = 72.")))
  (answer "The garden is 8 m long."))
```

---

## Now you finish one

A rug has an area of 48 square feet. It is 8 feet long. $48 = 8 * w$.

```check
(number
  (ask "How wide is the rug, in feet?")
  (answer 6) (unit "ft") (from "48 / 8")
  (wrong-if 40 "48 - 8 subtracts. 8 × ? = 48.")
  (hint "8 × ? = 48"))
```

---

## Practice

```check
(number
  (ask "A rectangle has an area of 63 square cm. It is 7 cm wide. How long is it, in cm?")
  (answer 9) (unit "cm") (from "63 / 7")
  (wrong-if 56 "That subtracts. 7 × ? = 63.")
  (hint "7 × ? = 63"))
```

```check
(number
  (ask "A field has an area of 2,400 square meters. It is 60 m long. How wide is it, in meters?")
  (answer 40) (unit "m") (from "2400 / 60")
  (wrong-if 4 "60 × 4 = 240, not 2,400. Try 60 × 40.")
  (wrong-if 2340 "That subtracts. 60 × ? = 2,400.")
  (hint "6 × 4 = 24."))
```

---

```check
(number
  (ask "A square has an area of 49 square inches. How long is each side, in inches?")
  (answer 7) (unit "in") (from "49 / 7")
  (wrong-if 196 "That multiplies 49 × 4. 49 is the area: a side times the same side is 49.")
  (hint "Which number times itself is 49?"))
```

To find a missing side, divide the area by the side you know.
