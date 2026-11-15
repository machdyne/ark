# Misleading charts

```lesson
(objective "Spot a chart whose scale does not start at 0 or is uneven, and read the true numbers.")
(minutes 25)
(keywords "misleading chart")
```

You can spot a chart that makes a difference look bigger or smaller than it is, and work out the true numbers.

A **misleading chart** gives a wrong picture of its own numbers, by accident or on purpose. The numbers on it may all be right; it is the picture that misleads.

The most common trick: a bar chart whose scale starts above 0. Turn the toggle on and off.

```figure
(define fair (toggle 'zero "From 0"))
(if fair
    (nu2-bars '(("Us" 52) ("Them" 50)) 0 60 10 'cool)
    (nu2-bars '(("Us" 52) ("Them" 50)) 49 52.5 0.5 'cool))
(text 175 16 "Would buy again (%), made up" 'centre 'small 'bold)
(caption (if fair "Fair: the scale starts at 0" "MISLEADING: the scale starts at 49"))
```

```sources
(source "Darrell Huff, How to Lie with Statistics (1954), \"The Gee-Whiz Graph\"")
```

```check
(choice
  (ask "With the scale starting at 49, the Us bar looks 3 times as tall as Them. What is the true comparison?")
  (right "52% against 50%: only a little more" (true "52 - 50 = 2"))
  (wrong "Us is about 3 times as good"
    "That is close to what the cut-off scale makes it look like. Read the numbers: 52 and 50 are nearly the same.")
  (wrong "Them is bigger"
    "Them is 50 and Us is 52. Us is a little bigger, not smaller -- but only a little.")
  (hint "Read the scale, not the height of the bars."))
```

---

## Why bars must start at 0

We judge a bar by its length. If the scale starts at 49, the bottom of every bar is cut off, so a small difference looks huge. On a fair bar chart the scale starts at 0.

A line chart is different: it shows change, and its scale may start above 0. Even so, read the numbers on the scale before you judge how big a change is.

```check
(number
  (ask "On the misleading chart, the Us bar shows 3 units above 49 and Them shows 1. Using the true values 52 and 50, how many times as big is Us as Them? Give a decimal to 2 places.")
  (answer 1.04) (within 0.005) (from "52 / 50")
  (wrong-if 3 "3 is how the cut-off bars compare: 3 steps against 1. The true values are 52 and 50: 52 / 50.")
  (hint "Divide the true values: 52 / 50."))
```

---

## Uneven scales

Another trick: a scale whose steps are not equal, or dates along the bottom that skip. Each step on a scale must be worth the same.

```figure
(nu2-axis 0 4 1)
(rect 70 (nu2-y 1 0 4) 40 (- 200 (nu2-y 1 0 4)) 'cool)
(rect 130 (nu2-y 2 0 4) 40 (- 200 (nu2-y 2 0 4)) 'cool)
(rect 190 (nu2-y 3 0 4) 40 (- 200 (nu2-y 3 0 4)) 'cool)
(rect 250 (nu2-y 4 0 4) 40 (- 200 (nu2-y 4 0 4)) 'cool)
(for-range 0 5 (lambda (i) (rect 20 (- (nu2-y i 0 4) 8) 30 14 'paper)))
(text 44 (+ (nu2-y 0 0 4) 4) "0" 'right 'small)
(text 44 (+ (nu2-y 1 0 4) 4) "10" 'right 'small)
(text 44 (+ (nu2-y 2 0 4) 4) "20" 'right 'small)
(text 44 (+ (nu2-y 3 0 4) 4) "50" 'right 'small)
(text 44 (+ (nu2-y 4 0 4) 4) "100" 'right 'small)
(text 90 216 "10" 'centre 'small) (text 150 216 "20" 'centre 'small)
(text 210 216 "50" 'centre 'small) (text 270 216 "100" 'centre 'small)
(caption "MISLEADING: the steps are 10, 10, 30, 50")
```

```check
(choice
  (ask "This chart's scale goes 0, 10, 20, 50, 100 with equal gaps. Its bars are 10, 20, 50 and 100. What is wrong?")
  (right "The steps are not equal, so 100 looks only a little bigger than 50")
  (wrong "Nothing: the numbers on the scale are right"
    "The numbers are right, but the gaps are not: 10 to 20 is 10, 50 to 100 is 50, drawn the same size. So the bars do not compare truly.")
  (wrong "The scale should start at 10"
    "Starting at 0 is right. The problem is that equal gaps stand for different amounts.")
  (hint "Is every step on the scale worth the same?"))
```

---

## Pictures instead of bars

Some charts use pictures, like coins or houses, in place of bars. If a picture is made twice as tall to show twice the amount, it also gets twice as wide, so it covers 4 times the area and looks far more than double.

```sources
(source "Darrell Huff, How to Lie with Statistics (1954), \"The One-Dimensional Picture\"")
```

```check
(number
  (ask "A coin picture is drawn 3 times as tall and 3 times as wide to show 3 times the savings. How many times the area does it cover?")
  (answer 9) (from "3 * 3")
  (wrong-if 3 "The amount is 3 times, but the picture grew in both directions: 3 * 3 = 9 times the area.")
  (hint "Area is height times width."))
```

---

## A worked example

```example
(example
  (problem "An ad's bar chart shows Brand A's bar 4 times as tall as Brand B's. The scale runs from 90 to 100. A is 98, B is 92. Is A 4 times better?")
  (step "Check where the scale starts: 90, not 0.")
  (step "Read the true values: 98 and 92.")
  (step "98 - 92 = 6 points; 98 / 92 is about 1.07.")
  (answer "No: A's bar is 98 - 90 = 8 above the start and B's is 92 - 90 = 2, so it looks 4 times as big; but A is only about 7% higher. The chart is misleading."))
```

```check
(number
  (ask "Now you: a chart's scale starts at 200. Bar X is 240 and Bar Y is 210. X looks 4 times as tall. By how much is X really bigger, in units?")
  (answer 30) (from "240 - 210")
  (wrong-if 4 "4 times is what the cut-off bars show. The true difference is 240 - 210.")
  (hint "Use the numbers: 240 and 210."))
```

---

## Practice

```check
(choice
  (ask "Which question should you ask first about any chart?")
  (right "Where does the scale start, and are its steps equal?")
  (wrong "Which bar is the tallest?"
    "The tallest bar can mislead if the scale is cut off. Check the scale first.")
  (wrong "Does it look professional?"
    "A chart can look polished and still mislead. The scale tells you whether the picture is fair.")
  (hint "Most tricks are in the scale."))
```

```check
(choice
  (ask "Is a chart with right numbers always fair?")
  (right "No: right numbers can be drawn in a misleading way")
  (wrong "Yes: if the numbers are right, the chart is right"
    "Every number can be right while the picture misleads: a cut-off scale or uneven steps change what you see.")
  (hint "Think of the bars that started at 49."))
```

Check every chart's scale: bars must start at 0, steps must be equal, and pictures must not grow in two directions -- then read the true numbers.
