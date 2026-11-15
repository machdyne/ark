# Parallelograms

```lesson
(objective "Classify quadrilaterals by their parallel and perpendicular sides, and explain why rectangles, rhombuses and squares are all parallelograms.")
(standards "4.G.A.2")
(minutes 20)
(keywords "parallelogram")
```

You can sort 4-sided shapes by their sides.

A **parallelogram** is a quadrilateral with 2 pairs of parallel sides. The sides that face each other are parallel.

```figure
(m4p4-shape '(40 170 220 170 280 70 100 70) 'grey)
(caption "2 pairs of parallel sides")
```

```check
(number
  (ask "How many pairs of parallel sides does a parallelogram have?")
  (answer 2) (from "2")
  (wrong-if 1 "Top and bottom are parallel, and so are the 2 slanted sides: 2 pairs.")
  (wrong-if 4 "There are 4 sides, which make 2 pairs.")
  (hint "Opposite sides pair up."))
```

---

## Rectangles are parallelograms

A rectangle has 4 right angles. The sides that face each other are parallel. So it is a parallelogram.

Its sides that meet are perpendicular too.

```figure
(m4p4-shape '(60 60 260 60 260 170 60 170) #f)
(m4p4-right 60 170 0)
(m4p4-right 260 170 90)
(m4p4-right 260 60 180)
(m4p4-right 60 60 270)
(caption "A rectangle: a parallelogram with right angles")
```

```check
(choice
  (ask "Is every rectangle a parallelogram?")
  (right "Yes: it has 2 pairs of parallel sides.")
  (wrong "No: a parallelogram must slant." "A parallelogram only needs 2 pairs of parallel sides. A rectangle has them, so it counts.")
  (hint "Does a rectangle have 2 pairs of parallel sides?"))
```

---

## Rhombuses and squares

A rhombus has 4 equal sides. The sides that face each other are parallel. So it is one too.

A square is a rectangle and a rhombus. So it is one too.

```figure
(m4p4-shape '(60 170 180 170 240 66.1 120 66.1) 'grey)
(caption "A rhombus: 4 equal sides, opposite sides parallel")
```

```check
(choice
  (ask "Which of these are parallelograms?")
  (right "rectangles, rhombuses and squares")
  (wrong "only shapes that slant" "Rectangles and squares do not slant, but their opposite sides are parallel. They are parallelograms.")
  (wrong "only rectangles" "Rhombuses and squares also have 2 pairs of parallel sides.")
  (hint "Check for 2 pairs of parallel sides."))
```

---

## Not a parallelogram

Some 4-sided shapes have just 1 pair of parallel sides, or none. Those are not in this group.

```figure
(m4p4-shape '(40 170 280 170 220 70 100 70) 'grey)
(caption "Only 1 pair of parallel sides")
```

```check
(choice
  (ask "Is this shape a parallelogram?")
  (right "No: only 1 pair of sides is parallel.")
  (wrong "Yes: it has 4 sides." "Every quadrilateral has 4 sides. A parallelogram needs 2 pairs of parallel sides; this has 1.")
  (hint "Are the slanted sides parallel?"))
```

---

## A worked example

```example
(example
  (problem "A quadrilateral has 2 pairs of parallel sides and 4 right angles. Name it.")
  (step "2 pairs of parallel sides: it is a parallelogram.")
  (step "4 right angles: its sides that meet are perpendicular.")
  (step (choice (ask "So it is also a:") (right "rectangle")
          (wrong "rhombus" "We do not know its sides are equal. 4 right angles make it a rectangle.")))
  (answer "A rectangle, which is a parallelogram."))
```

---

## Practice

```check
(choice
  (ask "A parallelogram has no right angles. Can it have perpendicular sides?")
  (right "No: perpendicular sides meet at right angles.")
  (wrong "Yes: its sides meet." "Sides that meet are perpendicular only at a square corner. This one has none.")
  (hint "What angle do perpendicular sides make?"))
```

```check
(choice
  (ask "Which is true?")
  (right "Every square is a parallelogram.")
  (wrong "Every parallelogram is a square." "A parallelogram can slant and have sides of different lengths. Only some are squares.")
  (wrong "No square is a parallelogram." "A square has 2 pairs of parallel sides, so it is a parallelogram.")
  (hint "Squares have 2 pairs of parallel sides."))
```

A shape with 2 pairs of parallel sides is a parallelogram: so are rectangles, rhombuses and squares.
