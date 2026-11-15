# The range and the mode

```lesson
(objective "Find the range and the mode, and say what each tells you.")
(minutes 20)
(keywords "range (of data)" "mode")
```

You can find how spread out a set of numbers is, and which value comes up most often.

An average gives a typical value, but not how much the numbers vary. The **range** is the biggest number minus the smallest. A big range means the numbers are spread out; a small range means they are close together.

Two buses, 5 trips each, times in minutes:

| Bus | Trip times | Range |
|---|---|---|
| Route 1 | 20, 21, 22, 21, 21 | 22 - 20 = 2 |
| Route 2 | 12, 30, 18, 25, 20 | 30 - 12 = 18 |

Both have a mean of 21 minutes, but Route 1 is far more reliable.

```check
(number
  (ask "Daily high temperatures: 18, 24, 21, 15, 22 °C. What is the range, in degrees?")
  (answer 9) (unit "°C") (from "24 - 15")
  (wrong-if 4 "That is the last number minus the first as written (22 - 18). Use the biggest and the smallest: 24 - 15.")
  (wrong-if 24 "24 is the biggest value. The range is the biggest minus the smallest.")
  (hint "Find the biggest and the smallest.")
  (hint "Take the smallest from the biggest."))
```

---

## What the range tells you

```check
(choice
  (ask "Two plumbers quote for jobs. A's prices have a range of \$40; B's have a range of \$300. What does that tell you?")
  (right "B's prices vary much more from job to job")
  (wrong "B is more expensive"
    "The range says how spread out the prices are, not how high. B's prices could be low on average but vary a lot.")
  (wrong "A does fewer jobs"
    "The range says nothing about how many jobs. It is the gap between the highest and lowest price.")
  (hint "The range measures spread, not size."))
```

---

## The mode

The **mode** is the value that comes up most often. It is the only average that works for things that are not numbers, like the most popular color or T-shirt size (S, M, L). It works for numbers too.

Shoe sizes sold: 8, 9, 9, 10, 9, 7, 8. Size 9 comes up 3 times, more than any other, so the mode is 9.

```check
(number
  (ask "Number of people in each car passing: 1, 2, 1, 1, 3, 2, 1, 4. What is the mode?")
  (answer 1)
  (wrong-if 4 "4 is the biggest number. The mode is the one that comes up most often.")
  (wrong-if 2 "2 comes up twice; 1 comes up 4 times.")
  (hint "Count how many times each number appears."))
```

---

## No mode, or two

If every value comes up once, there is no mode. If two values tie for most often, both are modes.

```example
(example
  (problem "Scores: 6, 8, 7, 8, 6, 9. Find the mode and the range.")
  (step "6 comes up twice, 8 comes up twice, 7 and 9 once.")
  (step "6 and 8 tie, so both are modes.")
  (step "Range: 9 - 6 = 3.")
  (answer "Modes 6 and 8; range 3."))
```

```check
(number
  (ask "Now you: prices of a loaf in 6 shops: \$3, \$4, \$3, \$5, \$3, \$6. What is the range, in dollars?")
  (answer 3) (unit "dollars") (from "6 - 3")
  (wrong-if 6 "6 is the highest price. Take the lowest away from it.")
  (hint "Highest minus lowest."))
```

---

## Practice

```check
(choice
  (ask "A store wants to know which T-shirt size to order most of. Which should it look at?")
  (right "The mode of the sizes sold")
  (wrong "The mean of the sizes sold"
    "Sizes like S, M, L cannot be added up, and a mean size might not exist. The mode tells you the size bought most.")
  (wrong "The range of the sizes sold"
    "The range tells you the spread of sizes, not which one sells most.")
  (hint "Which average tells you the most common value?"))
```

```check
(number
  (ask "Find the range of 105, 98, 112, 101, 99.")
  (answer 14) (from "112 - 98")
  (wrong-if 6 "That is 105 - 99, the first and last. Use the biggest and the smallest: 112 - 98.")
  (hint "Biggest minus smallest."))
```

The range (biggest minus smallest) shows how spread out data are; the mode is the value that comes up most often.
