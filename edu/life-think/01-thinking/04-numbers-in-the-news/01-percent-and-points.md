# Percent and percentage points

```lesson
(objective "Tell a change in percent from a change in percentage points.")
(minutes 20)
(keywords "percentage point")
```

You can tell 2 very different ways of saying how much a percent
changed.

Suppose, with made-up numbers, 20% of students in a school walk to
school one year and 30% the next. How much did it go up?

- From 20% to 30% is a rise of 10 **percentage points**: the plain
  difference between 2 percents, 30 - 20.
- But 10 is half of 20, so the share of walkers grew by **50%**.

Both are true. They answer different questions.

```check
(number
  (ask "A team won 40% of its games last season and 50% this season. By how many percentage points did it rise?")
  (answer 10) (unit "points") (from "50 - 40")
  (wrong-if 25 "25% is the relative rise: 10 is a quarter of 40. Percentage points are the plain difference, 50 - 40.")
  (hint "Subtract the 2 percents."))
```

---

## The percent change

To find the percent change between 2 percents, divide the change in
points by where you started:

$$ (50 - 40) / 40 = 1/4 = 25% $$

So the team's win rate rose by 10 percentage points, which is a 25%
rise.

```check
(number
  (ask "Suppose a bus is on time 60% of the time, then 75%. By what percent did the on-time rate rise?")
  (answer 25) (unit "%") (from "(75 - 60) / 60 * 100")
  (wrong-if 15 "15 is the rise in percentage points. As a percent of the start: 15/60 = 25%.")
  (hint "The change is 15 points. Divide by 60."))
```

---

## Why it matters

A small number can be made to sound large. A rise from 2% to 3% is
only 1 percentage point, but it is a 50% rise. A headline may pick the
one that sounds more exciting.

When you read "up 50%", ask: "From what, to what?"

```check
(choice
  (ask "A made-up headline: \"Late trains up 100%!\" Late trains went from 1% to 2%. Which is the clearest way to say it?")
  (right "\"Late trains rose by 1 percentage point, from 1% to 2%.\"")
  (wrong "\"Late trains rose by 100 percentage points.\""
    "That would mean going from 1% to 101%, which is impossible. The rise is 1 point; 100% is the relative change.")
  (wrong "\"All trains are now late.\""
    "Doubling 1% gives 2%: 98 trains in 100 are still on time.")
  (hint "Give the start, the end, and the difference."))
```

---

## Worked example

```example
(example
  (problem "Suppose 8% of a town's shops sold bread last year and 12% this year. Give the change in points and in percent.")
  (step "Points: 12 - 8 = 4 percentage points.")
  (step "Percent: 4 / 8 = 1/2 = 50%.")
  (answer "Up 4 percentage points, which is a 50% rise."))
```

```example
(example
  (problem "Suppose a share falls from 50% to 40%. What is the change in percentage points?")
  (step "Subtract: 50 - 40.")
  (step (number (ask "How many percentage points down?") (answer 10) (from "50 - 40")
    (wrong-if 20 "20% is the relative fall: 10/50. In points, the fall is 50 - 40 = 10.")))
  (answer "Down 10 percentage points (a 20% fall)."))
```

---

## Practice

```check
(number
  (ask "Suppose a share rises from 5% to 15%. By how many percentage points?")
  (answer 10) (from "15 - 5")
  (wrong-if 200 "200% is the relative rise. The plain difference is 15 - 5 = 10 points.")
  (hint "Subtract."))
```

---

```check
(number
  (ask "Suppose a share rises from 5% to 15%. By what percent did it rise?")
  (answer 200) (unit "%") (from "(15 - 5) / 5 * 100")
  (wrong-if 10 "10 is the change in points. Divide it by the start, 5: 10/5 = 2, which is 200%.")
  (wrong-if 300 "15 is 300% of 5, but the rise is only 10, which is 200% of 5.")
  (hint "The rise is 10 points. 10 is how many times 5?"))
```

So: percentage points are the plain difference; a percent change
compares that difference with the start.
