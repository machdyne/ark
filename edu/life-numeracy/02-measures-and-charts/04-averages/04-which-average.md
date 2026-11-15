# Which average?

```lesson
(objective "Choose between mean and median when one number is far from the rest.")
(minutes 25)
(keywords "outlier")
```

You can tell when the mean gives a wrong picture, and use the median instead.

An **outlier** is a value far away from the rest of the data. Here are the yearly pay of 5 people in a small firm (made up), in thousands of dollars:

| 30 | 32 | 35 | 38 | 200 |
|---|---|---|---|---|

The 200 is the owner's pay: an outlier.

```figure
(number-line 30 290 120 0 200 10 50)
(nl-mark 30 'ink)
(nl-mark 32 'ink)
(nl-mark 35 'warm "median")
(nl-mark 38 'ink)
(nl-mark 200 'ink "outlier")
(nl-mark 67 'cool)
(arrow (nl-x 67) 158 (nl-x 67) 128 'ink 1)
(text (nl-x 67) 172 "mean" 'centre 'small)
(caption "Pay in thousands of dollars")
```

```check
(number
  (ask "What is the mean pay, in thousands of dollars?")
  (answer 67) (unit "thousand") (from "(30 + 32 + 35 + 38 + 200) / 5")
  (wrong-if 35 "35 is the median, the middle value. The mean adds all 5 and divides by 5.")
  (hint "The total is 335."))
```

---

## The outlier pulls the mean

The mean, 67, is more than any of the 4 workers earn. One big number pulled it up. The median, 35, is in the middle of what most people earn, and it barely moves when the 200 changes.

```check
(choice
  (ask "The owner's pay rises from 200 to 400. What happens?")
  (right "The mean goes up a lot; the median stays 35" (true "(30 + 32 + 35 + 38 + 400) / 5 = 107"))
  (wrong "Both go up by the same amount"
    "The median is the middle value: 35 is still in the middle. Only the mean takes in the size of the 400.")
  (wrong "Neither changes"
    "The mean adds up every value, so a bigger 400 raises the total and the mean: to 107.")
  (hint "Is 35 still the middle value?"))
```

---

## When to use which

- Use the **median** when there are outliers or the data lean one way, as with pay, house prices and incomes. Official reports of household income, such as the US Census Bureau's, give the median as their main figure.
- Use the **mean** when the values are fairly even and you want to share a total, as with splitting a bill or a monthly budget.

```sources
(source "US Census Bureau, Income in the United States, Current Population Reports series P60 (annual): median household income")
```

```check
(choice
  (ask "A news story wants to show what a typical house costs in a town where a few mansions sell for millions. Which average fits best?")
  (right "The median price")
  (wrong "The mean price"
    "The few mansions are outliers: they pull the mean far above what a typical house costs. The median is not pulled.")
  (wrong "The range of prices"
    "The range shows spread, not a typical price.")
  (hint "Which average is not pulled by a few very big values?"))
```

---

## A worked example

```example
(example
  (problem "Five commutes: 22, 25, 24, 23 and 90 minutes (a day with a breakdown). Which average describes a usual day?")
  (step "90 is an outlier.")
  (step "Mean: (22 + 25 + 24 + 23 + 90) / 5 = 36.8 minutes.")
  (step "Median: in order 22, 23, 24, 25, 90, so 24 minutes.")
  (answer "The median, 24 minutes, describes a usual day."))
```

```check
(number
  (ask "Now you: what is the median of 4, 5, 5, 6, 30?")
  (answer 5)
  (wrong-if 10 "10 is the mean, pulled up by the outlier 30. The median is the middle value.")
  (hint "The numbers are already in order. Take the middle one."))
```

---

## Practice

```check
(choice
  (ask "Which value is an outlier: 48, 51, 50, 3, 49?")
  (right "3")
  (wrong "51"
    "51 is the biggest, but it is close to the others. 3 is far below all of them.")
  (wrong "There is none"
    "3 is far from 48 to 51, where all the rest are.")
  (hint "Which one is far from all the rest?"))
```

```check
(number
  (ask "Find the mean of 48, 51, 50, 3, 49.")
  (answer 40.2) (from "(48 + 51 + 50 + 3 + 49) / 5")
  (wrong-if 49 "49 is the median. The mean adds all 5 and divides by 5.")
  (hint "The total is 201."))
```

An outlier pulls the mean toward it; when there are outliers, the median gives a better idea of a typical value.
