# Subcategories

```lesson
(objective "Explain that every property of a category belongs to each of its subcategories: rectangles have 4 right angles, squares are rectangles, so squares have 4 right angles.")
(standards "5.G.B.3")
(minutes 20)
(keywords "subcategory")
```

A shape has what its bigger groups have.

A **subcategory** is a category inside a bigger one. All its shapes are in the bigger one too.

Squares are a subcategory of rectangles. A square has 4 right angles. So it is a rectangle.

```figure
(frame 20 30 280 170 'ink 2)
(text 30 50 "rectangles" 'body)
(frame 150 70 135 115 'ink 2)
(text 160 90 "squares" 'body)
(m5p4-shape '(40 170 130 170 130 120 40 120) #f)
(m5p4-shape '(190 165 245 165 245 110 190 110) 'grey)
(caption "Every square is inside the rectangles")
```

```check
(choice
  (ask "Squares are a subcategory of rectangles. Which is true?")
  (right "Every square is a rectangle.")
  (wrong "Every rectangle is a square." "A rectangle 2 by 5 is not a square. The subcategory is inside, not the other way.")
  (wrong "No square is a rectangle." "A square has 4 right angles, so it is a rectangle.")
  (hint "The squares are inside the rectangles."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.B.3: all rectangles have four right angles and squares are rectangles, so all squares have four right angles")
```

---

## Properties pass down

What all shapes of a category have, the shapes of each subcategory have too.

Rectangles have 4 right angles. Squares are rectangles. So squares have 4 right angles.

```check
(choice
  (ask "Parallelograms have 2 pairs of parallel sides. Rhombuses are parallelograms. What follows?")
  (right "Every rhombus has 2 pairs of parallel sides.")
  (wrong "Every rhombus has 4 right angles." "Right angles are not a property of all parallelograms, so they do not pass down.")
  (wrong "Every parallelogram has 4 sides the same length." "Properties pass down to a subcategory, not up. Only rhombuses must have 4 equal sides.")
  (hint "What do all parallelograms have?"))
```

---

## Not up, only down

It does not work the other way. What a square has, a rectangle may not have.

Squares have 4 sides the same. Most rectangles do not.

```check
(choice
  (ask "Squares have 4 sides of the same length. Squares are rectangles. Does every rectangle have 4 sides the same?")
  (right "No: a rectangle 2 by 6 does not.")
  (wrong "Yes: squares are rectangles." "That reasons upward. Squares are only some rectangles; a 2 by 6 rectangle has sides of different lengths.")
  (hint "Think of a long, thin rectangle."))
```

---

## A worked example

```example
(example
  (problem "Quadrilaterals have 4 sides. Parallelograms are quadrilaterals. What can you say about parallelograms?")
  (step "4 sides is a property of the whole category of quadrilaterals.")
  (step "Parallelograms are a subcategory of quadrilaterals.")
  (step (choice (ask "So every parallelogram has") (right "4 sides")
          (wrong "4 right angles" "Right angles are not a property of all quadrilaterals.")))
  (answer "Every parallelogram has 4 sides."))
```

---

## Practice

```check
(choice
  (ask "Squares are rhombuses. Rhombuses have 4 sides of the same length. What follows?")
  (right "Squares have 4 sides of the same length.")
  (wrong "Rhombuses have 4 right angles." "That reasons up from squares. Many rhombuses have no right angles.")
  (wrong "Nothing follows." "A property of rhombuses passes down to squares, which are rhombuses.")
  (hint "Properties pass down."))
```

```check
(choice
  (ask "Which is a subcategory of parallelograms?")
  (right "rectangles")
  (wrong "quadrilaterals" "Quadrilaterals are the bigger category. Parallelograms are inside them, not the other way.")
  (wrong "triangles" "A triangle has 3 sides. It is not a parallelogram at all.")
  (hint "Which shapes are all parallelograms?"))
```

What a category has, its subcategories have too, but not the other way.
