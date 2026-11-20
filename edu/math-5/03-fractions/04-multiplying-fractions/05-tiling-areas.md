# Areas with fraction sides

```lesson
(objective "Find the area of a rectangle with fraction side lengths by tiling it with squares whose sides are unit fractions, such as 2/3 by 3/4 = 6/12 square unit.")
(standards "5.NF.B.4b")
(minutes 25)
```

You can find the area of a rectangle with fraction side lengths by
tiling it.

Take 1 unit square: 1 unit by 1 unit, area 1 square unit. Cut its
sides into fourths across and thirds down. It is now 12 equal tiles,
each $1/4$ unit by $1/3$ unit. Each tile is $1/12$ square unit.

A rectangle $3/4$ unit wide and $2/3$ unit tall covers 3 columns and
2 rows of tiles: $3 * 2 = 6$ tiles.

```figure
(m5p3-tile 90 40 150 (/ 3 4) (/ 2 3) 1 1 4 3)
(math 146 26 "3/4" 16)
(math 70 92 "2/3" 16)
(text 160 215 "6 tiles of 1/12: area 6/12 square unit" 'centre 'small)
```

```check
(number
  (ask "How many tiles does the" (math "3/4") "by" (math "2/3") "rectangle cover?")
  (answer 6) (from "3 * 2")
  (wrong-if 5 "That adds 3 and 2. The rectangle is 3 tiles across and 2 tiles down: 3 x 2.")
  (wrong-if 12 "12 tiles make the whole unit square. The rectangle is only part of it.")
  (hint "Count the tiles across, then down."))
```

---

## The size of a tile

The unit square is cut into 4 columns and 3 rows. That is $4 * 3 = 12$
equal tiles. So each tile is $1/12$ of a square unit.

6 tiles of $1/12$: the area is $6/12$ square unit, which is $1/2$.

```check
(fraction
  (ask "A unit square is cut into 5 columns and 2 rows of equal tiles. What is the area of 1 tile, in square units?")
  (answer 1 10) (equivalent) (true "1/(5 * 2) = 1/10")
  (wrong-if (1 7) "That adds 5 and 2. There are 5 x 2 = 10 tiles, so each is 1/10.")
  (wrong-if (1 5) "The square has 2 rows of 5 tiles: 10 tiles in all.")
  (hint "How many tiles in the whole square?"))
```

---

## Try another

A rectangle $2/5$ unit wide and $1/2$ unit tall. Cut the unit square
into fifths across and halves down: 10 tiles of $1/10$. The rectangle
covers 2 columns and 1 row: 2 tiles. Its area is $2/10$ square unit.

```figure
(define w (slider 'w 1 5 2 "Fifths wide" 1))
(m5p3-tile 90 40 150 (/ w 5) 0.5 1 1 5 2)
(math 70 78 "1/2" 16)
(text 160 215 (string-append (fmt w 0) " tiles of 1/10 square unit") 'centre 'small)
```

```check
(fraction
  (ask "Move the slider to 3. What is the area of a rectangle" (math "3/5") "unit by" (math "1/2") "unit, in square units?")
  (answer 3 10) (equivalent) (true "(3/5) * (1/2) = 3/10")
  (wrong-if (4 7) "Count tiles: 3 across, 1 down. Each tile is 1/10: 3/10.")
  (hint "How many tiles are covered? How big is each?"))
```

---

## Worked example

```example
(example
  (problem "Find the area of a rectangle 5/6 unit by 1/3 unit by tiling.")
  (step "Cut the unit square into 6 columns and 3 rows: 18 tiles of 1/18.")
  (step "The rectangle covers 5 columns and 1 row: 5 tiles.")
  (step "5 tiles of 1/18: 5/18 square unit.")
  (answer "The area is 5/18 square unit."))
```

```example
(example
  (problem "Find the area of a rectangle 3/4 foot by 3/4 foot by tiling.")
  (step "Cut a 1-foot square into 4 columns and 4 rows: 16 tiles of 1/16 square foot.")
  (step (fraction (ask "The rectangle covers 3 columns and 3 rows. What is its area, in square feet?") (answer 9 16) (equivalent) (true "(3/4) * (3/4) = 9/16")
    (wrong-if (6 16) "3 columns and 3 rows is 3 x 3 = 9 tiles, not 3 + 3.")))
  (answer "The area is 9/16 square foot."))
```

---

## Practice

```check
(fraction
  (ask "A rectangle is" (math "1/2") "unit by" (math "3/4") "unit. Tile it: what is its area in square units?")
  (answer 3 8) (equivalent) (true "(1/2) * (3/4) = 3/8")
  (wrong-if (4 6) "Do not add. The unit square has 2 x 4 = 8 tiles. The rectangle covers 1 x 3 = 3.")
  (hint "Tiles in the unit square: 2 x 4.")
  (hint "Tiles covered: 1 x 3."))
```

```check
(fraction
  (ask "A rectangle is" (math "2/3") "meter by" (math "4/5") "meter. What is its area, in square meters?")
  (answer 8 15) (equivalent) (true "(2/3) * (4/5) = 8/15")
  (wrong-if (6 8) "That adds. The square meter has 3 x 5 = 15 tiles. The rectangle covers 2 x 4 = 8.")
  (hint "15 tiles in the square meter."))
```

---

```check
(choice
  (ask "A rectangle covers 4 of the 12 tiles of a unit square. What is its area?")
  (right "4/12 square unit, which is 1/3" (true "4/12 = 1/3"))
  (wrong "4 square units"
    "Each tile is only 1/12 of a square unit. 4 tiles are 4/12 square unit.")
  (wrong "1/4 square unit"
    "1/4 would be 3 of the 12 tiles. 4 tiles are 4/12 = 1/3.")
  (hint "Each tile is 1/12 square unit."))
```

```check
(number
  (ask "A unit square is cut into 6 columns and 4 rows. A rectangle covers 5 columns and 3 rows. How many tiles does it cover?")
  (answer 15) (from "5 * 3")
  (wrong-if 8 "5 columns and 3 rows is 5 x 3 tiles, not 5 + 3.")
  (hint "5 columns, 3 rows."))
```

To find an area with fraction sides, tile it: count the tiles, and
multiply by the area of one tile.
