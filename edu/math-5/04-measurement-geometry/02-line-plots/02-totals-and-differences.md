# Totals and differences on a line plot

```lesson
(objective "Find a total and the difference between the greatest and least measurements on a line plot, adding and subtracting fractions with unlike denominators.")
(standards "5.MD.B.2")
(minutes 25)
```

You can add and subtract the measurements on a line plot, even with unlike denominators.

Mia measures 8 leaves, to the nearest eighth inch.

```figure
(m5p4-plot 40 280 160 0 8 8 '(0 0 2 1 3 0 1 1 0))
(caption "Leaf lengths (inches)")
```

The longest leaf is 7/8 inch. The shortest is 1/4 inch.

```check
(number
  (ask "How much longer is the longest leaf than the shortest? (inches)")
  (answer 0.625) (unit "in") (from "7/8 - 1/4")
  (wrong-if 1.5 "That is 6/4: it takes 7 - 1 and 8 - 4. Write 1/4 as 2/8 first: 7/8 - 2/8.")
  (wrong-if 0.75 "That is 6/8: 7 - 1, as if 1/4 were 1/8. 1/4 = 2/8, so 7/8 - 2/8 = 5/8.")
  (hint "Write 1/4 in eighths.")
  (hint "7/8 - 2/8 = ?"))
```

---

## The leaves at one mark

3 leaves are 1/2 inch long. Laid end to end, they make $1/2 + 1/2 + 1/2$.

```check
(number
  (ask "How long are the three 1/2-inch leaves together? (inches)")
  (answer 1.5) (unit "in") (from "1/2 + 1/2 + 1/2")
  (wrong-if 0.5 "Each leaf is 1/2 inch. 3 of them are 3 halves, not 1.")
  (wrong-if 0.375 "That is 3/8. The leaves are 1/2 inch, not 1/8: 3 halves = 1 1/2.")
  (hint "3 halves = 3/2.")
  (hint "3/2 = 1 1/2"))
```

---

## A worked example: the total

```example
(example
  (problem "Find the total length of all 8 leaves.")
  (step "Read the plot: 1/4, 1/4, 3/8, 1/2, 1/2, 1/2, 3/4, 7/8.")
  (step "Write all in eighths: 2/8 + 2/8 + 3/8 + 4/8 + 4/8 + 4/8 + 6/8 + 7/8.")
  (step (number (ask "Add them. How many inches long are the 8 leaves in all?") (answer 4) (from "2/8 + 2/8 + 3/8 + 4/8 + 4/8 + 4/8 + 6/8 + 7/8")
          (wrong-if 32 "32 eighths is right, but the question asks for inches. 32/8 = 4.")))
  (answer "The leaves are 32/8 = 4 inches long in all."))
```

---

## Another plot

Leo measures how much each of 6 plants grew in a week.

```figure
(m5p4-plot 40 280 160 0 8 8 '(0 1 0 2 0 0 2 0 1))
(caption "Growth in a week (inches)")
```

```check
(number
  (ask "How much more did the plant that grew most grow than the one that grew least? (inches)")
  (answer 0.875) (unit "in") (from "1 - 1/8")
  (wrong-if 1 "The least is 1/8 inch, not 0. Take 1 - 1/8.")
  (hint "The most is 1 inch. The least is 1/8 inch.")
  (hint "1 = 8/8. 8/8 - 1/8 = ?"))
```

---

## Practice

```check
(number
  (ask "On Leo's plot, what is the total growth of the two plants at 3/8? (inches)")
  (answer 0.75) (unit "in") (from "3/8 + 3/8")
  (wrong-if 0.375 "That is one plant. Two plants are at 3/8: add 3/8 + 3/8.")
  (hint "3/8 + 3/8 = 6/8."))
```

```check
(number
  (ask "What is the total growth of all 6 plants on Leo's plot? (inches)")
  (answer 3.375) (unit "in") (from "1/8 + 3/8 + 3/8 + 3/4 + 3/4 + 1")
  (wrong-if 6 "6 is the number of plants. Add their growth: 1/8 + 3/8 + 3/8 + 3/4 + 3/4 + 1.")
  (wrong-if 27 "27 eighths is right, but the question asks for inches. 27/8 = 3 3/8.")
  (hint "Write each in eighths: 1, 3, 3, 6, 6 and 8 eighths.")
  (hint "27 eighths = 27/8 = 3 3/8"))
```

Write the measurements with a common denominator, then add or subtract.
