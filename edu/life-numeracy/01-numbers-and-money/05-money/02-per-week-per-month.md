# Per week, per month, per year

```lesson
(objective "Change amounts between per week, per month and per year.")
(minutes 20)
```

Pay comes weekly, rent monthly and some bills yearly: to put them in
one budget, change them all to the same period.

A year has 12 months and 52 weeks (and 1 or 2 days more). So:

- per month to per year: multiply by 12;
- per week to per year: multiply by 52;
- per year to per month: divide by 12.

```check
(number
  (ask "A gym costs 35 dollars a month. How much is that per year?")
  (answer 420) (unit "dollars") (from "35 * 12")
  (wrong-if 1820 "That uses 52, the weeks in a year. The gym is paid monthly, and there are 12 months in a year.")
  (wrong-if 2.92 "Going from a month to a year makes the amount bigger: multiply by 12.")
  (hint "How many months are in a year?"))
```

---

## A month is not 4 weeks

Most months are a little longer than 4 weeks. 4 weeks is 28 days, but
months have 28 to 31 days. So weekly pay times 4 is usually a little less
than a month's pay.

To change per week to per month more closely, go through the year: multiply
by 52, then divide by 12.

```example
(example
  (problem "You earn 600 dollars a week. How much is that per month?")
  (step "Per year: 600 * 52 = 31200 dollars.")
  (step "Per month: 31200 ÷ 12 = 2600 dollars.")
  (answer "2600 dollars a month (not 2400, which is only 4 weeks)"))
```

```check
(number
  (ask "A bill is 30 dollars a week. How much is it per month? Multiply by 52, then divide by 12.")
  (answer 130) (unit "dollars") (from "30 * 52 / 12")
  (wrong-if 120 "120 is 4 weeks. Most months are longer than 4 weeks: 30 * 52 ÷ 12 = 130.")
  (hint "Per year first: 30 * 52 = 1560.")
  (hint "Then divide by 12."))
```

---

## A yearly bill, month by month

A bill paid once a year can be planned for each month: divide it by
12 and put that much aside every month.

```example
(example
  (problem "Car insurance is 900 dollars a year. How much should you put aside each month?")
  (step "900 ÷ 12 = 75.")
  (answer "75 dollars a month"))
```

```example
(example
  (problem "A yearly license costs 156 dollars. How much is that per week?")
  (step "Per week: divide by the 52 weeks in a year.")
  (step (number (ask "156 ÷ 52 = ?") (answer 3) (unit "dollars") (from "156 / 52")
    (wrong-if 13 "13 is 156 ÷ 12, the amount per month. Per week, divide by 52.")))
  (answer "3 dollars a week"))
```

---

## Practice

```check
(number
  (ask "Rent is 1200 dollars a month. How much is it per year?")
  (answer 14400) (unit "dollars") (from "1200 * 12")
  (wrong-if 100 "Going from a month to a year makes the amount bigger. Multiply by 12.")
  (hint "Multiply by 12."))
```

```check
(number
  (ask "A streaming service is 120 dollars a year. How much is that per month?")
  (answer 10) (unit "dollars") (from "120 / 12")
  (wrong-if 1440 "A month is less than a year, so the amount per month is smaller. Divide by 12.")
  (hint "Divide by 12."))
```

```check
(choice
  (ask "Job A pays 500 dollars a week. Job B pays 2100 dollars a month. Which pays more over a year?")
  (right "Job A: 26000 dollars a year" (true "500 * 52 > 2100 * 12"))
  (wrong "Job B, because 4 weeks of A is only 2000 dollars" (false "2100 * 12 > 500 * 52") "A month is more than 4 weeks. By the year, A pays 500 * 52 = 26000 and B pays 2100 * 12 = 25200, so A pays more.")
  (wrong "They pay the same" (false "500 * 52 = 2100 * 12") "500 * 52 = 26000 and 2100 * 12 = 25200: they differ by 800 dollars a year.")
  (hint "Work out each per year."))
```

Change amounts to the same period before you compare or add them:
times 12 for months to a year, times 52 for weeks.
