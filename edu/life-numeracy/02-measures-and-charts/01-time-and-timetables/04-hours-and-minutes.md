# Hours and minutes

```lesson
(objective "Convert between hours and minutes, including times written as decimals of an hour.")
(minutes 20)
(keywords "unit (of measure)" "convert")
```

You can change hours into minutes and back, even when the hours are written as a decimal like 1.5.

A **unit** of measure is a fixed amount we count in, like an hour or a minute. To **convert** a measure is to write the same amount in a different unit. 1 hour is 60 minutes, so:

- hours to minutes: multiply by 60;
- minutes to hours: divide by 60.

$$ 3 * 60 = 180 $$

```check
(number
  (ask "A course takes 4 hours. How many minutes is that?")
  (answer 240) (unit "minutes") (from "4 * 60")
  (wrong-if 400 "That treats an hour as 100 minutes. An hour is 60 minutes: 4 * 60.")
  (hint "Multiply by 60."))
```

---

## Decimal hours

Work records and some apps write time in decimal hours: 1.5 hours, 7.25 hours. The part after the point is a fraction of an hour, not minutes.

- 0.5 hour is half of 60 minutes: 30 minutes.
- 0.25 hour is a quarter: 15 minutes.
- 0.75 hour is three quarters: 45 minutes.

```figure
(clock-dial 160 115 90)
(wedge 160 115 60 90 -180 'cool)
(clock-hands 160 115 90 0 45)
(caption "0.75 of an hour is 45 minutes")
```

```check
(choice
  (ask "A job sheet says 2.5 hours. How long is that?")
  (right "2 hours 30 minutes" (true "0.5 * 60 = 30"))
  (wrong "2 hours 50 minutes"
    "The .5 is half an hour, not 50 minutes. Half of 60 minutes is 30.")
  (wrong "2 hours 5 minutes"
    "The .5 is a fraction of an hour: 0.5 * 60 = 30 minutes.")
  (hint "What is half of an hour?"))
```

---

## Any decimal

For any decimal, multiply the part after the point by 60.

$$ 0.2 * 60 = 12 $$

So 1.2 hours is 1 hour 12 minutes.

```check
(number
  (ask "How many minutes are in 0.4 of an hour?")
  (answer 24) (unit "minutes") (from "0.4 * 60")
  (wrong-if 40 "0.4 is 4 tenths of an hour, not 40 minutes. 0.4 * 60 = 24.")
  (hint "Multiply 0.4 by 60."))
```

---

## Minutes to decimal hours

To go the other way, divide the minutes by 60. 45 minutes is 45/60 = 0.75 hour.

```example
(example
  (problem "You worked 7 hours 20 minutes. Write it in decimal hours.")
  (step "The 7 whole hours stay 7.")
  (step "20 minutes is 20/60 of an hour.")
  (step "20 ÷ 60 = 0.333..., about 0.33.")
  (answer "About 7.33 hours."))
```

```check
(number
  (ask "Now you: write 3 hours 45 minutes in decimal hours.")
  (answer 3.75) (unit "hours") (from "3 + 45/60")
  (wrong-if 3.45 "The 45 is minutes, not hundredths of an hour. 45/60 = 0.75.")
  (hint "Divide 45 by 60, then add the 3 hours."))
```

---

## Practice

```check
(number
  (ask "A video is 150 minutes long. How many hours is that, as a decimal?")
  (answer 2.5) (unit "hours") (from "150 / 60")
  (wrong-if 1.5 "Divide 150 by 60: 60 goes into 150 two and a half times.")
  (wrong-if 2.3 "That reads 150 minutes as 2 hours 30 minutes, which is right, but 30 minutes is 0.5 hour, not 0.3.")
  (hint "Divide by 60."))
```

```check
(number
  (ask "A phone says you walked for 1.2 hours. How many minutes is that?")
  (answer 72) (unit "minutes") (from "1.2 * 60")
  (wrong-if 80 "That reads 1.2 hours as 1 hour 20 minutes. 0.2 hour is 0.2 * 60 = 12 minutes, so 60 + 12.")
  (hint "Multiply by 60."))
```

---

```check
(choice
  (ask "Which is longer: 1.3 hours or 1 hour 25 minutes?")
  (right "1 hour 25 minutes" (true "25 > 0.3 * 60"))
  (wrong "1.3 hours"
    "0.3 hour is only 18 minutes, so 1.3 hours is 1 hour 18 minutes. That is less than 1 hour 25.")
  (wrong "They are the same"
    "They would be the same only if 0.3 hour were 25 minutes. It is 0.3 * 60 = 18 minutes.")
  (hint "Change 0.3 hour into minutes."))
```

To convert, multiply hours by 60 to get minutes, and divide minutes by 60 to get hours.
