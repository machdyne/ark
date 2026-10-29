# Perimeter of a rectangle

```lesson
(objective "Find the perimeter of a rectangle from the lengths of 2 sides that meet.")
(standards "3.MD.D.8")
(minutes 20)
```

You can find the perimeter of a rectangle when you know just 2 sides that meet.

In a rectangle, the sides across from each other are the same length. The top and bottom match. The left and right sides match.

```figure
(define t (toggle 't "Show all sides" #f))
(ms-poly '(70 60 250 60 250 140 70 140)
  (if t '("9 cm" "4 cm" "9 cm" "4 cm") '("9 cm" "?" "?" "4 cm")) #f)
(caption "A rectangle 9 cm by 4 cm")
```

```check
(number
  (ask "The top of this rectangle is 9 cm. How long is the bottom, in cm?")
  (answer 9) (unit "cm")
  (wrong-if 4 "4 cm is the left side. The bottom is across from the top, so it matches the top.")
  (hint "Which side is across from the bottom?"))
```

---

## Add all 4 sides

Now you know all 4 sides: 9, 4, 9 and 4.

$$ 9 + 4 + 9 + 4 = 26 $$

The perimeter is 26 cm.

```check
(number
  (ask "A rectangle is 6 m long and 2 m wide. What is its perimeter, in meters?")
  (answer 16) (unit "m") (from "6 + 2 + 6 + 2")
  (wrong-if 8 "6 + 2 is only 2 sides. A rectangle has 4 sides: 6 + 2 + 6 + 2.")
  (wrong-if 12 "6 x 2 is the area. Perimeter adds the 4 sides.")
  (hint "The 4 sides are 6, 2, 6 and 2."))
```

---

## A shortcut

The 2 sides that meet go halfway around. So add them, then double.

$$ 9 + 4 = 13 $$

$$ 13 + 13 = 26 $$

```figure
(ms-poly '(70 60 250 60 250 140 70 140) '("9 cm" #f #f "4 cm") #f)
(line 70 60 250 60 'warm 5)
(line 70 60 70 140 'warm 5)
(caption "Top + left side = halfway around")
```

```check
(number
  (ask "Two sides that meet are 8 in and 5 in. What is the perimeter of the rectangle, in inches?")
  (answer 26) (unit "in") (from "(8 + 5) * 2")
  (wrong-if 13 "8 + 5 goes only halfway around. Double it for the whole way.")
  (wrong-if 40 "8 x 5 is the area. For the perimeter, add 8 + 5, then double.")
  (hint "8 + 5 = 13.")
  (hint "13 + 13 = ?"))
```

---

## A square

A square is a rectangle with 4 sides of the same length. So its perimeter is 4 times 1 side.

A square tile has sides of 6 inches.

$$ 4 * 6 = 24 $$

```check
(number
  (ask "A square has sides of 7 cm. What is its perimeter, in cm?")
  (answer 28) (unit "cm") (from "4 * 7")
  (wrong-if 49 "7 x 7 is the area. The perimeter is 4 sides of 7: 7 + 7 + 7 + 7.")
  (wrong-if 14 "That is only 2 sides. A square has 4 sides.")
  (hint "4 sides of 7."))
```

---

## A worked example

```figure
(ms-poly '(60 70 260 70 260 150 60 150) '("10 ft" #f #f "4 ft") #f)
```

```example
(example
  (problem "A garden is 10 feet by 4 feet. How much fence goes all the way around it?")
  (step "The 2 sides that meet are 10 ft and 4 ft.")
  (step "10 + 4 = 14. That is halfway around.")
  (step (number (ask "Double it: 14 + 14 = ?") (answer 28) (from "14 + 14")
          (wrong-if 14 "14 is only halfway around. Add another 14.")))
  (answer "28 feet of fence."))
```

---

## Now you finish one

A rug is 7 feet by 5 feet. 7 + 5 = 12 is halfway around.

```check
(number
  (ask "What is the perimeter of the rug, in feet?")
  (answer 24) (unit "ft") (from "(7 + 5) * 2")
  (wrong-if 12 "12 is halfway around. Double it.")
  (wrong-if 35 "7 x 5 is the area. The perimeter is 12 + 12.")
  (hint "12 + 12 = ?"))
```

---

## Practice

```check
(number
  (ask "A photo is 6 inches by 4 inches. What is its perimeter, in inches?")
  (answer 20) (unit "in") (from "6 + 4 + 6 + 4")
  (wrong-if 24 "6 x 4 is the area. Add the 4 sides for the perimeter.")
  (wrong-if 10 "6 + 4 is halfway around. Double it.")
  (hint "6 + 4 + 6 + 4"))
```

```check
(number
  (ask "A square park has sides of 9 m. What is its perimeter, in meters?")
  (answer 36) (unit "m") (from "4 * 9")
  (wrong-if 81 "9 x 9 is the area. The perimeter is 4 sides of 9.")
  (wrong-if 18 "That is 2 sides. A square has 4.")
  (hint "4 x 9 = ?"))
```

---

```check
(choice
  (ask "Which way finds the perimeter of a 5 by 3 rectangle?")
  (right "5 + 3 + 5 + 3" (true "5 + 3 + 5 + 3 = 16"))
  (wrong "5 x 3" (false "5 * 3 = 16")
    "5 x 3 is the area, the squares inside. Perimeter adds all the sides.")
  (wrong "5 + 3" (false "5 + 3 = 16")
    "5 + 3 goes only halfway around. Add the other 2 sides too.")
  (hint "Go all the way around."))
```

Now you can find the perimeter of a rectangle: add 2 sides that meet, then double.
