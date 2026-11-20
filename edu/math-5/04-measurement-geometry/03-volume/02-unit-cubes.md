# Unit cubes

```lesson
(objective "Explain that a unit cube has edges 1 unit long and a volume of 1 cubic unit, and use unit cubes to measure volume.")
(standards "5.MD.C.3a")
(minutes 20)
(keywords "unit cube" "cubic unit")
```

You can measure volume with a cube that is 1 unit on every side.

A **unit cube** is a cube whose sides are all 1 unit long. It is like a unit square that also goes back 1 unit.

```figure
(m5p4-box 100 190 1 1 1 90)
(label 145 210 "1 unit")
(text 236 118 "1 unit" 'small)
(text 112 82 "1 unit" 'small 'right)
(caption "A unit cube: a drawing of a solid")
```

```check
(choice
  (ask "Which is a unit cube?")
  (right "a cube 1 inch long, 1 inch wide and 1 inch tall")
  (wrong "a box 1 inch long, 1 inch wide and 2 inches tall" "A unit cube is a cube: every side is 1 unit. This box is 2 inches tall.")
  (wrong "a cube 2 centimeters on every side" "Every side must be 1 unit. A cube 2 cm on every side is 8 cubes of 1 cm.")
  (wrong "a square 1 inch on each side" "A square is flat. A unit cube also goes back 1 unit.")
  (hint "1 unit long, 1 unit wide, 1 unit tall."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.3a: a unit cube has one cubic unit of volume")
```

---

## A cubic unit

A unit cube has a volume of 1 **cubic unit**. A cubic unit is a unit of volume.

A solid packed with 5 unit cubes has a volume of 5 cubic units.

```figure
(m5p4-cubes 70 180 40 '((0 0 0) (1 0 0) (2 0 0) (3 0 0) (0 0 1)))
(caption "5 unit cubes, 1 row deep")
```

```check
(number
  (ask "What is the volume of this solid?")
  (answer 5) (unit "cubic units") (from "4 + 1")
  (wrong-if 4 "Count the cube on top too: 4 in the bottom row and 1 above.")
  (hint "Each unit cube is 1 cubic unit."))
```

---

## No gaps, no overlaps

To measure volume, pack the unit cubes with no gaps between them and no cubes overlapping.

```check
(choice
  (ask "Sam fills a box with unit cubes but leaves gaps. He counts 20 cubes. What is true?")
  (right "The volume of the box is more than 20 cubic units.")
  (wrong "The volume is exactly 20 cubic units." "The gaps are space inside the box too. Without the gaps filled, 20 is too few.")
  (wrong "The volume is less than 20 cubic units." "20 cubes fit inside, with room to spare. So the box holds more than 20 cubic units.")
  (hint "The gaps take up space that the cubes do not count."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.3b: packed without gaps or overlaps by n unit cubes, a volume of n cubic units")
```

---

## Why cubes, not squares

Unit squares measure area: they cover a flat surface. They are flat, so they cannot fill space.

Unit cubes fill space, so they measure volume.

```check
(choice
  (ask "Which would you use to measure the space inside a box?")
  (right "unit cubes")
  (wrong "unit squares" "Unit squares cover a flat surface, like the bottom of the box. They do not fill the space inside it.")
  (wrong "a ruler" "A ruler measures length. To measure space, fill it with unit cubes.")
  (hint "Which one takes up space?"))
```

---

## A worked example

```figure
(m5p4-box 90 190 3 2 1 40)
(caption "3 cubes wide, 2 deep, 1 tall")
```

```example
(example
  (problem "This solid is 1 layer of unit cubes: 3 in front and 3 behind. What is its volume?")
  (step "The front row has 3 unit cubes.")
  (step "The back row has 3 more. You see their tops, not their fronts.")
  (step (number (ask "So the volume is how many cubic units?") (answer 6) (from "3 + 3")
          (wrong-if 3 "That is the front row. The back row adds 3 more.")))
  (answer "6 cubic units."))
```

---

## Practice

```check
(number
  (ask "A solid is packed with 14 unit cubes, with no gaps or overlaps. What is its volume?")
  (answer 14) (unit "cubic units") (from "14")
  (hint "Each unit cube is 1 cubic unit."))
```

```check
(choice
  (ask "What is the volume of 1 unit cube?")
  (right "1 cubic unit")
  (wrong "1 square unit" "A square unit measures area. A unit cube has a volume of 1 cubic unit.")
  (wrong "3 cubic units" "A unit cube is 1 unit in all 3 directions, but it is just 1 cube: 1 cubic unit.")
  (hint "How many unit cubes is it?"))
```

A unit cube has a volume of 1 cubic unit; a solid packed with n unit cubes has a volume of n cubic units.
