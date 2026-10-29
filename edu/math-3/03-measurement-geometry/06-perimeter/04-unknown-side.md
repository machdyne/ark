# Finding a missing side

```lesson
(objective "Find an unknown side length from the perimeter.")
(standards "3.MD.D.8")
(minutes 25)
```

You can find a missing side when you know the perimeter.

This shape has a perimeter of 20 cm. Three sides are 3 cm, 4 cm and 8 cm. One side is missing.

```figure
(ms-poly '(50 180 50 105 150 105 250 180) '("3 cm" "4 cm" "? cm" "8 cm") #f)
(caption "Perimeter: 20 cm")
```

Add the sides you know: $3 + 4 + 8 = 15$. The missing side is the rest of the 20.

```check
(number
  (ask "How long is the missing side, in cm?")
  (answer 5) (unit "cm") (from "20 - (3 + 4 + 8)")
  (wrong-if 35 "That adds 20 + 15. The 20 is already all the way around. Take away the sides you know.")
  (wrong-if 15 "15 is the 3 sides you know. The missing side is 20 - 15.")
  (hint "3 + 4 + 8 = 15.")
  (hint "15 + ? = 20"))
```

---

## A rectangle

A rectangle has a perimeter of 18 m. It is 5 m long. How wide is it?

Two sides that meet go halfway around. Half of 18 is 9. So 5 + ? = 9.

```figure
(ms-poly '(80 50 230 50 230 170 80 170) '("5 m" #f #f "? m") #f)
(caption "Perimeter: 18 m")
```

```check
(number
  (ask "How wide is the rectangle, in meters?")
  (answer 4) (unit "m") (from "18 / 2 - 5")
  (wrong-if 13 "18 - 5 takes away only 1 side of 5. There are 2 sides of 5. Use half of 18 instead: 9 - 5.")
  (wrong-if 8 "18 - 5 - 5 = 8 is both short sides together. Each one is half of 8.")
  (hint "Half of 18 is 9.")
  (hint "5 + ? = 9"))
```

---

## A square

All 4 sides of a square are the same. Share the perimeter into 4 equal parts.

A square has a perimeter of 24 inches. $24 ÷ 4 = 6$, so each side is 6 inches.

```check
(number
  (ask "A square has a perimeter of 32 feet. How long is each side, in feet?")
  (answer 8) (unit "ft") (from "32 / 4")
  (wrong-if 16 "16 is half of 32: that is 2 sides. A square has 4 sides, so share 32 into 4.")
  (wrong-if 28 "32 - 4 takes away 4. Share 32 into 4 equal sides: 32 ÷ 4.")
  (hint "4 x ? = 32"))
```

---

## A worked example

```figure
(ms-poly '(60 180 80 62 240 62 260 180) '("6 ft" "? ft" "6 ft" "10 ft") #f)
(caption "Perimeter: 30 ft")
```

```example
(example
  (problem "This shape has a perimeter of 30 ft. Find the missing side.")
  (step "Add the sides you know: 6 + 6 + 10 = 22.")
  (step "The missing side is the rest: 22 + ? = 30.")
  (step (number (ask "30 - 22 = ?") (answer 8) (from "30 - 22")
          (wrong-if 52 "Adding makes it bigger. The missing side is what is left of 30.")))
  (answer "The missing side is 8 ft."))
```

---

## Now you finish one

A rectangle has a perimeter of 22 cm. Its length is 7 cm. Half of 22 is 11.

```check
(number
  (ask "How wide is the rectangle, in cm?")
  (answer 4) (unit "cm") (from "22 / 2 - 7")
  (wrong-if 15 "22 - 7 takes away only 1 side. Use half of 22: 7 + ? = 11.")
  (wrong-if 11 "11 is the length and the width together. Take away the 7.")
  (hint "7 + ? = 11"))
```

---

## Practice

```check
(number
  (ask "A triangle has a perimeter of 15 in. Two sides are 4 in and 6 in. How long is the third side, in inches?")
  (answer 5) (unit "in") (from "15 - 4 - 6")
  (wrong-if 25 "That adds. The 15 is the whole way around: take away the 2 sides you know.")
  (wrong-if 10 "10 is the 2 sides you know. The third side is 15 - 10.")
  (hint "4 + 6 = 10. Then 10 + ? = 15."))
```

```check
(number
  (ask "A square has a perimeter of 20 m. How long is each side, in meters?")
  (answer 5) (unit "m") (from "20 / 4")
  (wrong-if 10 "10 is 2 sides. A square has 4 equal sides: 20 ÷ 4.")
  (hint "4 x ? = 20"))
```

---

```check
(number
  (ask "A rectangle is 9 ft long. Its perimeter is 26 ft. How wide is it, in feet?")
  (answer 4) (unit "ft") (from "26 / 2 - 9")
  (wrong-if 17 "26 - 9 takes away only 1 long side. Half of 26 is 13, and 9 + ? = 13.")
  (wrong-if 8 "26 - 9 - 9 = 8 is both short sides. Each one is half of 8.")
  (hint "Half of 26 is 13."))
```

Now you can find a missing side from the perimeter: add the sides you know, then find what is left.
