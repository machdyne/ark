# Always, sometimes or never

```lesson
(objective "Decide whether statements such as \"a rhombus is a square\" are always, sometimes or never true, and give a shape that shows it.")
(standards "5.G.B.3" "5.G.B.4")
(minutes 25)
```

You can test a statement about shapes and show your answer with an example.

A statement is:

- **always** true if it is true for every shape in the category;
- **sometimes** true if it is true for some shapes and not others;
- **never** true if it is true for none.

"A square is a rectangle" is always true: every square has 4 right angles.

```check
(choice
  (ask "\"A rectangle is a parallelogram.\" Always, sometimes or never?")
  (right "always")
  (wrong "sometimes" "Every rectangle has 2 pairs of parallel sides, so every one is a parallelogram.")
  (wrong "never" "A rectangle's opposite sides are parallel. It is always a parallelogram.")
  (hint "Is there any rectangle that is not a parallelogram?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.B.3 and 5.G.B.4: attributes of categories and subcategories; classifying in a hierarchy")
```

---

## Sometimes

"A rhombus is a square" is sometimes true. A rhombus with 4 right angles is a square; a slanted one is not.

```figure
(m5p4-shape '(30 180 120 180 120 90 30 90) #f)
(m5p4-right 30 180 0)
(label 75 205 "a square: yes")
(m5p4-shape '(160 180 250 180 295 102.06 205 102.06) #f)
(label 228 205 "a slanted rhombus: no")
```

To show "sometimes", give one shape for which it is true and one for which it is not.

```check
(choice
  (ask "\"A parallelogram is a rectangle.\" Always, sometimes or never?")
  (right "sometimes")
  (wrong "always" "A slanted parallelogram has no right angles, so it is not a rectangle.")
  (wrong "never" "A parallelogram with 4 right angles is a rectangle.")
  (hint "Think of a slanted one and a square-cornered one."))
```

---

## Never

"A triangle is a quadrilateral" is never true. A triangle has 3 sides, a quadrilateral 4.

```check
(choice
  (ask "\"An equilateral triangle is a right triangle.\" Always, sometimes or never?")
  (right "never")
  (wrong "sometimes" "Every angle of an equilateral triangle is 60°, never 90°. So it is never right.")
  (wrong "always" "An equilateral triangle has no right angle at all.")
  (hint "What size is each angle of an equilateral triangle?"))
```

---

## A worked example

```example
(example
  (problem "\"A square is a rhombus.\" Always, sometimes or never?")
  (step "A rhombus needs 4 sides the same length.")
  (step "Every square has 4 sides the same length.")
  (step (choice (ask "So it is") (right "always true")
          (wrong "sometimes true" "There is no square without 4 equal sides, so it is true every time.")))
  (answer "Always: every square is a rhombus."))
```

---

## Practice

```check
(choice
  (ask "\"A quadrilateral is a parallelogram.\" Always, sometimes or never?")
  (right "sometimes")
  (wrong "always" "A quadrilateral with no parallel sides is not a parallelogram.")
  (wrong "never" "A rectangle is a quadrilateral and a parallelogram.")
  (hint "Find one that is and one that is not."))
```

```check
(choice
  (ask "\"A rhombus has 2 pairs of parallel sides.\" Always, sometimes or never?")
  (right "always")
  (wrong "sometimes" "Every rhombus is a parallelogram, so every one has 2 pairs of parallel sides.")
  (wrong "never" "A rhombus is a parallelogram: its opposite sides are parallel.")
  (hint "Rhombuses are a subcategory of parallelograms."))
```

---

```check
(choice
  (ask "\"An isosceles triangle is a right triangle.\" Always, sometimes or never?")
  (right "sometimes")
  (wrong "always" "A tall, thin isosceles triangle has 3 acute angles. It is not right.")
  (wrong "never" "A right isosceles triangle exists: 2 equal sides meeting at a right angle.")
  (hint "Can you draw one that is right? One that is not?"))
```

Always, sometimes or never: test the category, and give a shape that shows it.
