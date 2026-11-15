# Minutes

```lesson
(objective "Say any time to five minutes on the clock, with nach, vor and halb.")
(minutes 25)
```

In this lesson you say any time to five minutes: **zehn nach drei** (3:10), **fünf vor halb vier** (3:25).

You say so many minutes **nach** (after) or **vor** (before) a landmark on the clock: the full hour, or, near the half hour, **halb**. Quarter hours keep their names, Viertel nach and Viertel vor.

Move the slider through the hour and read each time.

```figure
(define m (slider 'm 0 55 10 "minutes" 5))
(define words '("drei Uhr" "fünf nach drei" "zehn nach drei" "Viertel nach drei"
  "zwanzig nach drei" "fünf vor halb vier" "halb vier" "fünf nach halb vier"
  "zwanzig vor vier" "Viertel vor vier" "zehn vor vier" "fünf vor vier"))
(de3-clock 160 100 80 3 m (list-ref words (/ m 5)))
```

```check
(choice
  (ask "Es ist zehn nach vier. What time is it?")
  (right "4:10")
  (wrong "3:50"
    "3:50 is zehn vor vier. Nach means after: 10 minutes after four.")
  (wrong "4:50"
    "4:50 is zehn vor fünf. Zehn nach vier is just after four: 4:10.")
  (hint "nach = after."))
```

---

## Around halb

Near the half hour, German counts from **halb**:

- 3:25 is **fünf vor halb vier**: 5 minutes before half past.
- 3:35 is **fünf nach halb vier**: 5 minutes after half past.

Remember, halb vier is 3:30, so these times are all between 3 and 4.

```check
(choice
  (ask "Es ist fünf nach halb sieben. What time is it?")
  (right "6:35")
  (wrong "7:35"
    "Halb sieben is 6:30, so five minutes after it is 6:35.")
  (wrong "6:25"
    "6:25 is fünf vor halb sieben. Nach means after: 6:35.")
  (hint "First find halb sieben. Then add 5 minutes."))
```

---

## Other ways you hear

For 3:20 and 3:40, many people say **zehn vor halb vier** and **zehn nach halb vier**, counting from halb. Both ways are right. In the 24-hour way, used for timetables, you just say the numbers. That comes in the next lesson.

```check
(choice
  (ask "Es ist zehn vor halb fünf. What time is it?")
  (right "4:20")
  (wrong "4:40"
    "Halb fünf is 4:30. Ten minutes before it is 4:20.")
  (wrong "5:20"
    "Halb fünf is 4:30, not 5:30. Ten minutes before it is 4:20.")
  (hint "Find halb fünf, then go back 10 minutes."))
```

---

## Nearly and just after

```cards
(card "kurz vor" "just before" (typed) (note "Also: nearly. Es ist kurz vor drei."))
(card "kurz nach" "just after" (typed))
(card "gleich" "in a moment" (typed) (note "Also: soon. Es ist gleich drei: it is nearly three."))
```

When you do not know the exact minute, say **kurz vor drei** (just before three) or **kurz nach drei** (just after three).

```check
(choice
  (ask "Your watch shows 2:58. What can you say?")
  (right "Es ist kurz vor drei.")
  (wrong "Es ist kurz nach drei."
    "Nach is after. 2:58 is just before three: kurz vor drei.")
  (wrong "Es ist kurz vor zwei."
    "Kurz vor zwei would be about 1:58. 2:58 is nearly three.")
  (hint "Is 2:58 before or after three?"))
```

---

## A worked example

```example
(example
  (problem "Say 9:50 in German.")
  (step "9:50 is near the full hour 10:00.")
  (step "It is 10 minutes before it: zehn vor.")
  (step "Name the hour it is before: zehn.")
  (answer "zehn vor zehn"))
```

---

## Now you finish one

Say 7:05. **Es ist fünf ___ sieben.**

```check
(text
  (ask "Type the missing word.")
  (accept "nach")
  (wrong-if "vor" "Vor is before. 7:05 is 5 minutes after seven: fünf nach sieben.")
  (hint "after"))
```

---

## Late!

> Paul: Wie spät ist es?

> Jana: Es ist zwanzig nach acht.

> Paul: Was? Mein Bus kommt um halb neun! (my bus; um = at)

> Jana: Dann hast du noch zehn Minuten. (still)

```check
(choice
  (ask "What time is it?")
  (right "8:20")
  (wrong "7:40"
    "7:40 is zwanzig vor acht. Nach is after: 8:20.")
  (wrong "8:30"
    "8:30, halb neun, is when Paul's bus comes.")
  (hint "zwanzig nach acht"))
```

```check
(number
  (ask "How many minutes does Paul have until his bus?")
  (answer 10) (unit "minutes") (from "30 - 20")
  (wrong-if 70 "Halb neun is 8:30, not 9:30. From 8:20 to 8:30 is 10 minutes.")
  (hint "From 8:20 to halb neun, 8:30."))
```

---

## Practice

```check
(text
  (ask "Say 5:45: Es ist Viertel vor ___. Type the hour as a word.")
  (accept "sechs")
  (accept "6")
  (wrong-if "fünf" "Viertel vor fünf is 4:45. 5:45 is a quarter before six.")
  (hint "Which hour is 5:45 before?"))
```

```check
(choice
  (ask "Which is 12:55?")
  (right "fünf vor eins")
  (wrong "fünf nach zwölf"
    "Fünf nach zwölf is 12:05. 12:55 is five minutes before one.")
  (wrong "fünf vor zwölf"
    "Fünf vor zwölf is 11:55.")
  (hint "12:55 is close to 1:00."))
```

```check
(choice
  (ask "Es ist fünf vor halb drei. What time is it?")
  (right "2:25")
  (wrong "3:25"
    "Halb drei is 2:30, so 5 minutes before it is 2:25.")
  (wrong "2:35"
    "2:35 is fünf nach halb drei. Vor is before: 2:25.")
  (hint "halb drei is 2:30."))
```

Now you can say any time to five minutes with nach, vor and halb.
