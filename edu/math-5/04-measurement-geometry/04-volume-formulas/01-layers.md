# Layers of cubes

```lesson
(objective "Find the volume of a rectangular prism as the number of layers times the cubes in each layer, and see that it equals length x width x height.")
(standards "5.MD.C.5a")
(minutes 20)
```

You can find a volume by multiplying instead of counting every cube.

This rectangular prism is packed with unit cubes. Its bottom layer is 4 cubes long and 3 cubes wide.

```figure
(define n (slider 'n 1 4 2 "Layers" 1))
(m5p4-box 70 215 4 3 n 34)
(text 300 30 (string-append (fmt n 0) " layers of 12") 'right 'small)
(caption "4 long, 3 wide: 12 cubes a layer")
```

The bottom layer has $4 * 3 = 12$ cubes.

```check
(number
  (ask "How many cubes are in each layer?")
  (answer 12) (unit "cubes") (from "4 * 3")
  (wrong-if 7 "That adds 4 + 3. A layer is 4 rows of 3 cubes, an array: 4 × 3.")
  (hint "A layer is an array: 4 by 3."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.5a: find the volume by packing with unit cubes; it is the same as multiplying the edge lengths")
```

---

## Layers times cubes

With 2 layers, the volume is $2 * 12 = 24$ cubic units.

Move the slider: each layer adds 12 more cubes.

```check
(number
  (ask "With 4 layers, what is the volume?")
  (answer 48) (unit "cubic units") (from "4 * 12")
  (wrong-if 16 "That adds 12 + 4. There are 4 layers of 12 cubes: 4 × 12.")
  (wrong-if 19 "That adds 4 + 3 + 12. Multiply the cubes in a layer by the layers: 12 × 4.")
  (hint "4 layers of 12."))
```

---

## Three edges, one product

The cubes in a layer are length × width. The number of layers is how tall the prism is.

So the volume is length × width × how tall: $4 * 3 * 4 = 48$.

```check
(choice
  (ask "A prism is 5 cubes long, 2 wide and 3 tall. Which gives its volume?")
  (right "5 × 2 × 3" (true "5 * 2 * 3 = 30"))
  (wrong "5 + 2 + 3" (false "5 + 2 + 3 = 30") "Adding the edges gives 10, not the cubes. Multiply: a layer of 5 × 2, then 3 layers.")
  (wrong "5 × 2" "5 × 2 = 10 is one layer. There are 3 layers.")
  (hint "Cubes in a layer, times the layers."))
```

---

## A worked example

```figure
(m5p4-box 90 200 3 2 5 26)
(caption "3 long, 2 wide, 5 tall")
```

```example
(example
  (problem "Find the volume of this prism of unit cubes.")
  (step "One layer: 3 × 2 = 6 cubes.")
  (step "There are 5 layers.")
  (step (number (ask "6 × 5 = ? cubic units") (answer 30) (from "3 * 2 * 5")
          (wrong-if 10 "That adds 3 + 2 + 5. Multiply: 6 cubes a layer, 5 layers.")))
  (answer "30 cubic units = 3 × 2 × 5."))
```

---

## Practice

```check
(number
  (ask "A prism of unit cubes has 6 layers, each 2 cubes long and 2 wide. What is its volume?")
  (answer 24) (unit "cubic units") (from "2 * 2 * 6")
  (wrong-if 10 "That adds 2 + 2 + 6. Each layer has 2 × 2 = 4 cubes, and there are 6 layers.")
  (hint "One layer: 2 × 2 = 4."))
```

```check
(number
  (ask "A prism is 7 cubes long, 3 wide and 2 tall. What is its volume?")
  (answer 42) (unit "cubic units") (from "7 * 3 * 2")
  (wrong-if 21 "21 is one layer. There are 2 layers.")
  (hint "7 × 3 = 21 a layer."))
```

The volume of a prism of cubes is the cubes in a layer times the layers: length × width × how tall.
