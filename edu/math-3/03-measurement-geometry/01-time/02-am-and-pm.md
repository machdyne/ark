# a.m. and p.m.

```lesson
(objective "Use a.m. and p.m. to tell times of the day apart.")
(standards "3.MD.A.1")
(minutes 20)
(keywords "a.m." "p.m.")
```

You can write a time so that it shows if it is in the morning or the evening.

A day has 24 hours. A clock face shows only 12 hours. So the hour hand goes all the way around 2 times each day.

The line shows 1 whole day. It starts at 12:00 at night, called midnight. 12:00 in the middle of the day is called noon.

```figure
(ms-tline 30 290 120 0 0 1440 60 360)
(rect 30 92 130 18 'cool)
(frame 30 92 130 18 'ink 1)
(rect 160 92 130 18 'warm)
(frame 160 92 130 18 'ink 1)
(label 30 160 "midnight" 'small)
(label 160 160 "noon" 'small)
(label 290 160 "midnight" 'small)
(label 95 80 "first 12 hours" 'small)
(label 225 80 "next 12 hours" 'small)
(caption "1 day: 24 hours, a mark for each hour")
```

```check
(number
  (ask "The hour hand goes around 1 time in 12 hours. How many times does it go around in 1 day?")
  (answer 2) (from "24 / 12")
  (wrong-if 1 "1 trip around is only 12 hours. A day has 24 hours, so the hand goes around again.")
  (wrong-if 24 "24 is the number of hours. Each trip around the clock is 12 of those hours.")
  (hint "A day has 24 hours.")
  (hint "How many 12s make 24?"))
```

```sources
(source "NIST Time and Frequency Division, Frequently Asked Questions: a.m., p.m., noon and midnight")
```

---

## a.m.

The times from midnight to just before noon are **a.m.** times. They are the night after midnight and the morning.

You wake up at 7:00 a.m. That is 7 hours after midnight.

```figure
(clock-face 160 115 100 7 0)
(caption "7:00 a.m.: the morning")
```

```check
(choice
  (ask "Which of these is an a.m. time?")
  (right "Eating breakfast at 7:30 in the morning")
  (wrong "Eating dinner at 6:00 in the evening"
    "The evening comes after noon. a.m. times are from midnight to just before noon.")
  (wrong "Playing outside at 4:00 in the afternoon"
    "The afternoon comes after noon. a.m. times are from midnight to just before noon.")
  (hint "Which one happens before noon?"))
```

---

## p.m.

The times from noon to just before midnight are **p.m.** times. They are the afternoon and the evening.

School ends at 3:00 p.m. That is 3 hours after noon.

```figure
(clock-face 160 115 100 3 0)
(caption "3:00 p.m.: the afternoon")
```

```check
(choice
  (ask "You eat dinner at 6:15 in the evening. Which time is it?")
  (right "6:15 p.m.")
  (wrong "6:15 a.m."
    "6:15 a.m. is early in the morning. Dinner in the evening is after noon, so it is p.m.")
  (hint "Is the evening before noon or after noon?"))
```

---

## The clock looks the same

8:30 a.m. and 8:30 p.m. look the same on a clock. The hands are in the same places. Only what you are doing tells them apart.

```figure
(clock-face 85 110 65 8 30)
(clock-face 235 110 65 8 30)
(label 85 200 "8:30 a.m." 'body)
(label 235 200 "8:30 p.m." 'body)
(caption "The same hands, 12 hours apart")
```

```check
(number
  (ask "How many hours pass from 8:30 a.m. to 8:30 p.m. the same day?")
  (answer 12) (unit "hours") (from "24 / 2")
  (wrong-if 0 "The hands are in the same places, but the clock went all the way around. A full trip is 12 hours.")
  (wrong-if 24 "24 hours is a full day, from 8:30 a.m. to 8:30 a.m. the next day.")
  (hint "The hour hand goes all the way around 1 time.")
  (hint "1 trip around the clock is 12 hours."))
```

---

## A worked example

```example
(example
  (problem "Mia goes to bed at 8:45 at night. Write the time with a.m. or p.m.")
  (step "Bedtime is at night, but before midnight.")
  (step "Times from noon to just before midnight are p.m.")
  (step "Write the time, then p.m.")
  (answer "8:45 p.m."))
```

---

## Now you finish one

Leo's soccer game starts at 10:15 on Saturday morning.

```check
(choice
  (ask "Which time is it?")
  (right "10:15 a.m.")
  (wrong "10:15 p.m."
    "10:15 p.m. is late at night. A morning game is before noon, so it is a.m.")
  (wrong "10:15 noon"
    "Noon is only 12:00 in the middle of the day. Other times say a.m. or p.m.")
  (hint "Morning times come before noon."))
```

---

## Practice

```check
(choice
  (ask "Which of these is most likely the time you eat lunch?")
  (right "12:30 p.m.")
  (wrong "12:30 a.m."
    "12:30 a.m. is half an hour after midnight. Most people are asleep then.")
  (wrong "5:30 a.m."
    "5:30 a.m. is very early in the morning, long before lunch.")
  (hint "Lunch is a little after noon."))
```

```check
(choice
  (ask "The sun is up and Ana walks to school. Her clock shows 8:05. Which time is it?")
  (right "8:05 a.m.")
  (wrong "8:05 p.m."
    "8:05 p.m. is in the evening. Walking to school in the morning is before noon, so it is a.m.")
  (hint "Is going to school in the morning or the evening?"))
```

---

```check
(text
  (ask "A movie starts 2 hours after noon. Write the time, like 9:07 a.m.")
  (accept "2:00 p.m.") (accept "2:00 pm") (accept "2:00pm") (accept "2:00 p.m") (accept "2 p.m.") (accept "2 pm") (accept "2pm") (accept "2p.m.") (accept "2:00p.m.")
  (wrong-if "2:00 a.m." "2 hours after noon is in the afternoon. Times after noon are p.m.")
  (wrong-if "2:00" "2:00 happens 2 times a day. Add a.m. or p.m. to show which one.")
  (hint "Noon is 12:00. Count on 2 hours.")
  (hint "Times after noon are p.m."))
```

```check
(choice
  (ask "Which time comes first in the same day?")
  (right "11:50 a.m.")
  (wrong "1:10 p.m."
    "1:10 has a smaller hour, but it is p.m., after noon. 11:50 a.m. is before noon, so it comes first.")
  (hint "Every a.m. time comes before every p.m. time of the same day."))
```

Now you can use a.m. for times from midnight to noon and p.m. for times from noon to midnight.
