# Misleading charts

```lesson
(objective "Spot a cut axis and other tricks in a chart.")
(minutes 20)
(keywords "axis (of a chart)" "truncated axis")
```

You can see when a chart makes a small difference look big.

A bar chart has an **axis** (a line with numbers along it) that shows
the scale. The height of each bar should match its number from 0 up.

Suppose 2 made-up cafes sell 52 and 55 cakes a day. Tick the box to
start the axis at 50 instead of 0.

```figure
(define cut (toggle 'cut "Cut axis"))
(th-bars '(("Cafe A" 52) ("Cafe B" 55)) (if cut 50 0) 56 'grey)
(caption (if cut "Misleading: the axis starts at 50, not 0." "Axis from 0: B is a little more than A."))
```

```sources
(source "Huff, D. (1954), How to Lie with Statistics")
```

```check
(choice
  (ask "With the axis starting at 50, Cafe B's bar is about 2.5 times as tall. Does Cafe B sell about 2.5 times as many cakes?")
  (right "No: 55 is only about 6% more than 52")
  (wrong "Yes: the bar is 2.5 times as tall"
    "The bars start at 50, not 0, so their heights show only the part above 50: 2 and 5. The real numbers are 52 and 55.")
  (hint "Read the numbers, not the heights."))
```

---

## A truncated axis

An axis that starts above 0 is a **truncated axis** (cut short). It
can make small differences look large. It is not always wrong: a chart
of body temperatures from 36 to 40 degrees Celsius (about 97 to 104 degrees Fahrenheit), for example, need
not start at 0. But on a bar chart, where the bar's length stands for
its size, a cut axis misleads.

Always read the numbers on the axis before you compare bars.

```check
(number
  (ask "Cafe A sells 52 cakes and Cafe B 55. How many more does Cafe B sell?")
  (answer 3) (from "55 - 52")
  (hint "Subtract."))
```

---

## Other tricks

- **No axis numbers at all**: you cannot tell the size of anything.
- **Odd time spans**: a line chart that shows only a week when prices
  fell, but not the year when they rose.
- **Pictures that grow both ways**: a coin drawn twice as tall is also
  twice as wide, so it looks 4 times as big.

```check
(choice
  (ask "A chart shows a made-up shop's sales for only the 3 best months of the year. What is the problem?")
  (right "Picking a time span can hide the rest of the story")
  (wrong "3 months is too long"
    "Length is not the issue. Choosing only the best months leaves out the months that might tell a different story.")
  (wrong "There is no problem: the numbers are real"
    "The numbers can be true and the picture still misleading, because of what is left out.")
  (hint "What do you not see?"))
```

---

## Worked example

```example
(example
  (problem "A made-up chart shows 2 bars: 81 and 84 marks, with the axis from 80 to 85. The second bar looks 4 times as tall. How do they really compare?")
  (step "Above 80, the bars show 1 and 4: that is why one looks 4 times the other.")
  (step "The real values are 81 and 84: a difference of 3 marks.")
  (answer "Almost the same: 84 is only about 4% more than 81."))
```

---

## Practice

```check
(choice
  (ask "What should you look at first when you read a bar chart?")
  (right "Where the axis starts and what its numbers are")
  (wrong "Which bar is tallest"
    "Heights can mislead if the axis is cut. Check the axis numbers first.")
  (wrong "The colors"
    "Colors help tell bars apart, but they say nothing about size.")
  (hint "What gives the bars their meaning?"))
```

---

```check
(number
  (ask "A chart's axis starts at 90. Bars show 92 and 98. Above the axis start, the bars are 2 and 8 units tall. How many times as tall is the second bar?")
  (answer 4) (from "8 / 2")
  (wrong-if 1.07 "That compares the real values, 98/92. The question asks about the drawn heights, 8 and 2.")
  (hint "Divide the heights: 8 / 2."))
```

So: check where the axis starts, read the numbers, and ask what the
chart leaves out.
