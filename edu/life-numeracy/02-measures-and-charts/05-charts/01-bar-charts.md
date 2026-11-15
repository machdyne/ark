# Bar charts

```lesson
(objective "Read values from a bar chart with a scale and compare bars.")
(minutes 20)
(keywords "chart" "bar chart" "axis")
```

You can read the numbers off a bar chart and compare them.

A **chart** is a picture of data. In a **bar chart**, each value is a bar, and the taller the bar, the bigger the value.

An **axis** is the line along one edge of a chart. The bottom axis says what each bar is. The side axis has a scale, like a measuring tool: read across from the top of a bar to the scale.

```figure
(nu2-bars '(("Jan" 140) ("Feb" 120) ("Mar" 90) ("Apr" 60)) 0 160 20 'cool)
(text 160 16 "Gas bill (\$), made up" 'centre 'small 'bold)
```

```check
(number
  (ask "What was the gas bill in February, in dollars?")
  (answer 120) (unit "dollars")
  (wrong-if 6 "6 counts the grid lines. Each line on this scale is worth 20: read the number on the scale.")
  (wrong-if 140 "140 is January. February is the second bar.")
  (hint "Find the February bar and read across to the scale."))
```

---

## Find the interval

As on any scale, find what each line is worth first. Here the scale counts 0, 20, 40 ...: every line is 20. A bar halfway between two lines is 10 more than the lower one.

```check
(number
  (ask "How much less was the bill in April than in January, in dollars?")
  (answer 80) (unit "dollars") (from "140 - 60")
  (wrong-if 200 "That adds them. How much less is a difference: 140 - 60.")
  (hint "January is 140, April is 60.")
  (hint "Take the smaller from the bigger."))
```

---

## Reading between lines

```figure
(nu2-bars '(("A" 35) ("B" 50) ("C" 15) ("D" 25)) 0 60 10 'warm)
(text 160 16 "Customers per hour at 4 checkouts" 'centre 'small 'bold)
```

The scale counts by 10. Bar A stops halfway between 30 and 40.

```check
(number
  (ask "How many customers an hour does checkout A take?")
  (answer 35) (unit "customers") (from "(30 + 40) / 2")
  (wrong-if 30 "The bar goes past 30: it stops halfway to 40. Halfway between 30 and 40 is 35.")
  (wrong-if 31 "Each line is worth 10 here, so halfway between 30 and 40 is 35, not 31.")
  (hint "Halfway between 30 and 40."))
```

---

## A worked example

```figure
(nu2-bars '(("A" 35) ("B" 50) ("C" 15) ("D" 25)) 0 60 10 'warm)
(text 160 16 "Customers per hour at 4 checkouts" 'centre 'small 'bold)
```

```example
(example
  (problem "How many customers an hour do all 4 checkouts take together?")
  (step "Read each bar: A 35, B 50, C 15, D 25.")
  (step "Add: 35 + 50 + 15 + 25.")
  (answer "125 customers an hour."))
```

```check
(number
  (ask "Now you: how many times as many customers does B take as C? (B divided by C, to the nearest tenth)")
  (answer 3.3) (within 0.05) (from "50 / 15")
  (wrong-if 35 "That is the difference, 50 - 15. The question asks how many times as many: divide.")
  (hint "B is 50 and C is 15.")
  (hint "50 / 15."))
```

---

## Practice

```figure
(nu2-bars '(("Jan" 140) ("Feb" 120) ("Mar" 90) ("Apr" 60)) 0 160 20 'cool)
(text 160 16 "Gas bill (\$), made up" 'centre 'small 'bold)
```

```check
(choice
  (ask "Before you read any bar, what should you look at first on a bar chart?")
  (right "The title and the scale on the side axis")
  (wrong "The tallest bar"
    "The tallest bar shows the biggest value, but you cannot say how big until you know what the scale counts by and what the chart is about.")
  (wrong "The colors or patterns of the bars"
    "Patterns tell bars apart, but the numbers come from the scale, and the title tells you what they measure.")
  (hint "What tells you what the bars stand for and how much they are worth?"))
```

```check
(number
  (ask "On the gas bill chart, what was the mean monthly bill for the 4 months, in dollars?")
  (answer 102.5) (unit "dollars") (from "(140 + 120 + 90 + 60) / 4")
  (wrong-if 410 "410 is the total. Divide by the 4 months.")
  (hint "Jan 140, Feb 120, Mar 90, Apr 60.")
  (hint "Add and divide by 4."))
```

To read a bar chart, read the title, find what each line on the scale is worth, and read across from the top of each bar.
