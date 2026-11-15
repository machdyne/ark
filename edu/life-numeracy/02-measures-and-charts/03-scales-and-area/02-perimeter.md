# Perimeter

```lesson
(objective "Work out the perimeter of a room, for example for a baseboard or a fence.")
(minutes 20)
(keywords "perimeter")
```

You can work out the distance all the way around a room or a yard.

The **perimeter** of a shape is the total length of its edges: the distance all the way around. You need it to buy a fence, a baseboard (the strip along the foot of a wall), or edging for a garden bed.

For a rectangle, the opposite sides are equal, so add all 4 sides:

$$ 5 + 4 + 5 + 4 = 18 $$

```figure
(nu2-room 70 50 200 160 "5 m" "4 m" #f)
(text 280 134 "4 m" 'small)
(text 170 228 "5 m" 'centre 'small)
```

```check
(number
  (ask "What is the perimeter of this 5 m by 4 m room, in meters?")
  (answer 18) (unit "m") (from "2 * (5 + 4)")
  (wrong-if 9 "That is only 2 sides. A room has 4 sides: 5 + 4 + 5 + 4.")
  (wrong-if 20 "That multiplies 5 * 4, which is about the floor space, not the edges. The perimeter adds the sides.")
  (hint "Add all 4 sides.")
  (hint "5 + 4 + 5 + 4."))
```

---

## A shortcut

Since the sides come in pairs, add the length and the width, then double:

$$ 2 * (5 + 4) = 18 $$

```check
(number
  (ask "A yard is 30 ft long and 22 ft wide. How many feet of fence go all the way around?")
  (answer 104) (unit "feet") (from "2 * (30 + 22)")
  (wrong-if 52 "That is one length and one width. Double it for the other two sides.")
  (wrong-if 660 "That is 30 * 22, which is about the ground inside. A fence goes along the edges, so add them.")
  (hint "Add the length and the width, then double."))
```

---

## Same units first

Both sides must be in the same unit before you add. A room 4 m by 350 cm: change 350 cm to 3.5 m first.

```check
(number
  (ask "A room is 4 m by 350 cm. What is its perimeter in meters?")
  (answer 15) (unit "m") (from "2 * (4 + 3.5)")
  (wrong-if 708 "4 and 350 are in different units. Change 350 cm to 3.5 m first.")
  (hint "350 cm is how many meters?")
  (hint "Then 2 * (4 + 3.5)."))
```

---

## Leaving out a door

A baseboard does not run across a doorway. Work out the perimeter, then take away the width of each door.

```example
(example
  (problem "A room is 4 m by 3 m with one door 0.9 m wide. How much baseboard do you need?")
  (step "Perimeter: 2 * (4 + 3) = 14 m.")
  (step "Take away the door: 14 - 0.9 = 13.1 m.")
  (answer "13.1 m of baseboard (and buy a little extra for cutting)."))
```

```check
(number
  (ask "Now you: a room is 12 ft by 10 ft with one 3 ft door. How many feet of baseboard?")
  (answer 41) (unit "feet") (from "2 * (12 + 10) - 3")
  (wrong-if 44 "That is the whole perimeter. Take away the 3 ft door.")
  (wrong-if 38 "Take the door away once, not twice: 44 - 3 = 41.")
  (hint "The perimeter is 2 * (12 + 10)."))
```

---

## Practice

```check
(number
  (ask "A square table is 1.2 m on each side. What is its perimeter, in meters?")
  (answer 4.8) (unit "m") (from "4 * 1.2")
  (wrong-if 2.4 "A square has 4 equal sides, not 2. 4 * 1.2.")
  (wrong-if 1.44 "That is 1.2 * 1.2, which is about the table top's space. For the perimeter, add the 4 sides.")
  (hint "A square has 4 equal sides."))
```

```check
(choice
  (ask "Which job needs the perimeter, not the floor space?")
  (right "Putting a border of tape around the edge of a floor")
  (wrong "Buying carpet to cover the floor"
    "Carpet covers the whole floor, so it needs the floor space, not the distance around it.")
  (wrong "Buying tiles for a floor"
    "Tiles fill the floor. That needs the floor space, which the next lesson teaches.")
  (hint "Which one goes only along the edges?"))
```

The perimeter is the distance around: for a rectangle, add the length and width and double.
