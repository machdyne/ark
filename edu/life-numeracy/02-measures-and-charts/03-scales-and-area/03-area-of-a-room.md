# Area of a room

```lesson
(objective "Work out the area of a rectangular room in square meters or square feet.")
(minutes 20)
(keywords "area" "square meter" "square foot")
```

You can work out how much floor a room has, to buy carpet, tiles or paint.

The **area** of a shape is how much flat surface it covers. It is counted in squares:

- a **square meter** (m²) is a square 1 m on each side;
- a **square foot** (sq ft) is a square 1 ft on each side.

This room is 5 m by 3 m. Count the squares.

```figure
(grid 60 60 5 3 40)
(text 160 50 "5 m" 'centre 'small)
(text 50 124 "3 m" 'right 'small)
(text 160 200 "each square is 1 square meter" 'centre 'small)
```

```check
(number
  (ask "How many square meters is the floor of this room?")
  (answer 15) (unit "m²") (from "5 * 3")
  (wrong-if 16 "That is the perimeter: 5 + 3 + 5 + 3. Area counts the squares inside, not the edges.")
  (wrong-if 8 "That adds 5 + 3. Count the squares: 3 rows of 5.")
  (hint "There are 3 rows. How many squares in each?"))
```

---

## Length times width

You do not need to draw the squares. For a rectangle:

area = length times width

A room 4.5 m by 3.2 m has an area of 4.5 * 3.2 = 14.4 m². The answer is in square units: m² or sq ft.

```check
(number
  (ask "A bedroom is 12 ft by 11 ft. What is its area, in square feet?")
  (answer 132) (unit "sq ft") (from "12 * 11")
  (wrong-if 46 "That is the perimeter, the distance around. Area is length times width: 12 * 11.")
  (wrong-if 23 "That adds 12 + 11. Area multiplies: 12 * 11.")
  (hint "Multiply the length by the width."))
```

---

## Same units first

Both sides must be in the same unit. A room 4 m by 250 cm: change 250 cm to 2.5 m, then 4 * 2.5 = 10 m².

```check
(number
  (ask "A hallway is 6 m long and 90 cm wide. What is its area, in square meters?")
  (answer 5.4) (unit "m²") (from "6 * 0.9")
  (wrong-if 540 "6 and 90 are in different units. Change 90 cm to 0.9 m first.")
  (hint "90 cm is 0.9 m."))
```

---

## A worked example

```figure
(nu2-room 55 50 210 150 "14 ft" "10 ft" 'grey)
```

```example
(example
  (problem "Carpet costs \$3 a square foot. What does it cost for a room 14 ft by 10 ft?")
  (step "Area: 14 * 10 = 140 sq ft.")
  (step "Cost: 140 * 3.")
  (answer "\$420."))
```

```check
(number
  (ask "Now you: tiles cost \$25 a square meter. What do they cost for a floor 4 m by 3 m, in dollars?")
  (answer 300) (unit "dollars") (from "4 * 3 * 25")
  (wrong-if 350 "That uses the perimeter, 14 m. Tiles cover the floor: the area is 4 * 3 = 12 m².")
  (hint "Find the area first.")
  (hint "Then multiply by \$25."))
```

---

## Practice

```check
(choice
  (ask "A room is 3 m by 3 m. Another is 2 m by 4 m. Which has more floor?")
  (right "The 3 m by 3 m room: 9 m² against 8 m²" (true "3 * 3 > 2 * 4"))
  (wrong "The 2 m by 4 m room, since 4 m is the longest side"
    "The longest side alone does not decide it. Multiply: 2 * 4 = 8 m², less than 3 * 3 = 9 m².")
  (wrong "They are the same, since 3 + 3 = 2 + 4"
    "Adding the sides gives half the perimeter. The areas are 9 m² and 8 m²: they differ.")
  (hint "Work out each area."))
```

```check
(number
  (ask "A patio is 5.5 m by 4 m. What is its area, in m²?")
  (answer 22) (unit "m²") (from "5.5 * 4")
  (wrong-if 19 "That is the perimeter. Area is length times width.")
  (hint "5.5 * 4."))
```

The area of a rectangle is its length times its width, in square units.
