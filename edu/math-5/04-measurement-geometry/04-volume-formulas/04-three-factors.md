# Three factors in any grouping

```lesson
(objective "Show with one prism that (3 x 4) x 5 = 3 x (4 x 5), the associative property, and find a missing edge length from a volume and two edges.")
(standards "5.MD.C.5a" "5.MD.C.5b")
(minutes 25)
```

You can group the three edge lengths either way and get the same volume.

This prism is 3 cubes long, 4 wide and 5 tall.

```figure
(m5p4-box 90 220 3 4 5 30)
(caption "3 long, 4 wide, 5 tall")
```

Count by layers: each layer is $3 * 4 = 12$ cubes, and there are 5 layers. That is $(3 * 4) * 5$.

```check
(number
  (ask "What is (3 × 4) × 5?")
  (answer 60) (unit "cubic units") (from "(3 * 4) * 5")
  (wrong-if 17 "That adds 12 + 5. There are 5 layers of 12: multiply.")
  (hint "3 × 4 = 12.")
  (hint "12 × 5 = ?"))
```

---

## Count it another way

Cut the same prism into slices from left to right. Each slice is 4 wide and 5 tall: $4 * 5 = 20$ cubes. There are 3 slices.

That is $3 * (4 * 5)$.

```check
(number
  (ask "What is 3 × (4 × 5)?")
  (answer 60) (unit "cubic units") (from "3 * (4 * 5)")
  (wrong-if 23 "That adds 3 + 20. There are 3 slices of 20: multiply.")
  (hint "4 × 5 = 20.")
  (hint "3 × 20 = ?"))
```

---

## The same prism, the same volume

Both ways count the same cubes, so

$$ (3 * 4) * 5 = 3 * (4 * 5) $$

This is the associative property: you can group factors in any way.

```check
(choice
  (ask "Which equals (2 × 5) × 6?")
  (right "2 × (5 × 6)" (true "(2 * 5) * 6 = 2 * (5 * 6)"))
  (wrong "(2 + 5) × 6" (false "(2 * 5) * 6 = (2 + 5) * 6") "That changes × to +. The associative property only regroups the same factors.")
  (wrong "2 × 5 + 6" (false "(2 * 5) * 6 = 2 * 5 + 6") "That adds 6 instead of multiplying by it.")
  (hint "Keep the factors; move the parentheses."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.MD.C.5a: represent threefold whole-number products as volumes, e.g., to represent the associative property of multiplication")
```

---

## A missing edge

If you know the volume and two edges, divide to find the third.

A box has a volume of 60 cubic cm. It is 3 cm long and 4 cm wide. Its base has $3 * 4 = 12$ cubes a layer.

How many layers make 60? $60 ÷ 12 = 5$. So it is 5 cm tall.

```check
(number
  (ask "A box has a volume of 48 cubic inches. It is 4 inches long and 3 inches wide. How tall is it?")
  (answer 4) (unit "in") (from "48 / (4 * 3)")
  (wrong-if 12 "12 is the cubes in one layer, 4 × 3. Divide the volume by it: 48 ÷ 12.")
  (wrong-if 41 "That subtracts 4 and 3. Divide the volume by the base: 48 ÷ (4 × 3).")
  (hint "One layer: 4 × 3 = 12 cubes.")
  (hint "48 ÷ 12 = ?"))
```

---

## A worked example

```example
(example
  (problem "A tank has a volume of 90 cubic feet. It is 5 feet long and 6 feet tall. How wide is it?")
  (step "The two edges you know: 5 × 6 = 30.")
  (step "The width times 30 must be 90.")
  (step (number (ask "90 ÷ 30 = ? feet") (answer 3) (from "90 / (5 * 6)")
          (wrong-if 79 "That subtracts. Divide the volume by 5 × 6.")))
  (answer "The tank is 3 feet wide: 5 × 3 × 6 = 90."))
```

---

## Practice

```check
(number
  (ask "Work out 2 × (6 × 5) the easy way: (2 × 5) × 6.")
  (answer 60) (from "(2 * 5) * 6")
  (true "2 * (6 * 5) = (2 * 5) * 6")
  (hint "2 × 5 = 10.")
  (hint "10 × 6 = ?"))
```

```check
(number
  (ask "A box has a volume of 100 cubic cm. It is 5 cm long and 5 cm wide. How tall is it?")
  (answer 4) (unit "cm") (from "100 / (5 * 5)")
  (wrong-if 90 "That subtracts. Divide: 100 ÷ (5 × 5).")
  (wrong-if 20 "That divides by one edge only. Divide by both: 100 ÷ 25.")
  (hint "5 × 5 = 25.")
  (hint "100 ÷ 25 = ?"))
```

A prism shows that you can group three factors either way; divide the volume by two edges to find the third.
