# Right, acute and obtuse triangles

```lesson
(objective "Classify triangles by their angles as right, acute or obtuse, and find the right triangles in a set of shapes.")
(standards "4.G.A.2")
(minutes 20)
(keywords "right triangle" "acute triangle" "obtuse triangle")
```

You can sort triangles by their angles.

A **right triangle** has 1 right angle. Its other 2 angles are acute.

```figure
(m4p4-shape '(60 180 260 180 60 60) #f)
(m4p4-right 60 180 0)
(caption "A right triangle")
```

```check
(number
  (ask "How many right angles does a right triangle have?")
  (answer 1) (from "1")
  (wrong-if 2 "With 2 right angles, the other 2 sides would be parallel and never meet. A triangle has just 1.")
  (hint "Look for the small square."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.G.A.2: recognize right triangles as a category")
```

---

## An obtuse triangle

An **obtuse triangle** has 1 obtuse angle. Its other 2 angles are acute.

```figure
(m4p4-shape '(30 180 290 180 110 110) #f)
(angle-mark 110 110 18 -139 -21)
(caption "An obtuse triangle: the top angle is obtuse")
```

```check
(choice
  (ask "A triangle has angles of 120°, 35° and 25°. What kind is it?")
  (right "obtuse" (true "120 > 90"))
  (wrong "acute" "35° and 25° are acute, but 120° is obtuse. One obtuse angle makes an obtuse triangle.")
  (wrong "right" "No angle is 90°, so it is not a right triangle.")
  (hint "Is any angle more than 90°?"))
```

---

## An acute triangle

An **acute triangle** has 3 acute angles. All of them are less than 90°.

```figure
(m4p4-shape '(60 190 260 190 180 50) 'grey)
(caption "An acute triangle: all 3 angles acute")
```

```check
(choice
  (ask "A triangle has angles of 60°, 70° and 50°. What kind is it?")
  (right "acute" (true "60 + 70 + 50 = 180"))
  (wrong "obtuse" "No angle is more than 90°. All 3 are acute.")
  (wrong "right" "No angle is 90°.")
  (hint "Is every angle less than 90°?"))
```

---

## Sort them

```figure
(define k (choice 'k '("A" "B" "C") "Triangle"))
(cond ((= k 0) (m4p4-shape '(70 190 250 190 250 60) #f) (m4p4-right 250 190 90))
      ((= k 1) (m4p4-shape '(40 190 290 190 90 130) #f))
      (else (m4p4-shape '(70 190 250 190 150 50) #f)))
```

```check
(choice
  (ask "Choose each triangle. Which one is a right triangle?")
  (right "A")
  (wrong "B" "B has a wide angle at the top: it is obtuse, not right.")
  (wrong "C" "C's angles are all narrower than a square corner: acute.")
  (hint "Look for the small square."))
```

```check
(choice
  (ask "What kind of triangle is B?")
  (right "obtuse")
  (wrong "acute" "The top angle of B is wider than a square corner: obtuse.")
  (wrong "right" "No angle of B is a square corner.")
  (hint "Compare the top angle with a square corner."))
```

---

## A worked example

```example
(example
  (problem "A triangle has angles of 90°, 45° and 45°. What kind is it?")
  (step "Look for a right angle: 90° is a right angle.")
  (step "The other 2 angles, 45° each, are acute.")
  (step (choice (ask "So it is:") (right "a right triangle")
          (wrong "an acute triangle" "An acute triangle has all 3 angles acute. This one has a 90° angle.")))
  (answer "A right triangle."))
```

---

## Practice

```check
(choice
  (ask "Cut a square corner to corner. What kind of triangles do you get?")
  (right "right triangles")
  (wrong "obtuse triangles" "Each piece keeps one square corner of the square: a right angle.")
  (wrong "acute triangles" "Each piece has a square corner, so not all its angles are acute.")
  (hint "Each piece keeps one corner of the square."))
```

```check
(choice
  (ask "Can a triangle have 2 obtuse angles?")
  (right "No: it can have at most 1.")
  (wrong "Yes: like a wide roof." "2 angles wider than square corners would open the sides away from each other, so they could not meet. A triangle has at most 1 obtuse angle.")
  (hint "Try to draw one."))
```

Name a triangle by its angles: 1 right angle makes it right, 1 obtuse angle makes it obtuse, and 3 acute angles make it acute.
