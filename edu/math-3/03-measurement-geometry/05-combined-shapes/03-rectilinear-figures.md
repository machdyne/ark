# Rectilinear figures

```lesson
(objective "Find the area of a rectilinear figure by adding the areas of its rectangles.")
(standards "3.MD.C.7d")
(minutes 25)
(keywords "rectilinear figure")
```

You can find the area of a shape made of rectangles.

A **rectilinear figure** is a flat shape whose sides all meet at square corners. This L shape is one. Its sides are in units.

```figure
(define t (toggle 't "Show unit squares" #f))
(if t (begin (ms-tiles 60 40 3 3 20 #f) (ms-tiles 60 100 8 3 20 #f)))
(ms-poly '(60 40 120 40 120 100 220 100 220 160 60 160) '("3" "3" "5" "3" "8" "6") #f)
(caption "An L shape made of rectangles")
```

```check
(number
  (ask "Turn on the unit squares and count them. What is the area, in square units?")
  (answer 33) (unit "square units") (from "3 * 3 + 8 * 3")
  (wrong-if 48 "8 x 6 is the rectangle around the L. But the top right part is empty, so the L is smaller.")
  (wrong-if 28 "Add up all the side lengths and you get 28. That is the way around, not the area. Count the squares.")
  (hint "Count the top part, then the bottom part.")
  (hint "The top part has 9. The bottom part has 24."))
```

---

## Split it into rectangles

Counting takes a long time. Instead, cut the shape into 2 rectangles. Find each area, then add.

The line cuts the L into a 3 by 3 rectangle and an 8 by 3 rectangle.

```figure
(ms-poly '(60 40 120 40 120 100 220 100 220 160 60 160) '("3" "3" "5" "3" "8" "6") #f)
(rect 62 42 56 56 'warm)
(rect 62 102 156 56 'cool)
(line 60 100 120 100 'ink 2)
```

```check
(number
  (ask "The top part is 3 x 3 = 9. The bottom part is 8 x 3 = 24. What is the area of the L, in square units?")
  (answer 33) (unit "square units") (from "9 + 24")
  (wrong-if 24 "24 is only the bottom part. Add the top part too.")
  (wrong-if 216 "9 x 24 multiplies the 2 areas. The parts sit side by side, so add them.")
  (hint "9 + 24 = ?"))
```

---

## Find a missing side

Sometimes a side has no number. Use the other sides to find it.

The whole bottom is 8. The top of the L is 3. So the step on the right is $8 - 3 = 5$.

```figure
(ms-poly '(60 40 120 40 120 100 220 100 220 160 60 160) '("3" "3" "?" "3" "8" "6") #f)
(caption "The top and the step together are as long as the bottom.")
```

```check
(number
  (ask "A shape's bottom side is 10 cm. The top side is 4 cm. The step is the rest. How long is the step, in cm?")
  (answer 6) (unit "cm") (from "10 - 4")
  (wrong-if 14 "10 + 4 adds. The top and the step together make the bottom: 4 + ? = 10.")
  (hint "4 + ? = 10"))
```

---

## Cut it another way

You can cut the L a different way. The area stays the same.

Cut down instead: a 3 by 6 rectangle and a 5 by 3 rectangle.

$$ 3 * 6 + 5 * 3 = 18 + 15 = 33 $$

```figure
(ms-poly '(60 40 120 40 120 100 220 100 220 160 60 160) '("3" "3" "5" "3" "8" "6") #f)
(rect 62 42 56 116 'warm)
(rect 122 102 96 56 'cool)
(line 120 100 120 160 'ink 2)
```

```check
(choice
  (ask "Lee cuts the L across. Mia cuts it down. Who gets the right area?")
  (right "Both of them" (true "3 * 3 + 8 * 3 = 3 * 6 + 5 * 3"))
  (wrong "Only Lee"
    "Mia's way works too. The 2 rectangles still cover the whole L, with no gaps or overlaps.")
  (wrong "Neither of them"
    "Both cuts make 2 rectangles that cover the L exactly. Each gives 33 square units.")
  (hint "Do both cuts cover the whole L, with no overlaps?"))
```

---

## A worked example

```figure
(ms-poly '(40 50 140 50 140 110 280 110 280 190 40 190) '("5 m" "3 m" "7 m" "4 m" "12 m" "7 m") #f)
(line 40 110 140 110 'ink 2)
```

```example
(example
  (problem "A patio is shaped like this L. What is its area?")
  (step "Cut it across into 2 rectangles: 5 m by 3 m on top, 12 m by 4 m below.")
  (step "Top: 5 x 3 = 15. Bottom: 12 x 4 = 48.")
  (step (number (ask "15 + 48 = ?") (answer 63) (from "15 + 48")
          (wrong-if 53 "5 ones + 8 ones = 13 ones. Regroup 10 ones as 1 ten: 63.")))
  (answer "The area is 63 square meters."))
```

---

## Now you finish one

```figure
(ms-poly '(60 40 160 40 160 140 260 140 260 200 60 200) '("5 ft" "5 ft" "5 ft" "3 ft" "10 ft" "8 ft") #f)
(line 60 140 160 140 'ink 2)
```

A room is shaped like this. Cut it across: 5 ft by 5 ft on top, and 10 ft by 3 ft below. The top is 25 square feet.

```check
(number
  (ask "What is the area of the whole room, in square feet?")
  (answer 55) (unit "sq ft") (from "5 * 5 + 10 * 3")
  (wrong-if 25 "25 is only the top part. Add the bottom part, 10 x 3 = 30.")
  (wrong-if 80 "10 x 8 is the rectangle around the room. The top right corner is not part of the room.")
  (hint "Bottom part: 10 x 3 = 30.")
  (hint "25 + 30 = ?"))
```

---

## Practice

```check
(number
  (ask "A rectilinear figure is cut into a 4 by 2 rectangle and a 6 by 5 rectangle. What is its area, in square units?")
  (answer 38) (unit "square units") (from "4 * 2 + 6 * 5")
  (wrong-if 30 "30 is only the 6 by 5 part. Add the 4 by 2 part, 8.")
  (wrong-if 17 "4 + 2 + 6 + 5 adds the side lengths. Find each area, then add: 8 + 30.")
  (hint "4 x 2 = 8 and 6 x 5 = 30."))
```

```check
(choice
  (ask "Which shape is a rectilinear figure?")
  (right "A plus sign shape made of squares")
  (wrong "A circle"
    "A circle has no straight sides and no corners. A rectilinear figure has straight sides that meet at square corners.")
  (wrong "A triangle with 3 equal sides"
    "Its corners are not square corners. In a rectilinear figure every corner is a square corner.")
  (hint "Look for straight sides that meet at square corners."))
```

Now you can find the area of a rectilinear figure: cut it into rectangles, find each area, then add.
