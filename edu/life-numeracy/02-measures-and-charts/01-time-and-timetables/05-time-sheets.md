# Time sheets and pay

```lesson
(objective "Add up hours worked on a time sheet and work out the pay.")
(minutes 25)
(keywords "time sheet" "hourly rate" "overtime")
```

You can add up the hours on a time sheet and check the pay for them.

A **time sheet** is a record of when someone starts and stops work each day. Many jobs pay an **hourly rate**: an amount of money for each hour worked. Pay is the hours worked times the hourly rate.

$$ 8 * 15 = 120 $$

So 8 hours at \$15 an hour is \$120 (before any taxes or other deductions).

```check
(number
  (ask "You work 6 hours at \$18 an hour. What is the pay before deductions, in dollars?")
  (answer 108) (unit "dollars") (from "6 * 18")
  (wrong-if 24 "That adds 6 + 18. Pay is hours times the rate: 6 * 18.")
  (hint "Multiply the hours by the hourly rate."))
```

---

## One day on a time sheet

Each day: work out the time from start to finish, then take away any unpaid break. This made-up time sheet has a 30-minute unpaid lunch each day.

| Day | Start | Finish | Unpaid break |
|---|---|---|---|
| Mon | 08:00 | 16:30 | 30 min |
| Tue | 09:15 | 17:45 | 30 min |
| Wed | 07:30 | 13:30 | none |

Monday: 08:00 to 16:30 is 8 hours 30 minutes. Take away 30 minutes: 8 hours.

```check
(number
  (ask "How many hours were worked on Tuesday, after the break?")
  (answer 8) (unit "hours") (from "8.5 - 0.5")
  (wrong-if 8.5 "8.5 hours is the time from start to finish. Take away the 30-minute unpaid break.")
  (hint "09:15 to 17:45 is how long?")
  (hint "8 hours 30 minutes, then take away the 30-minute break."))
```

---

## The week

Add the days. Monday 8 hours, Tuesday 8 hours, Wednesday 6 hours (no break).

$$ 8 + 8 + 6 = 22 $$

```check
(number
  (ask "The hourly rate is \$16.50. What is the pay for the 22 hours, in dollars?")
  (answer 363) (unit "dollars") (from "22 * 16.5")
  (wrong-if 352 "That uses \$16 an hour. Don't drop the 50 cents: 22 * 16.50.")
  (hint "Multiply 22 by 16.50. A calculator helps."))
```

---

## Estimate to check

Before you trust a calculator, estimate. 22 hours at about \$16 is about 20 * 16 = \$320, plus a bit. So \$363 is about right, and \$3630 or \$36.30 would be a typing slip.

```try
(try (app "calc") (task "Work out 37.5 hours at \$14.20 an hour with the calculator. Then come back to learn.")
  (check (number (ask "What is the pay, in dollars?") (answer 532.5) (from "37.5 * 14.2"))))
```

```check
(choice
  (ask "A payslip says 37.5 hours at \$14.20 is \$5325. What do you think?")
  (right "Too big: about 40 * 14 = 560, so it should be about \$530" (true "40 * 14 = 560"))
  (wrong "It is right"
    "Estimate first: 40 hours at \$14 is \$560. \$5325 is ten times that, so the point is in the wrong place.")
  (wrong "Too small"
    "Round both: 40 hours at \$14 is about \$560. \$5325 is far more than that, not less.")
  (hint "Round 37.5 to 40 and 14.20 to 14."))
```

---

## Overtime

Some jobs pay more for **overtime**, hours over a set number in a week. A made-up example: the first 40 hours at \$20, and each hour after that at 1.5 times the rate, \$30.

```example
(example
  (problem "You work 44 hours. The first 40 are at \$20, the rest at \$30. What is the pay?")
  (step "40 hours at \$20: 40 * 20 = \$800.")
  (step "Overtime: 44 - 40 = 4 hours.")
  (step "4 hours at \$30: \$120.")
  (answer "\$800 + \$120 = \$920."))
```

```check
(number
  (ask "Now you: 46 hours, the first 40 at \$20 and the rest at \$30. Pay in dollars?")
  (answer 980) (unit "dollars") (from "40 * 20 + 6 * 30")
  (wrong-if 920 "That is the pay for 44 hours. This time there are 46 - 40 = 6 overtime hours.")
  (wrong-if 1380 "All 46 hours are not at \$30. Only the hours over 40 are.")
  (hint "Pay the first 40 hours at \$20.")
  (hint "Then 6 hours at \$30."))
```

---

## Practice

```check
(number
  (ask "A shift runs 13:00 to 21:30 with a 30-minute unpaid break. How many hours are paid?")
  (answer 8) (unit "hours") (from "8.5 - 0.5")
  (wrong-if 8.5 "Take away the 30-minute unpaid break.")
  (hint "13:00 to 21:30 is 8 hours 30 minutes."))
```

```check
(number
  (ask "You are paid \$15 an hour and work 7 hours 15 minutes. What is the pay, in dollars?")
  (answer 108.75) (unit "dollars") (from "7.25 * 15")
  (wrong-if 107.25 "15 minutes is 0.25 hour, not 0.15. 7.25 * 15 = 108.75.")
  (hint "Write 7 hours 15 minutes as decimal hours first."))
```

Pay is hours times the hourly rate: add the hours from the time sheet, then multiply, and estimate to check.
