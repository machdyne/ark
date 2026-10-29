# Splitting a rectangle

```lesson
(objective "Split a rectangle into two smaller rectangles to find its area.")
(standards "3.MD.C.7c")
(minutes 20)
```

You can find the area of a big rectangle by splitting it into 2 smaller ones.

A garden is 13 feet by 4 feet. 13 x 4 is not a fact you know yet. So split the 13 into 10 and 3.

```figure
(ms-rect 40 70 180 72 "10 ft" "4 ft" 'warm)
(ms-rect 220 70 54 72 "3 ft" #f 'cool)
(line 220 66 220 146 'ink 4)
(caption "13 ft = 10 ft + 3 ft")
```

$$ 4 * 13 = 4 * 10 + 4 * 3 $$

```check
(number
  (ask "4 x 10 = 40 and 4 x 3 = 12. What is the area of the garden, in square feet?")
  (answer 52) (unit "sq ft") (from "4 * 10 + 4 * 3")
  (wrong-if 40 "40 is only the big part. Add the small part, 12.")
  (wrong-if 17 "That adds the sides: 13 + 4. Add the 2 areas instead: 40 + 12.")
  (hint "40 + 12 = ?"))
```

---

## Split off a 10

Splitting off 10 makes the parts easy. You know how to multiply by 10.

A rug is 12 feet by 7 feet. Split 12 into 10 and 2.

```figure
(ms-rect 50 50 200 140 "10 ft" "7 ft" 'warm)
(ms-rect 250 50 40 140 "2 ft" #f 'cool)
(line 250 46 250 194 'ink 4)
```

```check
(number
  (ask "7 x 10 + 7 x 2 = ? That is the area of the rug, in square feet.")
  (answer 84) (unit "sq ft") (from "7 * 10 + 7 * 2")
  (wrong-if 70 "70 is only 7 x 10. Add 7 x 2 = 14.")
  (wrong-if 72 "7 x 2 is 14, not 2. 70 + 14 = 84.")
  (hint "7 x 10 = 70 and 7 x 2 = 14."))
```

---

## Split either side

You can split the long side or the short side. Pick the split that gives facts you know.

A wall is 14 m by 6 m. Split 14 into 10 and 4: 6 x 10 + 6 x 4.

```check
(choice
  (ask "Which split also gives the area of a 14 by 6 rectangle?")
  (right "6 x 7 + 6 x 7" (true "6 * 7 + 6 * 7 = 6 * 14"))
  (wrong "6 x 10 + 4" (false "6 * 10 + 4 = 6 * 14")
    "The small part is 6 by 4, so its area is 6 x 4, not 4.")
  (wrong "14 x 6 + 14 x 6" (false "14 * 6 + 14 * 6 = 6 * 14")
    "That counts the whole rectangle 2 times. Split it into 2 parts that add up to 14.")
  (hint "The 2 parts must add up to the whole 14 by 6."))
```

---

## A worked example

```figure
(ms-rect 50 50 160 128 "10 m" "8 m" 'warm)
(ms-rect 210 50 32 128 "2 m" #f 'cool)
(line 210 46 210 182 'ink 4)
```

```example
(example
  (problem "A pool is 12 m by 8 m. What is its area?")
  (step "Split 12 into 10 and 2.")
  (step "8 x 10 = 80 and 8 x 2 = 16.")
  (step (number (ask "80 + 16 = ?") (answer 96) (from "80 + 16")
          (wrong-if 86 "16 is 1 ten and 6 ones. 80 + 16 = 96.")))
  (answer "The area is 96 square meters."))
```

---

## Now you finish one

A path is 16 feet by 5 feet. Split 16 into 10 and 6. 5 x 10 = 50.

```check
(number
  (ask "5 x 6 = 30. What is the area of the path, in square feet?")
  (answer 80) (unit "sq ft") (from "5 * 10 + 5 * 6")
  (wrong-if 50 "50 is only the part 10 by 5. Add the part 6 by 5, which is 30.")
  (wrong-if 21 "That adds the sides. Add the 2 areas: 50 + 30.")
  (hint "50 + 30 = ?"))
```

---

## Practice

```check
(number
  (ask "A rectangle is 18 cm by 3 cm. Split 18 into 10 and 8. What is its area, in square centimeters?")
  (answer 54) (unit "sq cm") (from "3 * 10 + 3 * 8")
  (wrong-if 30 "30 is only 3 x 10. Add 3 x 8 = 24.")
  (wrong-if 21 "That adds the sides. Multiply each part, then add: 30 + 24.")
  (hint "3 x 10 = 30 and 3 x 8 = 24."))
```

```check
(number
  (ask "A deck is 11 feet by 9 feet. What is its area, in square feet?")
  (answer 99) (unit "sq ft") (from "9 * 10 + 9 * 1")
  (wrong-if 90 "90 is only 9 x 10. There is 1 more foot of length: add 9 x 1.")
  (wrong-if 20 "That adds the sides. Split 11 into 10 and 1: 9 x 10 + 9 x 1.")
  (hint "Split 11 into 10 and 1."))
```

---

```check
(choice
  (ask "Which is a good way to find 15 x 6?")
  (right "6 x 10 + 6 x 5" (true "6 * 10 + 6 * 5 = 15 * 6"))
  (wrong "6 x 10 + 5" (false "6 * 10 + 5 = 15 * 6")
    "The second part is 6 by 5. Its area is 6 x 5, not 5.")
  (wrong "15 + 6" (false "15 + 6 = 15 * 6")
    "Adding the sides does not give the area. Split 15 into 10 and 5, multiply, then add.")
  (hint "Split 15 into 10 and 5."))
```

Now you can split a rectangle into 2 smaller rectangles and add their areas.
