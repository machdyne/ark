# The days of the week

```lesson
(objective "Name the days of the week and say am Montag, montags, heute and morgen.")
(minutes 25)
```

In this lesson you name the days and say when: **Heute ist Montag. Morgen ist Dienstag.**

A German week starts on Monday. Calendars write the days short: Mo, Di, Mi, Do, Fr, Sa, So. Move the slider to choose today.

```figure
(define d (slider 'd 0 6 0 "today" 1))
(define days '("Montag" "Dienstag" "Mittwoch" "Donnerstag" "Freitag" "Samstag" "Sonntag"))
(de3-week 50 d)
(label 160 140 (string-append "Heute ist " (list-ref days d) ".") 'body 'bold)
(label 160 170 (string-append "Morgen ist " (list-ref days (modulo (+ d 1) 7)) ".") 'body)
```

```cards
(card "der Montag" "Monday" (typed))
(card "der Dienstag" "Tuesday" (typed))
(card "der Mittwoch" "Wednesday" (typed) (note "Mitt-woch: the middle of the week"))
(card "der Donnerstag" "Thursday" (typed))
(card "der Freitag" "Friday" (typed))
(card "der Samstag" "Saturday" (typed) (note "In northern and eastern Germany also der Sonnabend."))
(card "der Sonntag" "Sunday" (typed))
```

All the days are masculine: der Montag.

```check
(text
  (ask "Heute ist Mittwoch. Morgen ist ___.")
  (accept "Donnerstag")
  (wrong-if "Dienstag" "Dienstag is the day before Mittwoch. The day after is Donnerstag.")
  (wrong-if "Freitag" "Freitag is two days after Mittwoch. The next day is Donnerstag.")
  (hint "Mo, Di, Mi, Do ..."))
```

---

## morgen and der Morgen

**heute** is today. **morgen**, written small, is tomorrow.

**der Morgen**, a noun with a capital, is the morning. So **morgen früh** (früh: early) means tomorrow morning.

```cards
(card "morgen" "tomorrow" (typed))
(card "der Tag, die Tage" "the day" (typed))
(card "die Woche, die Wochen" "the week" (typed))
(card "das Wochenende, die Wochenenden" "the weekend" (typed))
```

> Eine Woche hat sieben Tage. Das Wochenende ist Samstag und Sonntag.

```check
(choice
  (ask "Morgen habe ich keine Zeit. What does it mean?")
  (right "I have no time tomorrow.")
  (wrong "I have no time in the morning."
    "Morgen written small, without der, is tomorrow. The morning would be der Morgen, or morgens.")
  (wrong "I have no time today."
    "Today is heute. Morgen is tomorrow.")
  (hint "small morgen, no article"))
```

---

## am Montag, montags

To say **on** a day, use **am**: **am Montag** (on Monday). It is a fixed phrase: am + the day.

To say **every** Monday, add -s and write it small: **montags** (on Mondays).

> Am Freitag gehe ich ins Kino. (this Friday)

> Freitags gehe ich ins Kino. (every Friday)

```check
(choice
  (ask "How do you say: On Sunday I visit my grandma. (just this Sunday)")
  (right "Am Sonntag besuche ich meine Oma.")
  (wrong "Sonntags besuche ich meine Oma."
    "Sonntags means every Sunday. For one Sunday, say am Sonntag.")
  (wrong "Am Sonntag ich besuche meine Oma."
    "After am Sonntag, the verb comes second: Am Sonntag besuche ich ...")
  (hint "one day: am; verb second."))
```

```sources
(source "Rat für deutsche Rechtschreibung, Deutsche Rechtschreibung: Regeln und Wörterverzeichnis: small letters for montags, morgen; capitals for der Montag, der Morgen")
```

---

## A worked example

```example
(example
  (problem "Say in German: On Saturday I have to work.")
  (step "On a day: am Samstag.")
  (step "Put it first. Then the modal verb second: muss ich.")
  (step "The infinitive at the end: arbeiten.")
  (answer "Am Samstag muss ich arbeiten."))
```

---

## Now you finish one

Say: On Tuesday we play tennis. **___ Dienstag spielen wir Tennis.**

```check
(text
  (ask "Type the missing word.")
  (accept "Am")
  (wrong-if "Im" "Im goes with months and seasons. With days, use am: am Dienstag.")
  (wrong-if "Um" "Um goes with clock times. With days, use am: am Dienstag.")
  (hint "on + a day"))
```

---

## Mia's week

> Montags und mittwochs spiele ich Fußball. Dienstags lerne ich Gitarre. Am Donnerstag habe ich eine Prüfung. Am Freitag gehen wir ins Kino. Und am Wochenende? Am Samstag muss ich arbeiten. Aber am Sonntag schlafe ich!

```check
(choice
  (ask "What does Mia do every Tuesday?")
  (right "She learns the guitar.")
  (wrong "She plays soccer."
    "Soccer is montags und mittwochs: Mondays and Wednesdays.")
  (wrong "She has an exam."
    "The exam is am Donnerstag, one Thursday.")
  (hint "Find dienstags."))
```

```check
(choice
  (ask "When does Mia have to work?")
  (right "on Saturday")
  (wrong "on Sunday"
    "On Sunday she sleeps: am Sonntag schlafe ich.")
  (wrong "on Friday"
    "On Friday she goes to the movies.")
  (hint "Find muss."))
```

---

## Practice

```check
(text
  (ask "Which day comes after Freitag?")
  (accept "Samstag")
  (accept "Sonnabend")
  (accept "der Samstag")
  (accept "der Sonnabend")
  (wrong-if "Sonntag" "Sonntag is two days after Freitag. Next is Samstag.")
  (wrong-if "Donnerstag" "Donnerstag comes before Freitag.")
  (hint "Fr, Sa ..."))
```

```check
(number
  (ask "Wie viele Tage hat eine Woche?")
  (answer 7)
  (wrong-if 5 "Five are the work days, Montag to Freitag. A week has seven days.")
  (hint "Mo to So."))
```

```check
(choice
  (ask "Which is written with a small letter?")
  (right "sonntags (on Sundays)")
  (wrong "Sonntag (the day)"
    "Der Sonntag is a noun, so it has a capital. Sonntags, every Sunday, is written small.")
  (wrong "Morgen (the morning)"
    "Der Morgen is a noun, so it has a capital. Morgen meaning tomorrow is small.")
  (hint "A word with -s for every ..."))
```

Now you can name the days of the week and say am Montag, montags, heute and morgen.
