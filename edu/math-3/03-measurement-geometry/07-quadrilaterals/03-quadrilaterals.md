# Quadrilaterals

```lesson
(objective "Tell whether a polygon is a quadrilateral.")
(standards "3.G.A.1")
(minutes 20)
(keywords "quadrilateral")
```

You can tell whether a shape is a quadrilateral.

A **quadrilateral** is a polygon with 4 sides. So it also has 4 corners. All of these shapes are quadrilaterals.

```figure
(ms-shape '(30 40 130 40 130 100 30 100) #f)
(ms-shape '(190 30 290 60 250 110 170 90) #f)
(ms-shape '(40 210 90 140 140 210 90 180) #f)
(ms-shape '(190 150 270 150 290 210 170 210) #f)
(caption "4 quadrilaterals: each has 4 straight sides")
```

```check
(number
  (ask "How many sides does every quadrilateral have?")
  (answer 4)
  (wrong-if 3 "3 sides make a triangle. A quadrilateral has 4 sides.")
  (wrong-if 5 "Count the sides of each shape in the figure. Every one has 4.")
  (hint "Count the sides of any shape in the figure."))
```

---

## Not quadrilaterals

A shape is not a quadrilateral if it:

- has more or fewer than 4 sides;
- has a curved side;
- is not closed.

```figure
(ms-shape '(30 110 80 30 130 110) #f)
(path '(180 85 180 40 270 40 270 85) 'ink 2)
(arc 225 85 45 180 360 'ink 2)
(path '(40 150 140 150 140 210 40 210 60 170) 'ink 2)
(ms-shape '(190 170 235 155 280 170 270 215 200 215) #f)
(label 80 128 "A" 'body 'bold)
(label 225 30 "B" 'body 'bold)
(label 90 230 "C" 'body 'bold)
(label 300 200 "D" 'body 'bold)
```

```check
(choice
  (ask "Shape B has 3 straight sides and 1 curved side. Is it a quadrilateral?")
  (right "No: a curved side")
  (wrong "Yes: 4 sides"
    "A quadrilateral is a polygon, so every side must be straight. B has a curved side.")
  (hint "Are all of B's sides straight?"))
```

---

## Open or closed?

In the last figure, shape C has 4 straight sides, but the last one does not reach the start. So C is not closed. Shape D is closed, but it has 5 sides.

```check
(choice
  (ask "Which of these is a quadrilateral?")
  (right "A closed shape with 4 straight sides")
  (wrong "A shape with 4 straight sides that do not close up"
    "A quadrilateral is a polygon, and a polygon is closed. The sides must join all the way around.")
  (wrong "A closed shape with 5 straight sides"
    "5 sides is too many. A quadrilateral has exactly 4.")
  (wrong "A triangle"
    "A triangle has 3 sides. A quadrilateral has 4.")
  (hint "Check 3 things: 4 sides, all straight, closed."))
```

---

## A worked example

```figure
(ms-shape '(70 60 250 90 220 190 100 160) #f)
```

```example
(example
  (problem "Is this shape a quadrilateral?")
  (step "Its sides are all straight, and they close up.")
  (step "Count the sides: 1, 2, 3, 4.")
  (answer "Yes. It is a polygon with 4 sides, so it is a quadrilateral."))
```

---

## Now you finish one

A shape has 4 straight sides that close up. Its sides are all different lengths, and none of its corners are square.

```check
(choice
  (ask "Is it a quadrilateral?")
  (right "Yes")
  (wrong "No, because its sides are not equal"
    "A quadrilateral only needs 4 straight sides that close up. Its sides can be any lengths.")
  (wrong "No, because it has no right angles"
    "A quadrilateral does not need right angles. It only needs 4 straight sides that close up.")
  (hint "What does a quadrilateral need?"))
```

---

## Practice

```check
(choice
  (ask "Is a square a quadrilateral?")
  (right "Yes: it has 4 straight sides and is closed")
  (wrong "No: a square is a square"
    "A shape can have more than 1 name. A square has 4 straight sides and is closed, so it is a quadrilateral too.")
  (hint "Count a square's sides."))
```

```check
(number
  (ask "A quadrilateral has how many corners?")
  (answer 4)
  (wrong-if 8 "Each corner joins 2 sides. 4 sides make 4 corners.")
  (hint "A polygon has as many corners as sides."))
```

---

```check
(choice
  (ask "Which shape is NOT a quadrilateral?")
  (right "A triangle")
  (wrong "A rectangle"
    "A rectangle has 4 straight sides and is closed. It is a quadrilateral.")
  (wrong "A square"
    "A square has 4 straight sides and is closed. It is a quadrilateral.")
  (hint "Count the sides of each."))
```

Now you can tell a quadrilateral: a polygon with 4 straight sides.
