# What volume is

```lesson
(objective "Explain volume as the amount of space a solid figure takes up, and compare two solids by how many same-size cubes build them.")
(standards "5.MD.C.3")
(minutes 20)
(keywords "volume" "solid figure")
```

Some shapes are flat, and some take up space.

A square drawn on paper is flat. A box, a ball and a brick are not flat. A **solid figure** is a shape that takes up space, like a box.

```figure
(m5p4-shape '(30 120 110 120 110 200 30 200) #f)
(label 70 225 "a flat square")
(m5p4-boxo 190 200 1 1 1 80)
(label 230 225 "a cube: a solid figure")
```

The cube is drawn on flat paper, but it shows a solid: you see its front, top and right side.

```check
(choice
  (ask "Which is a solid figure?")
  (right "a brick")
  (wrong "a rectangle drawn on paper" "A drawing of a rectangle is flat. A solid figure takes up space, like a brick.")
  (wrong "a line segment" "A line segment has only length. It takes up no space.")
  (hint "Could you hold it in your hand and fill a box with it?"))
```

---

## Volume

The **volume** of a solid figure is the amount of space it takes up.

A flat shape has area, but no volume: it takes up no space.

You can measure volume with cubes that are all the same size. Count how many cubes build the solid.

```figure
(m5p4-cubes 110 190 30 '((0 0 0) (1 0 0) (2 0 0) (0 0 1) (1 0 1) (2 0 1)))
(caption "A solid built from same-size cubes, 1 row deep")
```

```check
(number
  (ask "How many cubes build this solid? It is 1 row deep, so no cube is hidden.")
  (answer 6) (unit "cubes") (from "3 * 2")
  (wrong-if 5 "Count again: 3 cubes in the bottom row and 3 in the top row.")
  (hint "Count the bottom row, then the top row.")
  (hint "3 + 3 = ?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.3: volume as an attribute of solid figures")
```

---

## Same volume, different shape

Solid A and solid B are built from the same-size cubes. Each is 1 row deep.

```figure
(m5p4-cubes 30 190 30 '((0 0 0) (1 0 0) (2 0 0) (0 0 1) (1 0 1) (2 0 1)))
(m5p4-cubes 180 190 30 '((0 0 0) (1 0 0) (2 0 0) (0 0 1) (1 0 1) (0 0 2)))
(label 75 220 "A") (label 225 220 "B")
```

```check
(choice
  (ask "Which solid has the greater volume?")
  (right "They have the same volume." (true "3 + 3 = 3 + 2 + 1"))
  (wrong "B, because it is taller" "B is taller, but it has 6 cubes, the same as A. Volume counts the space, not how tall it looks.")
  (wrong "A, because it is wider" "A is wider, but it has 6 cubes, the same as B.")
  (hint "Count the cubes in each.")
  (hint "A: 3 + 3. B: 3 + 2 + 1."))
```

---

## A worked example

Some cubes can be hidden. This solid is 2 cubes wide, 2 deep and 2 tall. 1 cube is hidden: the one at the back of the bottom layer, on the left.

```figure
(m5p4-box 110 200 2 2 2 50)
(caption "2 wide, 2 deep, 2 tall")
```

```example
(example
  (problem "How many cubes build this solid?")
  (step "The bottom layer has 2 in front and 2 behind: 4 cubes.")
  (step "The top layer is the same: 4 cubes.")
  (step (number (ask "So how many cubes in all?") (answer 8) (from "4 + 4")
          (wrong-if 7 "7 is the cubes you can see. Count the hidden one too.")))
  (answer "8 cubes."))
```

---

## Practice

```check
(choice
  (ask "Solid C is 7 cubes. Solid D is 9 cubes of the same size. Which takes up more space?")
  (right "D" (true "9 > 7"))
  (wrong "C" (false "7 > 9") "C has 7 cubes and D has 9. More same-size cubes take up more space.")
  (wrong "You cannot tell without seeing them" "The cubes are all the same size, so the count tells you. 9 cubes take more space than 7.")
  (hint "Which has more cubes of the same size?"))
```

```check
(choice
  (ask "Does a square drawn on paper have volume?")
  (right "No: it is flat, so it takes up no space.")
  (wrong "Yes: its area is its volume" "Area measures a flat surface. Volume measures space, and a flat square takes up none.")
  (hint "Volume is space taken up."))
```

Volume is the space a solid figure takes up; you can compare volumes by counting same-size cubes.
