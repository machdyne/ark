# Arrays

```lesson
(objective "Show a product as an array of rows and columns and find it.")
(standards "3.OA.A.1" "3.OA.A.3")
(minutes 25)
(keywords "array" "row (of an array)" "column (of an array)")
```

You can line things up neatly to see a product at a glance.

An **array** is a set of things in straight lines. Every line across
has the same number of things. Egg boxes, window panes and seats in a
bus are often arrays.

```figure
(dot-array 70 60 3 6 36 'ink)
(caption "An array of 18 dots")
```

```check
(choice
  (ask "Which of these is an array?")
  (right "A tray with 3 lines of 4 muffins")
  (wrong "A pile of 12 muffins"
    "A pile has no straight lines. In an array, things are in lines with the same number in each.")
  (wrong "Muffins in lines of 4, 3 and 5"
    "The lines are not the same length. An array has the same number in every line across.")
  (hint "An array has straight lines, each with the same number."))
```

---

## Rows

A line that goes across, from left to right, is a **row**. This array
has 3 rows. Each row has 6 dots.

```figure
(dot-array 70 60 3 6 36 'ink)
(frame 52 42 216 36 'ink 2)
(text 276 66 "row" 'small)
(caption "3 rows of 6")
```

```check
(number
  (ask "An array has 4 rows. Each row has 5 stars. How many rows are there?")
  (answer 4)
  (wrong-if 5 "5 is how many stars are in each row. The number of rows is how many lines go across.")
  (hint "The question tells you the number of rows."))
```

---

## Columns

A line that goes up and down is a **column**. The same array has 6
columns. Each column has 3 dots.

```figure
(dot-array 70 60 3 6 36 'ink)
(frame 52 42 36 108 'ink 2)
(text 70 168 "column" 'small 'centre)
(caption "6 columns of 3")
```

```check
(choice
  (ask "Look at the array. Which way does a column go?")
  (right "Up and down")
  (wrong "Across, from left to right"
    "A line across is a row. A column goes up and down, like a pillar.")
  (hint "Think of a pillar. It stands up and down."))
```

---

## Multiply rows by columns

Each row is an equal group. So an array with 3 rows of 6 is 3 groups of
6: 3 × 6. Move the sliders to make other arrays.

```figure
(define r (slider 'r 1 6 3 "Rows" 1))
(define c (slider 'c 1 8 6 "Columns" 1))
(dot-array (- 160 (* 13 (- c 1))) 20 r c 26 'ink)
(math 160 196 (string-append (fmt r 0) " * " (fmt c 0) " = " (fmt (* r c) 0)) 24)
```

```check
(number
  (ask "An array has 4 rows and 7 columns. How many things are in it?")
  (answer 28) (from "4 * 7")
  (wrong-if 11 "11 is 4 + 7. There are 4 rows, and each has 7: 7 + 7 + 7 + 7.")
  (wrong-if 21 "21 is 3 rows of 7. There are 4 rows.")
  (hint "4 rows, each with 7. Count by 7s 4 times.")
  (hint "7, 14, 21 ..."))
```

---

## Worked example

```example
(example
  (problem "A garden has 5 rows of plants. Each row has 6 plants. How many plants are there?")
  (step "The plants make an array: 5 rows, 6 in each row.")
  (step "Each row is an equal group, so multiply: 5 × 6.")
  (step "Count by 6s 5 times: 6, 12, 18, 24, 30.")
  (answer "5 × 6 = 30. There are 30 plants."))
```

```example
(example
  (problem "A wall has 3 rows of tiles. Each row has 9 tiles. How many tiles are there?")
  (step "The tiles make an array: 3 rows, 9 in each row.")
  (step "Multiply the rows by the number in each row: 3 × 9.")
  (step (number (ask "3 × 9 = ?") (answer 27) (from "3 * 9")
    (wrong-if 12 "12 is 3 + 9. There are 3 rows of 9: 9 + 9 + 9.")))
  (answer "3 × 9 = 27. There are 27 tiles."))
```

---

## Practice

```figure
(dot-array 66 50 4 8 27 'ink)
```

```check
(choice
  (ask "Which equation fits this array?")
  (right "4 × 8 = 32" (true "4 * 8 = 32"))
  (wrong "4 + 8 = 12"
    "Adding 4 and 8 counts one row and one column. The array has 4 rows of 8: multiply.")
  (wrong "4 × 7 = 28" (true "4 * 7 = 28")
    "Count the dots in one row again. There are 8, not 7.")
  (hint "Count the rows. Then count the dots in one row."))
```

```check
(number
  (ask "A box of eggs has 2 rows of 6. How many eggs does it hold?")
  (answer 12) (from "2 * 6")
  (wrong-if 8 "8 is 2 + 6. There are 2 rows, and each has 6: 6 + 6.")
  (hint "2 rows of 6 is 6 + 6."))
```

---

```check
(number
  (ask "A class puts 24 chairs in 4 rows. Each row has 6 chairs. How many columns are there?")
  (answer 6) (unit "columns")
  (wrong-if 4 "4 is the number of rows. Each row has 6 chairs, so there are 6 columns.")
  (wrong-if 24 "24 is all the chairs. Each chair in a row starts a new column.")
  (hint "Each row has 6 chairs. Each one is in a different column."))
```

```check
(number
  (ask "A sheet of stamps has 5 rows and 5 columns. How many stamps are there?")
  (answer 25) (unit "stamps") (from "5 * 5")
  (wrong-if 10 "10 is 5 + 5. There are 5 rows of 5 stamps: 5 + 5 + 5 + 5 + 5.")
  (hint "Count by 5s 5 times."))
```

So: an array is rows of the same length, and rows × the number in each row gives the total.
