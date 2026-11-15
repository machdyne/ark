# The area model

```lesson
(objective "Multiply a two-digit number by a one-digit number with an area model split by place value.")
(standards "4.NBT.B.5")
(minutes 25)
(keywords "area model")
```

You can multiply 4 × 36 by cutting a rectangle into easy parts.

Think of 4 × 36 as a rectangle 4 squares tall and 36 squares long. Its
area is 4 × 36 square units.

36 is 30 + 6, so cut the rectangle after 30 columns. Now there are 2
parts: 4 × 30 and 4 × 6.

```figure
(grid 34 50 36 4 7)
(line 244 40 244 88 'ink 2.5)
(label 139 40 "30" 'body 'bold)
(label 265 40 "6" 'body 'bold)
(text 26 70 "4" 'right 'body 'bold)
(label 139 120 "4 × 30 = 120" 'body)
(label 265 120 "4 × 6 = 24" 'small)
(caption "One rectangle, cut into 2 parts")
```

```check
(number
  (ask "What is the area of the big part, 4 × 30?")
  (answer 120) (from "4 * 30")
  (wrong-if 12 "4 × 3 = 12, but 30 is 3 tens. So 4 × 30 is 12 tens: 120.")
  (wrong-if 34 "That adds 4 + 30. The part is 4 rows of 30 squares: multiply.")
  (hint "30 is 3 tens. 4 × 3 = ?"))
```

---

## The area model

You do not need to draw every square. A rectangle with its sides
labelled is enough. A rectangle cut into parts to show a product is an
**area model**.

Cut the long side by place value: tens and ones. Find each part, then
add.

Move the slider to fill in the parts.

```figure
(define k (slider 'k 0 2 2 "Parts" 1))
(m4p1-area 50 60 240 80 '(30 6) '(4) k #f)
(label 160 190 (if (= k 2) "120 + 24 = 144" "") 'big 'bold)
```

```check
(number
  (ask "4 × 36 = 120 + 24. What is 4 × 36?")
  (answer 144) (from "120 + 24") (true "4 * 36 = 144")
  (wrong-if 124 "That is 4 × 30 + 6. The 6 must be multiplied by 4 too: 4 × 6 = 24.")
  (wrong-if 1224 "120 and 24 are added, not written side by side. 120 + 24 = 144.")
  (hint "Add the 2 parts: 120 + 24."))
```

---

## Another area model

7 × 58: cut 58 into 50 and 8.

- 7 × 50 = 350
- 7 × 8 = 56

Add the parts: 350 + 56 = 406.

```figure
(m4p1-area 50 60 240 80 '(50 8) '(7) 2 #f)
(label 160 190 "350 + 56 = 406" 'big 'bold)
```

```check
(number
  (ask "Use an area model: 5 × 47 = ?")
  (answer 235) (from "5 * 40 + 5 * 7") (true "5 * 47 = 235")
  (wrong-if 207 "That is 5 × 40 + 7. Multiply the 7 by 5 too: 5 × 7 = 35.")
  (wrong-if 2035 "200 and 35 are added, not written side by side. 200 + 35 = 235.")
  (hint "Cut 47 into 40 and 7.")
  (hint "5 × 40 = 200 and 5 × 7 = 35."))
```

---

## Worked example

```example
(example
  (problem "Find 6 × 73 with an area model.")
  (step "Cut 73 into 70 and 3.")
  (step "6 × 70 = 420 and 6 × 3 = 18.")
  (step "Add the parts: 420 + 18 = 438.")
  (answer "6 × 73 = 438"))
```

```example
(example
  (problem "Find 8 × 29 with an area model.")
  (step "Cut 29 into 20 and 9.")
  (step "8 × 20 = 160 and 8 × 9 = 72.")
  (step (number (ask "160 + 72 = ?") (answer 232) (from "160 + 72") (true "8 * 29 = 232")
    (wrong-if 222 "160 + 72: 160 + 70 = 230, then 2 more is 232.")))
  (answer "8 × 29 = 232"))
```

---

## Practice

```check
(number
  (ask "3 × 64 = ?")
  (answer 192) (from "3 * 60 + 3 * 4") (true "3 * 64 = 192")
  (wrong-if 184 "That is 3 × 60 + 4. The 4 must be multiplied by 3 too: 3 × 4 = 12.")
  (wrong-if 1812 "180 and 12 are added, not written side by side. 180 + 12 = 192.")
  (hint "3 × 60 = 180 and 3 × 4 = 12."))
```

```check
(choice
  (ask "Which area model shows 9 × 46?")
  (right "Sides 9 and 40 + 6, parts 360 and 54" (true "9 * 40 = 360") (true "9 * 6 = 54"))
  (wrong "Sides 9 and 4 + 6, parts 36 and 54"
    "The 4 in 46 is 4 tens: 40. Cut 46 into 40 and 6, not 4 and 6.")
  (wrong "Sides 9 and 40 + 6, parts 360 and 6"
    "Every part is a rectangle 9 tall. The small part is 9 × 6 = 54, not 6.")
  (hint "Cut 46 by place value: tens and ones."))
```

---

```check
(number
  (ask "A shelf has 6 rows of 24 books. How many books is that?")
  (answer 144) (unit "books") (from "6 * 20 + 6 * 4") (true "6 * 24 = 144")
  (wrong-if 30 "That adds 6 + 24. 6 rows of 24 books is 6 × 24.")
  (wrong-if 124 "That is 6 × 20 + 4. Multiply the 4 by 6 too: 6 × 4 = 24.")
  (hint "6 × 20 = 120 and 6 × 4 = 24."))
```

```check
(number
  (ask "7 × 85 = ?")
  (answer 595) (from "7 * 80 + 7 * 5") (true "7 * 85 = 595")
  (wrong-if 565 "That is 7 × 80 + 5. The 5 must be multiplied by 7 too: 7 × 5 = 35.")
  (wrong-if 5635 "560 and 35 are added, not written side by side. 560 + 35 = 595.")
  (hint "7 × 80 = 560 and 7 × 5 = 35."))
```

So: an area model cuts a factor into tens and ones, then adds the parts.
