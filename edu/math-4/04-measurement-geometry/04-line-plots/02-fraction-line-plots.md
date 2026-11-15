# Line plots with fractions

```lesson
(objective "Make and read a line plot of measurements in halves, quarters and eighths of a unit.")
(standards "4.MD.B.4")
(minutes 25)
```

You can show measurements in parts of an inch on a line plot.

A class measures 10 shells to the nearest quarter inch. Each X is 1 shell.

```figure
(m4p4-plot 40 280 160 0 8 4 '(0 0 1 2 3 2 1 1 0))
(caption "Shell lengths (inches)")
```

```check
(number
  (ask "How many shells are 1 inch long?")
  (answer 3) (unit "shells") (from "3")
  (wrong-if 1 "Look above the 1, not at the first X. There are 3 X marks above 1.")
  (hint "Count the X marks above the 1."))
```

---

## Reading the plot

The number line is marked in quarters: 0, 1/4, 1/2, 3/4, 1 and on to 2. 1/2 is the same as 2/4.

```check
(number
  (ask "How many shells are longer than 1 inch?")
  (answer 4) (unit "shells") (from "2 + 1 + 1")
  (wrong-if 7 "That counts 1 inch too. Longer than 1 inch means the X marks to the right of 1.")
  (hint "Count the X marks right of 1."))
```

---

## Making a line plot

To make a line plot:

1. Draw a number line with marks for every eighth, quarter or half, as the data needs.
2. For each measurement, put an X above its mark.
3. Give the plot a title with the unit.

```check
(choice
  (ask "Lengths are 1/8, 3/8, 3/8 and 5/8 inch. Which marks does the number line need?")
  (right "every eighth from 0 to 1")
  (wrong "only 0 and 1" "With only 0 and 1 you cannot show where 3/8 goes. Mark every eighth.")
  (wrong "every quarter from 0 to 1" "3/8 is between 1/4 and 1/2, with no quarter mark. Mark every eighth.")
  (hint "The lengths are in eighths."))
```

---

## A worked example

Move the slider to put the Xs on the plot one by one.

```figure
(define n (slider 'n 0 6 0 "Xs placed" 1))
(define data '(1 3 3 5 3 6))
(define counts (map (lambda (k) (let loop ((l data) (i 0) (c 0)) (if (or (null? l) (= i n)) c (loop (cdr l) (+ i 1) (if (= (car l) k) (+ c 1) c))))) '(0 1 2 3 4 5 6 7 8)))
(m4p4-plot 40 280 160 0 8 8 counts)
(caption "Bead lengths (inches): 1/8, 3/8, 3/8, 5/8, 3/8, 6/8")
```

```example
(example
  (problem "Plot 6 beads: 1/8, 3/8, 3/8, 5/8, 3/8 and 6/8 inch.")
  (step "Draw a number line from 0 to 1 in eighths.")
  (step "Put an X for each bead above its mark. 6/8 is the same mark as 3/4.")
  (step (number (ask "How many Xs are above 3/8?") (answer 3) (from "3")
          (wrong-if 1 "3/8 is in the list 3 times.")))
  (answer "1 X at 1/8, 3 at 3/8, 1 at 5/8, 1 at 3/4."))
```

---

## Practice

```figure
(m4p4-plot 40 280 160 0 4 2 '(0 2 4 1 1))
(caption "Plant heights (feet)")
```

```check
(number
  (ask "How many plants are on the plot?")
  (answer 8) (unit "plants") (from "2 + 4 + 1 + 1")
  (wrong-if 4 "4 is the most above one mark. Count every X.")
  (hint "Add the X marks above each mark."))
```

```check
(choice
  (ask "Which height do the most plants have?")
  (right "1 foot")
  (wrong "2 feet" "2 is the biggest height, but only 1 plant has it. The most Xs are above 1.")
  (wrong "1/2 foot" "There are 2 Xs above 1/2. There are 4 above 1.")
  (hint "Find the tallest stack of Xs."))
```

A line plot puts an X above the mark of each measurement, so you can see them all at once.
