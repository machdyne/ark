# Time problems

```lesson
(objective "Solve word problems about intervals of time across hours, in hours, minutes and seconds, with a number line.")
(standards "4.MD.A.2")
(minutes 25)
```

You can find how long something takes, even across the hour, with a number line.

A game starts at 2:40 p.m. It ends at 3:25 p.m. How long is it?

```figure
(number-line 30 290 120 0 60 5 20)
(nl-jump 0 20 'warm "20 min")
(nl-jump 20 45 'cool "25 min")
(text (nl-x 0) 150 "2:40" 'centre 'small 'bold)
(text (nl-x 20) 150 "3:00" 'centre 'small 'bold)
(text (nl-x 45) 150 "3:25" 'centre 'small 'bold)
(caption "Minutes after 2:40")
```

Hop to the hour first: 2:40 to 3:00 is 20 minutes. Then 3:00 to 3:25 is 25 minutes.

```check
(number
  (ask "How long is the game, in minutes?")
  (answer 45) (unit "min") (from "20 + 25")
  (wrong-if 85 "That subtracts 325 - 240 as if they were numbers. An hour has 60 minutes, not 100. Hop to 3:00 first.")
  (wrong-if 25 "25 minutes is only from 3:00 to 3:25. Add the 20 minutes before 3:00.")
  (hint "2:40 to 3:00 is 20 minutes.")
  (hint "20 + 25 = ?"))
```

---

## More than an hour

A trip starts at 9:30 a.m. and ends at 11:10 a.m.

9:30 to 10:30 is 1 hour, which is 60 minutes. 10:30 to 11:00 is 30 minutes. 11:00 to 11:10 is 10 minutes.

```check
(number
  (ask "How many minutes is the trip?")
  (answer 100) (unit "min") (from "60 + 30 + 10")
  (wrong-if 180 "1110 - 930 = 180 treats an hour as 100 minutes. It is 60. Hop: 60 + 30 + 10.")
  (wrong-if 40 "40 minutes is only 10:30 to 11:10. Add the hour from 9:30 to 10:30.")
  (hint "60 + 30 + 10 = ?"))
```

---

## Seconds

Ben runs a race in 1 minute 15 seconds. 1 minute is 60 seconds.

So he runs in $60 + 15 = 75$ seconds.

```check
(number
  (ask "Kim runs in 2 minutes 10 seconds. How many seconds is that?")
  (answer 130) (unit "sec") (from "2 * 60 + 10")
  (wrong-if 210 "A minute is 60 seconds, not 100. 2 minutes is 120 seconds, then add 10.")
  (wrong-if 70 "That counts only 1 minute. 2 minutes is 2 × 60 = 120 seconds.")
  (hint "2 minutes = 120 seconds."))
```

---

## A worked example

```example
(example
  (problem "Practice starts at 4:45 p.m. and lasts 35 minutes. When does it end?")
  (step "Hop to the hour: 4:45 to 5:00 is 15 minutes.")
  (step "35 - 15 = 20 minutes are left.")
  (step (choice (ask "So practice ends at:") (right "5:20 p.m.")
          (wrong "4:80 p.m." "There is no 4:80. After 59 minutes, a new hour starts.")))
  (answer "Practice ends at 5:20 p.m."))
```

---

## Now you finish one

A show starts at 6:50 p.m. and ends at 7:35 p.m. 6:50 to 7:00 is 10 minutes.

```check
(number
  (ask "How long is the show, in minutes?")
  (answer 45) (unit "min") (from "10 + 35")
  (wrong-if 85 "735 - 650 = 85 treats an hour as 100 minutes. It is 60. Hop: 10 + 35.")
  (hint "7:00 to 7:35 is 35 minutes."))
```

---

## Practice

```check
(number
  (ask "Lena reads for 3 hours. How many minutes is that?")
  (answer 180) (unit "min") (from "3 * 60")
  (wrong-if 300 "An hour is 60 minutes, not 100.")
  (hint "3 × 60 = ?"))
```

```check
(number
  (ask "A bus ride takes 25 minutes. Each school day, Tom rides there and back. How many minutes is that a day?")
  (answer 50) (unit "min") (from "2 * 25")
  (wrong-if 25 "That is one ride. There and back is 2 rides.")
  (hint "2 × 25 = ?"))
```

---

```check
(choice
  (ask "A movie starts at 1:30 p.m. It lasts 1 hour 45 minutes. When does it end?")
  (right "3:15 p.m.")
  (wrong "2:75 p.m." "There is no 2:75. 2:30 + 45 minutes goes past 3:00: 30 minutes to 3:00, then 15 more.")
  (wrong "3:45 p.m." "3:45 is 2 hours 15 minutes after 1:30. Add 1 hour: 2:30. Then 45 minutes: 3:15.")
  (hint "Add 1 hour first: 2:30.")
  (hint "2:30 to 3:00 is 30 minutes. 15 minutes are left."))
```

To find a time across the hour, hop to the hour first, then add the rest.
