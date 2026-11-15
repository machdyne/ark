# Two-digit word problems

```lesson
(objective "Solve word problems that multiply two two-digit numbers.")
(standards "4.NBT.B.5")
(minutes 25)
```

You can solve stories with many equal groups, each of a two-digit size.

A teacher orders 24 boxes of crayons. Each box has 36 crayons. How
many crayons is that?

There are 24 equal groups of 36. Let c be the crayons: 24 × 36 = c.

```figure
(m4p1-area 60 40 220 120 '(20 4) '(30 6) 4 #f)
(label 160 200 "600 + 120 + 120 + 24 = 864" 'body 'bold)
```

```check
(number
  (ask "Solve 24 × 36 = c. How many crayons are there?")
  (answer 864) (unit "crayons") (from "20 * 30 + 4 * 30 + 20 * 6 + 4 * 6") (true "24 * 36 = 864")
  (wrong-if 60 "That adds 24 + 36. 24 boxes of 36 crayons are equal groups: multiply.")
  (wrong-if 624 "That adds only 600 and 24. Add the 2 other partial products, 120 and 120.")
  (hint "The partial products are 600, 120, 120 and 24."))
```

---

## Rows and columns

A hall has 18 rows of chairs. Each row has 25 chairs. The chairs make
an array, so multiply: 18 × 25 = h.

```check
(number
  (ask "How many chairs are in the hall?")
  (answer 450) (unit "chairs") (from "10 * 20 + 8 * 20 + 10 * 5 + 8 * 5") (true "18 * 25 = 450")
  (wrong-if 240 "That adds only 10 × 20 and 8 × 5. Add 8 × 20 = 160 and 10 × 5 = 50 too.")
  (wrong-if 43 "That adds 18 + 25. 18 rows of 25 is 18 × 25.")
  (hint "The partial products are 200, 160, 50 and 40."))
```

---

## Choose the equation

Look for the size of each group and the number of groups. Those are
the factors.

```check
(choice
  (ask "There are 60 minutes in an hour and 24 hours in a day. Which equation finds m, the minutes in a day?")
  (right "24 × 60 = m" (true "24 * 60 = 1440"))
  (wrong "24 + 60 = m"
    "Each hour is an equal group of 60 minutes. 24 groups of 60 means multiply.")
  (wrong "60 - 24 = m"
    "Nothing is taken away. A day is 24 hours of 60 minutes each: 24 × 60.")
  (hint "How many groups? How many in each?"))
```

---

## Worked example

```example
(example
  (problem "Tickets cost 15 dollars each. A club buys 12 tickets. How much do they cost?")
  (step "12 groups of 15 dollars: 12 × 15 = t.")
  (step "Partial products: 10 × 10 = 100, 2 × 10 = 20, 10 × 5 = 50, 2 × 5 = 10.")
  (step "100 + 20 + 50 + 10 = 180. Estimate: 10 × 20 = 200, so 180 is reasonable.")
  (answer "The tickets cost 180 dollars."))
```

```example
(example
  (problem "There are 60 minutes in an hour. How many minutes are in 24 hours?")
  (step "24 groups of 60: 24 × 60 = m.")
  (step "20 × 60 = 1,200 and 4 × 60 = 240.")
  (step (number (ask "What is m?") (answer 1440) (unit "minutes") (from "24 * 60")
    (wrong-if 1200 "1,200 is only 20 hours. Add the 4 more hours: 4 × 60 = 240.")))
  (answer "There are 1,440 minutes in 24 hours."))
```

---

## Practice

```check
(number
  (ask "A baker makes 35 trays of rolls. Each tray holds 42 rolls. How many rolls is that?")
  (answer 1470) (unit "rolls") (from "30 * 40 + 5 * 40 + 30 * 2 + 5 * 2") (true "35 * 42 = 1470")
  (wrong-if 1210 "That adds only 30 × 40 and 5 × 2. Add 5 × 40 = 200 and 30 × 2 = 60 too.")
  (wrong-if 77 "That adds 35 + 42. 35 trays of 42 is 35 × 42.")
  (hint "The partial products are 1,200, 200, 60 and 10."))
```

```check
(number
  (ask "A book has 28 pages. Each page has 64 words. How many words are in the book?")
  (answer 1792) (unit "words") (from "20 * 60 + 8 * 60 + 20 * 4 + 8 * 4") (true "28 * 64 = 1792")
  (wrong-if 1232 "That adds only 20 × 60 and 8 × 4. Add 8 × 60 = 480 and 20 × 4 = 80 too.")
  (hint "The partial products are 1,200, 480, 80 and 32."))
```

---

```check
(number
  (ask "A class of 31 children each reads 27 books in a year. How many books is that?")
  (answer 837) (unit "books") (from "30 * 20 + 1 * 20 + 30 * 7 + 1 * 7") (true "31 * 27 = 837")
  (wrong-if 607 "That adds only 30 × 20 and 1 × 7. Add 1 × 20 = 20 and 30 × 7 = 210 too.")
  (wrong-if 58 "That adds 31 + 27. Multiply: 31 × 27.")
  (hint "The partial products are 600, 20, 210 and 7."))
```

```check
(choice
  (ask "A store sells 42 boxes of 16 pens. Sam says that is 412 pens. Is that reasonable?")
  (right "No: 40 × 20 = 800, so 412 is too small" (true "42 * 16 = 672") (true "40 * 20 = 800"))
  (wrong "Yes: 40 × 10 + 2 × 6 = 412" (true "40 * 10 + 2 * 6 = 412")
    "That adds only 2 partial products. With all 4, 42 × 16 = 672.")
  (wrong "Yes: it ends in 2, like 2 × 6 = 12"
    "The last digit is not enough. 412 is far below the estimate, 800.")
  (hint "Round each factor to the nearest ten and multiply."))
```

So: find the groups and their size, write an equation, and solve it.
