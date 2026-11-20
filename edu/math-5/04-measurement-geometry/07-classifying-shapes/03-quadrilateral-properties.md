# Properties of quadrilaterals

```lesson
(objective "List the properties of parallelograms, rectangles, rhombuses and squares: parallel sides, sides of the same length and right angles.")
(standards "5.G.B.3")
(minutes 25)
```

You can describe each kind of quadrilateral by its sides and angles.

A parallelogram has 2 pairs of parallel sides: top and bottom, left and right. The arrows mark the top and bottom pair. Its opposite sides are also the same length.

```figure
(m5p4-shape '(60 180 200 180 250 90 110 90) #f)
(m5p4-par 60 180 200 180) (m5p4-par 110 90 250 90)
(m5p4-tick 60 180 110 90 2) (m5p4-tick 200 180 250 90 2)
(caption "A parallelogram")
```

```check
(number
  (ask "How many pairs of parallel sides does a parallelogram have?")
  (answer 2) (unit "pairs") (from "2")
  (wrong-if 1 "Both pairs of opposite sides are parallel: top and bottom, and left and right.")
  (hint "Look at the opposite sides."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.B.3: attributes belonging to a category of two-dimensional figures belong to all subcategories of that category")
```

---

## A rectangle

A rectangle has 4 right angles. Its opposite sides are parallel too, so it is a parallelogram.

```figure
(m5p4-shape '(70 180 250 180 250 90 70 90) #f)
(m5p4-right 70 180 0) (m5p4-right 250 180 90) (m5p4-right 250 90 180) (m5p4-right 70 90 270)
(caption "A rectangle: 4 right angles")
```

```check
(number
  (ask "How many right angles does a rectangle have?")
  (answer 4) (unit "right angles") (from "4")
  (wrong-if 2 "Every corner of a rectangle is a right angle: all 4.")
  (hint "Look at each corner."))
```

---

## A rhombus

A rhombus has 4 sides of the same length. Its opposite sides are parallel, so it is a parallelogram too.

```figure
(m5p4-shape '(60 180 180 180 240 76.08 120 76.08) #f)
(m5p4-tick 60 180 180 180 1) (m5p4-tick 180 180 240 76.08 1)
(m5p4-tick 240 76.08 120 76.08 1) (m5p4-tick 120 76.08 60 180 1)
(caption "A rhombus: 4 sides the same length")
```

```check
(choice
  (ask "A rhombus has one side 5 cm long. What do you know about its other sides?")
  (right "They are 5 cm long too.")
  (wrong "Only the opposite side is 5 cm." "That is true of any parallelogram. A rhombus has all 4 sides the same length.")
  (wrong "Nothing: they can be any length." "A rhombus has 4 sides of the same length, so all are 5 cm.")
  (hint "A rhombus: 4 sides the same."))
```

---

## A square

A square has 4 right angles and 4 sides of the same length.

```figure
(m5p4-shape '(110 180 210 180 210 80 110 80) #f)
(m5p4-right 110 180 0) (m5p4-right 210 180 90) (m5p4-right 210 80 180) (m5p4-right 110 80 270)
(m5p4-tick 110 180 210 180 1) (m5p4-tick 210 180 210 80 1) (m5p4-tick 210 80 110 80 1) (m5p4-tick 110 80 110 180 1)
(caption "A square: 4 right angles, 4 sides the same")
```

- parallelogram: 2 pairs of parallel sides
- rectangle: a parallelogram with 4 right angles
- rhombus: a parallelogram with 4 sides the same
- square: 4 right angles and 4 sides the same

```check
(choice
  (ask "Which has all three: 2 pairs of parallel sides, 4 right angles and 4 sides the same?")
  (right "a square")
  (wrong "a rectangle" "A rectangle has 4 right angles, but its sides need not all be the same length.")
  (wrong "a rhombus" "A rhombus has 4 sides the same, but its angles need not be right angles.")
  (hint "Look at the last line of the list."))
```

---

## A worked example

```example
(example
  (problem "A quadrilateral has 2 pairs of parallel sides, 4 right angles, and sides of 3 cm and 7 cm. What is it?")
  (step "2 pairs of parallel sides: a parallelogram.")
  (step "4 right angles: a rectangle.")
  (step (choice (ask "Is it a square?") (right "No: its sides are not all the same length.")
          (wrong "Yes: it has 4 right angles." "A square also needs 4 sides the same. 3 cm and 7 cm differ.")))
  (answer "A rectangle that is not a square."))
```

---

## Practice

```check
(choice
  (ask "A quadrilateral has 4 sides of 6 cm but no right angles. What is it?")
  (right "a rhombus")
  (wrong "a square" "A square needs 4 right angles too. With none, it is a rhombus that is not a square.")
  (wrong "a rectangle" "A rectangle needs 4 right angles.")
  (hint "4 sides the same, no right angles."))
```

```check
(number
  (ask "A rectangle has sides of 8 cm and 3 cm. What is its perimeter, in cm?")
  (answer 22) (unit "cm") (from "8 + 3 + 8 + 3")
  (wrong-if 11 "That is 2 sides. Opposite sides are the same length: 8 + 3 + 8 + 3.")
  (hint "Opposite sides of a rectangle are the same length."))
```

Parallelograms have 2 pairs of parallel sides; rectangles add 4 right angles, rhombuses 4 equal sides, and squares have both.
