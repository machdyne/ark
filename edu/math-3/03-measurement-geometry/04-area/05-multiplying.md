# Area by multiplying

```lesson
(objective "Find the area of a rectangle by multiplying its side lengths.")
(standards "3.MD.C.7b")
(minutes 20)
```

You can find the area of a rectangle without counting every square.

Multiply the 2 side lengths. This rug is 6 feet by 4 feet.

$$ 6 * 4 = 24 $$

Its area is 24 square feet. Turn on the tiles to check.

```figure
(define t (toggle 't "Show 1-foot tiles" #f))
(if t (ms-tiles 80 50 6 4 30 #f))
(ms-rect 80 50 180 120 "6 ft" "4 ft" #f)
(caption (if t "24 tiles, each 1 square foot" "A rug 6 ft by 4 ft"))
```

```check
(number
  (ask "A rug is 5 feet by 3 feet. What is its area, in square feet?")
  (answer 15) (unit "sq ft") (from "5 * 3")
  (wrong-if 8 "5 + 3 adds the side lengths. Area counts squares: 3 rows of 5, so multiply.")
  (hint "Multiply the side lengths: 5 x 3."))
```

---

## Square units for area

Side lengths are in units of length, like centimeters. Area is in square units, like square centimeters.

A card is 8 cm by 5 cm. Its area is 8 x 5 = 40 square centimeters.

```figure
(ms-rect 60 60 200 125 "8 cm" "5 cm" 'cool)
(caption "8 cm by 5 cm: 40 sq cm")
```

```check
(choice
  (ask "A photo is 9 inches by 6 inches. What is its area?")
  (right "54 square inches" (true "9 * 6 = 54"))
  (wrong "54 inches"
    "Inches measure length. Area counts squares, so the unit is square inches.")
  (wrong "15 square inches" (false "9 * 6 = 15")
    "9 + 6 adds the side lengths. Multiply them to count the squares.")
  (hint "Multiply, and use a square unit."))
```

---

## A square

A square has 4 sides of the same length. So multiply the side length by itself.

A square tile is 7 inches on each side.

$$ 7 * 7 = 49 $$

```figure
(ms-rect 90 40 140 140 "7 in" "7 in" 'warm)
(caption "7 in by 7 in: 49 sq in")
```

```check
(number
  (ask "A square garden is 8 meters on each side. What is its area, in square meters?")
  (answer 64) (unit "sq m") (from "8 * 8")
  (wrong-if 16 "8 + 8 adds 2 sides. The squares make 8 rows of 8, so multiply.")
  (wrong-if 32 "8 + 8 + 8 + 8 adds all 4 sides. That is the way around, not the area. Multiply 8 x 8.")
  (hint "8 x 8 = ?"))
```

---

## A worked example

```figure
(ms-rect 50 70 225 100 "9 m" "4 m" 'plant)
```

```example
(example
  (problem "A pool is 9 meters by 4 meters. What is its area?")
  (step "Multiply the side lengths: 9 x 4.")
  (step (number (ask "9 x 4 = ?") (answer 36) (from "9 * 4")
          (wrong-if 13 "9 + 4 adds. Multiply: 4 rows of 9.")))
  (step "The sides are in meters, so the area is in square meters.")
  (answer "The area is 36 square meters."))
```

---

## Now you finish one

```figure
(ms-rect 80 40 175 150 "7 ft" "6 ft" 'cool)
```

A rug is 7 feet by 6 feet.

```check
(number
  (ask "What is the area of the rug, in square feet?")
  (answer 42) (unit "sq ft") (from "7 * 6")
  (wrong-if 13 "7 + 6 adds the side lengths. Multiply them.")
  (wrong-if 26 "7 + 6 + 7 + 6 is the way around the rug. Area is 7 x 6.")
  (hint "7 x 6 = ?"))
```

---

## Practice

```check
(number
  (ask "A book cover is 10 inches by 8 inches. What is its area, in square inches?")
  (answer 80) (unit "sq in") (from "10 * 8")
  (wrong-if 18 "10 + 8 adds. Multiply the side lengths.")
  (hint "10 x 8 = ?"))
```

```check
(number
  (ask "A sticker is a square, 3 cm on each side. What is its area, in square centimeters?")
  (answer 9) (unit "sq cm") (from "3 * 3")
  (wrong-if 6 "3 + 3 adds 2 sides. Multiply: 3 x 3.")
  (wrong-if 12 "3 + 3 + 3 + 3 adds all 4 sides. Area is 3 x 3.")
  (hint "3 x 3 = ?"))
```

---

```check
(choice
  (ask "Which rectangle has the bigger area: 4 m by 9 m, or 5 m by 8 m?")
  (right "5 m by 8 m" (true "5 * 8 > 4 * 9"))
  (wrong "4 m by 9 m" (false "4 * 9 > 5 * 8")
    "9 m is the longest side, but that is not enough. 4 x 9 = 36 and 5 x 8 = 40.")
  (wrong "They have the same area" (false "4 * 9 = 5 * 8")
    "4 + 9 and 5 + 8 are both 13. But area multiplies: 4 x 9 = 36 and 5 x 8 = 40.")
  (hint "Multiply each pair of side lengths."))
```

Now you can find the area of a rectangle: multiply its side lengths, and give the answer in square units.
