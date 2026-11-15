# The 24-hour clock

```lesson
(objective "Change times between the 12-hour and the 24-hour clock.")
(minutes 20)
(keywords "a.m." "p.m." "noon" "midnight" "24-hour clock")
```

You can read a time written either way: 3:30 p.m. or 15:30.

A clock face shows 12 hours, so each time on it happens twice a day. **Noon** is 12 o'clock in the middle of the day; **midnight** is 12 o'clock at night, when one day ends and the next begins.

Times from midnight to noon are **a.m.** (Latin *ante meridiem*, before midday). Times from noon to midnight are **p.m.** (*post meridiem*, after midday).

```figure
(clock-face 160 115 90 3 30)
(caption "3:30 -- in the morning or the afternoon?")
```

```check
(choice
  (ask "You take a lunch break at 12:45, just after noon. Is that a.m. or p.m.?")
  (right "p.m.")
  (wrong "a.m."
    "Noon is where p.m. begins. 12:45 comes 45 minutes after noon, so it is 12:45 p.m.")
  (hint "Is 12:45 before or after noon?"))
```

---

## Counting all 24 hours

The **24-hour clock** numbers the hours of the day from 0 to 23, so no time happens twice. It is used for buses and trains, in hospitals, in the military and on many phones.

- Midnight is 00:00.
- From 1 a.m. to 12 noon, the hours are the same: 9 a.m. is 09:00.
- After noon, add 12 to the hour: 3:30 p.m. is 15:30.

```figure
(number-line 20 300 110 0 24 1 6)
(nl-mark 9 'ink "09:00")
(nl-mark 15.5 'ink "15:30")
(text 80 160 "a.m." 'centre 'body)
(text 240 160 "p.m." 'centre 'body)
(line 160 92 160 170 'ink 1)
(text 160 190 "noon" 'centre 'small)
(caption "Hours of the day, from midnight to midnight")
```

```check
(number
  (ask "A meeting is at 4 p.m. What is the hour on the 24-hour clock?")
  (answer 16) (from "4 + 12")
  (wrong-if 4 "4 is the hour on a 12-hour clock. After noon, add 12: 4 + 12 = 16.")
  (wrong-if 14 "Count again: 4 + 12 = 16, not 14.")
  (hint "4 p.m. is after noon.")
  (hint "Add 12 to the hour."))
```

---

## From 24-hour back to 12-hour

To go back, look at the hour. If it is 13 or more, take away 12 and write p.m. If it is 0, it is the hour after midnight: 00:20 is 12:20 a.m.

```check
(text
  (ask "A train leaves at 19:40. Write the time on the 12-hour clock, like 3:15 pm.")
  (accept "7:40 pm") (accept "7:40 p.m.") (accept "7:40pm") (accept "7:40p.m.")
  (accept "7.40 pm") (accept "7.40pm") (accept "07:40 pm") (accept "7:40 p.m")
  (wrong-if "9:40 pm" "That takes away 10. To go back, take away 12: 19 - 12 = 7.")
  (wrong-if "7:40 am" "19:40 is after noon, since 19 is more than 12. So it is p.m.")
  (hint "Is 19 more than 12?")
  (hint "Take away 12 from 19, and write p.m."))
```

---

## Noon and midnight

The hour 12 is the one that trips people up. 12:00 in the middle of the day is noon, written 12:00 on the 24-hour clock. Midnight is 00:00. Many people write "12 noon" and "12 midnight" so there is no doubt.

```check
(choice
  (ask "On the 24-hour clock, what is 12:30 just after midnight?")
  (right "00:30")
  (wrong "12:30"
    "12:30 on the 24-hour clock is half past noon. The hour after midnight is hour 0.")
  (wrong "24:30"
    "The 24-hour clock goes up to 23:59 and then starts again at 00:00. There is no 24:30.")
  (hint "The 24-hour clock starts each day at 00:00."))
```

---

## A worked example

```example
(example
  (problem "A night shift starts at 10:15 p.m. Write it on the 24-hour clock.")
  (step "10:15 p.m. is after noon, so add 12 to the hour.")
  (step "10 + 12 = 22.")
  (step "The minutes stay the same: 15.")
  (answer "The shift starts at 22:15."))
```

```check
(text
  (ask "Now you: a flight lands at 6:05 p.m. Write it on the 24-hour clock, like 14:20.")
  (accept "18:05") (accept "1805") (accept "18.05") (accept "18 05")
  (wrong-if "6:05" "That is the 12-hour time. 6:05 p.m. is after noon, so add 12 to the hour.")
  (wrong-if "16:05" "Check the sum: 6 + 12 = 18.")
  (hint "Add 12 to the hour: 6 + 12."))
```

---

## Practice

```check
(text
  (ask "A pharmacy opens at 08:30. Write it on the 12-hour clock, like 3:15 pm.")
  (accept "8:30 am") (accept "8:30 a.m.") (accept "8:30am") (accept "8:30a.m.")
  (accept "8.30 am") (accept "8.30am") (accept "08:30 am") (accept "8:30 a.m")
  (wrong-if "8:30 pm" "Hours below 12 on the 24-hour clock are a.m.: 08:30 is in the morning.")
  (hint "Is the hour less than 12?"))
```

```check
(number
  (ask "A show starts at 21:00. On the 12-hour clock, it is at what hour p.m.?")
  (answer 9) (from "21 - 12")
  (wrong-if 11 "That takes away 10. Take away 12: 21 - 12 = 9.")
  (hint "Take away 12."))
```

---

```check
(choice
  (ask "Which time is the latest in the day?")
  (right "23:10" (true "23 > 21"))
  (wrong "12:05"
    "12:05 on the 24-hour clock is just after noon. 23:10 is 11:10 p.m., much later.")
  (wrong "09:45"
    "09:45 is in the morning. The bigger the hour on the 24-hour clock, the later in the day.")
  (wrong "21:30"
    "21:30 is 9:30 p.m. 23:10 has a bigger hour, so it is later.")
  (hint "On the 24-hour clock, a bigger hour is later in the day."))
```

On the 24-hour clock, the hours after noon are the 12-hour hours plus 12, and midnight is 00:00.
