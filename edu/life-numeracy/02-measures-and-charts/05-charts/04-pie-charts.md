# Pie charts

```lesson
(objective "Read a pie chart in percents and work out the amount each slice stands for.")
(minutes 20)
(keywords "pie chart")
```

You can read a pie chart and turn a slice into an amount.

A **pie chart** is a circle cut into slices. The whole circle is the whole amount, 100%, and each slice is a part of it: the bigger the slice, the bigger the part. Pie charts show how a whole is shared out.

This is a made-up monthly budget of \$2000.

```figure
(nu2-pie 160 120 75 '(("Rent 40%" 40 cool) ("Food 25%" 25 warm) ("Travel 15%" 15 good) ("Other 20%" 20 paper)))
```

```check
(choice
  (ask "What does the whole circle stand for?")
  (right "The whole budget, \$2000 (100%)")
  (wrong "Rent"
    "Rent is one slice. The whole circle is everything together: the full \$2000.")
  (wrong "100 dollars"
    "The whole circle is 100 percent of the budget, which here is \$2000, not \$100.")
  (hint "All the slices together make the circle."))
```

---

## Slice to amount

To find what a slice stands for, find that percent of the whole:

$$ 40% * 2000 = 800 $$

So rent is \$800 a month.

```figure
(nu2-pie 160 120 75 '(("Rent 40%" 40 cool) ("Food 25%" 25 warm) ("Travel 15%" 15 good) ("Other 20%" 20 paper)))
```

```check
(number
  (ask "How much a month goes on food, in dollars?")
  (answer 500) (unit "dollars") (from "25% * 2000")
  (wrong-if 25 "25 is the percent. Find 25% of the \$2000 budget.")
  (wrong-if 50 "25% of 2000 is a quarter of 2000, which is 500.")
  (hint "25% is a quarter.")
  (hint "A quarter of 2000."))
```

---

## Quarters and halves

Some slices are easy to see: a quarter of the circle is 25%, a half is 50%. Use them to check a chart: a slice labeled 40% should be a little less than half.

```check
(choice
  (ask "A pie chart has a slice labeled 60% that looks smaller than half the circle. What do you think?")
  (right "The chart is wrong: 60% is more than half" (true "60 > 50"))
  (wrong "It is fine: labels matter, not size"
    "In a pie chart the size of the slice is the message. A 60% slice must be more than half the circle.")
  (wrong "It must be 60% of a different whole"
    "Every slice is a part of the same whole circle. 60% of it is more than half.")
  (hint "Half the circle is 50%."))
```

---

## A worked example

```example
(example
  (problem "How much more goes on rent than on travel?")
  (step "Rent: 40% of 2000 = \$800.")
  (step "Travel: 15% of 2000 = \$300.")
  (step "800 - 300 = 500.")
  (answer "\$500 more on rent."))
```

```check
(number
  (ask "Now you: how much is \"Other\", in dollars?")
  (answer 400) (unit "dollars") (from "20% * 2000")
  (wrong-if 20 "20 is the percent. Find 20% of 2000.")
  (hint "10% of 2000 is 200.")
  (hint "20% is twice that."))
```

---

## Practice

```check
(choice
  (ask "The slices of a pie chart add up to 110%. What does that tell you?")
  (right "Something is wrong: the slices of one whole make 100%")
  (wrong "Nothing; pie charts can add to more than 100%"
    "A pie chart cuts one whole into parts. The parts of a whole always add to 100%.")
  (wrong "The whole is bigger than usual"
    "Whatever the whole is, it is 100%. Slices adding to 110% means a mistake.")
  (hint "What percent is the whole circle?"))
```

```check
(number
  (ask "A pie chart of 400 survey answers has a slice of 35%. How many answers is that?")
  (answer 140) (unit "answers") (from "35% * 400")
  (wrong-if 35 "35 is the percent. Find 35% of 400.")
  (hint "10% of 400 is 40.")
  (hint "35% is 3.5 times that."))
```

A pie chart shows parts of one whole: each slice's percent of the whole gives its amount, and the slices add up to 100%.
