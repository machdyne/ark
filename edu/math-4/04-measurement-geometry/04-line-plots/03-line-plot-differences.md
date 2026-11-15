# Differences on a line plot

```lesson
(objective "Find the difference between the longest and the shortest measurement on a line plot by subtracting fractions.")
(standards "4.MD.B.4")
(minutes 20)
```

You can find how much longer the longest thing is than the shortest by subtracting.

This plot shows 8 crayons, measured to the nearest eighth inch.

```figure
(m4p4-plot 30 290 160 16 24 8 '(0 1 0 2 2 1 0 2 0))
(caption "Crayon lengths (inches)")
```

```check
(choice
  (ask "What is the length of the shortest crayon?")
  (right "2 1/8 inches")
  (wrong "2 inches" "There is no X above 2. The first X is above 2 1/8.")
  (wrong "2 7/8 inches" "That is the longest crayon. The shortest is the X farthest left.")
  (hint "Find the X farthest to the left."))
```

---

## Longest minus shortest

The longest crayon is $2 7/8$ inches. The shortest is $2 1/8$ inches.

Both have 2 whole inches. So subtract the eighths: $7/8 - 1/8 = 6/8$.

$$ 2 7/8 - 2 1/8 = 6/8 $$

```check
(fraction
  (ask "How much longer is the longest crayon than the shortest, in inches?")
  (answer 6 8) (equivalent)
  (wrong-if (8 8) "That adds 7/8 + 1/8. How much longer means subtract: 7/8 - 1/8.")
  (hint "7/8 - 1/8 = ?"))
```

---

## A worked example

```figure
(m4p4-plot 40 280 160 0 4 4 '(0 1 3 2 1))
(caption "Snowfall each day (inches)")
```

```example
(example
  (problem "How much more snow fell on the snowiest day than on the least snowy day?")
  (step "Most: 1 inch, the X farthest right. 1 = 4/4.")
  (step "Least: 1/4 inch, the X farthest left.")
  (step (fraction (ask "4/4 - 1/4 = ?") (answer 3 4) (equivalent)
          (wrong-if (5 4) "That adds. How much more means subtract: 4/4 - 1/4.")))
  (answer "3/4 inch more."))
```

---

## Now you finish one

```figure
(m4p4-plot 40 280 160 0 8 8 '(0 0 1 1 3 0 2 1 0))
(caption "Worm lengths (inches)")
```

The longest worm is 7/8 inch. The shortest is at the 1/4 mark, which is 2/8 inch.

```check
(fraction
  (ask "How much longer is the longest worm than the shortest, in inches?")
  (answer 5 8) (equivalent)
  (wrong-if (9 8) "That adds. How much longer means subtract: 7/8 - 2/8.")
  (hint "7/8 - 2/8 = ?"))
```

---

## Practice

```figure
(m4p4-plot 40 280 160 0 8 8 '(0 0 1 1 3 0 2 1 0))
(caption "Worm lengths (inches)")
```

```check
(fraction
  (ask "On the worm plot, how much longer is a worm at 3/4 (6/8) than a worm at 1/2 (4/8), in inches?")
  (answer 2 8) (equivalent)
  (wrong-if (10 8) "That adds. Subtract to compare: 6/8 - 4/8.")
  (hint "6/8 - 4/8 = ?"))
```

```check
(fraction
  (ask "One snail is 1 3/4 inches long. Another is 1 1/4 inches. How much longer is the first, in inches?")
  (answer 2 4) (equivalent)
  (wrong-if (12 4) "That adds them: 1 3/4 + 1 1/4 = 3. How much longer means subtract: the 1s cancel, then 3/4 - 1/4.")
  (hint "Both have 1 whole. 3/4 - 1/4 = ?"))
```

To compare the longest and the shortest on a line plot, subtract their fractions.
