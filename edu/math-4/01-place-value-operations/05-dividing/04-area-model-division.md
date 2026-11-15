# Dividing with an area model

```lesson
(objective "Divide with an area model: find the unknown side of a rectangle from its area and one side.")
(standards "4.NBT.B.6")
(minutes 25)
```

You can divide by finding the missing side of a rectangle.

A rectangle's area is one side times the other. So if you know the
area and one side, the other side is the area divided by that side.

A rectangle has an area of 84 square units and one side of 4. The
other side is 84 ÷ 4, because 4 × ? = 84.

```check
(number
  (ask "A rectangle has an area of 84 square units. One side is 4 units. How long is the other side?")
  (answer 21) (unit "units") (from "84 / 4") (true "4 * 21 = 84")
  (wrong-if 80 "80 is 4 × 20, only part of the area. 4 left over makes 1 more: 20 + 1.")
  (wrong-if 88 "That adds 84 + 4. The side is the area divided by the other side: 84 ÷ 4.")
  (hint "4 × 20 = 80. How much area is left?")
  (hint "4 × 1 = 4."))
```

---

## Build the side in parts

Find 372 ÷ 6 with an area model. The side you know is 6, and the area
is 372.

Fill the area a part at a time. Move the slider.

```figure
(define k (slider 'k 0 2 2 "Parts" 1))
(m4p1-area 60 70 220 70 '(60 2) '(6) k #t)
(label 160 30 "area 372" 'body 'bold)
(label 160 185 (list-ref '("6 × ? = 372" "6 × 60 = 360. 12 is left." "6 × 2 = 12. 60 + 2 = 62") k) 'body)
```

- 6 × 60 = 360 fills most of it. 372 - 360 = 12 is left.
- 6 × 2 = 12 fills the rest.

The unknown side is 60 + 2 = 62. So 372 ÷ 6 = 62.

```check
(number
  (ask "195 ÷ 5: a part 5 × 30 = 150 leaves 45. What is the whole unknown side?")
  (answer 39) (from "30 + 45 / 5") (true "5 * 39 = 195")
  (wrong-if 30 "30 is only the first part. 45 is left, and 5 × 9 = 45, so add 9.")
  (wrong-if 9 "9 is only the second part. Add the first part too: 30 + 9.")
  (hint "45 ÷ 5 = ?")
  (hint "Add the 2 parts of the side."))
```

---

## Three parts

A bigger area can take 3 parts. 856 ÷ 4:

- 4 × 200 = 800. 56 is left.
- 4 × 10 = 40. 16 is left.
- 4 × 4 = 16. Nothing is left.

The side is 200 + 10 + 4 = 214.

```figure
(m4p1-area 60 70 220 70 '(200 10 4) '(4) 3 #t)
(label 160 30 "area 856" 'body 'bold)
(label 160 185 "200 + 10 + 4 = 214" 'body 'bold)
```

```check
(number
  (ask "738 ÷ 6 = ? Use parts of 100, 20 and 3.")
  (answer 123) (from "100 + 20 + 3") (true "6 * 123 = 738")
  (wrong-if 1203 "The parts of the side are added: 100 + 20 + 3 = 123.")
  (wrong-if 120 "6 × 120 = 720, and 18 is left. 6 × 3 = 18, so add 3 more.")
  (hint "6 × 100 = 600. 138 is left.")
  (hint "6 × 20 = 120. 18 is left."))
```

---

## Worked example

```example
(example
  (problem "Find 963 ÷ 3 with an area model.")
  (step "3 × 300 = 900. 63 is left.")
  (step "3 × 20 = 60. 3 is left. 3 × 1 = 3. Nothing is left.")
  (step "The side is 300 + 20 + 1.")
  (answer "963 ÷ 3 = 321"))
```

```example
(example
  (problem "Find 525 ÷ 7 with an area model.")
  (step "7 × 70 = 490. 35 is left.")
  (step "7 × 5 = 35. Nothing is left.")
  (step (number (ask "What is the unknown side?") (answer 75) (from "70 + 5") (true "7 * 75 = 525")
    (wrong-if 70 "Add both parts of the side: 70 + 5.")))
  (answer "525 ÷ 7 = 75"))
```

---

## Practice

```check
(number
  (ask "A rectangle has an area of 96 square units. One side is 8 units. How long is the other side?")
  (answer 12) (unit "units") (from "96 / 8") (true "8 * 12 = 96")
  (wrong-if 10 "8 × 10 = 80, and 16 is left. 8 × 2 = 16, so add 2.")
  (wrong-if 88 "That subtracts 96 - 8. The side is 96 ÷ 8.")
  (hint "8 × 10 = 80. What is left?"))
```

```check
(number
  (ask "An area model for 2,748 ÷ 4 has a side of 4. Its parts of the area are 2,400, 280 and 68. What is the unknown side?")
  (answer 687) (from "2400 / 4 + 280 / 4 + 68 / 4") (true "4 * 687 = 2748")
  (wrong-if 2748 "Adding the parts of the area gives the area back. Divide each part by 4: 600, 70 and 17.")
  (wrong-if 677 "68 ÷ 4 is 17, not 7: 4 × 17 = 68. So 600 + 70 + 17.")
  (hint "Each part of the area is 4 times a part of the side.")
  (hint "2,400 ÷ 4 = 600 and 280 ÷ 4 = 70. What is 68 ÷ 4?"))
```

---

```check
(number
  (ask "1,236 ÷ 4 = ? Use parts of 300 and 9.")
  (answer 309) (from "300 + 9") (true "4 * 309 = 1236")
  (wrong-if 39 "The first part is 300, not 30: 4 × 300 = 1,200.")
  (wrong-if 3009 "Add the parts of the side: 300 + 9 = 309.")
  (hint "4 × 300 = 1,200. 36 is left."))
```

```check
(number
  (ask "A garden has an area of 4,515 square feet. It is 5 feet wide. How long is it?")
  (answer 903) (unit "feet") (from "4515 / 5") (true "5 * 903 = 4515")
  (wrong-if 93 "5 × 900 = 4,500, not 5 × 90. Then 15 is left: 5 × 3. So 900 + 3.")
  (wrong-if 4510 "That subtracts 4,515 - 5. The length is the area ÷ the width.")
  (hint "5 × 900 = 4,500. 15 is left."))
```

So: fill the area in parts, and add up the parts of the unknown side.
