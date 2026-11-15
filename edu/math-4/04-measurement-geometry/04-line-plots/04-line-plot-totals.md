# Totals on a line plot

```lesson
(objective "Find a total from a line plot by adding fractions, writing them all in eighths first.")
(standards "4.MD.B.4")
(minutes 25)
```

You can find a total from a line plot by adding fractions with the same denominator.

Ana pours water into 5 jars. The plot shows how many liters are in each jar.

```figure
(m4p4-plot 40 280 160 0 8 8 '(0 0 1 0 2 0 1 1 0))
(caption "Water in each jar (liters)")
```

The marks are 1/4, 1/2, 1/2, 3/4 and 7/8. They have different denominators.

```check
(choice
  (ask "What is 1/4 written in eighths?")
  (right "2/8" (true "1/4 = 2/8"))
  (wrong "1/8" (false "1/4 = 1/8") "1/8 is half of 1/4. A quarter is 2 eighths.")
  (wrong "4/8" (false "1/4 = 4/8") "4/8 is a half. A quarter is 2 eighths.")
  (hint "On the plot, 1/4 is on the 2nd eighth mark."))
```

---

## All in eighths

Write every amount in eighths:

| plot | eighths |
|---|---|
| 1/4 | 2/8 |
| 1/2 | 4/8 |
| 3/4 | 6/8 |
| 7/8 | 7/8 |

```check
(fraction
  (ask "What is 3/4 written in eighths? Type the fraction.")
  (answer 6 8)
  (wrong-if (3 8) "3/8 is less than half. 3/4 is more than half: 6/8.")
  (hint "1/4 = 2/8, so 3/4 = 3 × 2 eighths."))
```

---

## Add the eighths

Now add the numerators: $2/8 + 4/8 + 4/8 + 6/8 + 7/8 = 23/8$.

23/8 is $2 7/8$, because 16 eighths make 2 wholes.

```check
(number
  (ask "How many liters of water does Ana use in all? Write a mixed number.")
  (answer 2.875) (unit "L") (from "2/8 + 4/8 + 4/8 + 6/8 + 7/8")
  (wrong-if 0.575 "Do not add the denominators. Eighths plus eighths are eighths: 23/8.")
  (wrong-if 2.375 "That counts only one 1/2. There are 2 Xs above 1/2.")
  (hint "Use the eighths from the table. One 4/8 for each X above 1/2.")
  (hint "23/8 = 16/8 + 7/8."))
```

---

## A worked example

```figure
(m4p4-plot 40 280 160 0 4 4 '(0 2 1 1 0))
(caption "Rain each day (inches)")
```

```example
(example
  (problem "How much rain fell on the 4 days in all?")
  (step "The plot shows 1/4, 1/4, 1/2 and 3/4. Write them in quarters.")
  (step "1/4 + 1/4 + 2/4 + 3/4.")
  (step (fraction (ask "1 + 1 + 2 + 3 quarters = ?") (answer 7 4) (equivalent)
          (wrong-if (7 16) "Do not add the denominators. Quarters plus quarters are quarters.")))
  (answer "7/4 inches, which is 1 3/4 inches."))
```

---

## Practice

```figure
(m4p4-plot 40 280 160 0 8 8 '(0 1 0 2 1 0 0 0 0))
(caption "Pieces of string (feet)")
```

```check
(fraction
  (ask "What is the total length of the strings, in feet?")
  (answer 11 8) (equivalent)
  (wrong-if (11 32) "Do not add the denominators. Eighths plus eighths are eighths.")
  (wrong-if (8 8) "That counts only one X at 3/8. There are 2.")
  (hint "1/8 + 3/8 + 3/8 + 4/8.")
  (hint "1/2 = 4/8."))
```

```check
(fraction
  (ask "The 2 strings at 3/8 foot are tied end to end. How long are they together, in feet?")
  (answer 6 8) (equivalent)
  (wrong-if (6 16) "Do not add the denominators: 3 eighths and 3 eighths are 6 eighths.")
  (hint "3/8 + 3/8 = ?"))
```

To find a total on a line plot, write each amount in eighths, then add the numerators.
