# Averages

```lesson
(objective "Choose between the mean and the median, and see how an outlier moves the mean.")
(minutes 20)
(keywords "the mean" "median" "outlier")
```

You can tell which "average" a number is, and when it misleads.

The word "average" can mean 2 different things.

- **The mean**: add up all the values and divide by how many there are.
- The **median**: put the values in order; it is the middle one (with
  an even count, halfway between the middle 2).

Suppose, with made-up numbers, 5 friends spend \$4, \$5, \$5, \$6 and
\$10 on lunch.

```check
(number
  (ask "What is the mean spend, in dollars?")
  (answer 6) (from "(4 + 5 + 5 + 6 + 10) / 5")
  (wrong-if 5 "5 is the median: the middle value. The mean adds all 5 values, 30, and divides by 5.")
  (hint "Add them: 4 + 5 + 5 + 6 + 10.")
  (hint "30 divided by 5."))
```

---

## The median

In order, the spends are 4, 5, 5, 6, 10. The middle one, the 3rd of
5, is 5. So the median spend is \$5.

```check
(number
  (ask "Find the median of 3, 9, 1, 7, 5.")
  (answer 5)
  (wrong-if 1 "Put the values in order first: 1, 3, 5, 7, 9. Then take the middle one.")
  (wrong-if 9 "Put them in order first: 1, 3, 5, 7, 9. The middle one is 5.")
  (hint "Order them: 1, 3, 5, 7, 9."))
```

---

## Outliers

An **outlier** is a value far from the rest. Suppose a 6th friend
joins and spends \$70.

- Mean: (30 + 70) / 6, which is about \$16.67.
- Median: halfway between 5 and 6, which is \$5.50.

The one big value pulled the mean far up. The median hardly moved.
So when there are outliers, the median often describes a typical
value better.

```sources
(source "Freedman, D., Pisani, R. and Purves, R., Statistics (4th ed., 2007)")
```

```check
(choice
  (ask "In a made-up village, most homes cost about 200,000 dollars, and one mansion costs 9,000,000 dollars. Which average better shows a typical home?")
  (right "The median")
  (wrong "The mean"
    "The mansion is an outlier. It drags the mean far above what most homes cost; the median stays near the typical price.")
  (hint "Which average does one huge value pull?"))
```

---

## Worked example

```example
(example
  (problem "Suppose 4 players score 2, 3, 3 and 12 points. Find the mean and the median.")
  (step "Mean: (2 + 3 + 3 + 12) / 4 = 20 / 4 = 5.")
  (step "Median: the middle 2 are 3 and 3, so the median is 3.")
  (answer "Mean 5, median 3: the 12 pulls the mean up."))
```

```example
(example
  (problem "Suppose 4 test scores are 60, 70, 80 and 90. Find the median.")
  (step "There are 4 values, so the median is halfway between the middle 2: 70 and 80.")
  (step (number (ask "Halfway between 70 and 80?") (answer 75) (from "(70 + 80) / 2")
    (wrong-if 70 "With an even count there is no single middle. Take halfway between 70 and 80.")))
  (answer "75"))
```

---

## Practice

```check
(number
  (ask "Suppose 3 bags weigh 2, 4 and 9 kg. What is the mean weight in kg?")
  (answer 5) (unit "kg") (from "(2 + 4 + 9) / 3")
  (wrong-if 4 "4 is the median. The mean is the total, 15, divided by 3.")
  (hint "Add, then divide by 3."))
```

---

```check
(choice
  (ask "A news report says \"the average worker at a small firm earns a lot\", using the mean. The boss earns far more than everyone else. What should you ask?")
  (right "What the median pay is")
  (wrong "Nothing: the mean is the true average"
    "The mean is one kind of average. With one very high value, it can sit above what nearly everyone earns.")
  (wrong "How many bosses the firm has"
    "That may matter a little, but the key question is what a typical worker earns: the median.")
  (hint "Which average does an outlier not drag?"))
```

So: the mean adds and divides, the median takes the middle, and
outliers pull the mean but hardly move the median.
