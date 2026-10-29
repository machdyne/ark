# Same perimeter, different areas

```lesson
(objective "Show that rectangles with the same perimeter can have different areas.")
(standards "3.MD.D.8")
(minutes 20)
```

You can see that rectangles with the same perimeter can cover different amounts of space.

You have 20 m of fence for a garden. Each rectangle below uses all 20 m. Move the slider to change the shape.

```figure
(define w (slider 'w 1 9 1 "Length (m)" 1))
(define h (- 10 w))
(ms-grect 70 36 w h 18 'plant (string-append (fmt w 0) " m") (string-append (fmt h 0) " m"))
(text 312 60 "Perimeter:" 'right 'small)
(text 312 76 (string-append (fmt (* 2 (+ w h)) 0) " m") 'right 'small 'bold)
(text 312 110 "Area:" 'right 'small)
(text 312 126 (string-append (fmt (* w h) 0) " sq m") 'right 'small 'bold)
```

```check
(number
  (ask "Make the garden 5 m by 5 m. What is its area, in square meters?")
  (answer 25) (unit "sq m") (from "5 * 5")
  (wrong-if 20 "20 m is the perimeter, the fence. The area is the squares inside: 5 x 5.")
  (wrong-if 10 "5 + 5 adds 2 sides. The area is 5 x 5.")
  (hint "Move the slider to 5.")
  (hint "5 x 5 = ?"))
```

---

## A long, thin garden

Now make the garden 9 m by 1 m. The fence is still 20 m. But the area is small.

$$ 9 + 1 + 9 + 1 = 20 $$

```check
(number
  (ask "What is the area of a 9 m by 1 m garden, in square meters?")
  (answer 9) (unit "sq m") (from "9 * 1")
  (wrong-if 20 "20 m is the perimeter. The area is 9 x 1: just 1 row of 9 squares.")
  (wrong-if 10 "9 + 1 adds the sides. The area is 9 x 1.")
  (hint "9 x 1 = ?"))
```

---

## Which has the most area?

All these rectangles have a perimeter of 20 m. Their areas are different.

| Length | Width | Area |
|---|---|---|
| 9 m | 1 m | 9 sq m |
| 7 m | 3 m | 21 sq m |
| 5 m | 5 m | 25 sq m |

```check
(choice
  (ask "Which garden with a 20 m fence gives the most space to plant?")
  (right "5 m by 5 m" (true "5 * 5 > 7 * 3"))
  (wrong "9 m by 1 m" (false "9 * 1 > 5 * 5")
    "It is the longest, but it is very thin. Its area is only 9 square meters.")
  (wrong "They all have the same space"
    "They all use the same fence, but the space inside is different. 9, 21 and 25 square meters.")
  (hint "Compare the areas in the table."))
```

---

## A worked example

```example
(example
  (problem "You have 12 m of fence. Which rectangles can you make with whole meters? Which has the most area?")
  (step "Half of 12 is 6. So length + width = 6.")
  (step "The choices are 5 by 1, 4 by 2 and 3 by 3.")
  (step "Their areas are 5, 8 and 9 square meters.")
  (answer "3 m by 3 m has the most area: 9 square meters."))
```

---

## Now you finish one

A rectangle has a perimeter of 16 cm. One choice is 6 cm by 2 cm. Another is 4 cm by 4 cm.

```check
(number
  (ask "How many more square centimeters does the 4 by 4 rectangle have than the 6 by 2?")
  (answer 4) (unit "sq cm") (from "4 * 4 - 6 * 2")
  (wrong-if 0 "Both have a perimeter of 16 cm, but not the same area. 4 x 4 = 16 and 6 x 2 = 12.")
  (hint "4 x 4 = 16 and 6 x 2 = 12."))
```

---

## Practice

```check
(choice
  (ask "Two rectangles have the same perimeter. Must they have the same area?")
  (right "No: their areas can be different")
  (wrong "Yes: same perimeter means same area"
    "A 9 by 1 and a 5 by 5 rectangle both have a perimeter of 20. Their areas are 9 and 25.")
  (hint "Think of the 20 m fence garden."))
```

```check
(number
  (ask "A rectangle is 8 ft by 2 ft. Another rectangle has the same perimeter and is 5 ft by 5 ft. What is the area of the first one, in square feet?")
  (answer 16) (unit "sq ft") (from "8 * 2")
  (wrong-if 20 "20 ft is the perimeter of both. The area is 8 x 2.")
  (hint "8 x 2 = ?"))
```

---

```check
(number
  (ask "A rectangle has a perimeter of 14 m. It is 6 m long and 1 m wide. What is its area, in square meters?")
  (answer 6) (unit "sq m") (from "6 * 1")
  (wrong-if 14 "14 m is the perimeter. The area is 6 x 1.")
  (wrong-if 7 "6 + 1 is half the perimeter. The area is 6 x 1.")
  (hint "6 x 1 = ?"))
```

Now you know that rectangles with the same perimeter can have different areas.
