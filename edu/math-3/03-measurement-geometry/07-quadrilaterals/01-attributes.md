# Attributes of shapes

```lesson
(objective "Describe a shape by its attributes: the number of sides and corners and the lengths of its sides.")
(standards "3.G.A.1")
(minutes 20)
(keywords "attribute")
```

You can describe a shape by what makes it that shape.

An **attribute** of a shape is something true about the shape itself. The number of sides is an attribute. The number of corners is an attribute too.

```figure
(ms-shape '(40 150 90 60 140 150) #f)
(ms-shape '(180 60 280 60 280 150 180 150) #f)
(label 90 180 "3 sides, 3 corners" 'small)
(label 230 180 "4 sides, 4 corners" 'small)
```

```check
(number
  (ask "A shape has 6 straight sides that close up. How many corners does it have?")
  (answer 6)
  (wrong-if 5 "Each side ends at a corner, where the next side starts. A closed shape with 6 sides has 6 corners.")
  (wrong-if 12 "Each corner is shared by 2 sides. So 6 sides make 6 corners, not 12.")
  (hint "Count the corners of the triangle and the rectangle. Compare with their sides."))
```

---

## Side lengths

The lengths of the sides are attributes too. Small marks show sides that are the same length. Sides with the same marks match.

```figure
(ms-shape '(60 170 160 50 260 170) #f)
(ms-tick 60 170 160 50 1)
(ms-tick 160 50 260 170 1)
(ms-tick 260 170 60 170 2)
(caption "2 sides with 1 mark are the same length.")
```

```check
(number
  (ask "In this triangle, how many sides are the same length?")
  (answer 2)
  (wrong-if 3 "The bottom side has 2 marks, not 1. Only the 2 sides with 1 mark match.")
  (wrong-if 0 "The 2 slanted sides each have 1 mark. Same marks mean the same length.")
  (hint "Look for sides with the same number of marks."))
```

---

## What is not an attribute

Color, size and which way a shape is turned do not change what shape it is. A big red square and a small blue square are both squares.

```figure
(ms-shape '(40 60 120 60 120 140 40 140) 'warm)
(ms-shape '(230 70 270 110 230 150 190 110) #f)
(caption "2 squares: one big and shaded, one small and turned")
```

```check
(choice
  (ask "Which of these is an attribute that helps name a shape?")
  (right "It has 5 sides")
  (wrong "It is green"
    "Color does not change the shape. A green triangle and a red triangle are both triangles.")
  (wrong "It is turned"
    "Turning a shape does not change it. It has the same sides and corners.")
  (hint "Which one changes what the shape is?"))
```

---

## A worked example

```figure
(ms-shape '(60 160 60 60 200 60 260 160) #f)
(ms-tick 60 160 60 60 1)
(ms-tick 60 60 200 60 2)
```

```example
(example
  (problem "Describe this shape by its attributes.")
  (step "Count the sides: 4. Count the corners: 4.")
  (step "Look at the marks. The left side and the top have different marks.")
  (step "So these 2 sides are not the same length.")
  (answer "It has 4 sides and 4 corners, and its sides are not all the same length."))
```

---

## Now you finish one

```figure
(ms-shape '(160 40 240.8 98.7 210 193.8 110 193.8 79.2 98.7) #f)
(ms-tick 160 40 240.8 98.7 1)
(ms-tick 240.8 98.7 210 193.8 1)
(ms-tick 210 193.8 110 193.8 1)
(ms-tick 110 193.8 79.2 98.7 1)
(ms-tick 79.2 98.7 160 40 1)
```

Every side of this shape has 1 mark.

```check
(choice
  (ask "What do the marks tell you?")
  (right "All 5 sides match")
  (wrong "It has 1 side"
    "The marks show which sides match, not how many sides. Count the sides: there are 5.")
  (wrong "Each side is 1 unit"
    "A mark does not mean 1 unit. It means the sides with that mark have the same length.")
  (hint "Same marks mean the same length."))
```

---

## Practice

```check
(number
  (ask "A shape has 8 sides. How many corners does it have?")
  (answer 8)
  (wrong-if 16 "Each corner joins 2 sides, and each side has 2 ends. 8 sides make 8 corners.")
  (hint "A closed shape has as many corners as sides."))
```

```check
(choice
  (ask "Ava says a big triangle and a small triangle are different shapes. Is she right?")
  (right "No: size is not an attribute that changes the shape")
  (wrong "Yes: they are different sizes"
    "Both have 3 sides and 3 corners, so both are triangles. Size does not change the shape.")
  (hint "Count the sides of each."))
```

---

```check
(choice
  (ask "Which list gives attributes of a rectangle?")
  (right "4 sides, 4 corners, sides across from each other match")
  (wrong "4 sides, red, very big"
    "Color and size are not attributes that name a shape. Sides and corners are.")
  (wrong "3 sides, 3 corners"
    "Those are attributes of a triangle. A rectangle has 4 sides and 4 corners.")
  (hint "Think about sides, corners and side lengths."))
```

Now you can describe a shape by its attributes: its sides, its corners and the lengths of its sides.
