# Sorting shapes

```lesson
(objective "Sort two-dimensional figures by whether they have parallel sides, perpendicular sides, or right, acute or obtuse angles.")
(standards "4.G.A.2")
(minutes 20)
```

You can sort shapes by their sides and their angles.

Ask 2 questions about a shape's sides: does it have parallel sides? Does it have perpendicular sides?

```figure
(define k (choice 'k '("A" "B" "C" "D") "Shape"))
(cond ((= k 0) (m4p4-shape '(100 60 220 60 220 180 100 180) #f) (m4p4-right 100 180 0))
      ((= k 1) (m4p4-shape '(40 170 220 170 280 70 100 70) #f))
      ((= k 2) (m4p4-shape '(80 180 240 180 80 60) #f) (m4p4-right 80 180 0))
      (else (m4p4-shape '(160 40 270 120 230 190 90 190 50 120) #f)))
(caption (list-ref '("A: a square" "B: a parallelogram" "C: a right triangle" "D: a pentagon") k))
```

```check
(choice
  (ask "Choose each shape. Which has perpendicular sides but no parallel sides?")
  (right "C")
  (wrong "A" "A has perpendicular sides, and its opposite sides are parallel too.")
  (wrong "B" "B has parallel sides, and no right angles, so no perpendicular sides.")
  (wrong "D" "D has neither parallel nor perpendicular sides.")
  (hint "Look for a right angle, then check for sides that never meet."))
```

---

## Sorting by angles

You can also sort shapes by their angles: right, acute or obtuse.

Shape B, the parallelogram, has 2 acute angles and 2 obtuse angles.

```check
(choice
  (ask "Which shape has only right angles?")
  (right "A")
  (wrong "C" "C has 1 right angle and 2 acute angles.")
  (wrong "D" "The pentagon's angles are all wider than a square corner: obtuse.")
  (hint "Which shape has a square corner at every vertex?"))
```

---

## A sorting table

| | parallel sides | no parallel sides |
|---|---|---|
| right angle | A | C |
| no right angle | B | D |

```check
(choice
  (ask "A rhombus that is not a square goes in which box?")
  (right "parallel sides, no right angle")
  (wrong "parallel sides, right angle" "A rhombus that is not a square has no square corners.")
  (wrong "no parallel sides, no right angle" "A rhombus has 2 pairs of parallel sides.")
  (hint "A rhombus is a parallelogram."))
```

---

## A worked example

```example
(example
  (problem "Sort an obtuse triangle.")
  (step "Its 3 sides all meet each other, so none are parallel.")
  (step "It has no right angle, so no sides are perpendicular.")
  (step (choice (ask "Which box?") (right "no parallel sides, no right angle")
          (wrong "no parallel sides, right angle" "An obtuse triangle has 1 obtuse and 2 acute angles: no right angle.")))
  (answer "No parallel sides, no right angle."))
```

---

## Practice

```check
(choice
  (ask "Which shape has 2 pairs of parallel sides and 4 right angles?")
  (right "a rectangle")
  (wrong "a parallelogram that slants" "A slanted parallelogram has no right angles.")
  (wrong "a right triangle" "A triangle has no parallel sides.")
  (hint "Square corners and parallel sides."))
```

```check
(choice
  (ask "Can a triangle have parallel sides?")
  (right "No: every side of a triangle meets the other 2.")
  (wrong "Yes: a right triangle does." "A right triangle has perpendicular sides, not parallel ones. Each side meets the other 2.")
  (hint "Do any 2 sides of a triangle never meet?"))
```

Sort shapes by asking about their sides (parallel, perpendicular) and their angles (right, acute, obtuse).
