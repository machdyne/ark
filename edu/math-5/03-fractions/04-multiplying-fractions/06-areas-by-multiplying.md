# Areas by multiplying

```lesson
(objective "Show that tiling gives the same area as multiplying the side lengths, also for mixed-number sides, such as 1 1/2 by 2 1/3 = 3 1/2 square units.")
(standards "5.NF.B.4b")
(minutes 25)
```

Tiling and multiplying give the same area. For a rectangle $3/4$ by
$2/3$:

- Tiling: 3 x 2 = 6 tiles, each $1/(4 * 3) = 1/12$. Area $6/12$.
- Multiplying: $(3/4) * (2/3) = (3 * 2)/(4 * 3) = 6/12$.

The tiles you count are the numerators multiplied. The tiles in a
unit square are the denominators multiplied.

```check
(fraction
  (ask "Find the area of a rectangle" (math "4/5") "unit by" (math "1/3") "unit by multiplying the side lengths.")
  (answer 4 15) (equivalent) (true "(4/5) * (1/3) = 4/15")
  (wrong-if (5 8) "That adds. Area is length times width: (4 x 1)/(5 x 3).")
  (hint "(4 x 1)/(5 x 3)"))
```

---

## Mixed-number sides

A rectangle $1 1/2$ units wide and $2 1/3$ units tall. Cut each unit
square into halves across and thirds down: tiles of $1/6$ square unit.

- Across: $1 1/2 = 3/2$, so 3 tiles.
- Down: $2 1/3 = 7/3$, so 7 tiles.

That is $3 * 7 = 21$ tiles of $1/6$: $21/6 = 3 3/6 = 3 1/2$ square units.

```figure
(m5p3-tile 100 25 60 1.5 (/ 7 3) 2 3 2 3)
(math 145 14 "1 1/2" 14)
(math 70 95 "2 1/3" 14)
(text 160 228 "21 tiles of 1/6 square unit" 'centre 'small)
```

```check
(number
  (ask "Count the tiles: how many tiles of" (math "1/6") "square unit cover the" (math "1 1/2") "by" (math "2 1/3") "rectangle?")
  (answer 21) (from "3 * 7")
  (wrong-if 10 "That adds 3 and 7. There are 7 rows of 3 tiles: 3 x 7.")
  (hint "3 tiles across, 7 rows down."))
```

---

## Now multiply

Multiply the side lengths, written as fractions:

$$ 1 1/2 * 2 1/3 = (3/2) * (7/3) $$

$$ (3/2) * (7/3) = 21/6 = 3 1/2 $$

The same as the tiles. A common mistake is to multiply only the wholes
and the parts: $1 * 2 + (1/2) * (1/3) = 2 1/6$. That leaves out tiles.

```check
(number
  (ask "Find the area of a rectangle" (math "2 1/2") "feet by" (math "1 1/2") "feet, in square feet. Type it like 2 1/4.")
  (answer 3.75) (unit "square feet") (from "(5/2) * (3/2)")
  (wrong-if 2.25 "That is 2 x 1 + (1/2) x (1/2). It leaves out parts of the rectangle. Use (5/2) x (3/2).")
  (wrong-if 4 "That adds the sides. Area is length times width: (5/2) x (3/2) = 15/4.")
  (hint "2 1/2 = 5/2 and 1 1/2 = 3/2.")
  (hint "(5 x 3)/(2 x 2) = 15/4."))
```

---

## Worked example

```example
(example
  (problem "Find the area of a rectangle 1 1/4 meters by 2/3 meter.")
  (step "Write 1 1/4 as 5/4.")
  (step "(5/4) x (2/3) = 10/12.")
  (step "10/12 = 5/6.")
  (answer "The area is 5/6 square meter."))
```

```example
(example
  (problem "Find the area of a rectangle 2 1/3 yards by 3 yards.")
  (step "2 1/3 = 7/3, and 3 = 3/1.")
  (step (number (ask "(7/3) x 3 = ? square yards") (answer 7) (from "(7/3) * 3")
    (wrong-if 6.3333333333 "Multiply the whole length, the 1/3 too: 7/3 x 3 = 21/3.")))
  (answer "The area is 7 square yards."))
```

---

## Practice

```check
(fraction
  (ask "Find the area, in square units, of a rectangle" (math "5/6") "by" (math "3/4") ".")
  (answer 15 24) (equivalent) (true "(5/6) * (3/4) = 15/24")
  (wrong-if (8 10) "That adds. Multiply: (5 x 3)/(6 x 4).")
  (hint "(5 x 3)/(6 x 4)"))
```

```check
(number
  (ask "A rug is" (math "1 1/2") "meters by" (math "1 1/3") "meters. What is its area, in square meters?")
  (answer 2) (unit "square meters") (from "(3/2) * (4/3)")
  (wrong-if 1.1666666667 "That is 1 x 1 + (1/2) x (1/3). Write the sides as fractions: (3/2) x (4/3).")
  (hint "(3/2) x (4/3) = 12/6."))
```

---

```check
(number
  (ask "A garden is" (math "3 1/2") "yards by 4 yards. What is its area, in square yards?")
  (answer 14) (unit "square yards") (from "(7/2) * 4")
  (wrong-if 12 "That leaves out the 1/2 yard. Use 7/2 x 4 = 28/2.")
  (hint "3 1/2 = 7/2."))
```

```check
(choice
  (ask "Tiling a" (math "2/3") "by" (math "5/6") "rectangle gives 10 tiles of" (math "1/18") ". What does multiplying give?")
  (right "10/18, the same" (true "(2/3) * (5/6) = 10/18"))
  (wrong "7/9"
    "7/9 adds the tops and the bottoms. Multiplying gives (2 x 5)/(3 x 6) = 10/18.")
  (wrong "Something different from tiling"
    "Tiling and multiplying always give the same area: 10 tiles of 1/18 is 10/18.")
  (hint "(2 x 5)/(3 x 6)"))
```

The area of a rectangle with fraction sides is the product of its side
lengths, just as with whole numbers.
