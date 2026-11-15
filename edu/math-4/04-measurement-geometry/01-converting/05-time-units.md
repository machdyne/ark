# Hours, minutes and seconds

```lesson
(objective "Know that 1 hour = 60 minutes and 1 minute = 60 seconds, and convert hours and minutes to smaller units in a table.")
(standards "4.MD.A.1")
(minutes 20)
```

You can write hours in minutes, and minutes in seconds, by multiplying by 60.

1 hour = 60 minutes. The minute hand goes all the way around the clock in 1 hour.

So 2 hours = 2 × 60 = 120 minutes.

```figure
(still (clock-dial 160 115 95))
(clock-ticking 160 115 95 3 0)
```

```check
(number
  (ask "How many minutes are in 3 hours?")
  (answer 180) (unit "min") (from "3 * 60")
  (wrong-if 63 "That adds 3 + 60. Each hour is 60 minutes: 3 × 60.")
  (wrong-if 300 "That uses 100 minutes in an hour. An hour is 60 minutes.")
  (hint "1 hr = 60 min.")
  (hint "3 × 60 = ?"))
```

---

## A second

A **second** is a very short time: 1/60 of a minute. 60 seconds make 1 minute. On the clock, the thin second hand moves 1 mark each second.

1 minute = 60 seconds. We write hr, min and sec.

```check
(number
  (ask "How many seconds are in 4 minutes?")
  (answer 240) (unit "sec") (from "4 * 60")
  (wrong-if 64 "That adds 4 + 60. Each minute is 60 seconds: 4 × 60.")
  (wrong-if 400 "That uses 100 seconds in a minute. A minute is 60 seconds.")
  (hint "4 × 60 = ?"))
```

```sources
(source "NIST Special Publication 330 (2019), The International System of Units: the minute (1 min = 60 s) and the hour (1 h = 60 min)")
```

---

## A table

```figure
(m4p4-table 70 30 180 '(("hr" "min") ("1" "60") ("2" "120") ("3" "180") ("5" "?")))
(caption "Each row: the same time")
```

```check
(number
  (ask "What number goes in place of the ? in the table?")
  (answer 300) (unit "min") (from "5 * 60")
  (wrong-if 240 "240 is 4 hours. The last row is 5 hours: 5 × 60.")
  (hint "5 × 60 = ?"))
```

---

## A worked example

```example
(example
  (problem "A movie is 2 hours long. How many minutes is it?")
  (step "1 hour = 60 minutes.")
  (step "2 hours = 2 × 60 minutes.")
  (step (number (ask "2 × 60 = ?") (answer 120) (from "2 * 60")
          (wrong-if 62 "Multiply, do not add: 2 groups of 60.")))
  (answer "The movie is 120 minutes long."))
```

---

## Practice

```check
(number
  (ask "A bike ride takes 6 minutes. How many seconds is that?")
  (answer 360) (unit "sec") (from "6 * 60")
  (wrong-if 66 "That adds. Multiply: 6 × 60.")
  (hint "6 × 60 = ?"))
```

```check
(number
  (ask "School lasts 7 hours. How many minutes is that?")
  (answer 420) (unit "min") (from "7 * 60")
  (wrong-if 700 "An hour is 60 minutes, not 100. 7 × 60.")
  (hint "7 × 60 = ?"))
```

---

```check
(choice
  (ask "Which time is longer?")
  (right "2 minutes" (true "120 > 100"))
  (wrong "100 seconds" (false "100 > 120") "100 is a bigger number, but seconds are short. 2 minutes is 120 seconds.")
  (hint "Write 2 minutes in seconds."))
```

To write hours in minutes, or minutes in seconds, multiply by 60.
