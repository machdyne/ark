# The months

```lesson
(objective "Name the months and say im Mai.")
(minutes 20)
```

In this lesson you name the months and say in which month something happens: **Im August habe ich Urlaub.**

Most German months look like the English ones. All are masculine: der Januar, der Mai.

| | | | |
|---|---|---|---|
| Januar | Februar | März | April |
| Mai | Juni | Juli | August |
| September | Oktober | November | Dezember |

Watch the spelling: **März** with ä, **Mai** with ai, **Oktober** with k and **Dezember** with z.

In Austria, January is often **Jänner**.

```cards
(card "der Monat, die Monate" "the month" (typed))
(card "das Jahr, die Jahre" "the year" (typed))
(card "der Januar" "January" (typed) (note "In Austria: der Jänner"))
(card "der Februar" "February" (typed))
(card "der März" "March" (typed))
(card "der Mai" "May" (typed))
(card "der Juni" "June" (typed))
(card "der April" "April")
(card "der Juli" "July" (typed))
(card "der August" "August")
(card "der September" "September")
(card "der Oktober" "October" (typed))
(card "der November" "November")
(card "der Dezember" "December" (typed))
```

```check
(text
  (ask "How is October spelled in German?")
  (accept "Oktober")
  (accept "der Oktober")
  (wrong-if "October" "German writes a k: Oktober.")
  (hint "with k"))
```

```sources
(source "Duden, Die deutsche Rechtschreibung: the names of the months; Jänner (Austrian)")
```

---

## im Mai

To say **in** a month, use **im**: **im Mai** (in May). It is a fixed phrase: im + the month.

> Im Dezember ist es kalt. Im Juli ist es warm.

So you have three small words for when:

- **um** with a clock time: um acht Uhr
- **am** with a day: am Montag
- **im** with a month: im Mai

```check
(choice
  (ask "How do you say: in June?")
  (right "im Juni")
  (wrong "am Juni"
    "Am goes with days. With months, use im: im Juni.")
  (wrong "um Juni"
    "Um goes with clock times. With months, use im: im Juni.")
  (hint "um, am, im: which goes with months?"))
```

---

## Months and the year

**Ein Jahr hat zwölf Monate.** Some months are easy to mix up when you hear them: **Juni** and **Juli** differ in one sound, n and l.

```check
(choice
  (ask "Which month comes after Juni?")
  (right "Juli")
  (wrong "Mai"
    "Mai comes before Juni. After Juni comes Juli.")
  (wrong "August"
    "August comes after Juli. After Juni comes Juli.")
  (hint "June, July ..."))
```

---

## A worked example

```example
(example
  (problem "Say in German: In March I have an exam.")
  (step "in a month: im März.")
  (step "Put it first. The verb comes second, then the subject: habe ich.")
  (step "die Prüfung as an object: eine Prüfung.")
  (answer "Im März habe ich eine Prüfung."))
```

---

## Now you finish one

Say: In September I have a vacation. **___ September habe ich Urlaub.**

```check
(text
  (ask "Type the missing word.")
  (accept "Im")
  (wrong-if "Am" "Am goes with days. With a month: im September.")
  (wrong-if "In" "With a month, German says im, not in: im September.")
  (hint "um, am, im"))
```

---

## Holidays

Lukas writes about his year.

> Im Januar und im Februar ist es kalt. Dann fahre ich Ski. (go skiing) Im Juli und im August habe ich Urlaub. Wir fahren ans Meer. (to the sea) Im Dezember besuchen wir Oma und Opa.

```check
(choice
  (ask "When does Lukas have a vacation?")
  (right "in July and August")
  (wrong "in January and February"
    "In January and February it is cold and he goes skiing. Urlaub is im Juli und im August.")
  (wrong "in December"
    "In December the family visits Oma and Opa.")
  (hint "Find Urlaub."))
```

---

## Practice

```check
(number
  (ask "Wie viele Monate hat ein Jahr?")
  (answer 12)
  (wrong-if 10 "A year has twelve months: zwölf Monate.")
  (hint "Januar to Dezember."))
```

```check
(text
  (ask "Type the German for March.")
  (accept "März")
  (accept "der März")
  (wrong-if "Marz" "März has an umlaut: ä.")
  (wrong-if "March" "That is the English. German: März.")
  (hint "M, a with umlaut, r, z"))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Im Mai habe ich Urlaub.")
  (wrong "Im Mai ich habe Urlaub."
    "After im Mai, the verb comes second: Im Mai habe ich Urlaub.")
  (wrong "Am Mai habe ich Urlaub."
    "With a month, use im: im Mai.")
  (hint "im + month, then verb second."))
```

```check
(choice
  (ask "What is the gender of the months?")
  (right "All are masculine: der Mai.")
  (wrong "All are feminine: die Mai."
    "Months, like the days, are masculine: der Mai, der Montag.")
  (wrong "It changes from month to month."
    "Every month is masculine: der Januar, der Mai, der Dezember.")
  (hint "Like the days."))
```

Now you can name the months, spell them, and say im Mai.
