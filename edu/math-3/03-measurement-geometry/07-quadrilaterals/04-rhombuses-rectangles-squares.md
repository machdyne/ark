# Rhombuses, rectangles and squares

```lesson
(objective "Name rhombuses, rectangles and squares by their sides and right angles.")
(standards "3.G.A.1")
(minutes 25)
(keywords "rhombus")
```

You can name 3 kinds of quadrilaterals by their sides and right angles.

A rectangle is a quadrilateral with 4 right angles. Its sides across from each other match.

```figure
(ms-shape '(50 60 270 60 270 170 50 170) #f)
(ms-corner 50 170 50 60 270 60)
(ms-corner 50 60 270 60 270 170)
(ms-corner 270 60 270 170 50 170)
(ms-corner 270 170 50 170 50 60)
(caption "A rectangle: 4 right angles")
```

```check
(number
  (ask "How many right angles does every rectangle have?")
  (answer 4)
  (wrong-if 2 "Every corner of a rectangle is a right angle. It has 4 corners.")
  (hint "Count the small squares."))
```

---

## The rhombus

A **rhombus** is a quadrilateral with 4 sides of the same length. Its corners do not have to be square.

```figure
(ms-shape '(160 40 230 120 160 200 90 120) #f)
(ms-tick 160 40 230 120 1)
(ms-tick 230 120 160 200 1)
(ms-tick 160 200 90 120 1)
(ms-tick 90 120 160 40 1)
(caption "A rhombus: 4 sides the same length")
```

```check
(choice
  (ask "What makes a quadrilateral a rhombus?")
  (right "Its sides all match")
  (wrong "It has 4 right angles"
    "That is what makes a rectangle. A rhombus needs 4 sides of the same length.")
  (wrong "It looks like a kite"
    "Looks are not enough. Check the sides: all 4 must be the same length.")
  (hint "Look at the marks on the sides."))
```

---

## The square

A square has 4 right angles and 4 sides of the same length.

```figure
(ms-shape '(100 50 220 50 220 170 100 170) #f)
(ms-corner 100 170 100 50 220 50)
(ms-corner 100 50 220 50 220 170)
(ms-corner 220 50 220 170 100 170)
(ms-corner 220 170 100 170 100 50)
(ms-tick 100 50 220 50 1)
(ms-tick 220 50 220 170 1)
(ms-tick 220 170 100 170 1)
(ms-tick 100 170 100 50 1)
(caption "A square: 4 right angles, 4 equal sides")
```

```check
(choice
  (ask "A quadrilateral has 4 right angles. Its sides are 6 cm, 3 cm, 6 cm and 3 cm. What is it?")
  (right "A rectangle")
  (wrong "A square"
    "A square needs 4 sides of the same length. Here the sides are 6 and 3.")
  (wrong "A rhombus"
    "A rhombus needs 4 sides of the same length. Here the sides are 6 and 3.")
  (hint "Are all 4 sides the same length?"))
```

---

## Name them

```figure
(ms-shape '(20 40 140 40 140 100 20 100) #f)
(ms-corner 20 100 20 40 140 40)
(ms-shape '(230 15 270 70 230 125 190 70) #f)
(ms-tick 230 15 270 70 1)
(ms-tick 270 70 230 125 1)
(ms-tick 230 125 190 70 1)
(ms-tick 190 70 230 15 1)
(ms-shape '(40 150 120 150 140 220 20 220) #f)
(ms-shape '(190 140 270 140 270 220 190 220) #f)
(ms-corner 190 220 190 140 270 140)
(ms-tick 190 140 270 140 1)
(ms-tick 270 140 270 220 1)
(ms-tick 270 220 190 220 1)
(ms-tick 190 220 190 140 1)
(label 80 118 "A" 'body 'bold)
(label 290 40 "B" 'body 'bold)
(label 80 238 "C" 'body 'bold)
(label 300 185 "D" 'body 'bold)
```

A is a rectangle: its corners are all square (1 is marked). B has 4 equal sides. D has 4 equal sides and square corners (1 is marked).

```check
(choice
  (ask "Which shape is a rhombus that is not a square?")
  (right "B")
  (wrong "D"
    "D is a rhombus, but it is also a square: its corners are right angles. B has no right angles.")
  (wrong "A"
    "A's sides are not all the same length, so A is not a rhombus.")
  (wrong "C"
    "C's sides are not all the same length, so it is not a rhombus.")
  (hint "Find the shape with 4 equal sides but no square corners."))
```

---

## A worked example

```example
(example
  (problem "A quadrilateral has 4 sides of 5 cm each. None of its corners are right angles. Name it.")
  (step "All 4 sides are the same length. So it is a rhombus.")
  (step "It has no right angles. So it is not a rectangle and not a square.")
  (answer "It is a rhombus."))
```

---

## Now you finish one

A quadrilateral has 4 right angles. All 4 sides are 8 inches.

```check
(choice
  (ask "What is the best name for it?")
  (right "A square")
  (wrong "A rhombus only"
    "It is a rhombus, with 4 equal sides. But it has 4 right angles too, so the best name is square.")
  (wrong "A rectangle only"
    "It is a rectangle, with 4 right angles. But its sides are all equal too, so the best name is square.")
  (hint "It has both: 4 right angles and 4 equal sides."))
```

---

## Practice

```check
(choice
  (ask "Which attribute does every rectangle have?")
  (right "4 right angles")
  (wrong "4 sides of the same length"
    "Only some rectangles have 4 equal sides: the squares. Every rectangle has 4 right angles.")
  (wrong "No right angles"
    "Every corner of a rectangle is a right angle.")
  (hint "What do all rectangles share?"))
```

```check
(choice
  (ask "Which attribute does every rhombus have?")
  (right "4 sides of the same length")
  (wrong "4 right angles"
    "Only some rhombuses have right angles: the squares. Every rhombus has 4 equal sides.")
  (hint "What do all rhombuses share?"))
```

Now you can name rectangles (4 right angles), rhombuses (4 equal sides) and squares (both).
