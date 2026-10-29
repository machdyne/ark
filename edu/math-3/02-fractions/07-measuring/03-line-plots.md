# Reading line plots

```lesson
(objective "Read a line plot whose number line is marked in halves or quarters of an inch.")
(standards "3.MD.B.4")
(minutes 20)
```

You can read a line plot marked in halves or quarters of an inch.

A class measured some leaves to the nearest half inch. Each X is 1
leaf. It sits over its length on the number line.

```figure
(fr-plot 40 280 170 4 8 2 '(1 3 4 2 1))
(text 160 220 "Length of leaves (inches)" 'centre 'small)
```

```check
(number
  (ask "How many leaves are 3 inches long?")
  (answer 4)
  (wrong-if 3 "3 X marks are over 2 1/2. Find the 3 on the number line and count the X marks above it.")
  (wrong-if 1 "Count every X stacked above 3, not just the top one.")
  (hint "Find 3 on the number line. Count the X marks over it."))
```

---

## Marks between the whole numbers

The marks between whole numbers are halves or quarters. On this plot
the marks are every half inch: 2, $2 1/2$, 3, $3 1/2$, 4.

```check
(number
  (ask "How many leaves are" (math "3 1/2") "inches long?")
  (answer 2)
  (wrong-if 4 "4 is the count over 3. 3 1/2 is the next mark to the right.")
  (wrong-if 1 "1 is the count over 4. 3 1/2 is the mark just before 4.")
  (hint "3 1/2 is halfway between 3 and 4."))
```

---

## Quarters

This line plot shows ribbons measured to the nearest quarter inch. The
marks go up by $1/4$ inch.

```figure
(fr-plot 30 290 170 4 8 4 '(2 0 3 1 5))
(text 160 220 "Length of ribbons (inches)" 'centre 'small)
```

```check
(number
  (ask "How many ribbons are" (math "1 1/2") "inches long?")
  (answer 3)
  (wrong-if 5 "5 is over 2. 1 1/2 is the middle mark between 1 and 2.")
  (wrong-if 0 "0 is over 1 1/4. 1 1/2 is the next mark.")
  (hint "1 1/2 is the same mark as 1 2/4."))
```

---

## Worked example

```example
(example
(problem "On the ribbon plot, how many ribbons are 1 3/4 inches long?")
(step "Find 1 3/4: 3 quarters past 1, the mark just before 2.")
(step "Count the X marks above it: 1.")
(answer "1 ribbon is 1 3/4 inches long."))
```

```example
(example
(problem "On the ribbon plot, how many ribbons were measured in all?")
(step "Count the X marks over each mark: 2, 0, 3, 1, 5.")
(step (choice (ask "What is the total?")
  (right "11")
  (wrong "5"
    "5 is the number of marks on the line. Add up all the X marks: 2 + 0 + 3 + 1 + 5.")))
(answer "11 ribbons were measured."))
```

---

## Practice

```figure
(fr-plot 40 280 170 2 6 2 '(3 1 0 2 4))
(text 160 220 "Length of shells (inches)" 'centre 'small)
```

```check
(number
  (ask "How many shells are" (math "2 1/2") "inches long?")
  (answer 2)
  (wrong-if 1 "1 is over 1 1/2. Find 2 1/2, halfway between 2 and 3.")
  (wrong-if 4 "4 is over 3. 2 1/2 is the mark just before 3.")
  (hint "2 1/2 is halfway between 2 and 3."))
```

```check
(number
  (ask "How many shells were measured in all?")
  (answer 10) (from "3 + 1 + 0 + 2 + 4")
  (wrong-if 5 "5 is the number of marks. Add up all the X marks.")
  (wrong-if 4 "4 is the tallest stack. Add the X marks over every mark.")
  (hint "Count every X on the plot."))
```

So: on a line plot, each X is 1 thing, sitting over its length.
