# Problems from a line plot

```lesson
(objective "Solve multi-step problems from a line plot that multiply a fraction by a whole number, add and compare.")
(standards "5.MD.B.2")
(minutes 25)
```

You can multiply to find the total at one mark of a line plot.

A class measures the rain each day for 10 days.

```figure
(m5p4-plot 40 280 160 0 8 8 '(0 2 3 1 3 0 1 0 0))
(caption "Rain each day (inches)")
```

3 days had 1/4 inch of rain. Together that is $3 * (1/4) = 3/4$ inch.

```check
(number
  (ask "3 days had 1/2 inch each. How much rain fell on those days together? (inches)")
  (answer 1.5) (unit "in") (from "3 * (1/2)")
  (wrong-if 0.5 "Each day had 1/2 inch. 3 days had 3 times as much: 3 × 1/2.")
  (wrong-if 0.16667 "That is 1/2 ÷ 3. The rain adds up over 3 days, so multiply.")
  (hint "3 × 1/2 = 3/2.")
  (hint "3/2 = 1 1/2"))
```

---

## Compare two marks

How much more rain fell on the 1/2-inch days than on the 1/4-inch days?

$1 1/2 - 3/4 = 6/4 - 3/4 = 3/4$ inch.

```check
(number
  (ask "How much rain fell on the two 1/8-inch days together? (inches)")
  (answer 0.25) (unit "in") (from "2 * (1/8)")
  (wrong-if 0.125 "That is one day. There are 2 Xs above 1/8: 2 × 1/8.")
  (hint "2 × 1/8 = 2/8.")
  (hint "2/8 = 1/4"))
```

---

## A worked example: all 10 days

```example
(example
  (problem "How much rain fell in the 10 days in all?")
  (step "At each mark, multiply: 2 × 1/8 = 2/8, 3 × 1/4 = 6/8, 1 × 3/8 = 3/8.")
  (step "Then 3 × 1/2 = 12/8 and 1 × 3/4 = 6/8.")
  (step (number (ask "Add: 2/8 + 6/8 + 3/8 + 12/8 + 6/8 = ? inches") (answer 3.625)
          (from "2 * (1/8) + 3 * (1/4) + 3/8 + 3 * (1/2) + 3/4")
          (wrong-if 2 "That adds one X from each mark: 1/8 + 1/4 + 3/8 + 1/2 + 3/4. Count every X.")))
  (answer "29/8 = 3 5/8 inches of rain in all."))
```

---

## Practice

```figure
(m5p4-plot 40 280 160 0 4 4 '(0 2 4 3 1))
(caption "Water each runner drank (liters)")
```

```check
(number
  (ask "How much water did the runners at 1/2 liter drink together? (liters)")
  (answer 2) (unit "L") (from "4 * (1/2)")
  (wrong-if 0.5 "That is one runner. 4 runners drank 1/2 liter each: 4 × 1/2.")
  (hint "4 × 1/2 = ?"))
```

```check
(number
  (ask "How much more did the 3/4-liter runners drink in all than the 1/4-liter runners in all? (liters)")
  (answer 1.75) (unit "L") (from "3 * (3/4) - 2 * (1/4)")
  (wrong-if 0.5 "That compares 1 runner with 1 runner. Find each total first: 3 × 3/4 and 2 × 1/4.")
  (hint "3 × 3/4 = 9/4, and 2 × 1/4 = 2/4.")
  (hint "9/4 - 2/4 = ?"))
```

---

```check
(choice
  (ask "Did the 10 runners drink more than 5 liters in all?")
  (right "Yes: 5 3/4 liters" (true "2 * (1/4) + 4 * (1/2) + 3 * (3/4) + 1 = 23/4"))
  (wrong "No: 4 liters" (false "2 * (1/4) + 4 * (1/2) + 3 * (3/4) + 1 = 4") "Multiply at each mark, then add: 2/4 + 8/4 + 9/4 + 4/4 = 23/4.")
  (wrong "No: 2 1/2 liters" "That adds one X from each mark. Each X is a runner: multiply by the Xs at each mark.")
  (hint "In quarters: 2 × 1 + 4 × 2 + 3 × 3 + 1 × 4.")
  (hint "23 quarters = 23/4 = 5 3/4"))
```

Multiply at each mark, then add or subtract the totals to answer the question.
