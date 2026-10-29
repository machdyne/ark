# Perimeter or area?

```lesson
(objective "Decide whether a word problem asks for perimeter or area, and solve it.")
(standards "3.MD.D.8" "3.MD.C.7b")
(minutes 25)
```

You can tell if a problem asks for perimeter or area, and then solve it.

Ask: does the problem go **around** the edge, or **cover** the inside?

- Around the edge: a fence, a border, trim, a frame. That is perimeter. Add the sides.
- Cover the inside: carpet, tiles, paint, grass. That is area. Multiply the sides.

```figure
(rect 72 52 176 104 'cool)
(frame 70 50 180 108 'ink 5)
(rect 110 92 100 22 'paper)
(label 160 107 "cover: area" 'small 'bold)
(label 160 40 "around: perimeter" 'small 'bold)
```

```check
(choice
  (ask "You want to put a fence around a garden. Do you need its perimeter or its area?")
  (right "Perimeter")
  (wrong "Area"
    "A fence goes around the edge, not over the inside. The distance around is the perimeter.")
  (hint "Does a fence go around or cover?"))
```

---

## Covering

Tiles, carpet and paint cover a surface. They need the area.

```check
(choice
  (ask "You want to cover a floor with carpet. Do you need its perimeter or its area?")
  (right "Area")
  (wrong "Perimeter"
    "Carpet covers the whole floor, not just the edge. The space it covers is the area.")
  (hint "Does carpet go around or cover?"))
```

---

## Solve it

Once you know which, solve it. A room is 6 m by 4 m.

- Carpet for the floor: area, $6 * 4 = 24$ square meters.
- A border along the walls: perimeter, $6 + 4 + 6 + 4 = 20$ meters.

```figure
(ms-grect 70 50 6 4 26 #f "6 m" "4 m")
```

```check
(number
  (ask "A rug is 5 ft by 3 ft. How many feet of trim go around its edge?")
  (answer 16) (unit "ft") (from "5 + 3 + 5 + 3")
  (wrong-if 15 "5 x 3 is the area. Trim goes around the edge, so add the 4 sides.")
  (wrong-if 8 "5 + 3 is halfway around. Add all 4 sides.")
  (hint "Trim goes around: perimeter.")
  (hint "5 + 3 + 5 + 3"))
```

---

## A worked example

```example
(example
  (problem "A wall is 9 ft wide and 8 ft tall. How much of it does Ana paint, in square feet?")
  (step "Paint covers the wall. So this asks for area.")
  (step "Multiply the sides: 9 x 8.")
  (step (number (ask "9 x 8 = ?") (answer 72) (from "9 * 8")
          (wrong-if 34 "9 + 8 + 9 + 8 is the perimeter. Paint covers the inside: multiply.")))
  (answer "Ana paints 72 square feet."))
```

---

## Now you finish one

A picture is 7 inches by 5 inches. Ben puts a frame around it.

```check
(choice
  (ask "Does the frame need the perimeter or the area?")
  (right "Perimeter")
  (wrong "Area"
    "The frame goes around the edge of the picture. It does not cover it.")
  (hint "Does a frame go around or cover?"))
```

```check
(number
  (ask "How many inches long is the frame?")
  (answer 24) (unit "in") (from "7 + 5 + 7 + 5")
  (wrong-if 35 "7 x 5 is the area. The frame goes around: 7 + 5 + 7 + 5.")
  (hint "7 + 5 = 12. Double it."))
```

---

## Practice

```check
(number
  (ask "A patio is 8 m by 5 m. How many square meters of tiles cover it?")
  (answer 40) (unit "sq m") (from "8 * 5")
  (wrong-if 26 "8 + 5 + 8 + 5 is the perimeter. Tiles cover the inside: 8 x 5.")
  (wrong-if 13 "8 + 5 adds 2 sides. Tiles cover the area: 8 x 5.")
  (hint "Tiles cover: area."))
```

```check
(number
  (ask "A square pen has sides of 6 m. How many meters of fence go around it?")
  (answer 24) (unit "m") (from "4 * 6")
  (wrong-if 36 "6 x 6 is the area. A fence goes around: 4 sides of 6.")
  (hint "A fence goes around: perimeter."))
```

---

```check
(choice
  (ask "Which question asks for area?")
  (right "How much grass seed covers a yard?")
  (wrong "How much ribbon goes around a box top?"
    "Ribbon goes around the edge. That is perimeter.")
  (wrong "How far is it to walk around a park?"
    "Walking around the edge is a distance: perimeter.")
  (hint "Look for covering, not going around."))
```

```check
(number
  (ask "A garden is 7 ft by 4 ft. How many square feet of soil cover it?")
  (answer 28) (unit "sq ft") (from "7 * 4")
  (wrong-if 22 "7 + 4 + 7 + 4 is the perimeter. Soil covers the garden: area.")
  (hint "Soil covers: 7 x 4."))
```

Now you can tell perimeter from area: around the edge, add the sides; covering the inside, multiply.
