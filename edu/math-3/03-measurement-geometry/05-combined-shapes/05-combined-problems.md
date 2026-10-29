# Rooms and gardens

```lesson
(objective "Solve word problems about the area of rooms and gardens made of rectangles.")
(standards "3.MD.C.7d")
(minutes 25)
```

You can solve problems about rooms and gardens that are made of rectangles.

First draw the shape and label every side. Then choose: cut it into rectangles and add, or take away a missing part.

```figure
(ms-poly '(40 40 160 40 160 120 280 120 280 200 40 200) '("6 m" "4 m" "6 m" "4 m" "12 m" "8 m") #f)
(line 40 120 160 120 'ink 2)
(caption "A garden shaped like an L")
```

```check
(number
  (ask "Cut the garden across: 6 by 4 on top, 12 by 4 below. What is its area, in square meters?")
  (answer 72) (unit "sq m") (from "6 * 4 + 12 * 4")
  (wrong-if 24 "24 is only the top part. Add the bottom part: 12 x 4 = 48.")
  (wrong-if 96 "12 x 8 is the rectangle around the garden. The top right corner is not part of it.")
  (hint "6 x 4 = 24 and 12 x 4 = 48."))
```

---

## Check with the other way

You can check by taking away. The big rectangle is 12 by 8. The missing corner is 6 by 4.

```check
(number
  (ask "What is 12 x 8 - 6 x 4?")
  (answer 72) (from "12 * 8 - 6 * 4")
  (wrong-if 120 "Subtract the corner, do not add it: 96 - 24.")
  (hint "12 x 8 = 96 and 6 x 4 = 24.")
  (hint "96 - 24 = ?"))
```

Both ways give 72 square meters, so the answer checks out.

---

## A worked example

```figure
(ms-poly '(40 40 120 40 120 120 240 120 240 200 40 200) '("4 ft" "4 ft" "6 ft" "4 ft" "10 ft" "8 ft") #f)
(line 120 120 120 200 'ink 2)
```

```example
(example
  (problem "Carpet is put on this floor. How many square feet of carpet are needed?")
  (step "Cut the floor down: a 4 by 8 part and a 6 by 4 part.")
  (step "4 x 8 = 32 and 6 x 4 = 24.")
  (step (number (ask "32 + 24 = ?") (answer 56) (from "32 + 24")
          (wrong-if 46 "3 tens and 2 tens are 5 tens. 2 ones and 4 ones are 6 ones: 56.")))
  (answer "56 square feet of carpet are needed."))
```

---

## Now you finish one

A play area is 10 m by 7 m. A sandbox of 3 m by 2 m sits in one corner. Grass covers the rest. The whole area is 10 x 7 = 70.

```check
(number
  (ask "How many square meters of grass are there?")
  (answer 64) (unit "sq m") (from "10 * 7 - 3 * 2")
  (wrong-if 70 "70 is the whole play area. Take away the sandbox, 3 x 2 = 6.")
  (wrong-if 65 "The sandbox is 3 x 2 = 6, not 5. 70 - 6 = 64.")
  (hint "The sandbox is 3 x 2."))
```

---

## Practice

```figure
(ms-poly '(40 40 120 40 120 100 200 100 200 40 280 40 280 160 40 160) '("4" "3" "4" "3" "4" "6" "12" "6") #f)
(caption "A U-shaped garden, sides in feet")
```

```check
(number
  (ask "What is the area of the U-shaped garden, in square feet?")
  (answer 60) (unit "sq ft") (from "12 * 6 - 4 * 3")
  (wrong-if 72 "72 is the big rectangle, 12 x 6. Take away the notch, 4 x 3 = 12.")
  (wrong-if 84 "The notch is missing, so subtract it, do not add it.")
  (hint "12 x 6 = 72. The notch is 4 x 3."))
```

---

```check
(number
  (ask "A room has 2 parts: 5 ft by 4 ft and 7 ft by 6 ft. What is the area of the room, in square feet?")
  (answer 62) (unit "sq ft") (from "5 * 4 + 7 * 6")
  (wrong-if 42 "42 is only the bigger part. Add the smaller part, 5 x 4 = 20.")
  (wrong-if 22 "That adds the side lengths. Find each area, then add: 20 + 42.")
  (hint "5 x 4 = 20 and 7 x 6 = 42."))
```

```check
(number
  (ask "Tiles are 1 foot on a side. How many tiles cover a floor of 3 ft by 8 ft and 3 ft by 2 ft?")
  (answer 30) (unit "tiles") (from "3 * 8 + 3 * 2")
  (wrong-if 24 "24 tiles cover only the first part. Add the second part, 3 x 2 = 6.")
  (hint "Find each part's area, then add."))
```

Now you can find the area of rooms and gardens made of rectangles, and check by the other way.
