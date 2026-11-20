# Volume problems

```lesson
(objective "Solve real-world problems about the volume of boxes, tanks and solids made of two prisms.")
(standards "5.MD.C.5b" "5.MD.C.5c")
(minutes 25)
```

You can use volume to answer questions about boxes, tanks and rooms.

A fish tank is 20 inches long, 10 inches wide and 12 inches tall. How much space is inside it?

$V = l * w * h = 20 * 10 * 12$.

```check
(number
  (ask "What is the volume of the fish tank?")
  (answer 2400) (unit "cubic in") (from "20 * 10 * 12")
  (wrong-if 42 "That adds the edges. Multiply: 20 × 10 × 12.")
  (wrong-if 200 "200 is the base, 20 × 10. Multiply by the height 12.")
  (hint "20 × 10 = 200.")
  (hint "200 × 12 = ?"))
```

---

## Packing a box

A box is 4 feet long, 3 feet wide and 2 feet tall. How many cubic-foot boxes fit inside it, packed with no gaps?

Each small box is 1 cubic foot, so count the cubic feet: the volume.

```check
(number
  (ask "How many cubic-foot boxes fit in it?")
  (answer 24) (unit "boxes") (from "4 * 3 * 2")
  (wrong-if 9 "That adds the edges. A layer is 4 × 3 = 12 boxes, and there are 2 layers.")
  (hint "One layer: 4 × 3 = 12."))
```

---

## How tall to fill

A sandbox is 6 feet long and 5 feet wide. You have 60 cubic feet of sand. How deep will the sand be?

The base is $6 * 5 = 30$ square feet. $60 ÷ 30 = 2$.

```check
(number
  (ask "A pool is 10 m long and 4 m wide. It holds 80 cubic meters of water. How deep is the water?")
  (answer 2) (unit "m") (from "80 / (10 * 4)")
  (wrong-if 66 "That subtracts. Divide the volume by the base: 80 ÷ (10 × 4).")
  (wrong-if 8 "That divides by 10 only. The base is 10 × 4 = 40.")
  (hint "Base: 10 × 4 = 40 square meters.")
  (hint "80 ÷ 40 = ?"))
```

---

## A worked example

A bookcase is made of two boxes: a lower box 3 feet long, 1 foot deep and 4 feet tall, and a top box 3 by 1 by 1 feet.

```example
(example
  (problem "How much space does the bookcase take up?")
  (step "Lower box: 3 × 1 × 4 = 12 cubic feet.")
  (step "Top box: 3 × 1 × 1 = 3 cubic feet.")
  (step (number (ask "12 + 3 = ? cubic feet") (answer 15) (from "(3 * 1 * 4) + (3 * 1 * 1)")
          (wrong-if 12 "12 is the lower box. Add the top box.")))
  (answer "15 cubic feet."))
```

---

## Which holds more?

Box A is 6 by 4 by 5 inches. Box B is 8 by 5 by 3 inches.

```check
(choice
  (ask "Which box has the greater volume?")
  (right "Neither: both are 120 cubic inches." (true "6 * 4 * 5 = 8 * 5 * 3"))
  (wrong "B, because 8 is the longest edge" "The longest edge does not decide it. Work out both: 6 × 4 × 5 = 120 and 8 × 5 × 3 = 120.")
  (wrong "B, because 8 + 5 + 3 is more than 6 + 4 + 5" "Adding edges does not give volume. Multiply: 6 × 4 × 5 = 120 and 8 × 5 × 3 = 120.")
  (wrong "A, because it is the tallest" "A is 5 tall and B is 3, but B is longer and wider. Multiply: both are 120.")
  (hint "Find each volume with V = l × w × h."))
```

---

## Practice

```check
(number
  (ask "A truck's box is 12 ft long, 8 ft wide and 7 ft tall. What is its volume?")
  (answer 672) (unit "cubic ft") (from "12 * 8 * 7")
  (wrong-if 96 "96 is the base, 12 × 8. Multiply by the height 7.")
  (hint "12 × 8 = 96.")
  (hint "96 × 7 = ?"))
```

```check
(number
  (ask "A garden bed is two boxes of soil: 4 by 2 by 1 feet and 2 by 2 by 1 feet. How many cubic feet of soil fill it?")
  (answer 12) (unit "cubic ft") (from "(4 * 2 * 1) + (2 * 2 * 1)")
  (wrong-if 8 "8 is the first box. Add the second: 2 × 2 × 1 = 4.")
  (hint "8 + 4 = ?"))
```

---

```check
(number
  (ask "A box has a volume of 360 cubic cm. Its base is 9 cm by 8 cm. How tall is it?")
  (answer 5) (unit "cm") (from "360 / (9 * 8)")
  (wrong-if 343 "That subtracts. Divide by the base area: 360 ÷ 72.")
  (hint "Base: 9 × 8 = 72.")
  (hint "360 ÷ 72 = ?"))
```

Volume problems use V = l × w × h or V = b × h, and add the volumes of two prisms.
