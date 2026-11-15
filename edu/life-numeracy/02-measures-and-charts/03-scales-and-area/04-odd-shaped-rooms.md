# L-shaped rooms

```lesson
(objective "Work out the area of an L-shaped room by cutting it into rectangles.")
(minutes 25)
(keywords "compound shape")
```

You can find the area of a room that is not a plain rectangle.

A **compound shape** is a shape made of simpler shapes put together. An L-shaped room is two rectangles. Cut it into two, find each area, and add.

```figure
(path '(60 40 260 40 260 115 160 115 160 190 60 190 60 40) 'ink 2)
(line 160 40 160 115 'ink 1)
(text 160 32 "8 m" 'centre 'small)
(text 266 82 "3 m" 'small)
(text 52 119 "6 m" 'right 'small)
(text 110 206 "4 m" 'centre 'small)
(text 110 119 "A" 'centre 'body 'bold)
(text 210 82 "B" 'centre 'body 'bold)
(caption "Cut into A (4 m by 6 m) and B (4 m by 3 m)")
```

```check
(number
  (ask "Part A is 4 m by 6 m. Part B is 4 m by 3 m. What is the area of the whole room, in m²?")
  (answer 36) (unit "m²") (from "4 * 6 + 4 * 3")
  (wrong-if 48 "That is 8 * 6, a full rectangle. The corner at the bottom right is not part of the room.")
  (wrong-if 24 "That is part A alone. Add part B too: 4 * 3 = 12.")
  (hint "Area of A: 4 * 6.")
  (hint "Area of B: 4 * 3. Add them."))
```

---

## Finding a missing side

Plans do not always give every side. Use the sides you have. Above, the whole room is 8 m across and part A is 4 m across, so part B is 8 - 4 = 4 m across. The whole room is 6 m tall and B is 3 m tall, so the gap under B is 3 m.

```check
(number
  (ask "An L-shaped room is 10 ft across the top. The narrow part at the bottom is 6 ft across. How wide is the cut-out corner?")
  (answer 4) (unit "ft") (from "10 - 6")
  (wrong-if 16 "The corner is what is left over, so take away: 10 - 6.")
  (hint "The top is the narrow part plus the corner."))
```

---

## Or take away

Another way: work out the full rectangle, then take away the missing corner.

Above: the full rectangle is 8 * 6 = 48 m². The missing corner is 4 * 3 = 12 m². 48 - 12 = 36 m², the same answer.

```check
(choice
  (ask "Why do both ways give the same area?")
  (right "Both count the same floor, just cut up in a different way")
  (wrong "It is a lucky coincidence"
    "It is not luck. The floor is the same whichever way you cut it, so its area must be the same.")
  (wrong "Because the room is a square"
    "The room is not a square. Any way of cutting the same floor gives the same area.")
  (hint "Is the floor any different when you cut it another way?"))
```

---

## A worked example

```figure
(poly '(60 40 168 40 168 112 276 112 276 184 60 184) 'grey)
(path '(60 40 168 40 168 112 276 112 276 184 60 184 60 40) 'ink 2)
(line 60 112 168 112 'ink 1)
(text 114 32 "9 ft" 'centre 'small)
(text 52 116 "12 ft" 'right 'small)
(text 168 200 "18 ft" 'centre 'small)
(text 282 152 "6 ft" 'small)
(caption "A kitchen, cut into a top and a bottom part")
```

```example
(example
  (problem "Find the area of this kitchen.")
  (step "Bottom part: 18 ft by 6 ft, so 18 * 6 = 108 sq ft.")
  (step "Top part: 9 ft wide. Its height is 12 - 6 = 6 ft.")
  (step "Top part: 9 * 6 = 54 sq ft.")
  (answer "108 + 54 = 162 sq ft."))
```

```check
(number
  (ask "Now you: work out the same kitchen by taking away. Full rectangle 18 ft by 12 ft, minus the missing corner 9 ft by 6 ft. Area in sq ft?")
  (answer 162) (unit "sq ft") (from "18 * 12 - 9 * 6")
  (wrong-if 216 "That is the full rectangle. Take away the missing corner, 9 * 6 = 54.")
  (hint "18 * 12 = 216.")
  (hint "Take away 9 * 6."))
```

---

## Practice

```check
(number
  (ask "A room is two rectangles: 5 m by 4 m and 2 m by 3 m. What is its area, in m²?")
  (answer 26) (unit "m²") (from "5 * 4 + 2 * 3")
  (wrong-if 14 "That adds all the side lengths. Find each area and add: 20 + 6.")
  (hint "5 * 4 and 2 * 3, then add."))
```

```check
(number
  (ask "A yard is 20 m by 15 m. A shed in one corner is 3 m by 2 m. What area of grass is left, in m²?")
  (answer 294) (unit "m²") (from "20 * 15 - 3 * 2")
  (wrong-if 306 "Take the shed away, don't add it: 300 - 6.")
  (hint "Full yard minus the shed."))
```

For a compound shape, cut it into rectangles and add their areas, or take the missing part away from a full rectangle.
