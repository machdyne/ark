# From pairs to points

```lesson
(objective "Form ordered pairs from corresponding terms, such as (3, 6), and graph them on the coordinate plane.")
(standards "5.OA.B.3")
(minutes 25)
```

You can turn two patterns into points on a coordinate plane.

Pattern A: start at 0, add 2. Pattern B: start at 0, add 4.

```figure
(m5p4-table 20 20 70 '(("A: add 2" "B: add 4") ("0" "0") ("2" "4") ("4" "8") ("6" "12") ("8" "16")))
```

Each row makes an ordered pair: the term of A first, then the term of B. The rows give (0, 0), (2, 4), (4, 8), ...

```check
(choice
  (ask "Which ordered pair does the row 6 and 12 make?")
  (right "(6, 12)")
  (wrong "(12, 6)" "The term of A comes first, as the x-coordinate. The row is A = 6, B = 12: (6, 12).")
  (wrong "(6, 8)" "6 and 8 are not in the same row. Look across: 6 goes with 12.")
  (hint "A first, then B, from the same row."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.OA.B.3: form ordered pairs consisting of corresponding terms from the two patterns, and graph them on a coordinate plane")
```

---

## Plot the pairs

The x-axis is for pattern A, and the y-axis for pattern B. Move the slider to plot the pairs one by one.

```figure
(define n (slider 'n 1 5 5 "Pairs" 1))
(m5p4-plane 70 10 '(20 10) 10 20 2 "A" "B")
(for-range 0 n (lambda (i) (plot-point (* 2 i) (* 4 i) 'ink)))
```

```check
(number
  (ask "The point for the row 8 and 16 is how many units up from the x-axis?")
  (answer 16) (unit "units") (from "16")
  (wrong-if 8 "8 is how far across, the term of A. The y-coordinate is the term of B: 16.")
  (hint "The second number of (8, 16)."))
```

---

## A line of points

The points lie on a straight line through the origin. Each point is 2 across and 4 up from the one before.

That is because A adds 2 and B adds 4 at each step.

```check
(choice
  (ask "What is the next point after (8, 16)?")
  (right "(10, 20)" (true "8 + 2 = 10"))
  (wrong "(10, 18)" "B adds 4, not 2: 16 + 4 = 20.")
  (wrong "(16, 32)" "That doubles both. Add the rules: 8 + 2 and 16 + 4.")
  (hint "Add 2 to the x-coordinate and 4 to the y-coordinate."))
```

---

## A worked example

```example
(example
  (problem "Pattern C: start at 0, add 1. Pattern D: start at 0, add 3. Plot the first 4 pairs.")
  (step "C: 0, 1, 2, 3. D: 0, 3, 6, 9.")
  (step "Pairs: (0, 0), (1, 3), (2, 6).")
  (step (choice (ask "What is the 4th pair?") (right "(3, 9)")
          (wrong "(9, 3)" "The term of C comes first: (3, 9).")))
  (answer "(0, 0), (1, 3), (2, 6), (3, 9): on a line through the origin."))
```

---

## Practice

```figure
(m5p4-plane 70 10 '(20 10) 10 20 2 "C" "D")
(plot-point 0 0 'ink) (plot-point 1 3 'ink) (plot-point 2 6 'ink) (plot-point 3 9 'ink)
(plot-point 4 12 'ink) (plot-point 5 15 'ink "P")
```

```check
(number
  (ask "Point P is the pair of the 6th terms of C and D. What is its y-coordinate?")
  (answer 15) (from "5 * 3")
  (wrong-if 5 "5 is the x-coordinate, the term of C. The y-coordinate is the term of D: 15.")
  (hint "D: 0, 3, 6, 9, 12, ..."))
```

```check
(choice
  (ask "Which pair would also be on this line of points?")
  (right "(6, 18)" (true "3 * 6 = 18"))
  (wrong "(18, 6)" "The order is flipped. D is 3 times C, so with C = 6, D = 18: (6, 18).")
  (wrong "(6, 9)" "9 goes with 3, not 6. D is 3 times C.")
  (hint "D is 3 times C."))
```

Corresponding terms make ordered pairs; plotted, they show both patterns at once.
