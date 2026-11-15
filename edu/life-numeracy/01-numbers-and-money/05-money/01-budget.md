# A budget

```lesson
(objective "Make a monthly budget from income and expenses.")
(minutes 25)
(keywords "budget" "income" "expense")
```

A budget is simple arithmetic: what comes in, what goes out, and what
is left.

**Income** is money that comes in: pay, benefits, money from a lodger.
An **expense** is money that goes out: rent, food, travel, bills. A
**budget** is a plan that lists your income and expenses for a period,
such as a month, so you can see what is left.

What is left over = income - expenses.

```check
(choice
  (ask "Which of these is an expense?")
  (right "A phone bill")
  (wrong "Wages from a job" "Wages come in, so they are income. An expense is money that goes out, such as a phone bill.")
  (wrong "A tax refund paid to you" "A refund paid to you comes in, so it is income for that month.")
  (hint "Does the money come in or go out?"))
```

---

## Adding it up

Here is a made-up monthly budget.

| Income | | Expenses | |
|---|---|---|---|
| Pay | 2100 | Rent | 950 |
| | | Food | 400 |
| | | Bills | 220 |
| | | Travel | 150 |
| | | Phone | 40 |

Income: 2100 dollars. Expenses: 950 + 400 + 220 + 150 + 40 = 1760
dollars.

```check
(number
  (ask "How much is left over at the end of the month?")
  (answer 340) (unit "dollars") (from "2100 - (950 + 400 + 220 + 150 + 40)")
  (wrong-if 1760 "1760 dollars is the total of the expenses. What is left is the income minus that: 2100 - 1760.")
  (wrong-if 3860 "Expenses go out, so take them away from the income; do not add them.")
  (hint "Income minus total expenses.")
  (hint "2100 - 1760."))
```

---

## When expenses are more than income

If the expenses add up to more than the income, the result is
negative: you are short. A budget shows this before it happens, so you
can change a plan: spend less on something, or find more income.

```check
(number
  (ask "Income is 1500 dollars a month. Expenses are 1620 dollars. What is left over? (Use a minus sign if it is short.)")
  (answer -120) (unit "dollars") (from "1500 - 1620")
  (wrong-if 120 "The expenses are more than the income, so the result is below zero: -120. You would be 120 dollars short.")
  (hint "Income minus expenses: 1500 - 1620."))
```

---

## Worked example

```example
(example
  (problem "Income 1800 dollars. Expenses: rent 800, food 350, bills 180, travel 120. What is left over?")
  (step "Total expenses: 800 + 350 + 180 + 120 = 1450.")
  (step "Left over: 1800 - 1450 = 350.")
  (answer "350 dollars"))
```

```example
(example
  (problem "Income 2400 dollars. Expenses: rent 1100, food 500, bills 260, travel 200, other 300. What is left over?")
  (step "Total expenses: 1100 + 500 + 260 + 200 + 300 = 2360.")
  (step (number (ask "What is left over?") (answer 40) (unit "dollars") (from "2400 - 2360")
    (wrong-if 2360 "2360 is the total of the expenses. Take it from the income: 2400 - 2360.")))
  (answer "40 dollars"))
```

---

## Practice

```check
(number
  (ask "Estimate first, then work it out: income 1950 dollars, expenses 1210, 380 and 145. What is left over?")
  (answer 215) (unit "dollars") (from "1950 - (1210 + 380 + 145)")
  (wrong-if 1735 "1735 is the total of the expenses. What is left is 1950 - 1735.")
  (wrong-if 3685 "Expenses go out: take them away from the income.")
  (hint "Estimate: 2000 - (1200 + 400 + 100) = 300. The exact answer is near that.")
  (hint "Total expenses: 1210 + 380 + 145 = 1735."))
```

```check
(choice
  (ask "Your budget is 60 dollars short each month. Which change fixes it?")
  (right "Cut food spending by 80 dollars a month" (true "80 > 60"))
  (wrong "Cut the phone bill by 20 dollars a month" (false "20 > 60") "That saves 20 dollars, but you are 60 short, so you would still be 40 short.")
  (wrong "Spend 60 dollars more on travel" "Spending more makes the gap bigger, not smaller.")
  (hint "The change must save at least 60 dollars."))
```

```check
(number
  (ask "Your income is 2000 dollars a month and you plan to save 10% of it. How much is that each month?")
  (answer 200) (unit "dollars") (from "0.1 * 2000")
  (wrong-if 20 "That is 1% of 2000. 10% is a tenth: 200.")
  (wrong-if 1800 "1800 is what is left after saving. 10% of 2000 is 200.")
  (hint "10% is a tenth."))
```

A budget lists income and expenses; income minus expenses is what is
left over, or how much you are short.
