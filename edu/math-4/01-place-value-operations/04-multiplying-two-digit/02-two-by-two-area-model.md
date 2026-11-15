# An area model with 4 parts

```lesson
(objective "Multiply two two-digit numbers with an area model of 4 parts.")
(standards "4.NBT.B.5")
(minutes 25)
```

You can multiply 23 × 14 by cutting both sides of a rectangle by place value.

Cut 23 into 20 + 3 along the top. Cut 14 into 10 + 4 down the side.
Now the rectangle has 4 parts. Find each one, then add all 4.

Move the slider to fill in the parts.

```figure
(define k (slider 'k 0 4 4 "Parts" 1))
(m4p1-area 60 40 220 130 '(20 3) '(10 4) k #f)
(label 160 205 (if (= k 4) "200 + 80 + 30 + 12 = 322" "") 'body 'bold)
```

```check
(number
  (ask "The 4 parts of 23 × 14 are 200, 80, 30 and 12. What is 23 × 14?")
  (answer 322) (from "200 + 80 + 30 + 12") (true "23 * 14 = 322")
  (wrong-if 212 "That adds only 200 and 12. The 2 other parts, 80 and 30, are part of the rectangle too.")
  (wrong-if 37 "That adds 23 + 14. The product is the whole area: add all 4 parts.")
  (hint "Add all 4 parts.")
  (hint "200 + 80 = 280. 30 + 12 = 42."))
```

---

## Each part is a product

Each part is one piece of the top times one piece of the side.

36 × 25: the top is 30 + 6 and the side is 20 + 5.

```figure
(m4p1-area 60 40 220 130 '(30 6) '(20 5) 4 #f)
(label 160 205 "600 + 150 + 120 + 30 = 900" 'body 'bold)
```

```check
(number
  (ask "In the area model of 36 × 25, what is the part 6 × 20?")
  (answer 120) (from "6 * 20")
  (wrong-if 12 "6 × 2 = 12, but 20 is 2 tens. So 6 × 20 is 12 tens: 120.")
  (wrong-if 26 "That adds 6 + 20. Each part is a product: 6 × 20.")
  (hint "6 × 2 = 12. 20 is 2 tens."))
```

---

## Another one

47 × 32: the top is 40 + 7 and the side is 30 + 2.

- 40 × 30 = 1,200 and 7 × 30 = 210
- 40 × 2 = 80 and 7 × 2 = 14

```check
(number
  (ask "47 × 32 = 1,200 + 210 + 80 + 14. What is 47 × 32?")
  (answer 1504) (from "1200 + 210 + 80 + 14") (true "47 * 32 = 1504")
  (wrong-if 1214 "That adds only 1,200 and 14. Add all 4 parts: 210 and 80 too.")
  (wrong-if 1404 "Check the sum: 1,200 + 210 = 1,410. Then 1,410 + 80 + 14 = 1,504.")
  (hint "1,200 + 210 = 1,410.")
  (hint "1,410 + 80 + 14 = ?"))
```

---

## Worked example

```example
(example
  (problem "Find 52 × 18 with an area model.")
  (step "Cut 52 into 50 + 2 and 18 into 10 + 8.")
  (step "50 × 10 = 500. 2 × 10 = 20. 50 × 8 = 400. 2 × 8 = 16.")
  (step "Add the 4 parts: 500 + 20 + 400 + 16 = 936.")
  (answer "52 × 18 = 936"))
```

```example
(example
  (problem "Find 64 × 27 with an area model.")
  (step "Cut 64 into 60 + 4 and 27 into 20 + 7.")
  (step "60 × 20 = 1,200. 4 × 20 = 80. 60 × 7 = 420. 4 × 7 = 28.")
  (step (number (ask "1,200 + 80 + 420 + 28 = ?") (answer 1728) (from "1200 + 80 + 420 + 28") (true "64 * 27 = 1728")
    (wrong-if 1228 "That adds only 1,200 and 28. The parts 80 and 420 count too.")))
  (answer "64 × 27 = 1,728"))
```

---

## Practice

```check
(number
  (ask "Find 38 × 46 with an area model.")
  (answer 1748) (from "30 * 40 + 8 * 40 + 30 * 6 + 8 * 6") (true "38 * 46 = 1748")
  (wrong-if 1248 "That adds only 30 × 40 and 8 × 6. There are 4 parts: 1,200, 320, 180 and 48.")
  (hint "Cut 38 into 30 + 8 and 46 into 40 + 6.")
  (hint "The parts are 1,200, 320, 180 and 48."))
```

```check
(choice
  (ask "Which are the 4 parts of 29 × 73?")
  (right "1,400 and 630 and 60 and 27" (true "29 * 73 = 1400 + 630 + 60 + 27"))
  (wrong "1,400 and 27"
    "Only 2 parts leaves out 20 × 3 and 9 × 70. An area model of 2 two-digit numbers has 4 parts.")
  (wrong "140 and 63 and 6 and 27"
    "The tens are tens: 20 × 70 is 1,400, not 140, and 9 × 70 is 630.")
  (hint "Cut 29 into 20 + 9 and 73 into 70 + 3.")
  (hint "20 × 70, 9 × 70, 20 × 3, 9 × 3."))
```

---

```check
(number
  (ask "34 × 21 = ?")
  (answer 714) (from "30 * 20 + 4 * 20 + 30 * 1 + 4 * 1") (true "34 * 21 = 714")
  (wrong-if 604 "That adds only 30 × 20 and 4 × 1. Add 4 × 20 = 80 and 30 × 1 = 30 too.")
  (hint "The parts are 600, 80, 30 and 4."))
```

```check
(number
  (ask "A rectangle is 56 squares long and 43 squares tall. How many squares is that?")
  (answer 2408) (unit "squares") (from "50 * 40 + 6 * 40 + 50 * 3 + 6 * 3") (true "56 * 43 = 2408")
  (wrong-if 2018 "That adds only 50 × 40 and 6 × 3. The 2 other parts, 240 and 150, are squares too.")
  (wrong-if 99 "That adds 56 + 43. The number of squares is the area: 56 × 43.")
  (hint "The parts are 2,000, 240, 150 and 18."))
```

So: cut both factors into tens and ones, find the 4 parts, and add them all.
