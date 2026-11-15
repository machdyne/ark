# The perimeter formula

```lesson
(objective "Use the formula P = 2 x l + 2 x w, or P = 2 x (l + w), to find the perimeter of a rectangle.")
(standards "4.MD.A.3")
(minutes 20)
```

You can find the perimeter of a rectangle with a formula too.

A rectangle has 2 long sides of the same length and 2 short sides of the same width.

```figure
(frame 50 60 220 110 'ink 2.5)
(text 160 52 "l" 'centre 'body 'bold)
(text 160 190 "l" 'centre 'body 'bold)
(text 40 120 "w" 'right 'body 'bold)
(text 280 120 "w" 'left 'body 'bold)
(caption "2 lengths and 2 widths")
```

So the perimeter is 2 lengths plus 2 widths:

$$ P = 2 * l + 2 * w $$

```check
(number
  (ask "A rectangle is 8 cm long and 5 cm wide. What is its perimeter, in cm?")
  (answer 26) (unit "cm") (from "2 * 8 + 2 * 5")
  (wrong-if 13 "That is only 1 length and 1 width: half the way around. Double it.")
  (wrong-if 40 "40 is the area. Perimeter adds the sides: 8 + 5 + 8 + 5.")
  (hint "2 × 8 + 2 × 5"))
```

---

## Another way

You can add 1 length and 1 width first. That goes halfway around. Then double it:

$$ P = 2 * (l + w) $$

For 8 cm and 5 cm: $2 * (8 + 5) = 2 * 13 = 26$. Both formulas give 26 cm.

```check
(number
  (ask "Use P = 2 × (l + w). A rectangle is 7 m long and 3 m wide. What is its perimeter, in meters?")
  (answer 20) (unit "m") (from "2 * (7 + 3)")
  (wrong-if 17 "That is 2 × 7 + 3: the parentheses mean add 7 + 3 first, then double.")
  (wrong-if 21 "21 is the area. Perimeter is 2 × (7 + 3).")
  (hint "7 + 3 = 10. Then 2 × 10."))
```

---

## A worked example

```example
(example
  (problem "A pool is 25 m long and 10 m wide. What is its perimeter?")
  (step "P = 2 × (l + w).")
  (step "l + w = 25 + 10 = 35.")
  (step (number (ask "2 × 35 = ?") (answer 70) (from "2 * (25 + 10)")
          (wrong-if 35 "35 is halfway around. Double it.")))
  (answer "The perimeter is 70 m."))
```

---

## Practice

```check
(number
  (ask "A field is 120 m long and 80 m wide. What is its perimeter, in meters?")
  (answer 400) (unit "m") (from "2 * (120 + 80)")
  (wrong-if 200 "200 is 1 length and 1 width: halfway. Double it.")
  (hint "120 + 80 = 200."))
```

```check
(number
  (ask "A square has sides of 9 inches. What is its perimeter, in inches?")
  (answer 36) (unit "in") (from "4 * 9")
  (wrong-if 81 "81 is the area. The perimeter is 4 sides of 9.")
  (wrong-if 18 "That is only 2 sides. A square has 4.")
  (hint "4 × 9"))
```

---

```check
(choice
  (ask "Which does NOT give the perimeter of a rectangle 6 ft by 4 ft?")
  (right "6 × 4" (true "6 * 4 = 24") (false "6 * 4 = 20"))
  (wrong "2 × 6 + 2 × 4" (true "2 * 6 + 2 * 4 = 20") "This is the perimeter: 2 lengths and 2 widths, 20 ft.")
  (wrong "2 × (6 + 4)" (true "2 * (6 + 4) = 20") "This is the perimeter too: halfway, 10, doubled.")
  (wrong "6 + 4 + 6 + 4" (true "6 + 4 + 6 + 4 = 20") "This adds all 4 sides: the perimeter, 20 ft.")
  (hint "Which one is the area?"))
```

Use P = 2 × l + 2 × w, or P = 2 × (l + w), for the perimeter of a rectangle.
