# Taking away a rectangle

```lesson
(objective "Find the area of a rectilinear figure by subtracting a missing rectangle.")
(standards "3.MD.C.7d")
(minutes 20)
```

You can find the area of a shape by taking a rectangle away from a bigger one.

Here is the L shape again. Think of the big rectangle around it, 8 by 6. The L is that rectangle with a corner missing.

```figure
(path '(120 40 220 40 220 100) 'ink 1)
(ms-poly '(60 40 120 40 120 100 220 100 220 160 60 160) '("3" "3" "5" "3" "8" "6") 'cool)
(label 182 60 "missing" 'small 'bold)
(caption "The L (shaded) and the missing corner")
```

```check
(number
  (ask "What is the area of the big rectangle, 8 by 6, in square units?")
  (answer 48) (unit "square units") (from "8 * 6")
  (wrong-if 14 "8 + 6 adds the sides. The area is 8 x 6.")
  (hint "8 x 6 = ?"))
```

---

## Take away the missing part

The missing corner is 5 by 3. Take its area away from the big rectangle.

$$ 48 - 15 = 33 $$

```figure
(path '(120 40 220 40 220 100) 'ink 1)
(ms-poly '(60 40 120 40 120 100 220 100 220 160 60 160) '("3" "3" "5" "3" "8" "6") 'cool)
(caption "8 x 6 - 5 x 3 = 48 - 15 = 33")
```

```check
(choice
  (ask "Adding the 2 rectangles of the L gave 33. Taking away gives 33 too. Why?")
  (right "It is the same shape, so it has the same area")
  (wrong "It is luck"
    "It is not luck. Both ways measure the same L, so they must give the same area.")
  (wrong "It is always 33"
    "Taking away gives the area of this L. Another shape has another area.")
  (hint "Did the shape change?"))
```

---

## A shape with a notch

This shape is like a U. The big rectangle is 7 by 4. A notch 3 by 2 is cut out of the top.

```figure
(line 115 40 205 40 'ink 1)
(ms-poly '(55 40 115 40 115 100 205 100 205 40 265 40 265 160 55 160) '("2" "2" "3" "2" "2" "4" "7" "4") #f)
(caption "A U shape: 7 by 4, with a 3 by 2 notch")
```

```check
(number
  (ask "What is the area of the U shape, in square units?")
  (answer 22) (unit "square units") (from "7 * 4 - 3 * 2")
  (wrong-if 28 "28 is the whole rectangle, 7 x 4. Take away the notch, 3 x 2 = 6.")
  (wrong-if 34 "Adding the notch makes it bigger. The notch is missing, so subtract it.")
  (hint "7 x 4 = 28. The notch is 3 x 2.")
  (hint "28 - 6 = ?"))
```

---

## A worked example

```figure
(path '(200 40 280 40 280 100) 'ink 1)
(ms-poly '(40 40 200 40 200 100 280 100 280 200 40 200) '("8 m" "3 m" "4 m" "5 m" "12 m" "8 m") #f)
```

```example
(example
  (problem "A yard is shaped like this. What is its area?")
  (step "The big rectangle around it is 12 m by 8 m: 12 x 8 = 96.")
  (step "The missing corner is 4 m by 3 m: 4 x 3 = 12.")
  (step (number (ask "96 - 12 = ?") (answer 84) (from "96 - 12")
          (wrong-if 108 "The corner is missing, so subtract it, do not add it.")))
  (answer "The area is 84 square meters."))
```

---

## Now you finish one

A room is 9 ft by 6 ft, but a closet takes a 2 ft by 3 ft corner. The room is the rest. 9 x 6 = 54.

```check
(number
  (ask "What is the area of the room without the closet, in square feet?")
  (answer 48) (unit "sq ft") (from "9 * 6 - 2 * 3")
  (wrong-if 54 "54 is the room with the closet. Take away the closet: 2 x 3 = 6.")
  (wrong-if 49 "The closet is 2 x 3 = 6, not 5. 54 - 6 = 48.")
  (hint "The closet is 2 x 3 = 6 square feet."))
```

---

## Practice

```check
(number
  (ask "A rectangle is 10 by 5. A 2 by 2 corner is cut off. What area is left, in square units?")
  (answer 46) (unit "square units") (from "10 * 5 - 2 * 2")
  (wrong-if 48 "The corner is 2 x 2 = 4, not 2. 50 - 4 = 46.")
  (wrong-if 54 "The corner is cut off, so subtract it.")
  (hint "10 x 5 = 50. Then take away 2 x 2."))
```

```check
(choice
  (ask "When is taking away a good way to find an area?")
  (right "When the shape is a big rectangle with a small part missing")
  (wrong "Never: you must always add rectangles"
    "Both ways work. Taking away is quick when only a small part is missing.")
  (wrong "Only when the shape is a rectangle"
    "A whole rectangle has no part missing. You just multiply its sides.")
  (hint "Think of the L with its missing corner."))
```

Now you can find an area by taking a missing rectangle away from the big rectangle around a shape.
