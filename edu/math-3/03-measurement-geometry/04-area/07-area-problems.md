# Area word problems

```lesson
(objective "Solve word problems about the area of rectangles.")
(standards "3.MD.C.7b")
(minutes 25)
```

You can solve word problems about the area of rectangles.

First, find what you know and what you want. Then draw a rectangle and label it.

A kitchen floor is 9 feet by 5 feet. How many 1-foot square tiles cover it?

```figure
(ms-grect 70 60 9 5 24 'grey "9 ft" "5 ft")
(caption "Each tile is 1 foot on a side.")
```

```check
(number
  (ask "How many tiles cover the kitchen floor?")
  (answer 45) (from "9 * 5")
  (wrong-if 14 "9 + 5 adds the sides. The tiles make 5 rows of 9, so multiply.")
  (wrong-if 28 "9 + 5 + 9 + 5 goes around the floor. The tiles cover the inside: 9 x 5.")
  (hint "Multiply the side lengths."))
```

---

## A missing side

Some problems give the area. Then you find a side.

A garden has an area of 32 square meters. It is 8 meters long. How wide is it?

```figure
(ms-rect 60 70 200 100 "8 m" "? m" #f)
(label 160 125 "32 sq m" 'small 'bold)
```

```check
(number
  (ask "How wide is the garden, in meters?")
  (answer 4) (unit "m") (from "32 / 8")
  (wrong-if 24 "32 - 8 subtracts. Find the number that times 8 is 32.")
  (wrong-if 256 "That multiplies the area by the side. Divide instead: 32 ÷ 8.")
  (hint "8 x ? = 32"))
```

---

## Which is bigger?

To compare 2 rooms, find each area. Then compare or subtract.

Room A is 6 m by 5 m. Room B is 7 m by 4 m.

```figure
(ms-rect 50 80 96 80 "6 m" "5 m" #f)
(ms-rect 190 96 112 64 "7 m" "4 m" #f)
(label 98 126 "A" 'big 'bold)
(label 246 134 "B" 'big 'bold)
(caption "Drawn to the same scale")
```

```check
(number
  (ask "How many more square meters does room A have than room B?")
  (answer 2) (unit "sq m") (from "6 * 5 - 7 * 4")
  (wrong-if 0 "6 + 5 and 7 + 4 are both 11, but area multiplies. A is 30 and B is 28.")
  (wrong-if 58 "That adds the 2 areas. \"How many more\" asks for the difference.")
  (hint "Room A: 6 x 5. Room B: 7 x 4.")
  (hint "30 - 28 = ?"))
```

---

## A worked example

```example
(example
  (problem "A wall is 10 feet by 8 feet. A can of paint covers 40 square feet. How much of the wall is left after 1 can?")
  (step "Find the area of the wall: 10 x 8 = 80 square feet.")
  (step "1 can covers 40 square feet.")
  (step (number (ask "80 - 40 = ?") (answer 40) (from "80 - 40")
          (wrong-if 120 "Painting covers part of the wall. Subtract what is painted.")))
  (answer "40 square feet are left to paint."))
```

---

## Now you finish one

A rug is 6 feet by 4 feet. The floor of the room is 9 feet by 7 feet. The rug covers 6 x 4 = 24 square feet.

```check
(number
  (ask "The floor's area is 9 x 7. How many square feet of floor does the rug NOT cover?")
  (answer 39) (unit "sq ft") (from "9 * 7 - 6 * 4")
  (wrong-if 63 "63 is the whole floor. Take away the 24 square feet the rug covers.")
  (wrong-if 87 "That adds the floor and the rug. The rug is on the floor, so subtract.")
  (hint "9 x 7 = 63.")
  (hint "63 - 24 = ?"))
```

---

## Practice

```check
(number
  (ask "A window is 3 feet by 4 feet. What is its area, in square feet?")
  (answer 12) (unit "sq ft") (from "3 * 4")
  (wrong-if 7 "3 + 4 adds the sides. Multiply them.")
  (hint "3 x 4 = ?"))
```

```check
(number
  (ask "A poster has an area of 72 square inches. It is 9 inches wide. How tall is it, in inches?")
  (answer 8) (unit "in") (from "72 / 9")
  (wrong-if 63 "72 - 9 subtracts. Find the number that times 9 is 72.")
  (hint "9 x ? = 72"))
```

---

```check
(choice
  (ask "Pat's garden is 5 m by 5 m. Lin's is 8 m by 3 m. Whose garden has more area?")
  (right "Pat's" (true "5 * 5 > 8 * 3"))
  (wrong "Lin's" (false "8 * 3 > 5 * 5")
    "Lin's garden is longer, but it is thin. 8 x 3 = 24 and 5 x 5 = 25.")
  (wrong "They are the same" (false "5 * 5 = 8 * 3")
    "Check each product: 5 x 5 = 25, but 8 x 3 = 24.")
  (hint "Multiply the sides of each garden."))
```

```check
(number
  (ask "A class has 3 tables. Each top is 6 feet by 2 feet. What is the area of all 3 table tops, in square feet?")
  (answer 36) (unit "sq ft") (from "3 * (6 * 2)")
  (wrong-if 12 "12 square feet is 1 table top. There are 3 tables.")
  (wrong-if 11 "That adds the numbers. Find 1 table top first: 6 x 2 = 12. Then 3 of them.")
  (hint "1 table top: 6 x 2.")
  (hint "Then 3 tables: 3 x 12."))
```

Now you can solve area problems: draw and label the rectangle, multiply, and divide to find a missing side.
