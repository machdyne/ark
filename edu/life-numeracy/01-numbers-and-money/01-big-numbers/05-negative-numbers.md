# Negative numbers

```lesson
(objective "Read, compare and change negative numbers on a thermometer and a bank balance.")
(minutes 25)
(keywords "negative number" "degree (of temperature)" "balance (of an account)" "overdrawn")
```

Numbers below zero turn up in the weather and in your bank account,
and they follow simple rules.

A **negative number** is a number less than zero. It is written with a
minus sign: -5 is "minus 5" or "negative 5". A thermometer measures
temperature in steps called **degrees**; the numbers below 0 on it are
negative. (Part 2 of the course says more about the two kinds of
degrees in use.)

```figure
(define t (slider 't -20 20 -5 "Temperature" 1))
(nu1-thermo 120 20 180 -20 20 5 t)
(text 220 100 (string-append (fmt t 0) " degrees") 'centre 'body 'bold)
(caption "Below the bold 0 mark, temperatures are negative.")
```

```check
(choice
  (ask "Which temperature is colder: -8 degrees or -3 degrees?")
  (right "-8 degrees" (true "-8 < -3"))
  (wrong "-3 degrees" (false "-3 < -8") "8 is more than 3, but below zero it works the other way. -8 is 8 degrees below 0, further down than -3, so it is colder.")
  (hint "Set the slider to each. Which one reaches less high?"))
```

---

## Going up and down

A rise moves up the thermometer; a fall moves down it. Crossing 0 is no
different: count the steps.

From -4 degrees, a rise of 10 degrees goes up 4 steps to 0, then 6
more to 6 degrees.

$$ -4 + 10 = 6 $$

```figure
(number-line 20 300 110 -10 10 1 2)
(nl-jump -4 6 'warm "+10")
(nl-mark -4 'cool)
(nl-mark 6 'warm)
(caption "From -4, up 10 steps, crosses 0 and ends at 6.")
```

```check
(number
  (ask "It is 3 degrees at night. By morning it has fallen 7 degrees. What is the temperature now?")
  (answer -4) (from "3 - 7")
  (wrong-if 4 "The temperature fell past 0. From 3, down 3 steps reaches 0, and 4 more steps go below it: -4.")
  (wrong-if -10 "It fell 7 degrees from 3, not from -3. Down 3 to 0, then down 4 more: -4.")
  (hint "Count down 3 steps to reach 0. How many steps are left?"))
```

---

## The difference between two temperatures

The difference is the number of steps between them on the thermometer. From
-6 to 5: 6 steps up to 0, then 5 more, so 11 degrees.

```check
(number
  (ask "In the morning it is -9 degrees. In the afternoon it is 4 degrees. By how many degrees has it warmed?")
  (answer 13) (from "4 - (-9)")
  (wrong-if 5 "9 - 4 is 5, but the two temperatures are on opposite sides of 0. Count 9 steps up to 0, then 4 more: 13.")
  (wrong-if -5 "A rise is counted as a number of steps, so it is positive. Count -9 to 0 (9 steps) and 0 to 4 (4 steps).")
  (hint "How many steps from -9 to 0? And from 0 to 4?"))
```

---

## A bank balance

The **balance** of a bank account is the money in it now. Money paid
in adds to it; money paid out takes from it.

If more is paid out than there is, the balance goes below zero. The
account is then **overdrawn**: you owe the bank that money. A balance
of -40 dollars says you owe 40 dollars. Banks often charge a fee for
this, so the statement may show more taken out than you spent.

```check
(number
  (ask "Your balance is 120 dollars. You pay a bill of 150 dollars. What is your balance now?")
  (answer -30) (from "120 - 150")
  (wrong-if 30 "You paid out more than you had, so the balance is below zero: you owe 30 dollars. That is written -30.")
  (wrong-if 270 "Paying a bill takes money out, so subtract: 120 - 150.")
  (hint "Paying 120 takes you to 0. How much more is paid after that?"))
```

---

## Worked example

```example
(example
  (problem "Your balance is -25 dollars. You are paid 200 dollars. What is the balance now?")
  (step "Paying in moves the balance up.")
  (step "The first 25 dollars brings it up to 0.")
  (step "That leaves 175 dollars more.")
  (answer "175 dollars"))
```

```example
(example
  (problem "Your balance is -60 dollars. You pay in 45 dollars. What is the balance now?")
  (step "Paying in moves the balance up, towards 0.")
  (step (number (ask "What is the balance now?") (answer -15) (from "-60 + 45")
    (wrong-if 15 "45 dollars is not enough to reach 0 from -60. You still owe 15 dollars: -15.")
    (wrong-if -105 "Paying in moves the balance up, not down: -60 + 45.")))
  (answer "-15 dollars: you still owe 15."))
```

---

## Practice

```check
(choice
  (ask "Which balance is the worst for the account holder?")
  (right "-200 dollars" (true "-200 < -50"))
  (wrong "-50 dollars" "At -50 you owe 50. At -200 you owe 200, which is worse: -200 is the lower number.")
  (wrong "0 dollars" "At 0 you owe nothing. Both negative balances are worse, and -200 is the lowest.")
  (hint "The lowest number is the most money owed."))
```

```check
(number
  (ask "A freezer is at -18 degrees. The power goes off and it warms by 12 degrees. What temperature is it now?")
  (answer -6) (from "-18 + 12")
  (wrong-if 6 "Warming by 12 from -18 does not reach 0, which needs 18. It stops 6 below 0: -6.")
  (wrong-if -30 "Warming moves up the thermometer, towards 0: -18 + 12.")
  (hint "From -18, how far is it to 0?"))
```

```check
(number
  (ask "Your balance is 35 dollars. You spend 50 dollars and then pay in 100 dollars. What is your balance?")
  (answer 85) (from "35 - 50 + 100")
  (wrong-if -115 "The 100 dollars is paid in, so it moves the balance up: 35 - 50 is -15, then -15 + 100 is 85.")
  (wrong-if 185 "The 50 dollars is spent, so take it away: 35 - 50 + 100.")
  (hint "First 35 - 50. Then add 100."))
```

Below zero, a bigger number after the minus sign is lower: count
steps up or down across 0 to add or take away.
