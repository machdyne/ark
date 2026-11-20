# Making a line plot in eighths

```lesson
(objective "Make a line plot of a set of measurements in halves, quarters and eighths of a unit, writing every mark in eighths.")
(standards "5.MD.B.2")
(minutes 25)
```

You can put measurements in halves, quarters and eighths on one line plot by writing them all in eighths.

A class measures 10 bugs, to the nearest eighth inch. Some lengths are in halves or quarters:

1/4, 3/8, 1/2, 1/2, 5/8, 3/4, 1/2, 3/8, 7/8, 1/4

Halves and quarters can be written in eighths: $1/2 = 4/8$ and $1/4 = 2/8$.

```check
(number
  (ask "Write 3/4 in eighths. 3/4 = ?/8")
  (answer 6) (from "(3/4) * 8")
  (wrong-if 3 "3/8 is less than 3/4. Each quarter is 2 eighths, so 3 quarters are 6 eighths.")
  (wrong-if 4 "4/8 is 1/2. Each quarter is 2 eighths: 3 × 2 = 6.")
  (hint "Multiply the numerator and the denominator by 2.")
  (hint "3 × 2 = ?"))
```

---

## The number line

Draw a number line from 0 to 1 with a mark for every eighth. Write each mark in eighths.

```figure
(m5p4-plot 40 280 140 0 8 -8 '())
(caption "From 0 to 1, a mark every eighth inch")
```

```check
(choice
  (ask "Which mark is the same as 1/2?")
  (right "4/8" (true "4/8 = 1/2"))
  (wrong "2/8" (false "2/8 = 1/2") "2/8 is 1/4. Half of 8 eighths is 4 eighths.")
  (wrong "1/8" "1/8 is the first mark after 0, much less than a half.")
  (wrong "5/8" (false "5/8 = 1/2") "5/8 is just past the middle. The middle of 8 eighths is 4/8.")
  (hint "The mark halfway from 0 to 1."))
```

---

## Put an X for each bug

Move the slider to put the Xs on one by one, in the order of the list.

```figure
(define n (slider 'n 0 10 0 "Xs placed" 1))
(define data '(2 3 4 4 5 6 4 3 7 2))
(define counts (map (lambda (k) (let loop ((l data) (i 0) (c 0)) (if (or (null? l) (= i n)) c (loop (cdr l) (+ i 1) (if (= (car l) k) (+ c 1) c))))) '(0 1 2 3 4 5 6 7 8)))
(m5p4-plot 40 280 170 0 8 -8 counts)
(caption "Bug lengths (inches)")
```

All 10 placed: 2 at 2/8, 2 at 3/8, 3 at 4/8, 1 at 5/8, 1 at 6/8 and 1 at 7/8.

```check
(number
  (ask "How many Xs go above 4/8?")
  (answer 3) (unit "Xs") (from "3")
  (wrong-if 0 "4/8 is not in the list as written, but 1/2 is. 1/2 = 4/8, and 1/2 is there 3 times.")
  (hint "Write 1/2 in eighths.")
  (hint "How many times is 1/2 in the list?"))
```

---

## A worked example

```example
(example
  (problem "Plot 5 seeds: 1/2, 5/8, 1/4, 1/2 and 7/8 inch.")
  (step "Write each in eighths: 4/8, 5/8, 2/8, 4/8, 7/8.")
  (step "Draw a line from 0 to 1 with a mark every eighth.")
  (step (number (ask "How many Xs are above 4/8?") (answer 2) (from "2")
          (wrong-if 1 "1/2 is in the list 2 times, and 1/2 = 4/8.")))
  (answer "1 X at 2/8, 2 at 4/8, 1 at 5/8, 1 at 7/8."))
```

---

## Practice

```figure
(m5p4-plot 40 280 170 0 8 -8 '(0 1 0 2 4 1 0 2 0))
(caption "Shell lengths (inches)")
```

```check
(number
  (ask "How many shells are on this plot?")
  (answer 10) (unit "shells") (from "1 + 2 + 4 + 1 + 2")
  (wrong-if 5 "That counts the marks with Xs. Count every X: each is 1 shell.")
  (hint "Add the Xs above each mark."))
```

```check
(choice
  (ask "A shell is 1/4 inch long. Above which mark does its X go?")
  (right "2/8" (true "2/8 = 1/4"))
  (wrong "4/8" "4/8 is 1/2. 1/4 is half of that: 2/8.")
  (wrong "1/8" "1/8 is half of a quarter. 1 quarter is 2 eighths.")
  (hint "1/4 = ?/8"))
```

---

```check
(number
  (ask "On the shell plot, how many shells are longer than 1/2 inch?")
  (answer 3) (unit "shells") (from "1 + 2")
  (wrong-if 7 "That counts the 4 shells at 4/8 too. 4/8 is 1/2, not longer than it.")
  (hint "Count the Xs to the right of 4/8."))
```

Write halves and quarters in eighths, then put an X above the mark of each measurement.
