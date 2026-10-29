# Shapes in more than one group

```lesson
(objective "Explain why a square is also a rectangle and a rhombus, and why all three are quadrilaterals.")
(standards "3.G.A.1")
(minutes 25)
(keywords "category (of shapes)")
```

You can explain why one shape can have more than one name.

A **category** of shapes is a group of shapes that share an attribute. All quadrilaterals with 4 right angles make the category of rectangles.

```check
(choice
  (ask "What do all the shapes in the category of rhombuses share?")
  (right "4 sides of the same length")
  (wrong "4 right angles"
    "That is what rectangles share. Rhombuses share 4 sides of the same length.")
  (wrong "The same size"
    "Rhombuses can be big or small. They share 4 sides of the same length.")
  (hint "What makes a shape a rhombus?"))
```

---

## A square is a rectangle

A square has 4 right angles. Every quadrilateral with 4 right angles is a rectangle. So a square is in the category of rectangles too.

```figure
(ms-shape '(40 70 140 70 140 170 40 170) #f)
(ms-corner 40 170 40 70 140 70)
(ms-corner 40 70 140 70 140 170)
(ms-corner 140 70 140 170 40 170)
(ms-corner 140 170 40 170 40 70)
(label 90 195 "a square" 'small)
(ms-shape '(180 90 300 90 300 150 180 150) #f)
(ms-corner 180 150 180 90 300 90)
(label 240 175 "a rectangle" 'small)
(caption "Both have 4 right angles.")
```

```check
(choice
  (ask "Is a square a rectangle?")
  (right "Yes: 4 right angles")
  (wrong "No: sides all equal"
    "A rectangle needs 4 right angles. Its sides may be all equal or not. A square has 4 right angles, so it is a rectangle.")
  (hint "What does a shape need to be a rectangle?"))
```

---

## A square is a rhombus

A square also has 4 sides of the same length. Every quadrilateral like that is a rhombus. So a square is in the category of rhombuses too.

```check
(choice
  (ask "Is a square a rhombus?")
  (right "Yes, because its 4 sides are the same length")
  (wrong "No, because a rhombus is tilted"
    "Turning a shape does not change it. A rhombus needs 4 equal sides, and a square has them.")
  (wrong "No, because a rhombus has no right angles"
    "A rhombus does not have to have right angles, but it may. A square is a rhombus with 4 right angles.")
  (hint "What does a shape need to be a rhombus?"))
```

---

## All of them are quadrilaterals

Rectangles, rhombuses and squares all have 4 straight sides. So they are all quadrilaterals. The squares are where the rectangles and the rhombuses meet.

```figure
(frame 6 6 308 222 'ink 1.5)
(text 14 22 "Quadrilaterals" 'small 'bold)
(frame 22 34 180 140 'ink 2)
(frame 118 34 180 140 'ink 2)
(text 30 50 "Rectangles" 'small)
(text 290 50 "Rhombuses" 'small 'right)
(text 160 66 "Squares" 'small 'centre 'bold)
(ms-shape '(34 100 104 100 104 140 34 140) #f)
(ms-shape '(138 90 182 90 182 134 138 134) #f)
(ms-shape '(250 70 272 110 250 150 228 110) #f)
(ms-shape '(120 190 200 190 220 220 100 220) #f)
```

```check
(choice
  (ask "Is every rhombus a square?")
  (right "No: some rhombuses have no right angles")
  (wrong "Yes: 4 equal sides"
    "Every square is a rhombus, but not the other way round. A rhombus without right angles is not a square.")
  (hint "Look at the rhombus outside the squares part."))
```

---

## A worked example

```example
(example
  (problem "Give every name that fits a square.")
  (step "It has 4 straight sides: a quadrilateral.")
  (step "It has 4 right angles: a rectangle.")
  (step "It has 4 sides of the same length: a rhombus.")
  (answer "A square is a quadrilateral, a rectangle and a rhombus."))
```

---

## Now you finish one

A shape has 4 right angles. Its sides are 7 cm, 2 cm, 7 cm and 2 cm.

```check
(choice
  (ask "Which names fit this shape? Choose all that fit.")
  (several)
  (right "Quadrilateral")
  (right "Rectangle")
  (wrong "Rhombus"
    "A rhombus needs 4 sides of the same length. This shape has sides of 7 and 2.")
  (wrong "Square"
    "A square needs 4 sides of the same length. This shape has sides of 7 and 2.")
  (hint "Check 4 sides, then 4 right angles, then 4 equal sides."))
```

---

## Practice

```check
(choice
  (ask "Which is true?")
  (right "Every square is a rectangle")
  (wrong "Every rectangle is a square"
    "A rectangle 7 by 2 has 4 right angles, but its sides are not all equal. So it is not a square.")
  (wrong "No square is a rectangle"
    "A square has 4 right angles, so it is a rectangle.")
  (hint "Think of a long, thin rectangle."))
```

```check
(choice
  (ask "Which category holds rectangles, rhombuses and squares all together?")
  (right "Quadrilaterals")
  (wrong "Squares"
    "Not every rectangle or rhombus is a square. But all of them have 4 sides: quadrilaterals.")
  (wrong "Triangles"
    "Triangles have 3 sides. These shapes have 4 sides.")
  (hint "What do all 3 kinds share?"))
```

Now you can explain why a square is also a rectangle and a rhombus, and why all 3 are quadrilaterals.
