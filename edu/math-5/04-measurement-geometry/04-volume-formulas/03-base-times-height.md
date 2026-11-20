# Volume = base x height

```lesson
(objective "Use the formula V = b x h, where b is the area of the base, and explain why it gives the same volume as V = l x w x h.")
(standards "5.MD.C.5a" "5.MD.C.5b")
(minutes 25)
(keywords "base (of a prism)")
```

You can find a volume from the area of one face and the height.

The **base** of a prism is the face it stands on. The height is then the edge that meets the base at a right angle.

```figure
(m5p4-boxo 70 200 4 3 3 36)
(line 70 200 118.6 162.2 'cool 1.5)
(line 118.6 162.2 262.6 162.2 'cool 1.5)
(line 118.6 162.2 118.6 54.2 'cool 1.5)
(label 142 215 "the base: 4 by 3, at the bottom")
(text 64 150 "height 3" 'small 'right)
(caption "Thin dashed (or blue) lines: hidden edges")
```

The base here is 4 by 3 units. Its area is $4 * 3 = 12$ square units.

```check
(number
  (ask "A box stands on a base 5 cm by 2 cm. What is the area of its base?")
  (answer 10) (unit "square cm") (from "5 * 2")
  (wrong-if 7 "That adds 5 + 2. The area of a rectangle is length × width.")
  (wrong-if 14 "14 is the perimeter of the base. Area is length × width: 5 × 2.")
  (hint "Area of a rectangle: length × width."))
```

---

## The formula

The base's area tells how many unit cubes cover it: 1 layer. The height tells how many layers.

$$ V = b * h $$

b is the area of the base. Some books write B for it.

```check
(number
  (ask "A prism has a base with an area of 12 square units and a height of 3 units. What is its volume?")
  (answer 36) (unit "cubic units") (from "12 * 3")
  (wrong-if 15 "That adds 12 + 3. The volume is the layer, 12 cubes, times 3 layers.")
  (hint "V = b × h = 12 × 3"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.5b: apply the formulas V = l x w x h and V = b x h")
```

---

## The same as l x w x h

The base is l by w, so its area is $b = l * w$.

So $b * h$ is $l * w * h$: the two formulas give the same volume.

```check
(choice
  (ask "A box is 6 by 2 by 4 units. Which equals V = l × w × h?")
  (right "12 × 4, with 12 the area of the 6 by 2 base" (true "(6 * 2) * 4 = 6 * 2 * 4"))
  (wrong "12 + 4" (false "12 + 4 = 6 * 2 * 4") "The base is 12 cubes in a layer, and there are 4 layers. Multiply: 12 × 4.")
  (wrong "6 × 4" (false "6 * 4 = 6 * 2 * 4") "That leaves out the width 2. The base is 6 × 2 = 12.")
  (hint "b = 6 × 2"))
```

---

## Any face can be the base

Stand a box on a different face, and that face is the base. The volume does not change.

A box 5 by 2 by 3: on the 5 by 2 face, $V = 10 * 3$. On the 2 by 3 face, $V = 6 * 5$. Both are 30.

```check
(number
  (ask "Lay the same box on its 5 by 3 face. The base area is 15. What is the height now?")
  (answer 2) (unit "units") (from "30 / 15")
  (wrong-if 3 "3 is part of the base now. The edge left over, at a right angle to the base, is 2.")
  (hint "The edges are 5, 2 and 3. Which one is not in the base?"))
```

---

## A worked example

```example
(example
  (problem "A fish tank has a base with an area of 300 square inches. It is 12 inches tall. Find its volume.")
  (step "V = b × h")
  (step "V = 300 × 12")
  (step (number (ask "300 × 12 = ? cubic inches") (answer 3600) (from "300 * 12")
          (wrong-if 312 "That adds. Multiply the base area by the height.")))
  (answer "3,600 cubic inches."))
```

---

## Practice

```check
(number
  (ask "A box's base has an area of 20 square cm. The box is 6 cm tall. What is its volume?")
  (answer 120) (unit "cubic cm") (from "20 * 6")
  (wrong-if 26 "That adds. V = b × h = 20 × 6.")
  (hint "20 × 6 = ?"))
```

```check
(number
  (ask "A prism has a base 7 ft by 4 ft and a height of 2 ft. Use V = b × h. What is the volume?")
  (answer 56) (unit "cubic ft") (from "(7 * 4) * 2")
  (wrong-if 28 "28 is b, the base area. Multiply by the height 2.")
  (hint "b = 7 × 4 = 28."))
```

V = b × h, with b the area of the base, gives the same volume as V = l × w × h.
