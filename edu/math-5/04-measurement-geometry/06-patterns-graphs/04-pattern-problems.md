# Pattern problems

```lesson
(objective "Solve real-world problems with two patterns, such as two people saving different amounts each week, with a table and a graph.")
(standards "5.OA.B.3" "5.G.A.2")
(minutes 25)
```

You can use two patterns to compare two things that grow.

Ana saves 2 dollars each week. Ben saves 6 dollars each week. Both start with 0.

```figure
(m5p4-table 40 20 80 '(("week" "Ana" "Ben") ("0" "0" "0") ("1" "2" "6") ("2" "4" "12") ("3" "6" "18") ("4" "8" "?")))
(caption "Dollars saved")
```

```check
(number
  (ask "How many dollars has Ben saved after 4 weeks?")
  (answer 24) (unit "dollars") (from "4 * 6")
  (wrong-if 8 "8 is Ana's savings. Ben adds 6 each week: 18 + 6.")
  (wrong-if 22 "That adds 4. Ben saves 6 a week: 18 + 6.")
  (hint "Ben adds 6 each week."))
```

---

## The relationship

Across each row: 2 and 6, 4 and 12, 6 and 18. Ben's savings are 3 times Ana's.

```check
(number
  (ask "When Ana has saved 20 dollars, how much has Ben saved?")
  (answer 60) (unit "dollars") (from "3 * 20")
  (wrong-if 24 "That adds 4, the difference in one week. Ben has 3 times Ana's savings: 3 × 20.")
  (hint "Ben = 3 × Ana."))
```

---

## The graph

Each row gives a pair (Ana's dollars, Ben's dollars). Plotted, the points make a line through the origin.

```figure
(m5p4-plane 70 10 '(20 6.5) 10 30 2 "Ana" "Ben")
(plot-point 0 0 'ink) (plot-point 2 6 'ink) (plot-point 4 12 'ink) (plot-point 6 18 'ink) (plot-point 8 24 'ink "(8, 24)")
```

```check
(choice
  (ask "What does the point (8, 24) mean?")
  (right "When Ana has 8 dollars, Ben has 24 dollars.")
  (wrong "After 8 weeks, Ben has 24 dollars." "Weeks are not on this graph. The x-coordinate is Ana's dollars: 8.")
  (wrong "When Ben has 8 dollars, Ana has 24 dollars." "Ana's dollars are the x-coordinate, first. So Ana 8, Ben 24.")
  (hint "x is Ana's dollars, y is Ben's."))
```

---

## A worked example

Batches of pancakes: each batch takes 2 cups of flour and 1 cup of milk.

```example
(example
  (problem "Make the pairs (cups of milk, cups of flour) for 1 to 4 batches.")
  (step "Milk: 1, 2, 3, 4. Flour: 2, 4, 6, 8.")
  (step "Pairs: (1, 2), (2, 4), (3, 6).")
  (step (choice (ask "What is the pair for 4 batches?") (right "(4, 8)")
          (wrong "(8, 4)" "Milk comes first here: 4 cups of milk, 8 of flour.")))
  (answer "(1, 2), (2, 4), (3, 6), (4, 8): flour is always 2 times milk."))
```

---

## Practice

```check
(number
  (ask "Pancakes again: you use 7 cups of milk. How many cups of flour?")
  (answer 14) (unit "cups") (from "2 * 7")
  (wrong-if 8 "That adds 1. Flour is 2 times the milk: 2 × 7.")
  (hint "Flour = 2 × milk."))
```

```check
(number
  (ask "Kim runs 3 miles a day and Lee runs 9 miles a day. When Kim has run 15 miles, how far has Lee run?")
  (answer 45) (unit "miles") (from "3 * 15")
  (wrong-if 21 "That adds 6. Lee runs 3 times as far as Kim each day: 3 × 15.")
  (hint "9 is 3 times 3.")
  (hint "3 × 15 = ?"))
```

---

```check
(choice
  (ask "On a graph of (Kim's miles, Lee's miles), which point is there?")
  (right "(5, 15)" (true "3 * 5 = 15"))
  (wrong "(15, 5)" "Kim's miles come first. If Kim has 5, Lee has 15: (5, 15).")
  (wrong "(5, 11)" "That adds 6. Lee's miles are 3 times Kim's: 3 × 5 = 15.")
  (hint "Lee = 3 × Kim."))
```

A table and a graph of two patterns show how one quantity grows compared with the other.
