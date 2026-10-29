# Break apart a rectangle

```lesson
(objective "Show with area that 6 x 7 = 6 x 5 + 6 x 2, the distributive property.")
(standards "3.MD.C.7c")
(minutes 20)
```

You can cut a rectangle in 2 and see a multiplication fact as 2 easier facts.

This rectangle is 7 units long and 6 units wide. A line cuts it into 2 smaller rectangles: 6 by 5 and 6 by 2.

```figure
(ms-tiles 70 40 5 6 26 'warm)
(ms-tiles 200 40 2 6 26 'cool)
(line 200 36 200 200 'ink 4)
(text 135 32 "5" 'centre 'small)
(text 226 32 "2" 'centre 'small)
(text 62 122 "6" 'right 'small)
(caption "6 x 7 cut into 6 x 5 and 6 x 2")
```

```check
(number
  (ask "Find 6 x 5 and 6 x 2, then add them. What is the whole area, in square units?")
  (answer 42) (unit "square units") (from "6 * 5 + 6 * 2")
  (wrong-if 30 "30 is only the left part, 6 x 5. Add the right part, 6 x 2 = 12.")
  (wrong-if 13 "That adds 6 + 5 + 2. Find each area first: 6 x 5 = 30 and 6 x 2 = 12.")
  (hint "6 x 5 = 30.")
  (hint "6 x 2 = 12. Now add."))
```

---

## Cut anywhere

You can cut the rectangle in other places. Move the slider to move the cut. The 2 parts always add up to the same area.

```figure
(define a (slider 'a 1 6 5 "Cut at" 1))
(ms-tiles 70 40 a 6 26 'warm)
(ms-tiles (+ 70 (* 26 a)) 40 (- 7 a) 6 26 'cool)
(line (+ 70 (* 26 a)) 36 (+ 70 (* 26 a)) 200 'ink 4)
(caption (string-append "6 x " (fmt a 0) " + 6 x " (fmt (- 7 a) 0) " = "
  (fmt (* 6 a) 0) " + " (fmt (* 6 (- 7 a)) 0) " = 42"))
```

```check
(number
  (ask "Cut after column 4. What is 6 x 4 + 6 x 3?")
  (answer 42) (from "6 * 4 + 6 * 3")
  (wrong-if 24 "24 is only the left part, 6 x 4. Add the right part, 6 x 3 = 18.")
  (hint "6 x 4 = 24 and 6 x 3 = 18.")
  (hint "24 + 18 = ?"))
```

---

## The distributive property

The area does not change when you cut. So

$$ 6 * 7 = 6 * 5 + 6 * 2 $$

This is the distributive property. You break 1 factor into 2 parts. Then you multiply each part and add.

```check
(choice
  (ask "A 4 by 9 rectangle is cut into a 4 by 5 and a 4 by 4 rectangle. Which equation does it show?")
  (right "4 x 9 = 4 x 5 + 4 x 4" (true "4 * 9 = 4 * 5 + 4 * 4"))
  (wrong "4 x 9 = 4 x 5 x 4 x 4" (false "4 * 9 = 4 * 5 * 4 * 4")
    "The 2 parts are put side by side, so their areas are added, not multiplied.")
  (wrong "4 x 9 = 4 + 5 + 4 + 4" (false "4 * 9 = 4 + 5 + 4 + 4")
    "That adds the side lengths. Each part's area is a product: 4 x 5 and 4 x 4.")
  (hint "Find the area of each part. Then put the parts together."))
```

---

## A worked example

```figure
(ms-tiles 50 50 5 8 20 'warm)
(ms-tiles 150 50 2 8 20 'cool)
(line 150 46 150 214 'ink 4)
(text 100 42 "5" 'centre 'small)
(text 170 42 "2" 'centre 'small)
(text 42 134 "8" 'right 'small)
```

```example
(example
  (problem "Use area to find 8 x 7.")
  (step "Cut the 8 by 7 rectangle into 8 by 5 and 8 by 2.")
  (step "8 x 5 = 40 and 8 x 2 = 16.")
  (step (number (ask "40 + 16 = ?") (answer 56) (from "40 + 16")
          (wrong-if 46 "40 + 16: 4 tens and 1 ten are 5 tens, then 6 ones.")))
  (answer "8 x 7 = 8 x 5 + 8 x 2 = 56"))
```

---

## Now you finish one

To find 7 x 6, cut the 7 by 6 rectangle into 7 by 5 and 7 by 1. 7 x 5 = 35.

```check
(number
  (ask "7 x 6 = 7 x 5 + 7 x 1. What is 7 x 6?")
  (answer 42) (from "7 * 5 + 7 * 1")
  (wrong-if 35 "35 is only 7 x 5. Add the other part, 7 x 1 = 7.")
  (wrong-if 36 "7 x 1 is 7, not 1. 35 + 7 = 42.")
  (hint "7 x 1 = 7.")
  (hint "35 + 7 = ?"))
```

---

## Practice

```check
(number
  (ask "Use 9 x 8 = 9 x 5 + 9 x 3. What is 9 x 8?")
  (answer 72) (from "9 * 5 + 9 * 3")
  (wrong-if 45 "45 is only 9 x 5. Add 9 x 3 = 27.")
  (hint "9 x 5 = 45 and 9 x 3 = 27."))
```

```check
(choice
  (ask "A 3 by 8 rectangle is cut into 2 parts. Which pair of parts is right?")
  (right "3 by 6 and 3 by 2" (true "3 * 6 + 3 * 2 = 3 * 8"))
  (wrong "3 by 6 and 3 by 3" (false "3 * 6 + 3 * 3 = 3 * 8")
    "6 + 3 is 9, not 8. The 2 lengths must add up to 8.")
  (wrong "2 by 8 and 3 by 6" (false "2 * 8 + 3 * 6 = 3 * 8")
    "A straight cut down the rectangle keeps the side of 3 in both parts.")
  (hint "Both parts keep the side of 3. The other sides add up to 8."))
```

---

```check
(number
  (ask "6 x 9 = 6 x 5 + 6 x ? What is the missing number?")
  (answer 4) (from "9 - 5")
  (wrong-if 9 "The 9 is split into 5 and another part. 5 + ? = 9.")
  (wrong-if 3 "5 + 3 is 8, not 9. The parts must add up to 9.")
  (hint "5 + ? = 9"))
```

Now you can cut a rectangle in 2 to show the distributive property: 6 x 7 = 6 x 5 + 6 x 2.
