# Right angles

```lesson
(objective "Find right angles, square corners, in shapes.")
(standards "3.G.A.1")
(minutes 20)
(keywords "right angle")
```

You can find square corners in shapes.

A **right angle** is a square corner, like the corner of a sheet of paper. A small square drawn in a corner shows a right angle.

```figure
(ms-shape '(80 40 240 40 240 200 80 200) #f)
(ms-corner 80 200 80 40 240 40)
(ms-corner 80 40 240 40 240 200)
(ms-corner 240 40 240 200 80 200)
(ms-corner 240 200 80 200 80 40)
(caption "A sheet of paper: a small square marks each right angle")
```

```check
(number
  (ask "How many right angles does a sheet of paper have?")
  (answer 4)
  (wrong-if 1 "Look at every corner, not just 1. All 4 corners of the paper are square.")
  (wrong-if 2 "Check all 4 corners. Each one is a square corner.")
  (hint "Count the small squares."))
```

---

## Open and close a corner

Move the slider to open and close the corner. Find where it makes a right angle.

```figure
(define k (slider 'k 1 9 2 "Open" 1))
(define a (deg->rad (+ 15 (* 15 k))))
(define ex (+ 110 (* 120 (cos a))))
(define ey (- 180 (* 120 (sin a))))
(line 110 180 270 180 'ink 3)
(line 110 180 ex ey 'ink 3)
(if (= k 5) (ms-corner 270 180 110 180 ex ey) (arc 110 180 22 0 (+ 15 (* 15 k)) 'ink 1))
(caption (cond ((= k 5) "A right angle: a square corner")
               ((< k 5) "Less than a right angle")
               (else "More than a right angle")))
```

```check
(choice
  (ask "Set the slider to 2. Is the corner a right angle?")
  (right "No: it is less")
  (wrong "Yes"
    "A right angle is a square corner. This corner is narrower than the corner of a sheet of paper.")
  (wrong "No: it is more"
    "This corner is narrower than a square corner, not wider. So it is less than a right angle.")
  (hint "Compare it with the corner of a sheet of paper."))
```

---

## Check with a corner

To test a corner, hold the corner of a sheet of paper in it. If the 2 sides fit along the paper's edges, it is a right angle.

This house shape has some right angles. They are marked.

```figure
(ms-shape '(60 200 60 140 140 80 220 140 220 200) #f)
(ms-corner 60 140 60 200 220 200)
(ms-corner 60 200 220 200 220 140)
(caption "2 corners are marked as right angles.")
```

```check
(number
  (ask "How many right angles does the house shape have?")
  (answer 2)
  (wrong-if 5 "The house has 5 corners, but only the 2 at the bottom are square. The roof corners are not.")
  (wrong-if 4 "The 2 corners where the roof meets the walls are wider than a square corner.")
  (hint "Count the small squares."))
```

---

## A worked example

```figure
(ms-shape '(70 190 70 60 250 190) #f)
(ms-corner 70 60 70 190 250 190)
```

```example
(example
  (problem "How many right angles does this triangle have?")
  (step "Look at each of the 3 corners.")
  (step "The bottom left corner is square: it has the small square.")
  (step "The other 2 corners are narrower than a square corner.")
  (answer "The triangle has 1 right angle."))
```

---

## Now you finish one

```figure
(ms-shape '(60 60 190 60 260 190 60 190) #f)
(ms-corner 60 190 60 60 190 60)
(ms-corner 260 190 60 190 60 60)
```

This shape has 4 corners. The 2 corners on the left are marked.

```check
(number
  (ask "How many right angles does this shape have?")
  (answer 2)
  (wrong-if 4 "It has 4 corners, but the 2 on the right are not square. One is wider and one is narrower.")
  (wrong-if 1 "Look at both corners on the left. Each has a small square.")
  (hint "Count the small squares."))
```

---

## Practice

```check
(choice
  (ask "Which has a right angle?")
  (right "The corner of a door")
  (wrong "The tip of a slice of pizza"
    "A pizza slice tip is narrow, less than a square corner.")
  (wrong "The edge of a round plate"
    "A round plate has no corners at all.")
  (hint "Which one is a square corner?"))
```

```check
(number
  (ask "How many right angles does a square have?")
  (answer 4)
  (wrong-if 0 "Every corner of a square is a square corner. That is 4 right angles.")
  (hint "Think of a square tile. Are its corners square?"))
```

Now you can find right angles: the square corners in shapes.
