# Adding and subtracting minutes

```lesson
(objective "Add and subtract lengths of time in minutes, such as 45 minutes + 25 minutes = 1 hour 10 minutes.")
(standards "3.MD.A.1")
(minutes 25)
```

You can add and subtract lengths of time, and say when they make more than 1 hour.

The long hand goes all the way around the clock in 1 hour. That is 60 minutes.

1 hour = 60 minutes

```figure
(number-line 30 290 120 0 90 5 15)
(nl-jump 0 60 'ink "1 hour")
(nl-mark 60 'warm)
(caption "Minutes from 0 to 90: 1 hour is at 60")
```

```check
(number
  (ask "How many minutes are in 1 hour and 15 minutes?")
  (answer 75) (unit "minutes") (from "60 + 15")
  (wrong-if 16 "1 hour is not 1 minute. 1 hour is 60 minutes, so add 60 + 15.")
  (wrong-if 115 "1 hour is 60 minutes, not 100. A clock has 60 minutes in each hour.")
  (hint "1 hour is 60 minutes.")
  (hint "60 + 15 = ?"))
```

---

## Adding minutes

To add 2 lengths of time in minutes, add the minutes.

You read for 35 minutes. Then you draw for 15 minutes.

$$ 35 + 15 = 50 $$

```figure
(number-line 30 290 140 0 60 5 15)
(nl-jump 0 35 'ink "35 min")
(nl-jump 35 50 'ink "15 min")
(nl-mark 50 'warm)
(caption "35 minutes, then 15 more: 50 minutes")
```

```check
(number
  (ask "You play for 20 minutes, then clean up for 25 minutes. How many minutes is that?")
  (answer 45) (unit "minutes") (from "20 + 25")
  (wrong-if 5 "That is the difference. You do both things, one after the other, so add the times.")
  (hint "Add the 2 lengths of time."))
```

---

## More than 60 minutes

When minutes add up to more than 60, you can write them as hours and minutes.

45 minutes + 25 minutes = 70 minutes. 70 is 60 and 10 more.

70 minutes = 1 hour 10 minutes

```figure
(number-line 30 290 150 0 90 5 15)
(nl-jump 0 45 'ink "45 min")
(nl-jump 45 70 'ink "25 min")
(nl-mark 60 'warm)
(label (nl-x 60) 186 "1 hour" 'small 'bold)
(nl-mark 70 'cool)
(caption "70 minutes: 1 hour, then 10 minutes more")
```

```check
(number
  (ask "50 minutes + 30 minutes = 1 hour and how many minutes?")
  (answer 20) (unit "minutes") (from "50 + 30 - 60")
  (wrong-if 80 "80 is all the minutes. 60 of them make the 1 hour, so how many are left?")
  (wrong-if 40 "1 hour is 60 minutes, not 40. Take 60 from 80.")
  (hint "50 + 30 = 80 minutes.")
  (hint "60 of the 80 minutes make 1 hour."))
```

---

## Subtracting minutes

To find how much time is left, subtract.

You have 1 hour to do your chores. You spend 25 minutes on the dishes.

$$ 60 - 25 = 35 $$

You have 35 minutes left.

```figure
(number-line 30 290 140 0 60 5 15)
(nl-jump 0 25 'ink "25 min")
(nl-jump 25 60 'cool "left: 35")
(nl-mark 60 'warm)
(label (nl-x 60) 176 "1 hour" 'small 'bold)
(caption "60 - 25 = 35 minutes left")
```

```check
(number
  (ask "A class is 1 hour. 40 minutes have passed. How many minutes are left?")
  (answer 20) (unit "minutes") (from "60 - 40")
  (wrong-if 60 "60 is the whole class. 40 minutes are used, so take them away.")
  (wrong-if 100 "Adding gives more time, not the time left. Subtract: 60 - 40.")
  (hint "1 hour is 60 minutes.")
  (hint "60 - 40 = ?"))
```

---

## A worked example

```example
(example
  (problem "Tom bakes for 45 minutes. Then he cooks for 25 minutes. How long is that in hours and minutes?")
  (step "Add the minutes: 45 + 25 = 70.")
  (step "60 minutes make 1 hour. 70 is 60 + 10.")
  (step (number (ask "How many minutes are left after the 1 hour?") (answer 10) (from "70 - 60")
          (wrong-if 70 "70 is all the minutes. 60 of them are the hour.")))
  (answer "1 hour 10 minutes"))
```

---

## Now you finish one

Ada practices piano for 40 minutes and violin for 35 minutes. 40 + 35 = 75 minutes.

```check
(number
  (ask "75 minutes = 1 hour and how many minutes?")
  (answer 15) (unit "minutes") (from "75 - 60")
  (wrong-if 75 "75 is all the minutes. Take 60 for the hour. How many are left?")
  (wrong-if 35 "1 hour is 60 minutes, not 40. 75 - 60 = 15.")
  (hint "1 hour is 60 minutes.")
  (hint "75 - 60 = ?"))
```

---

## Practice

```check
(number
  (ask "A movie is 1 hour 20 minutes long. How many minutes is that?")
  (answer 80) (unit "minutes") (from "60 + 20")
  (wrong-if 120 "1 hour is 60 minutes, not 100. 60 + 20 = 80.")
  (wrong-if 21 "1 hour is 60 minutes, not 1. 60 + 20 = 80.")
  (hint "Change the 1 hour into minutes first."))
```

```check
(number
  (ask "A bus ride is 55 minutes. You have been on the bus for 30 minutes. How many minutes are left?")
  (answer 25) (unit "minutes") (from "55 - 30")
  (wrong-if 85 "Adding gives a longer time. The time left is less, so subtract.")
  (hint "Take the time used away from the whole ride."))
```

---

```check
(choice
  (ask "Which is the same as 30 minutes + 45 minutes?")
  (right "1 hour 15 minutes" (true "30 + 45 = 60 + 15"))
  (wrong "1 hour 35 minutes" (false "30 + 45 = 60 + 35")
    "30 + 45 is 75 minutes. 60 of them make the hour, so 15 are left, not 35.")
  (wrong "75 hours" (false "30 + 45 = 75 * 60")
    "You added minutes, so the answer is 75 minutes, not hours. That is 1 hour 15 minutes.")
  (wrong "1 hour 75 minutes"
    "The 75 minutes already hold the hour. 75 minutes is 60 + 15, so 1 hour 15 minutes.")
  (hint "First add: 30 + 45."))
```

Now you can add and subtract minutes, and write 60 or more minutes as hours and minutes.
