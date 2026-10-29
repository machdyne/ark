# Same area, different perimeters

```lesson
(objective "Show that rectangles with the same area can have different perimeters.")
(standards "3.MD.D.8")
(minutes 20)
```

You can see that rectangles with the same area can need different lengths of fence.

Each rectangle below is made of the same 12 unit squares. Pick a shape and look at its perimeter.

```figure
(define k (choice 'k '("1 by 12" "2 by 6" "3 by 4") "Shape"))
(define w (list-ref '(12 6 4) k))
(define h (list-ref '(1 2 3) k))
(ms-grect 40 50 w h 20 'warm (fmt w 0) (fmt h 0))
(text 160 170 (string-append "Area: " (fmt (* w h) 0) " square units") 'centre 'small)
(text 160 190 (string-append "Perimeter: " (fmt (* 2 (+ w h)) 0) " units") 'centre 'small 'bold)
```

```check
(number
  (ask "What is the perimeter of the 2 by 6 rectangle, in units?")
  (answer 16) (unit "units") (from "6 + 2 + 6 + 2")
  (wrong-if 12 "12 is the area, the squares inside. The perimeter goes around: 6 + 2 + 6 + 2.")
  (wrong-if 8 "6 + 2 is halfway around. Double it.")
  (hint "Pick 2 by 6 and read the perimeter.")
  (hint "6 + 2 + 6 + 2 = ?"))
```

---

## The long one has the biggest perimeter

All 3 rectangles cover 12 squares. But the 1 by 12 rectangle is long and thin. Its perimeter is the biggest.

$$ 12 + 1 + 12 + 1 = 26 $$

```check
(choice
  (ask "Which rectangle with an area of 12 has the smallest perimeter?")
  (right "3 by 4" (true "3 + 4 + 3 + 4 < 2 + 6 + 2 + 6"))
  (wrong "1 by 12" (false "1 + 12 + 1 + 12 < 3 + 4 + 3 + 4")
    "1 by 12 is long and thin. It has the biggest perimeter: 26 units.")
  (wrong "They are all the same"
    "They have the same area, 12, but different perimeters: 26, 16 and 14 units.")
  (hint "Add the 4 sides of each rectangle and compare."))
```

---

## Why it matters

Say you make a rectangle pen from 12 square tiles of floor. A border goes around it. The shape you pick changes how much border you need.

```check
(choice
  (ask "Two rectangles both have an area of 12 square units. Must they have the same perimeter?")
  (right "No: their perimeters can be different")
  (wrong "Yes: same area means same perimeter"
    "A 1 by 12 and a 3 by 4 both have an area of 12. Their perimeters are 26 and 14.")
  (hint "Think of the 3 shapes in the figure."))
```

---

## A worked example

```example
(example
  (problem "A rectangle rug has an area of 16 square feet. It can be 8 ft by 2 ft, or 4 ft by 4 ft. Which needs less trim around the edge?")
  (step "8 by 2: 8 + 2 + 8 + 2 = 20 ft.")
  (step "4 by 4: 4 + 4 + 4 + 4 = 16 ft.")
  (answer "The 4 ft by 4 ft rug needs less trim: 16 ft."))
```

---

## Now you finish one

A rectangle has an area of 18 square units. It can be 9 by 2 or 6 by 3.

```check
(number
  (ask "What is the perimeter of the 6 by 3 rectangle, in units?")
  (answer 18) (unit "units") (from "6 + 3 + 6 + 3")
  (wrong-if 9 "6 + 3 is halfway around. Double it.")
  (hint "6 + 3 + 6 + 3 = ?"))
```

```check
(number
  (ask "What is the perimeter of the 9 by 2 rectangle, in units?")
  (answer 22) (unit "units") (from "9 + 2 + 9 + 2")
  (wrong-if 18 "18 is the area. Add the 4 sides: 9 + 2 + 9 + 2.")
  (hint "9 + 2 = 11. Double it."))
```

---

## Practice

```check
(number
  (ask "A rectangle is 10 cm by 2 cm. Its area is 20 square cm. What is its perimeter, in cm?")
  (answer 24) (unit "cm") (from "10 + 2 + 10 + 2")
  (wrong-if 20 "20 is the area. The perimeter adds the 4 sides.")
  (wrong-if 12 "10 + 2 is halfway around. Double it.")
  (hint "10 + 2 + 10 + 2"))
```

```check
(choice
  (ask "A 5 by 4 rectangle also has an area of 20 square cm. How does its perimeter compare with the 10 by 2?")
  (right "It is smaller: 18 cm" (true "5 + 4 + 5 + 4 = 18"))
  (wrong "It is the same: 24 cm" (false "5 + 4 + 5 + 4 = 24")
    "The areas are the same, but not the perimeters. 5 + 4 + 5 + 4 = 18.")
  (wrong "It is bigger: 40 cm" (false "5 + 4 + 5 + 4 = 40")
    "That is 2 x 20. The perimeter adds the 4 sides: 5 + 4 + 5 + 4 = 18.")
  (hint "Add the 4 sides of the 5 by 4 rectangle."))
```

Now you know that rectangles with the same area can have different perimeters.
