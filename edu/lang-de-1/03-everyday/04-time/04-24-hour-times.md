# 24-hour times

```lesson
(objective "Read and say 24-hour times and say when something happens with um.")
(minutes 25)
```

In this lesson you read timetables and say when something happens: **Der Zug fährt um 14:30 Uhr.** (The train leaves at 2:30 p.m.)

Timetables, TV, stores and offices in German-speaking countries give times on a 24-hour clock. After 12 noon the hours go on: 13, 14 ... up to 23. Midnight is 0:00 (or 24:00).

Germans write 14:30 Uhr or 14.30 Uhr. You say the hour, then **Uhr**, then the minutes:

> 14:30 Uhr - vierzehn Uhr dreißig

```figure
(de3-clock 160 100 80 14 30 "14:30 = vierzehn Uhr dreißig")
(caption "In everyday speech, the same time is halb drei.")
```

```check
(choice
  (ask "How do you say 18:45 Uhr the 24-hour way?")
  (right "achtzehn Uhr fünfundvierzig")
  (wrong "achtzehn fünfundvierzig Uhr"
    "Uhr comes between the hours and the minutes: achtzehn Uhr fünfundvierzig.")
  (wrong "sechs Uhr fünfundvierzig"
    "In 24-hour time, 18 stays 18: achtzehn. Six would be 6:45 in the morning.")
  (hint "hours, Uhr, minutes."))
```

```sources
(source "Duden, Die deutsche Rechtschreibung: writing times of day (14:30 Uhr, 14.30 Uhr)")
```

---

## From 24 to 12

To change a time after noon to the 12-hour clock, take away 12:

$$ 15 - 12 = 3 $$

So 15:00 is 3:00 in the afternoon: in everyday speech, **drei Uhr**.

```check
(number
  (ask "Der Bus kommt um 17:00 Uhr. What hour is that on a 12-hour clock?")
  (answer 5) (from "17 - 12")
  (wrong-if 7 "17 ends in 7, but that is not the hour. Take away 12: 17 - 12 = 5, so 5 p.m.")
  (hint "Take away 12."))
```

---

## When? At ...

```cards
(card "wann?" "when?" (typed))
(card "um" "at" (typed) (note "With a time: um acht Uhr, um halb drei"))
(card "Um wie viel Uhr?" "At what time?")
(card "der Zug, die Züge" "the train" (typed))
(card "der Bus, die Busse" "the bus" (typed))
(card "beginnen" "to begin" (typed) (note "Also: to start."))
```

To ask when, say **Wann ...?** or **Um wie viel Uhr ...?** To answer, put **um** before the time:

> Wann beginnt der Kurs? - Um neun Uhr.

> Um wie viel Uhr fährt der Zug? - Um 14:30 Uhr.

```check
(choice
  (ask "How do you say: The film begins at eight.")
  (right "Der Film beginnt um acht.")
  (wrong "Der Film beginnt an acht."
    "With a clock time, German uses um: um acht.")
  (wrong "Der Film beginnt acht Uhr um."
    "Um comes before the time: um acht Uhr.")
  (hint "at + a time = um"))
```

---

## A worked example

```example
(example
  (problem "Read the timetable line: Zug nach Berlin 21:15. Say when the train leaves.")
  (step "Start with the train: Der Zug fährt ...")
  (step "at + a time: um.")
  (step "21:15 the 24-hour way: einundzwanzig Uhr fünfzehn.")
  (answer "Der Zug fährt um einundzwanzig Uhr fünfzehn."))
```

---

## Now you finish one

Ask: At what time does the bus come? **Um wie viel ___ kommt der Bus?**

```check
(text
  (ask "Type the missing word.")
  (accept "Uhr")
  (wrong-if "Stunde" "Stunde is time that passes. A time on the clock uses Uhr: Um wie viel Uhr?")
  (hint "the word for o'clock"))
```

---

## At the station

> Frau Klein: Entschuldigung, wann fährt der Zug nach Hamburg?

> Mann: Um 16:20 Uhr. Aber heute fährt er zehn Minuten später. (later)

> Frau Klein: Zehn Minuten? Und wann fährt der Bus?

> Mann: Der Bus fährt um 16:05 Uhr.

```check
(choice
  (ask "When does the train to Hamburg leave today?")
  (right "at 16:30")
  (wrong "at 16:20"
    "16:20 is the time on the timetable. Today it leaves ten minutes later: zehn Minuten später.")
  (wrong "at 16:05"
    "16:05 is the bus.")
  (hint "16:20 plus ten minutes."))
```

```check
(text
  (ask "Write the bus time in numbers, like 9:15.")
  (accept "16:05")
  (accept "16.05")
  (accept "16:05 Uhr")
  (accept "16.05 Uhr")
  (wrong-if "4:05" "On the timetable, the time is in 24-hour form: 16:05.")
  (wrong-if "16:50" "Read again: 16:05 Uhr, sechzehn Uhr fünf.")
  (hint "Find der Bus fährt um ..."))
```

---

## Practice

```check
(text
  (ask "Write zwanzig Uhr fünfzehn in numbers.")
  (accept "20:15")
  (accept "20.15")
  (accept "20:15 Uhr")
  (accept "20.15 Uhr")
  (wrong-if "8:15" "That is the same time on a 12-hour clock. In numbers the 24-hour way: 20:15.")
  (wrong-if "20:50" "Fünfzehn is 15: 20:15.")
  (hint "zwanzig = 20, fünfzehn = 15"))
```

```check
(choice
  (ask "Der Laden ist bis 20:00 Uhr offen. (bis = until, offen = open) Until when is it open?")
  (right "8 p.m.")
  (wrong "8 a.m."
    "8 a.m. is 8:00. 20:00 is 8 in the evening: 20 - 12 = 8.")
  (wrong "2 p.m."
    "Take away 12, not 18: 20 - 12 = 8. So 8 p.m.")
  (hint "20 - 12"))
```

```check
(choice
  (ask "Which question asks when?")
  (right "Wann beginnt die Party?")
  (wrong "Wo beginnt die Party?"
    "Wo asks where. When is wann.")
  (wrong "Wer beginnt die Party?"
    "Wer asks who. When is wann.")
  (hint "when = wann"))
```

Now you can read and say 24-hour times and say when something happens with um.
