# Area or perimeter?

```lesson
(objective "Solve real-world problems with big rectangles, choosing the area or the perimeter formula.")
(standards "4.MD.A.3")
(minutes 25)
```

You can solve a problem about a rectangle once you know whether it asks about the inside or the edge.

Area is the space inside: carpet, paint, grass. Perimeter is the way around: a fence, a border, a frame.

```figure
(rect 60 50 200 120 'good)
(frame 60 50 200 120 'ink 4)
(label 160 115 "grass: area" 'body 'bold)
(text 160 40 "fence: perimeter" 'centre 'small 'bold)
```

```check
(choice
  (ask "You put a fence around a garden. Which do you find?")
  (right "the perimeter")
  (wrong "the area" "A fence goes along the edge, not over the inside. The edge is the perimeter.")
  (hint "Is a fence along the edge or over the inside?"))
```

---

## Which formula?

```check
(choice
  (ask "You cover a floor with tiles. Which formula do you use?")
  (right "A = l × w")
  (wrong "P = 2 × (l + w)" "Tiles cover the inside of the floor. That is area: A = l × w.")
  (hint "Tiles cover the inside."))
```

---

## A big field

A soccer field is 100 m long and 60 m wide.

Grass seed covers the inside: $A = 100 * 60 = 6000$ square meters.

A line painted around the edge is the perimeter: $P = 2 * (100 + 60) = 320$ meters.

```check
(number
  (ask "A playground is 40 m long and 25 m wide. How many meters of fence go around it?")
  (answer 130) (unit "m") (from "2 * (40 + 25)")
  (wrong-if 1000 "1,000 square meters is the area. A fence goes around: the perimeter.")
  (wrong-if 65 "65 m is halfway around. Double it.")
  (hint "P = 2 × (40 + 25)"))
```

---

## A worked example

```example
(example
  (problem "A wall is 12 ft long and 9 ft high. A can of paint covers 54 square feet. How many cans paint the wall?")
  (step "Paint covers the inside: area. A = 12 × 9 = 108 square feet.")
  (step "Each can covers 54 square feet.")
  (step (number (ask "108 ÷ 54 = ?") (answer 2) (unit "cans") (from "12 * 9 / 54")
          (wrong-if 1 "1 can covers only 54 of the 108 square feet.")))
  (answer "You need 2 cans."))
```

---

## Practice

```check
(number
  (ask "A rug is 8 ft long and 5 ft wide. What area does it cover, in square feet?")
  (answer 40) (unit "square ft") (from "8 * 5")
  (wrong-if 26 "26 ft is the perimeter. A rug covers the floor: area.")
  (hint "A = 8 × 5"))
```

```check
(number
  (ask "A photo is 10 inches long and 8 inches wide. How many inches of frame go around it?")
  (answer 36) (unit "in") (from "2 * (10 + 8)")
  (wrong-if 80 "80 is the area. A frame goes around: perimeter.")
  (hint "P = 2 × (10 + 8)"))
```

---

```check
(number
  (ask "A garden has an area of 96 square meters. It is 12 m long. How many meters of fence go around it?")
  (answer 40) (unit "m") (from "2 * (12 + 96 / 12)")
  (wrong-if 8 "8 m is the width. The fence goes all the way around: 2 × (12 + 8).")
  (wrong-if 20 "20 m is halfway around. Double it.")
  (hint "First the width: 96 ÷ 12 = 8.")
  (hint "Then P = 2 × (12 + 8)."))
```

Area tells how much covers the inside, and perimeter tells how far it is around the edge.
