# Volume = length x width x height

```lesson
(objective "Use the formula V = l x w x h to find the volume of a rectangular prism with whole-number edge lengths.")
(standards "5.MD.C.5b")
(minutes 25)
```

You can find the volume of any box with a formula.

A rectangular prism has a length and a width along its bottom. Its **height** is the length of an edge that goes straight up from the bottom.

```figure
(m5p4-boxo 70 200 5 3 2 30)
(label 145 218 "5 cm")
(text 248 194 "3 cm" 'small)
(text 64 175 "2 cm" 'small 'right)
(caption "Length 5 cm, width 3 cm, height 2 cm")
```

```check
(number
  (ask "What is the height of this box? (cm)")
  (answer 2) (unit "cm") (from "2")
  (wrong-if 5 "5 cm is the length, along the front of the bottom. The height goes straight up.")
  (wrong-if 3 "3 cm is the width, going back. The height goes straight up.")
  (hint "Which edge goes up?"))
```

---

## The formula

The volume of a rectangular prism is length times width times height:

$$ V = l * w * h $$

V is the volume. l, w and h are the letters for the length, width and height.

For the box above: $V = 5 * 3 * 2 = 30$. Its volume is 30 cubic centimeters.

```check
(number
  (ask "A box is 6 inches long, 4 inches wide and 3 inches tall. What is its volume?")
  (answer 72) (unit "cubic in") (from "6 * 4 * 3")
  (wrong-if 13 "That adds 6 + 4 + 3. The formula multiplies: 6 × 4 × 3.")
  (wrong-if 24 "6 × 4 = 24 is one layer of cubes. Multiply by the height 3 too.")
  (hint "V = l × w × h")
  (hint "6 × 4 = 24, and 24 × 3 = ?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.5b: apply the formula V = l x w x h")
```

---

## Why it works

Imagine the box packed with 1-centimeter cubes. Each layer has l × w cubes. There are h layers.

So l × w × h counts every cube, hidden ones too.

```check
(choice
  (ask "A box is 4 cm long, 2 cm wide and 5 cm tall. What does 4 × 2 count?")
  (right "the cubes in one layer" (true "4 * 2 = 8"))
  (wrong "all the cubes" "4 × 2 = 8 counts one layer. There are 5 layers, so multiply by 5 too.")
  (wrong "the layers" "There are 5 layers: the height. 4 × 2 is the cubes in each layer.")
  (hint "Length times width covers the bottom."))
```

---

## A worked example

```example
(example
  (problem "A brick is 8 inches long, 4 inches wide and 2 inches tall. Find its volume.")
  (step "V = l × w × h")
  (step "V = 8 × 4 × 2")
  (step (number (ask "8 × 4 × 2 = ? cubic inches") (answer 64) (from "8 * 4 * 2")
          (wrong-if 14 "That adds the edges. Multiply: 8 × 4 = 32, then 32 × 2.")))
  (answer "64 cubic inches."))
```

---

## Practice

```check
(number
  (ask "A box is 10 cm long, 5 cm wide and 4 cm tall. What is its volume?")
  (answer 200) (unit "cubic cm") (from "10 * 5 * 4")
  (wrong-if 19 "That adds. Multiply: 10 × 5 × 4.")
  (hint "10 × 5 = 50."))
```

```check
(number
  (ask "A cube has edges 3 feet long. What is its volume?")
  (answer 27) (unit "cubic ft") (from "3 * 3 * 3")
  (wrong-if 9 "3 × 3 = 9 is one layer. A cube is 3 tall too: 9 × 3.")
  (wrong-if 12 "12 is a cube's number of edges, not its volume. Multiply 3 × 3 × 3.")
  (hint "Length, width and height are all 3."))
```

---

```check
(number
  (ask "A shoe box is 12 inches long, 7 inches wide and 5 inches tall. What is its volume?")
  (answer 420) (unit "cubic in") (from "12 * 7 * 5")
  (wrong-if 84 "84 is one layer: 12 × 7. Multiply by the height 5.")
  (hint "12 × 7 = 84.")
  (hint "84 × 5 = ?"))
```

The volume of a rectangular prism is V = l × w × h, in cubic units.
