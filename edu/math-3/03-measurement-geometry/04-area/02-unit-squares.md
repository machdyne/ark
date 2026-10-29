# Unit squares

```lesson
(objective "Measure area by covering a shape with unit squares with no gaps or overlaps.")
(standards "3.MD.C.5a" "3.MD.C.5b")
(minutes 20)
(keywords "unit square" "square unit")
```

You can measure area by counting squares that cover a shape.

To measure area, you need a unit. A **unit square** is a square whose sides are each 1 unit long.

```figure
(ms-tiles 64 80 1 1 60 'warm)
(text 94 72 "1 unit" 'centre 'small)
(text 58 114 "1 unit" 'right 'small)
(rect 160 80 120 60 'paper)
(frame 160 80 120 60 'ink 2)
(text 220 72 "2 units" 'centre 'small)
(text 220 160 "not a unit square" 'centre 'small)
(caption "A unit square, and a shape that is not one")
```

```check
(choice
  (ask "Which shape is a unit square?")
  (right "A square with all 4 sides 1 unit long")
  (wrong "A rectangle 2 units long and 1 unit wide"
    "A unit square must be a square, with every side 1 unit long. This one has sides of 2 units.")
  (wrong "A square with all 4 sides 2 units long"
    "It is a square, but its sides are 2 units long. A unit square's sides are each 1 unit.")
  (hint "Look at the length of every side."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 3, 3.MD.C.5")
```

---

## Square units

A unit square has an area of 1 **square unit**. A shape covered by 6 unit squares has an area of 6 square units.

```figure
(ms-tiles 70 60 3 2 50 'cool)
(caption "6 unit squares: 6 square units")
```

```check
(number
  (ask "A shape is covered by 8 unit squares with no gaps. What is its area, in square units?")
  (answer 8) (unit "square units")
  (wrong-if 1 "Each unit square is 1 square unit. 8 of them are 8 square units.")
  (hint "Each unit square is 1 square unit."))
```

---

## No gaps

The squares must cover the whole shape, with no gaps. If there are gaps, some of the area is not counted.

```figure
(rect 60 50 200 120 'grey)
(frame 60 50 200 120 'ink 2)
(for-range 0 3 (lambda (i) (rect (+ 70 (* i 66)) 60 46 46 'paper)))
(for-range 0 3 (lambda (i) (frame (+ 70 (* i 66)) 60 46 46 'ink 1.5)))
(caption "Squares with gaps: the grey part is not covered")
```

```check
(choice
  (ask "Ben puts 3 squares on a shape, with gaps between them. Is the area 3 square units?")
  (right "No, the gaps are part of the area too")
  (wrong "Yes, he counted 3"
    "The gaps are part of the shape, but no square covers them. So the area is more than 3.")
  (hint "Is the whole shape covered?"))
```

---

## No overlaps

The squares must not lie on top of each other. An overlap counts the same space 2 times.

```figure
(frame 60 60 160 80 'ink 2)
(rect 62 62 76 76 'warm)
(frame 62 62 76 76 'ink 1.5)
(rect 112 62 76 76 'cool)
(frame 112 62 76 76 'ink 1.5)
(line 138 62 138 138 'ink 1)
(caption "These 2 squares overlap.")
```

```check
(choice
  (ask "Some squares overlap on a shape. What goes wrong?")
  (right "Some space is counted 2 times, so the count is too big")
  (wrong "Nothing: more squares make the count better"
    "Where squares overlap, the same space is counted twice. The count comes out too big.")
  (wrong "The count is too small"
    "Overlaps make extra squares, not fewer. The count comes out too big.")
  (hint "Think about the part where 2 squares lie on top of each other."))
```

---

## A worked example

```figure
(ms-tiles 40 50 4 3 40 'warm)
```

```example
(example
  (problem "Unit squares cover this rectangle with no gaps or overlaps. What is its area?")
  (step "There are 3 rows. Each row has 4 squares.")
  (step "Count them all: 4, 8, 12.")
  (answer "The area is 12 square units."))
```

---

## Now you finish one

```figure
(ms-tiles 30 70 5 2 40 'cool)
```

```check
(number
  (ask "What is the area of this rectangle, in square units?")
  (answer 10) (unit "square units") (from "5 * 2")
  (wrong-if 7 "5 + 2 adds a row and a column. Count every square: 2 rows of 5.")
  (wrong-if 5 "That is only 1 row. There are 2 rows of 5.")
  (hint "Count the squares in each row, then add the rows."))
```

---

## Practice

```figure
(ms-tiles 60 40 2 3 40 'warm)
(ms-tiles 140 120 3 1 40 'warm)
(caption "A shape made of unit squares")
```

```check
(number
  (ask "What is the area of this shape, in square units?")
  (answer 9) (unit "square units") (from "6 + 3")
  (wrong-if 6 "Count the bottom right part too. It has 3 more squares.")
  (wrong-if 8 "Count again carefully: 6 squares on the left and 3 on the bottom right.")
  (hint "Count the squares on the left, then the ones on the right."))
```

---

```check
(choice
  (ask "Which way of covering gives the right area?")
  (right "Squares with no gaps and no overlaps")
  (wrong "Squares with small gaps"
    "Gaps leave space that is not counted. The area comes out too small.")
  (wrong "Squares that overlap a little"
    "Overlaps count some space 2 times. The area comes out too big.")
  (hint "Every bit covered, and covered only once."))
```

```check
(number
  (ask "A rug is covered by 15 unit squares with no gaps or overlaps. What is its area?")
  (answer 15) (unit "square units")
  (wrong-if 1 "Each unit square adds 1 square unit. 15 squares are 15 square units.")
  (hint "1 unit square is 1 square unit."))
```

Now you can measure area: cover the shape with unit squares, no gaps or overlaps, and count them.
