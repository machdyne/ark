# Lines and angles in shapes

```lesson
(objective "Find segments, angles, and perpendicular and parallel sides in polygons and other two-dimensional figures.")
(standards "4.G.A.1")
(minutes 20)
```

You can find segments, angles, and parallel and perpendicular sides in shapes.

Each side of a polygon is a line segment. Each corner is the vertex of an angle.

```figure
(m4p4-shape '(60 170 260 170 210 60 110 60) #f)
(caption "4 sides: 4 segments. 4 corners: 4 angles.")
```

```check
(number
  (ask "A triangle has how many angles inside it?")
  (answer 3) (from "3")
  (wrong-if 6 "A triangle has 3 sides and 3 corners. Each corner is 1 angle.")
  (hint "Count the corners."))
```

---

## In a rectangle

A rectangle has 4 right angles. So each pair of sides that meet is perpendicular.

The opposite sides of a rectangle are parallel.

```figure
(m4p4-shape '(60 60 260 60 260 170 60 170) #f)
(m4p4-right 60 170 0)
(m4p4-right 260 170 90)
(m4p4-right 260 60 180)
(m4p4-right 60 60 270)
(caption "A rectangle")
```

```check
(number
  (ask "How many pairs of parallel sides does a rectangle have?")
  (answer 2) (from "2")
  (wrong-if 4 "There are 4 sides, but they pair up: top with bottom, left with right. That is 2 pairs.")
  (wrong-if 1 "Top and bottom are parallel. Left and right are parallel too: 2 pairs.")
  (hint "Top and bottom. Left and right."))
```

---

## Other shapes

This shape has a top and bottom that are parallel. The slanted sides are not parallel.

```figure
(m4p4-shape '(40 170 280 170 220 70 100 70) #f)
(caption "1 pair of parallel sides")
```

```check
(choice
  (ask "Does this shape have a right angle?")
  (right "No: its angles are acute and obtuse.")
  (wrong "Yes: the bottom corners are right angles." "The bottom corners are narrower than square corners. They are acute.")
  (hint "Compare each corner with a square corner."))
```

---

## A worked example

```figure
(m4p4-shape '(60 170 260 170 60 50) #f)
(m4p4-right 60 170 0)
```

```example
(example
  (problem "Find the perpendicular sides and the kinds of angles in this triangle.")
  (step "The left side and the bottom meet at a square corner: perpendicular.")
  (step "The other 2 corners are narrower than a square corner.")
  (step (choice (ask "So those 2 angles are:") (right "acute")
          (wrong "obtuse" "They are narrower than a right angle, so they are acute.")))
  (answer "1 right angle, 2 acute angles; 1 pair of perpendicular sides."))
```

---

## Practice

```check
(choice
  (ask "A square has how many right angles?")
  (right "4")
  (wrong "2" "Every corner of a square is a square corner: 4 right angles.")
  (wrong "0" "A square's corners are square corners: right angles.")
  (hint "A square is a rectangle."))
```

```check
(choice
  (ask "Which letter has a pair of parallel segments?")
  (right "H")
  (wrong "V" "The 2 sides of V meet at the bottom, so they are not parallel.")
  (wrong "A" "The 2 slanted sides of A meet at the top.")
  (hint "Which letter has 2 sides that never meet?"))
```

Sides of shapes are segments, and their corners are angles; look for square corners and sides that never meet.
