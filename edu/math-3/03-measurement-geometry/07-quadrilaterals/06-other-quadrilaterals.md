# Other quadrilaterals

```lesson
(objective "Draw quadrilaterals that are not rhombuses, rectangles or squares.")
(standards "3.G.A.1")
(minutes 25)
```

You can draw quadrilaterals that are not rhombuses, rectangles or squares.

Many quadrilaterals have no special name in this course. They have 4 sides, but not 4 right angles and not 4 equal sides.

```figure
(ms-shape '(30 60 130 40 120 130 50 120) #f)
(ms-shape '(190 50 260 50 300 130 160 130) #f)
(ms-shape '(90 160 150 175 90 225 50 180) #f)
(caption "3 quadrilaterals that are none of the 3 kinds")
```

```check
(choice
  (ask "A quadrilateral has sides of 3, 5, 4 and 6 cm and no right angles. Which is it?")
  (right "None of these")
  (wrong "A rhombus"
    "A rhombus has 4 sides of the same length. These sides are all different.")
  (wrong "A rectangle"
    "A rectangle has 4 right angles. This shape has none.")
  (wrong "A square"
    "A square needs 4 equal sides and 4 right angles. This shape has neither.")
  (hint "Check the sides, then the corners."))
```

---

## Make one

Drag the 4 corners to make a quadrilateral. Keep the sides from crossing. The figure names the shape, or says it is none of the 3 kinds.

```figure
(grid 20 20 14 10 20 'grey)
(define (snap v) (* 20 (round (/ v 20))))
(define p (drag 'p 80 40))
(define q (drag 'q 200 40))
(define r (drag 'r 200 160))
(define s (drag 's 80 160))
(define ax (snap (car p))) (define ay (snap (cadr p)))
(define bx (snap (car q))) (define by (snap (cadr q)))
(define cx (snap (car r))) (define cy (snap (cadr r)))
(define dx (snap (car s))) (define dy (snap (cadr s)))
(define (d2 x0 y0 x1 y1) (+ (* (- x1 x0) (- x1 x0)) (* (- y1 y0) (- y1 y0))))
(define (sq x0 y0 x1 y1 x2 y2) (= 0 (+ (* (- x0 x1) (- x2 x1)) (* (- y0 y1) (- y2 y1)))))
(define s1 (d2 ax ay bx by))
(define eq (and (> s1 0) (= s1 (d2 bx by cx cy)) (= s1 (d2 cx cy dx dy)) (= s1 (d2 dx dy ax ay))))
(define rt (and (> s1 0) (> (d2 bx by cx cy) 0) (> (d2 cx cy dx dy) 0) (> (d2 dx dy ax ay) 0)
                (sq dx dy ax ay bx by) (sq ax ay bx by cx cy) (sq bx by cx cy dx dy) (sq cx cy dx dy ax ay)))
(ms-shape (list ax ay bx by cx cy dx dy) #f)
(caption (cond ((and eq rt) "A square") (rt "A rectangle") (eq "A rhombus")
               (else "None of the 3 kinds")))
```

```check
(choice
  (ask "Start with the square. Drag 1 corner 1 step to the right. What happens?")
  (right "None of the 3")
  (wrong "It is still a square"
    "Moving 1 corner changes 2 sides and the corners. The sides are no longer all equal, and the corners are not all square.")
  (wrong "It becomes a rhombus"
    "A rhombus needs 4 equal sides. Moving 1 corner makes 2 sides longer or shorter.")
  (hint "Try it. Read the words under the figure."))
```

---

## How to draw one

To draw a quadrilateral that is none of the 3 kinds:

1. Draw 4 straight sides that close up.
2. Make the sides not all the same length, so it is not a rhombus.
3. Make at least 1 corner that is not square, so it is not a rectangle.

```check
(choice
  (ask "Kim draws 4 sides that close up. All 4 sides are 5 cm. Is it none of the 3 kinds?")
  (right "No: it is a rhombus")
  (wrong "Yes: it has no special name"
    "4 sides of the same length make a rhombus. To be none of the 3 kinds, the sides must not all match.")
  (hint "What do 4 equal sides make?"))
```

---

## A worked example

```example
(example
  (problem "Describe a quadrilateral that is not a rhombus, rectangle or square.")
  (step "It must have 4 straight sides that close up.")
  (step "Give it sides of 2, 3, 4 and 5 inches. They are not all equal, so it is not a rhombus or a square.")
  (step "Make 1 corner wider than a square corner. Then it is not a rectangle.")
  (answer "A quadrilateral with sides 2, 3, 4 and 5 inches and a corner that is not square."))
```

---

## Now you finish one

Jo draws a quadrilateral with 2 right angles. Its sides are 4, 3, 6 and 5 cm.

```check
(choice
  (ask "Is it a rhombus, a rectangle, a square or none of these?")
  (right "None of these")
  (wrong "A rectangle"
    "A rectangle needs 4 right angles. Jo's shape has only 2.")
  (wrong "A square"
    "A square needs 4 equal sides and 4 right angles. Jo's sides are different.")
  (wrong "A rhombus"
    "A rhombus needs 4 equal sides. Jo's sides are 4, 3, 6 and 5 cm.")
  (hint "Check for 4 right angles, then for 4 equal sides."))
```

---

## Practice

```check
(choice
  (ask "Which quadrilateral is none of the 3 kinds?")
  (right "Sides 2, 2, 5 and 5 cm, with no right angles")
  (wrong "Sides 4, 4, 4 and 4 cm, with no right angles"
    "4 equal sides make a rhombus.")
  (wrong "Sides 6, 3, 6 and 3 cm, with 4 right angles"
    "4 right angles make a rectangle.")
  (hint "Check each one for 4 equal sides or 4 right angles."))
```

```check
(choice
  (ask "Is a shape with 4 sides of different lengths a quadrilateral?")
  (right "Yes, if its sides are straight and close up")
  (wrong "No, a quadrilateral needs equal sides"
    "A quadrilateral only needs 4 straight sides that close up. The sides can be any lengths.")
  (hint "What does a quadrilateral need?"))
```

Now you can draw quadrilaterals that are not rhombuses, rectangles or squares.
