# Tiling and multiplying

```lesson
(objective "Show that tiling a rectangle gives the same area as multiplying its side lengths.")
(standards "3.MD.C.7a")
(minutes 25)
(keywords "side length")
```

You can see why the area of a rectangle is its 2 side lengths multiplied.

The **side length** is how long a side is. This rectangle has a top side 5 units long. Its left side is 3 units long.

```figure
(ms-grect 70 60 5 3 36 #f "5 units" "3 units")
(caption "Side lengths: 5 units and 3 units")
```

```check
(number
  (ask "Unit squares fit along the top side of a rectangle. 7 of them fit. How long is the top side, in units?")
  (answer 7) (unit "units")
  (wrong-if 1 "Each unit square is 1 unit long. 7 of them in a line are 7 units long.")
  (hint "Each unit square adds 1 unit of length."))
```

---

## Tile it row by row

Cover the rectangle with tiles, 1 row at a time. Move the slider to add rows.

The top side is 5 units, so each row has 5 tiles. The left side is 3 units, so there are 3 rows.

```figure
(define r (slider 'r 0 3 1 "Rows of tiles" 1))
(ms-rect 70 60 180 108 "5 units" "3 units" #f)
(if (> r 0) (ms-tiles 70 60 5 r 36 'warm))
(caption (string-append (fmt r 0) (if (= r 1) " row" " rows") " of 5 = " (fmt (* 5 r) 0) " tiles"))
```

```check
(number
  (ask "When all 3 rows are tiled, how many tiles cover the rectangle?")
  (answer 15) (from "3 * 5")
  (wrong-if 8 "5 + 3 adds the 2 side lengths. But there are 3 rows of 5 tiles: 5, 10, 15.")
  (wrong-if 5 "That is 1 row. There are 3 rows of 5.")
  (hint "Move the slider to 3.")
  (hint "3 rows of 5 tiles: 5, 10, 15."))
```

---

## Count or multiply: the same

The tiles make an array: 3 rows of 5. So the count is the product 3 x 5.

$$ 3 * 5 = 15 $$

Counting the tiles gives 15. Multiplying the side lengths also gives 15. The area is 15 square units.

```figure
(ms-grect 74 50 6 4 36 'cool "6 units" "4 units")
```

```check
(number
  (ask "This rectangle has side lengths 6 units and 4 units. What is its area, in square units?")
  (answer 24) (unit "square units") (from "6 * 4")
  (wrong-if 10 "6 + 4 adds the side lengths. The tiles make 4 rows of 6, so multiply.")
  (wrong-if 20 "Check the count: 4 rows of 6 is 6, 12, 18, 24.")
  (hint "4 rows of 6 tiles.")
  (hint "6 x 4 = ?"))
```

---

## A worked example

```figure
(ms-grect 74 70 7 2 32 'warm "7 units" "2 units")
```

```example
(example
  (problem "A rectangle has side lengths 7 units and 2 units. Find its area 2 ways.")
  (step "Count the tiles: 2 rows of 7. 7, 14.")
  (step "Multiply the side lengths: 7 x 2 = 14.")
  (step "Both ways give the same number.")
  (answer "The area is 14 square units."))
```

---

## Now you finish one

```figure
(ms-grect 70 40 3 5 32 'cool "3 units" "5 units")
```

This rectangle has side lengths 3 units and 5 units. It has 5 rows of 3 tiles.

```check
(number
  (ask "Multiply the side lengths. What is the area, in square units?")
  (answer 15) (unit "square units") (from "3 * 5")
  (wrong-if 8 "3 + 5 adds. Area is the number of tiles: 5 rows of 3, so multiply.")
  (hint "3 x 5 = ?"))
```

---

## Practice

```check
(choice
  (ask "Why does multiplying the side lengths give the area?")
  (right "The tiles make rows and columns, like an array")
  (wrong "Because area is the 2 side lengths added"
    "Adding gives far fewer than the tiles. The tiles are rows of the same size, so multiplying counts them.")
  (wrong "It only works for squares"
    "It works for every rectangle. The tiles always make equal rows.")
  (hint "Think of the tiles as an array."))
```

```check
(number
  (ask "A rectangle is 8 units long and 3 units wide. How many unit squares cover it?")
  (answer 24) (from "8 * 3")
  (wrong-if 11 "8 + 3 adds the side lengths. There are 3 rows of 8 squares.")
  (hint "3 rows of 8."))
```

---

```check
(choice
  (ask "Jo counts 18 tiles on a rectangle. Its side lengths are 6 units and 3 units. Is her count right?")
  (right "Yes, because 6 x 3 = 18" (true "6 * 3 = 18"))
  (wrong "No, it should be 9, because 6 + 3 = 9" (false "6 * 3 = 9")
    "Adding the side lengths does not count the tiles. 3 rows of 6 tiles are 18.")
  (wrong "No, it should be 63" (false "6 * 3 = 63")
    "That writes 6 and 3 side by side. Multiply: 6 x 3 = 18.")
  (hint "Multiply the side lengths."))
```

Now you know that tiling a rectangle and multiplying its side lengths give the same area.
