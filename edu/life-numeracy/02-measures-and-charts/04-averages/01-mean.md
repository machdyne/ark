# The mean

```lesson
(objective "Work out the mean of a set of numbers.")
(minutes 20)
(keywords "data" "average" "mean")
```

You can work out the mean of a set of numbers: the most common kind of average.

**Data** are facts collected to be looked at, often as numbers: a month of electricity bills, the times of a daily commute, the prices of a coffee in five cafés. An **average** is one number that sums up a set of data, a "typical" value.

The **mean** is the average most people mean by "average": add up all the numbers, then divide by how many numbers there are.

$$ (4 + 6 + 5 + 9) / 4 = 6 $$

```figure
(nu2-bars '(("Mon" 4) ("Tue" 6) ("Wed" 5) ("Thu" 9)) 0 10 2 'cool)
(line 52 (nu2-y 6 0 10) 296 (nu2-y 6 0 10) 'ink 2)
(text 60 91 "mean = 6" 'left 'small 'bold)
(caption "Hours worked each day")
```

```check
(number
  (ask "Find the mean of 3, 7 and 8.")
  (answer 6) (from "(3 + 7 + 8) / 3")
  (wrong-if 18 "18 is the total. Now divide by how many numbers there are: 3.")
  (wrong-if 7 "7 is the middle number. The mean adds all the numbers and divides by how many there are.")
  (hint "Add them up.")
  (hint "Then divide by 3."))
```

---

## Leveling out

The mean is what each would be if the total were shared out equally. In the picture of the first step, 24 hours over 4 days is 6 hours a day. Some days are above the line, some below; the extra above fills the gaps below.

```check
(choice
  (ask "Four friends pay \$10, \$20, \$15 and \$35 toward a meal. If they had shared the bill equally, what would each have paid?")
  (right "\$20, the mean" (true "(10 + 20 + 15 + 35) / 4 = 20"))
  (wrong "\$80"
    "\$80 is the whole bill. Shared equally among 4 people, each pays 80 / 4.")
  (wrong "\$22.50"
    "That is halfway between the smallest and biggest amounts, \$10 and \$35. Share the total equally: 80 / 4 = 20.")
  (hint "Add the amounts and divide by 4."))
```

---

## With a calculator

For many numbers, use a calculator. Add them all, press equals, then divide by the count. Count the numbers carefully: a missed one changes the answer.

```example
(example
  (problem "Electricity bills for 5 months: \$62, \$58, \$71, \$80, \$69. What is the mean?")
  (step "Total: 62 + 58 + 71 + 80 + 69 = 340.")
  (step "There are 5 bills.")
  (step "340 ÷ 5 = 68.")
  (answer "The mean bill is \$68."))
```

```check
(number
  (ask "Now you: commute times of 32, 28, 35, 30 and 25 minutes. What is the mean, in minutes?")
  (answer 30) (unit "minutes") (from "(32 + 28 + 35 + 30 + 25) / 5")
  (wrong-if 37.5 "That divides by 4. There are 5 times, so divide by 5.")
  (wrong-if 150 "150 is the total. Divide by the 5 times.")
  (hint "Add the 5 times.")
  (hint "Divide by 5."))
```

---

## The mean need not be in the data

The mean does not have to be one of the numbers, or even a whole number. The mean of 2, 3 and 3 is 8 / 3, about 2.67.

```check
(number
  (ask "A family's weekly grocery bills are \$95, \$110, \$102 and \$120. What is the mean, in dollars?")
  (answer 106.75) (unit "dollars") (from "(95 + 110 + 102 + 120) / 4")
  (wrong-if 427 "That is the total. Divide by 4.")
  (hint "Add the 4 bills and divide by 4."))
```

---

## Practice

```check
(number
  (ask "Find the mean of 12, 15, 9, 14 and 10.")
  (answer 12) (from "(12 + 15 + 9 + 14 + 10) / 5")
  (wrong-if 15 "15 is the biggest number. Add all 5 and divide by 5.")
  (hint "The total is 60."))
```

```check
(choice
  (ask "The mean of 4 test scores is 70. What is their total?")
  (right "280" (true "70 * 4 = 280"))
  (wrong "74"
    "The mean is the total divided by 4. So the total is the mean times 4, not plus 4.")
  (wrong "17.5"
    "That divides 70 by 4. Go back the other way: total = mean times count.")
  (hint "Mean = total / count. So total = mean * count."))
```

The mean is the total divided by how many numbers there are: what each would be if the total were shared equally.
