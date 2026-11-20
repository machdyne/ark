# Triangles by their sides

```lesson
(objective "Classify triangles by their sides as equilateral, isosceles or scalene.")
(standards "5.G.B.4")
(minutes 20)
(keywords "equilateral triangle" "isosceles triangle" "scalene triangle")
```

You can sort triangles by how many of their sides are the same length.

An **equilateral triangle** has 3 sides of the same length. The tick marks show sides of the same length.

```figure
(m5p4-shape '(100 190 220 190 160 86.08) #f)
(m5p4-tick 100 190 220 190 1)
(m5p4-tick 220 190 160 86.08 1)
(m5p4-tick 160 86.08 100 190 1)
(caption "An equilateral triangle: 3 sides the same length")
```

```check
(choice
  (ask "A triangle has sides of 4 cm, 4 cm and 4 cm. What kind is it?")
  (right "equilateral")
  (wrong "It cannot be a triangle" "3 sides of the same length do make a triangle: an equilateral triangle.")
  (wrong "a right triangle" "A right triangle has a right angle. With 3 equal sides, no angle can be right.")
  (hint "How many sides are the same length?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.B.4: classify two-dimensional figures in a hierarchy based on properties")
```

---

## Isosceles

An **isosceles triangle** has at least 2 sides of the same length.

```figure
(m5p4-shape '(100 190 220 190 160 60) #f)
(m5p4-tick 220 190 160 60 2)
(m5p4-tick 160 60 100 190 2)
(caption "An isosceles triangle: 2 sides the same length")
```

This course says "at least 2", as many books do. Some books say "exactly 2".

```check
(choice
  (ask "A triangle has sides of 7 in, 7 in and 3 in. What kind is it?")
  (right "isosceles")
  (wrong "equilateral" "Only 2 sides are the same length. An equilateral triangle needs all 3 the same.")
  (wrong "scalene" "Two sides are both 7 in, so the sides are not all different.")
  (hint "Are any 2 sides the same length?"))
```

---

## Scalene

A **scalene triangle** has no 2 sides of the same length. All 3 are different.

```figure
(m5p4-shape '(70 190 250 190 120 80) #f)
(text 160 210 "180" 'centre 'small)
(text 84 130 "121" 'right 'small)
(text 194 130 "170" 'small)
(caption "A scalene triangle: lengths in units")
```

```check
(choice
  (ask "A triangle has sides of 3 cm, 4 cm and 5 cm. What kind is it?")
  (right "scalene" (true "3 != 4"))
  (wrong "isosceles" "No 2 sides are the same: 3, 4 and 5 are all different.")
  (wrong "equilateral" "The sides are 3, 4 and 5 cm, not all the same.")
  (hint "Are any 2 sides the same length?"))
```

---

## A worked example

```example
(example
  (problem "A triangle has sides of 6 ft, 9 ft and 6 ft. Classify it by its sides.")
  (step "Compare the sides: 6 and 6 are the same; 9 is different.")
  (step "So 2 sides are the same length, not 3.")
  (step (choice (ask "What kind of triangle is it?") (right "isosceles")
          (wrong "scalene" "Two sides are both 6 ft. Scalene means no 2 sides the same.")))
  (answer "An isosceles triangle."))
```

---

## Practice

```check
(choice
  (ask "A triangle has sides of 10 m, 8 m and 6 m. What kind is it?")
  (right "scalene")
  (wrong "isosceles" "10, 8 and 6 are all different. Isosceles needs at least 2 the same.")
  (wrong "equilateral" "The sides are not all the same length.")
  (hint "Are any two the same?"))
```

```check
(number
  (ask "An equilateral triangle has one side 9 cm long. What is its perimeter, in cm?")
  (answer 27) (unit "cm") (from "3 * 9")
  (wrong-if 18 "That counts 2 sides. An equilateral triangle has 3 sides of 9 cm.")
  (hint "All 3 sides are 9 cm."))
```

Equilateral: 3 sides the same; isosceles: at least 2 the same; scalene: none the same.
