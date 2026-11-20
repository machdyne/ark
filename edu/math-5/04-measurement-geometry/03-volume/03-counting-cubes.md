# Counting cubes

```lesson
(objective "Find the volume of a solid figure packed with unit cubes without gaps or overlaps by counting them, including cubes hidden from view.")
(standards "5.MD.C.3b" "5.MD.C.4")
(minutes 25)
```

You can find a volume by counting unit cubes, even the ones you cannot see.

This is a drawing of a solid made of unit cubes. It is 3 cubes wide, 2 deep and 2 tall.

```figure
(m5p4-box 80 200 3 2 2 45)
(caption "3 wide, 2 deep, 2 tall")
```

You see 10 cubes. 2 are hidden: the back row of the bottom layer has 3 cubes, and you see only the one on the right.

```check
(number
  (ask "What is the volume of this solid?")
  (answer 12) (unit "cubic units") (from "3 * 2 * 2")
  (wrong-if 10 "10 is the cubes you can see. 2 more are hidden at the back of the bottom layer.")
  (hint "Count one layer: 3 in front and 3 behind.")
  (hint "2 layers of 6 = ?"))
```

---

## Count by layers

Counting one by one is slow, and you can miss hidden cubes. Count one layer, then add the layers.

The top layer shows all its cubes. Every layer below it is the same.

```figure
(define n (slider 'n 1 3 3 "Layers" 1))
(m5p4-box 70 210 4 2 n 40)
(caption "4 wide, 2 deep: 8 cubes a layer")
```

```check
(number
  (ask "With 3 layers, what is the volume?")
  (answer 24) (unit "cubic units") (from "8 + 8 + 8")
  (wrong-if 8 "8 is one layer. There are 3 layers of 8.")
  (wrong-if 18 "That counts only the cubes you see. Each layer has 8, hidden ones too.")
  (hint "Each layer has 4 × 2 = 8 cubes.")
  (hint "8 + 8 + 8 = ?"))
```

---

## A solid that is not a box

This solid has a bottom layer 3 wide and 2 deep. On top, at the left, are 2 more cubes, one in front and one behind.

```figure
(m5p4-cubes 90 200 45 '((0 1 0) (1 1 0) (2 1 0) (0 1 1) (0 0 0) (1 0 0) (2 0 0) (0 0 1)))
```

1 cube is hidden: the back left cube of the bottom layer.

```check
(number
  (ask "What is the volume of this solid?")
  (answer 8) (unit "cubic units") (from "3 * 2 + 2")
  (wrong-if 7 "7 is the cubes you see. The back left cube of the bottom layer is hidden.")
  (wrong-if 12 "That counts 2 full layers. The top layer has only 2 cubes.")
  (hint "Bottom layer: 3 × 2. Top: 2.")
  (hint "6 + 2 = ?"))
```

---

## A worked example

```figure
(m5p4-box 110 210 2 2 3 45)
(caption "2 wide, 2 deep, 3 tall")
```

```example
(example
  (problem "Find the volume of this tower of unit cubes.")
  (step "The top layer has 2 in front and 2 behind: 4 cubes.")
  (step "There are 3 layers. 2 cubes are hidden: the back left cube of each lower layer.")
  (step (number (ask "4 + 4 + 4 = ? cubic units") (answer 12) (from "4 * 3")
          (wrong-if 10 "10 is the cubes you see. Count the 2 hidden ones too.")))
  (answer "12 cubic units."))
```

---

## Practice

```figure
(m5p4-box 60 200 5 2 2 38)
(caption "5 wide, 2 deep, 2 tall")
```

```check
(number
  (ask "What is the volume of this solid?")
  (answer 20) (unit "cubic units") (from "5 * 2 * 2")
  (wrong-if 10 "10 is one layer. There are 2 layers.")
  (wrong-if 16 "That counts only cubes you see. 4 cubes are hidden at the back of the bottom layer.")
  (hint "One layer: 5 × 2 = 10."))
```

```check
(number
  (ask "A box is packed with 4 layers of unit cubes, 6 cubes in each layer. What is its volume?")
  (answer 24) (unit "cubic units") (from "4 * 6")
  (wrong-if 10 "That adds 4 + 6. There are 4 layers of 6 cubes each: 4 × 6.")
  (hint "4 layers of 6."))
```

Count one layer, then add up the layers: that counts the hidden cubes too.
