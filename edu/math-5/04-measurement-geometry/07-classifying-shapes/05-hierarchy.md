# A hierarchy of shapes

```lesson
(objective "Arrange polygons, quadrilaterals, parallelograms, rectangles, rhombuses and squares in a hierarchy, and place a given shape in it; do the same for triangles.")
(standards "5.G.B.4")
(minutes 25)
(keywords "hierarchy")
```

You can draw how categories of shapes fit inside each other.

A **hierarchy** is an order of categories, from the most general at the top to the most special at the bottom. A line joins each category to a subcategory below it.

```figure
(line 160 31 160 54 'ink 1.5) (line 160 76 160 99 'ink 1.5)
(line 160 121 90 144 'ink 1.5) (line 160 121 230 144 'ink 1.5)
(line 90 166 160 189 'ink 1.5) (line 230 166 160 189 'ink 1.5)
(m5p4-node 160 20 110 "polygons")
(m5p4-node 160 65 120 "quadrilaterals")
(m5p4-node 160 110 120 "parallelograms")
(m5p4-node 90 155 100 "rectangles")
(m5p4-node 230 155 100 "rhombuses")
(m5p4-node 160 200 90 "squares")
```

```check
(choice
  (ask "In this hierarchy, what is just above parallelograms?")
  (right "quadrilaterals")
  (wrong "rectangles" "Rectangles are below parallelograms: they are a subcategory of them.")
  (wrong "squares" "Squares are at the bottom, the most special.")
  (hint "Above is more general."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.B.4: classify two-dimensional figures in a hierarchy based on properties")
```

---

## Squares have two lines up

Squares join both rectangles and rhombuses. A square has 4 right angles, so it is a rectangle. It has 4 sides the same, so it is a rhombus.

```check
(choice
  (ask "Which categories is every square in? Choose all.")
  (several)
  (right "rectangles")
  (right "rhombuses")
  (right "parallelograms")
  (right "quadrilaterals")
  (wrong "triangles" "A square has 4 sides, not 3. It is not a triangle.")
  (hint "Follow every line up from squares."))
```

---

## Place a shape

To place a shape, start at the top and go down while it fits.

A shape has 4 sides, 2 pairs of parallel sides and 4 right angles, with sides of 2 and 5 cm. It is a quadrilateral, a parallelogram and a rectangle, but not a square.

```check
(choice
  (ask "A shape has 4 sides of 3 cm, 2 pairs of parallel sides and no right angles. Where is its lowest place?")
  (right "rhombuses")
  (wrong "squares" "A square needs 4 right angles. This shape has none.")
  (wrong "rectangles" "A rectangle needs 4 right angles.")
  (wrong "parallelograms" "It is a parallelogram, but it goes lower: 4 sides the same make it a rhombus.")
  (hint "4 sides the same: which box is that?"))
```

---

## Triangles

This course uses "at least 2 sides the same" for isosceles. Then every equilateral triangle is isosceles too.

```figure
(line 160 41 100 89 'ink 1.5) (line 160 41 230 89 'ink 1.5) (line 100 111 100 159 'ink 1.5)
(m5p4-node 160 30 100 "triangles")
(m5p4-node 100 100 100 "isosceles")
(m5p4-node 230 100 90 "scalene")
(m5p4-node 100 170 110 "equilateral")
```

```check
(choice
  (ask "With this definition, where are equilateral triangles?")
  (right "below isosceles: every equilateral triangle is isosceles")
  (wrong "below scalene" "Scalene triangles have no 2 sides the same. Equilateral ones have 3 the same.")
  (wrong "beside isosceles, not below it" "3 sides the same means at least 2 the same. So equilateral is a subcategory of isosceles.")
  (hint "3 the same is at least 2 the same."))
```

---

## A worked example

```example
(example
  (problem "Place a triangle with sides 5, 5 and 5 cm in the triangle hierarchy.")
  (step "It is a triangle: start at the top.")
  (step "It has at least 2 sides the same: isosceles.")
  (step (choice (ask "Can it go lower?") (right "Yes: all 3 sides are the same, so it is equilateral.")
          (wrong "No: isosceles is its place." "All 3 sides are 5 cm, so it fits the box below: equilateral.")))
  (answer "Its lowest place is equilateral, under isosceles and triangles."))
```

---

## Practice

```check
(choice
  (ask "A quadrilateral has 2 pairs of parallel sides, sides of 4 and 6 cm, and no right angles. Where is its lowest place?")
  (right "parallelograms")
  (wrong "rectangles" "A rectangle needs 4 right angles.")
  (wrong "rhombuses" "A rhombus needs 4 sides the same. 4 and 6 cm differ.")
  (wrong "quadrilaterals" "It has 2 pairs of parallel sides, so it goes down one more: parallelograms.")
  (hint "Go down while it fits."))
```

```check
(choice
  (ask "Which is the most general category in the quadrilateral hierarchy?")
  (right "polygons")
  (wrong "squares" "Squares are the most special, at the bottom.")
  (wrong "parallelograms" "Quadrilaterals and polygons are above parallelograms.")
  (hint "The top of the hierarchy."))
```

A hierarchy puts the most general category at the top; a shape belongs to every category above its lowest place.
