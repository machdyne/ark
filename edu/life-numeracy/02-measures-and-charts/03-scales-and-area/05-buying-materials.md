# Buying paint and flooring

```lesson
(objective "Work out how much paint or flooring to buy, rounding up to whole cans or packs.")
(minutes 25)
(keywords "coverage")
```

You can work out how many cans of paint or packs of flooring a job needs.

A can of paint or a pack of flooring says how much area it covers: its **coverage**. Every product is different, so read the label. In this lesson the coverages are made-up examples.

To find how many you need: divide the area by the coverage.

$$ 30 / 10 = 3 $$

So 30 m² of wall, with paint that covers 10 m² a can, needs 3 cans for one coat.

```check
(number
  (ask "A floor is 24 m². A pack of flooring covers 2 m². How many packs?")
  (answer 12) (unit "packs") (from "24 / 2")
  (wrong-if 48 "You multiplied. Each pack covers 2 m², so divide the area among the packs: 24 / 2.")
  (hint "Divide the area by the coverage of one pack."))
```

---

## Round up

You cannot buy part of a can. If the answer is not whole, round up to the next whole number, even if it is only a little over: rounding down leaves part of the job undone.

```check
(number
  (ask "A wall is 23 m². A can covers 10 m². How many cans must you buy?")
  (answer 3) (unit "cans") (from "23 / 10 + 0.7")
  (wrong-if 2 "23 / 10 = 2.3. Two cans cover only 20 m², so 3 m² would be left bare. Round up.")
  (wrong-if 2.3 "You cannot buy 0.3 of a can. Round up to whole cans.")
  (hint "23 / 10 = 2.3.")
  (hint "Round up to a whole can."))
```

---

## Walls

For walls, the area of each wall is its width times its height. A room's 4 walls together: the perimeter times the height. Take away big windows and doors if you like; many people leave them in, which gives a little spare.

```figure
(nu2-room 60 70 110 70 "4 m" "2.5 m" 'grey)
(nu2-room 180 70 82 70 "3 m" #f 'grey)
(text 160 170 "and the same again: 4 m, then 3 m" 'centre 'small)
(text 160 190 "walls side by side: perimeter times height" 'centre 'small)
```

```check
(number
  (ask "A room is 4 m by 3 m, and 2.5 m high. What is the area of its 4 walls, in m²?")
  (answer 35) (unit "m²") (from "2 * (4 + 3) * 2.5")
  (wrong-if 12 "That is the floor, 4 * 3. The walls are the perimeter, 14 m, times the height, 2.5 m.")
  (wrong-if 30 "That uses the area of the floor times 2.5. Use the perimeter: 2 * (4 + 3) = 14 m, then times 2.5.")
  (hint "The perimeter is 2 * (4 + 3) = 14 m.")
  (hint "Times the height, 2.5 m."))
```

---

## Two coats

Paint often needs two coats. Then you need twice the area.

```example
(example
  (problem "35 m² of wall, 2 coats. A can covers 12 m². How many cans?")
  (step "Two coats: 35 * 2 = 70 m².")
  (step "70 / 12 = 5.83...")
  (step "Round up.")
  (answer "6 cans."))
```

```check
(number
  (ask "Now you: 40 m² of wall, 2 coats. A can covers 15 m². How many cans?")
  (answer 6) (unit "cans") (from "40 * 2 / 15 + 2/3")
  (wrong-if 3 "That is for one coat. Two coats need twice the area: 80 m².")
  (wrong-if 5 "80 / 15 = 5.33. Five cans cover only 75 m², so round up to 6.")
  (hint "Double the area for 2 coats.")
  (hint "80 / 15, then round up."))
```

---

## Practice

```check
(number
  (ask "A floor is 14 ft by 10 ft. A box of tiles covers 15 sq ft. How many boxes, with no spare?")
  (answer 10) (unit "boxes") (from "14 * 10 / 15 + 2/3")
  (wrong-if 9 "140 / 15 = 9.33. Nine boxes cover only 135 sq ft. Round up to 10.")
  (hint "The area is 14 * 10 = 140 sq ft.")
  (hint "140 / 15, then round up."))
```

```check
(choice
  (ask "Paint costs \$32 a can. You need 2.2 cans' worth. What do you pay?")
  (right "\$96 for 3 cans" (true "3 * 32 = 96"))
  (wrong "\$70.40"
    "That is 2.2 * \$32. But a store sells whole cans, so you buy 3.")
  (wrong "\$64 for 2 cans"
    "Two cans would leave part of the wall unpainted. Round up to 3 cans.")
  (hint "How many whole cans must you buy?"))
```

Divide the area by the coverage and round up to whole cans or packs; double the area for two coats.
