# Perimeter of a polygon

```lesson
(objective "Find the perimeter of a polygon by adding its side lengths.")
(standards "3.MD.D.8")
(minutes 20)
(keywords "polygon")
```

You can find the perimeter of any shape with straight sides.

A **polygon** is a flat, closed shape made of straight sides. Triangles and rectangles are polygons. A circle is not: its edge is curved.

```figure
(ms-shape '(30 110 70 40 110 110) #f)
(ms-shape '(140 50 200 50 220 90 170 120 130 90) #f)
(ring 270 80 35 'ink 2)
(path '(40 210 80 150 120 210 160 150) 'ink 2)
(label 70 130 "A" 'body 'bold)
(label 175 140 "B" 'body 'bold)
(label 270 140 "C" 'body 'bold)
(label 180 190 "D" 'body 'bold)
```

```check
(choice
  (ask "Shape D has only straight sides. Why is it not a polygon?")
  (right "It is not closed")
  (wrong "It has too many sides"
    "A polygon can have many sides. D is not a polygon because its ends do not join up.")
  (wrong "Its sides are tilted"
    "A polygon's sides can tilt any way. D is not a polygon because it is open.")
  (hint "Follow D's sides. Do they come back to the start?"))
```

---

## Add every side

To find the perimeter of a polygon, add the lengths of all its sides.

This triangle has sides of 4 cm, 5 cm and 3 cm.

```figure
(ms-poly '(80 170 80 50 170 170) '("4 cm" "5 cm" "3 cm") #f)
```

```check
(number
  (ask "What is the perimeter of the triangle, in cm?")
  (answer 12) (unit "cm") (from "4 + 5 + 3")
  (wrong-if 60 "4 x 5 x 3 multiplies. Perimeter adds the sides: 4 + 5 + 3.")
  (wrong-if 9 "That leaves out a side. Add all 3 sides: 4 + 5 + 3.")
  (hint "Add the 3 sides."))
```

---

## More sides

A polygon can have many sides. Go around it and add each side once.

This shape looks like a house. It has 5 sides.

```figure
(ms-poly '(60 200 60 140 140 80 220 140 220 200) '("3 m" "5 m" "5 m" "3 m" "8 m") #f)
```

```check
(number
  (ask "What is the perimeter of the house shape, in meters?")
  (answer 24) (unit "m") (from "3 + 5 + 5 + 3 + 8")
  (wrong-if 16 "That adds only the numbers you see once each: 3 + 5 + 8. But there are 2 sides of 3 and 2 sides of 5.")
  (wrong-if 21 "One side is missing. Count the sides: there are 5 of them.")
  (hint "There are 5 sides. Add all 5.")
  (hint "3 + 5 + 5 + 3 + 8"))
```

---

## A worked example

```figure
(ms-poly '(60 40 120 40 120 100 220 100 220 160 60 160) '("3" "3" "5" "3" "8" "6") #f)
(caption "The L shape, sides in units")
```

```example
(example
  (problem "Find the perimeter of the L shape.")
  (step "Start at the top left. Go around: 3, 3, 5, 3, 8, 6.")
  (step "Add them: 3 + 3 + 5 + 3 + 8 + 6.")
  (step (number (ask "What is the sum?") (answer 28) (from "3 + 3 + 5 + 3 + 8 + 6")
          (wrong-if 33 "33 is the area of the L. The perimeter adds the 6 sides.")))
  (answer "The perimeter is 28 units."))
```

---

## Now you finish one

```figure
(ms-poly '(70 160 130 50 230 50 170 160) '("5 in" "4 in" "5 in" "4 in") #f)
```

A shape has 4 sides: 5 in, 4 in, 5 in and 4 in.

```check
(number
  (ask "What is its perimeter, in inches?")
  (answer 18) (unit "in") (from "5 + 4 + 5 + 4")
  (wrong-if 9 "5 + 4 is only 2 sides. Add all 4 sides.")
  (wrong-if 20 "5 x 4 multiplies. Perimeter adds all 4 sides: 5 + 4 + 5 + 4.")
  (hint "Add all 4 sides."))
```

---

## Practice

```check
(number
  (ask "A polygon has 6 sides. Each side is 3 feet. What is its perimeter, in feet?")
  (answer 18) (unit "ft") (from "6 * 3")
  (wrong-if 9 "6 + 3 adds the count and the length. There are 6 sides of 3 feet: 3 + 3 + 3 + 3 + 3 + 3.")
  (wrong-if 3 "3 feet is 1 side. There are 6 sides.")
  (hint "Add 3 six times, or multiply 6 x 3."))
```

```check
(number
  (ask "A triangle has sides of 7 m, 6 m and 9 m. What is its perimeter, in meters?")
  (answer 22) (unit "m") (from "7 + 6 + 9")
  (wrong-if 13 "That leaves out a side. Add all 3 sides: 7 + 6 + 9.")
  (hint "7 + 6 + 9 = ?"))
```

---

```check
(choice
  (ask "Which is NOT a polygon?")
  (right "A circle")
  (wrong "A triangle"
    "A triangle has 3 straight sides that close up. It is a polygon.")
  (wrong "A square"
    "A square has 4 straight sides that close up. It is a polygon.")
  (hint "A polygon has only straight sides."))
```

Now you can find the perimeter of a polygon: add the lengths of all its sides.
