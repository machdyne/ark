# Rectangular prisms

```lesson
(objective "Name a rectangular prism and its faces and edges, and find its volume by counting the unit cubes layer by layer.")
(standards "5.MD.C.4" "5.MD.C.5a")
(minutes 25)
(keywords "rectangular prism" "face (of a solid)" "edge (of a solid)")
```

You can name the parts of a box shape and find its volume layer by layer.

A **face** of a solid figure is one of its flat sides. A box has a face at the front, at the back, at the top, at the bottom, at the left and at the right.

```figure
(m5p4-boxo 70 200 4 3 2 40)
(caption "A drawing of a box: 3 faces seen, 3 hidden")
```

```check
(number
  (ask "How many faces does a box have?")
  (answer 6) (unit "faces") (from "6")
  (wrong-if 3 "You see 3 in the drawing. The back, bottom and left faces are hidden: 6 in all.")
  (hint "Front and back, top and bottom, left and right."))
```

---

## A rectangular prism

A **rectangular prism** is a solid figure with 6 faces that are all rectangles. It is a box shape.

A cube is a rectangular prism too. Its faces are all squares, and a square is a rectangle.

```check
(choice
  (ask "Which is a rectangular prism?")
  (right "a cereal box")
  (wrong "a ball" "A ball has no flat faces. A rectangular prism has 6 rectangle faces.")
  (wrong "a can of soup" "A can has 2 flat faces that are circles. A rectangular prism has 6 rectangle faces.")
  (wrong "a rectangle drawn on paper" "A drawn rectangle is flat. A rectangular prism is a solid figure.")
  (hint "Look for 6 faces that are rectangles."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.5a: right rectangular prisms")
```

---

## Edges

An **edge** of a solid figure is a line segment where 2 faces meet.

A rectangular prism has 12 edges: 4 around the top, 4 around the bottom and 4 going up.

A cube is a rectangular prism whose edges are all the same length.

```check
(number
  (ask "How many edges does a rectangular prism have?")
  (answer 12) (unit "edges") (from "4 + 4 + 4")
  (wrong-if 9 "9 is the edges you see in a drawing. 3 more are hidden at the back.")
  (wrong-if 8 "8 is the corners. Edges are the line segments between them: 12.")
  (hint "4 around the top, 4 around the bottom, 4 going up."))
```

---

## Volume, layer by layer

This prism is packed with unit cubes. The edges along the bottom are 4 and 3 units long, so the bottom layer has $4 * 3$ cubes.

```figure
(define n (slider 'n 1 3 3 "Layers" 1))
(m5p4-box 70 210 4 3 n 38)
(caption "4 by 3 cubes a layer")
```

```check
(number
  (ask "With 3 layers, what is the volume?")
  (answer 36) (unit "cubic units") (from "4 * 3 * 3")
  (wrong-if 12 "12 is one layer. There are 3 layers of 12.")
  (wrong-if 10 "That adds 4 + 3 + 3. Each layer is 4 × 3 = 12 cubes, and there are 3 layers.")
  (hint "One layer: 4 × 3 = 12.")
  (hint "3 layers: 12 + 12 + 12."))
```

---

## A worked example

```figure
(m5p4-box 80 200 3 2 4 34)
(caption "3 by 2 cubes a layer, 4 layers")
```

```example
(example
  (problem "Find the volume of this rectangular prism of unit cubes.")
  (step "Each layer has 3 × 2 = 6 cubes.")
  (step "There are 4 layers.")
  (step (number (ask "6 + 6 + 6 + 6 = ? cubic units") (answer 24) (from "3 * 2 * 4")
          (wrong-if 9 "That adds 3 + 2 + 4. Count the cubes: 6 in each of 4 layers.")))
  (answer "24 cubic units."))
```

---

## Practice

```check
(number
  (ask "A rectangular prism has a bottom layer of 5 by 2 unit cubes and 3 layers. What is its volume?")
  (answer 30) (unit "cubic units") (from "5 * 2 * 3")
  (wrong-if 10 "10 is one layer. There are 3 layers.")
  (hint "One layer: 5 × 2 = 10."))
```

```check
(choice
  (ask "Which is true of every cube?")
  (right "It is a rectangular prism with all edges the same length.")
  (wrong "It is not a rectangular prism, because its faces are squares." "A square is a rectangle. So a cube's 6 faces are rectangles, and it is a rectangular prism.")
  (wrong "It has 8 faces." "A cube has 6 faces, like any rectangular prism. 8 is the number of corners.")
  (hint "Is a square a rectangle?"))
```

A rectangular prism has 6 rectangle faces and 12 edges; its volume is the cubes in one layer, layer after layer.
