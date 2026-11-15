# Half and quarter

```lesson
(objective "Say half and quarter hours: halb drei is 2:30, Viertel nach, Viertel vor.")
(minutes 25)
```

In this lesson you say half and quarter hours. Be careful: **halb drei** is **2:30**, not 3:30.

German counts the half hour **toward the next hour**: at 2:30 you are half way to three. So **halb drei** means "half (of the way) to three".

Pick a time and read it.

```figure
(define c (choice 'c '("3:00" "3:15" "3:30" "3:45") "time"))
(define m (list-ref '(0 15 30 45) c))
(define words (list-ref '("drei Uhr" "Viertel nach drei" "halb vier" "Viertel vor vier") c))
(de3-clock 160 100 80 3 m words)
```

```cards
(card "halb" "half" (typed) (note "Toward the next hour: halb drei = 2:30"))
```

```check
(choice
  (ask "Es ist halb sieben. What time is it?")
  (right "6:30")
  (wrong "7:30"
    "That is the classic trap. Halb sieben is half way to seven: 6:30. 7:30 is halb acht.")
  (wrong "7:00"
    "7:00 is sieben Uhr. Halb sieben is half an hour before that: 6:30.")
  (hint "halb counts toward the next hour."))
```

```sources
(source "Duden, Die deutsche Rechtschreibung: halb, Viertel, viertel (telling the time)")
```

---

## Viertel nach, Viertel vor

**das Viertel** is a quarter: 15 minutes.

- **nach** means after: **Viertel nach drei** is 3:15.
- **vor** means before: **Viertel vor vier** is 3:45.

```cards
(card "das Viertel" "the quarter" (typed))
(card "nach" "after" (typed) (note "With times: past. Viertel nach drei = 3:15. You know nach from part 2 with places: nach Berlin."))
(card "vor" "before" (typed) (note "With times: to. Viertel vor vier = 3:45"))
```

```check
(choice
  (ask "Es ist Viertel vor neun. What time is it?")
  (right "8:45")
  (wrong "9:15"
    "9:15 is Viertel nach neun. Vor means before: a quarter before nine is 8:45.")
  (wrong "9:45"
    "Viertel vor neun is 15 minutes before 9:00, so it is 8:45.")
  (hint "vor = before. 15 minutes before 9:00."))
```

---

## Other regions

In some regions, such as parts of southern and eastern Germany and Austria, people also say **viertel vier** for 3:15 and **dreiviertel vier** for 3:45. They count quarters toward the next hour, like halb. Both ways are right; this course uses Viertel nach and Viertel vor, which everyone understands.

```check
(choice
  (ask "A friend from Vienna says: Wir treffen uns um viertel vier. (We meet at ...) When?")
  (right "3:15")
  (wrong "4:15"
    "Viertel vier counts toward four, like halb vier: a quarter of the way to four, 3:15.")
  (wrong "3:45"
    "3:45 is dreiviertel vier: three quarters of the way to four.")
  (hint "One quarter of the way from 3 to 4."))
```

---

## A worked example

```example
(example
  (problem "Say 10:30 in German.")
  (step "It is half an hour after 10, half way to 11.")
  (step "German names the next hour: elf.")
  (answer "halb elf"))
```

---

## Now you finish one

The clock shows 4:30. **Es ist halb ___.**

```check
(text
  (ask "Type the hour as a word.")
  (accept "fünf")
  (accept "5")
  (wrong-if "vier" "Halb vier is 3:30. At 4:30 you are half way to five: halb fünf.")
  (hint "halb names the next hour."))
```

---

## When does it start?

> Anna: Wann beginnt der Film? (when, starts)

> Max: Um halb neun. (at)

> Anna: Um halb neun? Es ist schon Viertel nach acht! (already)

> Max: Dann müssen wir jetzt gehen!

```check
(choice
  (ask "When does the movie start?")
  (right "8:30")
  (wrong "9:30"
    "Halb neun is half way to nine: 8:30.")
  (wrong "8:15"
    "8:15, Viertel nach acht, is the time now. The movie starts um halb neun, 8:30.")
  (hint "halb neun"))
```

```check
(number
  (ask "How many minutes do Anna and Max have until the movie?")
  (answer 15) (unit "minutes") (from "30 - 15")
  (wrong-if 75 "Halb neun is 8:30, not 9:30. From 8:15 to 8:30 is 15 minutes.")
  (hint "From 8:15 to 8:30."))
```

---

## Practice

```check
(text
  (ask "Say 2:30 with halb: Es ist ___. (two words)")
  (accept "halb drei")
  (accept "halb 3")
  (wrong-if "halb zwei" "Halb zwei is 1:30. At 2:30 you are half way to three: halb drei.")
  (wrong-if "zwei dreißig" "People do say that, reading a digital clock. But here, use halb: halb drei.")
  (hint "halb and the next hour."))
```

```check
(choice
  (ask "Which is 11:15?")
  (right "Viertel nach elf")
  (wrong "Viertel vor elf"
    "Vor elf is before eleven: 10:45. 11:15 is after eleven: Viertel nach elf.")
  (wrong "halb zwölf"
    "Halb zwölf is 11:30.")
  (hint "15 minutes after eleven."))
```

```check
(choice
  (ask "Es ist Viertel vor eins. What time is it?")
  (right "12:45")
  (wrong "1:15"
    "1:15 is Viertel nach eins. Vor eins is before one: 12:45.")
  (hint "15 minutes before 1:00."))
```

Now you can say half and quarter hours, and you know that halb drei is 2:30.
