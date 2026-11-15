# Time between two times

```lesson
(objective "Work out how long it is from one time to another, also across noon and midnight.")
(minutes 20)
(keywords "duration")
```

You can work out how long something lasts from its start and end times.

How long something lasts is its **duration**. You cannot just take one time from the other, because an hour has 60 minutes, not 100. Instead, count on: first to the next whole hour, then whole hours, then the minutes left.

From 9:40 to 11:15: 20 minutes to 10:00, 1 hour to 11:00, then 15 minutes. That is 1 hour 35 minutes.

```figure
(nu2-timeline 30 290 120 0 120 5 '((0 "9:30") (30 "10:00") (90 "11:00") (120 "11:30")))
(nl-jump 10 30 'ink "20 min")
(nl-jump 30 90 'ink "1 h")
(nl-jump 90 105 'ink "15 min")
(text (nl-x 10) 160 "9:40" 'centre 'small)
(text (nl-x 105) 160 "11:15" 'centre 'small)
(caption "Counting on from 9:40 to 11:15")
```

```check
(choice
  (ask "Someone works out 11:15 - 9:40 on a calculator and gets 1.75. Why is that wrong for a time?")
  (right "An hour has 60 minutes, so time does not work like decimals")
  (wrong "The calculator made a mistake"
    "The calculator did the sum right for decimals. The trouble is that 9:40 is not 9.40 hours: 40 minutes is 40/60 of an hour.")
  (wrong "You must always add, never take away"
    "Taking away can work if you change the times to minutes first. Typing the times as decimals is what goes wrong.")
  (hint "How many minutes are there in an hour?"))
```

---

## Count on

```check
(number
  (ask "A movie runs from 7:50 p.m. to 9:20 p.m. How many minutes does it last?")
  (answer 90) (unit "minutes") (from "10 + 60 + 20")
  (wrong-if 70 "Take care with the step to the next hour: 7:50 to 8:00 is 10 minutes, then 8:00 to 9:00 is 60, then 20 more.")
  (wrong-if 170 "That takes 750 from 920 as plain numbers, as if an hour had 100 minutes. Count on instead: 10, then 60, then 20.")
  (hint "From 7:50 to 8:00 is 10 minutes.")
  (hint "Then 8:00 to 9:00, then 9:00 to 9:20."))
```

---

## Across noon

With the 24-hour clock, counting across noon is easier: there is no change from a.m. to p.m. to keep track of.

A shift from 10:30 to 14:00: 30 minutes to 11:00, then 3 hours to 14:00. That is 3 hours 30 minutes.

```check
(number
  (ask "A clinic is open from 08:45 to 13:15. For how many minutes is it open?")
  (answer 270) (unit "minutes") (from "15 + 4 * 60 + 15")
  (wrong-if 470 "That takes 845 from 1315 as if an hour had 100 minutes. Count on: 15 minutes to 09:00, 4 hours to 13:00, 15 minutes more.")
  (wrong-if 330 "Count the whole hours again: 09:00 to 13:00 is 4 hours, not 5.")
  (hint "From 08:45 to 09:00 is 15 minutes.")
  (hint "From 09:00 to 13:00 is 4 hours, which is 240 minutes."))
```

---

## Across midnight

For a time that runs past midnight, count to midnight first, then on from midnight.

A night shift from 22:00 to 06:30: 2 hours to midnight, then 6 hours 30 minutes. That is 8 hours 30 minutes.

```figure
(nu2-timeline 30 290 120 0 720 30 '((0 "20:00") (240 "00:00") (480 "04:00") (720 "08:00")))
(nl-jump 120 240 'ink "2 h")
(nl-jump 240 630 'ink "6 h 30")
(text (nl-x 120) 160 "22:00" 'centre 'small)
(text (nl-x 240) 175 "midnight" 'centre 'small)
(text (nl-x 630) 160 "06:30" 'centre 'small)
(caption "Count to midnight, then on")
```

```check
(number
  (ask "A bus leaves at 23:20 and arrives at 01:05. How many minutes is the trip?")
  (answer 105) (unit "minutes") (from "40 + 60 + 5")
  (wrong-if 75 "From 23:20 to midnight is 40 minutes, then 01:05 is 1 hour 5 minutes after midnight: 40 + 65.")
  (hint "How long from 23:20 to midnight?")
  (hint "Then add the time from midnight to 01:05."))
```

---

## A worked example

```example
(example
  (problem "You put a roast in at 4:35 p.m. and take it out at 6:10 p.m. How long did it cook?")
  (step "4:35 to 5:00 is 25 minutes.")
  (step "5:00 to 6:00 is 1 hour.")
  (step "6:00 to 6:10 is 10 minutes.")
  (step "25 + 10 = 35 minutes, plus the hour.")
  (answer "It cooked for 1 hour 35 minutes."))
```

```check
(number
  (ask "Now you: a train leaves at 14:48 and arrives at 17:05. How many minutes is the trip?")
  (answer 137) (unit "minutes") (from "12 + 2 * 60 + 5")
  (wrong-if 257 "That subtracts 1448 from 1705 as plain numbers. Count on: 12 minutes, 2 hours, 5 minutes.")
  (hint "14:48 to 15:00 is 12 minutes.")
  (hint "15:00 to 17:00 is 2 hours; then 5 minutes more."))
```

---

## Practice

```check
(number
  (ask "A parking ticket is bought at 10:25 and the car leaves at 11:10. How many minutes was it parked?")
  (answer 45) (unit "minutes") (from "35 + 10")
  (wrong-if 85 "That is 1110 - 1025 as plain numbers. Count on: 35 minutes to 11:00, then 10.")
  (hint "Count on to 11:00 first."))
```

```check
(choice
  (ask "A night shift starts at 19:00 and lasts 12 hours. When does it end?")
  (right "07:00 the next morning" (true "19 + 12 - 24 = 7"))
  (wrong "31:00"
    "There is no 31:00. After 24 hours the clock starts again at 00:00, so 31 - 24 = 7.")
  (wrong "07:00 the same evening"
    "07:00 is in the morning on the 24-hour clock. 12 hours after 19:00 is past midnight, the next morning.")
  (hint "5 hours take you to midnight. How many are left?"))
```

To find a duration, count on: to the next hour, the whole hours, then the minutes left.
