# Adding volumes

```lesson
(objective "Find the volume of a solid made of two rectangular prisms that do not overlap by adding their volumes.")
(standards "5.MD.C.5c")
(minutes 25)
```

You can find the volume of a solid made of two boxes by adding their volumes.

This solid is two rectangular prisms of unit cubes. The bottom one is 4 long, 3 wide and 2 tall. The top one is 2 long, 3 wide and 2 tall, at the left.

```figure
(m5p4-box 70 220 4 3 2 32)
(m5p4-box 70 156 2 3 2 32)
(label 134 236 "bottom: 4 by 3 by 2")
(text 185 105 "top: 2 by 3 by 2" 'small)
```

They do not overlap: no cube is in both.

```check
(number
  (ask "What is the volume of the bottom prism?")
  (answer 24) (unit "cubic units") (from "4 * 3 * 2")
  (wrong-if 9 "That adds 4 + 3 + 2. Multiply: 4 × 3 × 2.")
  (hint "V = l × w × h"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.5c: volume is additive; find volumes of solids made of two non-overlapping right rectangular prisms by adding")
```

---

## Add the two volumes

The top prism is $2 * 3 * 2 = 12$ cubic units.

The whole solid: $(4 * 3 * 2) + (2 * 3 * 2) = 24 + 12$.

```check
(number
  (ask "What is the volume of the whole solid?")
  (answer 36) (unit "cubic units") (from "(4 * 3 * 2) + (2 * 3 * 2)")
  (wrong-if 24 "24 is the bottom prism. Add the top prism's 12.")
  (wrong-if 48 "That counts the solid as one box 4 by 3 by 4. The top part is only 2 long.")
  (hint "24 + 12 = ?"))
```

---

## Split it another way

You can also cut the solid into a left prism, 2 by 3 by 4, and a right prism, 2 by 3 by 2.

$(2 * 3 * 4) + (2 * 3 * 2) = 24 + 12 = 36$. The same volume.

```check
(choice
  (ask "Why do the two ways give the same volume?")
  (right "Both count all the same cubes, each once." (true "(2 * 3 * 4) + (2 * 3 * 2) = (4 * 3 * 2) + (2 * 3 * 2)"))
  (wrong "Because 24 is in both." "Both ways have a 24, but that is not the reason. Each way counts every cube of the solid once.")
  (wrong "They are not the same; one way is wrong." "Both are 36. A solid takes up the same space however you cut it.")
  (hint "The solid did not change; only the cut did."))
```

---

## A worked example

```example
(example
  (problem "A step is made of two boxes: 6 by 4 by 1 feet, and 3 by 4 by 1 feet on top. Find its volume.")
  (step "Bottom: 6 × 4 × 1 = 24 cubic feet.")
  (step "Top: 3 × 4 × 1 = 12 cubic feet.")
  (step (number (ask "24 + 12 = ? cubic feet") (answer 36) (from "(6 * 4 * 1) + (3 * 4 * 1)")
          (wrong-if 24 "That is the bottom box. Add the top box.")))
  (answer "36 cubic feet."))
```

---

## Practice

```figure
(m5p4-box 20 210 3 2 3 30)
(m5p4-box 160 210 4 2 1 30)
(label 70 230 "A: 3 by 2 by 3")
(label 220 230 "B: 4 by 2 by 1")
```

```check
(number
  (ask "A solid is made of prisms A and B. What is its volume?")
  (answer 26) (unit "cubic units") (from "(3 * 2 * 3) + (4 * 2 * 1)")
  (wrong-if 18 "18 is A alone. Add B: 4 × 2 × 1 = 8.")
  (wrong-if 15 "That adds all the edges. Find each volume, then add.")
  (hint "A: 3 × 2 × 3 = 18. B: 4 × 2 × 1 = 8."))
```

```check
(number
  (ask "A solid is a box 5 by 5 by 2 cm with a box 2 by 2 by 3 cm on top. What is its volume?")
  (answer 62) (unit "cubic cm") (from "(5 * 5 * 2) + (2 * 2 * 3)")
  (wrong-if 50 "50 is the bottom box. Add the top box: 2 × 2 × 3 = 12.")
  (hint "Bottom: 5 × 5 × 2 = 50.")
  (hint "50 + 12 = ?"))
```

To find the volume of a solid made of two prisms that do not overlap, add their volumes.
