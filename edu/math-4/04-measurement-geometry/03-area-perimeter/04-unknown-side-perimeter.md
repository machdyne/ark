# A missing side from the perimeter

```lesson
(objective "Find an unknown side of a rectangle from its perimeter and the other side.")
(standards "4.MD.A.3")
(minutes 20)
```

You can find a missing side of a rectangle when you know its perimeter and one side.

A rectangle has a perimeter of 30 cm. It is 10 cm long. How wide is it?

```figure
(frame 40 60 200 100 'ink 2.5)
(text 140 52 "10 cm" 'centre 'small)
(text 32 114 "? cm" 'right 'small)
(caption "Perimeter: 30 cm")
```

1 length and 1 width go halfway around. Half of 30 is 15. So $10 + w = 15$.

```check
(number
  (ask "How wide is the rectangle, in cm?")
  (answer 5) (unit "cm") (from "30 / 2 - 10")
  (wrong-if 20 "30 - 10 takes away only 1 length. There are 2 lengths. Use half of 30: 15 - 10.")
  (wrong-if 3 "30 ÷ 10 treats 30 as the area. 30 is the perimeter: the way around.")
  (hint "Half of 30 is 15.")
  (hint "10 + ? = 15"))
```

---

## With the formula

$P = 2 * l + 2 * w$. Put in what you know: $30 = 2 * 10 + 2 * w$.

That is $30 = 20 + 2 * w$. So $2 * w = 10$, and $w = 5$.

```check
(number
  (ask "A rectangle has a perimeter of 40 m. It is 12 m long. How wide is it, in meters?")
  (answer 8) (unit "m") (from "(40 - 2 * 12) / 2")
  (wrong-if 28 "40 - 12 takes away only 1 length. Take away both: 40 - 24 = 16, then half.")
  (wrong-if 16 "16 is both widths together. Each width is half of 16.")
  (hint "2 × 12 = 24. 40 - 24 = 16."))
```

---

## A worked example

```example
(example
  (problem "A fence goes around a pen. It is 50 feet in all. The pen is 15 feet long. How wide is it?")
  (step "Half of 50 is 25: 1 length and 1 width.")
  (step "15 + w = 25.")
  (step (number (ask "w = ?") (answer 10) (unit "ft") (from "50 / 2 - 15")
          (wrong-if 35 "50 - 15 uses only 1 length. Use half of 50: 25 - 15.")))
  (answer "The pen is 10 feet wide."))
```

---

## Practice

```check
(number
  (ask "A rectangle has a perimeter of 26 inches. It is 9 inches long. How wide is it, in inches?")
  (answer 4) (unit "in") (from "26 / 2 - 9")
  (wrong-if 17 "26 - 9 takes away only 1 length. Half of 26 is 13: 13 - 9.")
  (hint "Half of 26 is 13."))
```

```check
(number
  (ask "A field has a perimeter of 300 m. It is 90 m wide. How long is it, in meters?")
  (answer 60) (unit "m") (from "300 / 2 - 90")
  (wrong-if 210 "300 - 90 takes away only 1 width. Half of 300 is 150: 150 - 90.")
  (wrong-if 120 "120 is both lengths. Each length is half of 120.")
  (hint "Half of 300 is 150."))
```

---

```check
(number
  (ask "A square has a perimeter of 44 cm. How long is each side, in cm?")
  (answer 11) (unit "cm") (from "44 / 4")
  (wrong-if 22 "22 is 2 sides. A square has 4 equal sides: 44 ÷ 4.")
  (hint "4 × ? = 44"))
```

To find a missing side from the perimeter, take half of the perimeter, then subtract the side you know.
