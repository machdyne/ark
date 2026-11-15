# First, second, third

```lesson
(objective "Make the ordinal numbers and say today's date: Heute ist der erste Mai.")
(minutes 25)
(keywords "ordinal number")
```

In this lesson you say the date: **Heute ist der erste Mai.** (Today is the first of May.)

A number that gives a place in order (first, second, third) is an **ordinal number**. German dates use them.

Move the slider to choose a day in May.

```figure
(define d (slider 'd 1 31 1 "day" 1))
(de3-month "Mai" 4 31 d)
(label 160 236 (string-append "der " (fmt d 0) ". Mai = der " (de3-ord d) " Mai") 'small 'bold)
```

German writes an ordinal number as digits with a **point** after them: **der 1. Mai** is read **der erste Mai**.

```check
(choice
  (ask "How is der 3. Mai read?")
  (right "der dritte Mai")
  (wrong "der drei Mai"
    "The point after 3 makes it an ordinal number: third, dritte.")
  (wrong "der dreite Mai"
    "Drei is irregular: the ordinal is dritte.")
  (hint "third"))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): ordinal numbers (Ordinalzahlen), -te and -ste")
(source "Duden, Die deutsche Rechtschreibung: the point after an ordinal number written in digits")
```

---

## 1 to 19: add -te

From 2 to 19, add **-te** to the number: zwei**te**, vier**te**, fünf**te**, zehn**te**, neunzehn**te**.

Four are different:

| number | ordinal |
|---|---|
| 1 | erste |
| 3 | dritte |
| 7 | siebte |
| 8 | achte (one t) |

```cards
(card "erste" "first" (typed))
(card "zweite" "second" (typed))
(card "dritte" "third" (typed))
(card "siebte" "seventh" (typed))
(card "achte" "eighth" (typed))
```

```check
(text
  (ask "Type the ordinal of 4, with -e: der ___ Mai.")
  (accept "vierte")
  (wrong-if "vierste" "From 2 to 19, add -te: vierte. -ste is for 20 and up.")
  (wrong-if "vier" "Add -te for the ordinal: vierte.")
  (hint "vier + te"))
```

---

## 20 and up: add -ste

From 20 on, add **-ste**: zwanzig**ste**, einundzwanzig**ste**, dreißig**ste**.

```cards
(card "zwanzigste" "twentieth" (typed))
```

```check
(text
  (ask "Type the ordinal of 30, with -e: der ___ Juni.")
  (accept "dreißigste")
  (accept "dreissigste")
  (wrong-if "dreißigte" "From 20 on, add -ste: dreißigste.")
  (wrong-if "dreissigte" "From 20 on, add -ste: dreißigste.")
  (hint "dreißig + ste"))
```

---

## Asking the date

```cards
(card "Der Wievielte ist heute?" "What is the date today?" (typed))
(card "das Datum, die Daten" "the date" (typed))
```

> Der Wievielte ist heute? - Heute ist der zwölfte Mai.

Germans write a date as day, then month: **12.5.** is the 12th of May. (In the US, 5/12 would be May 12.)

```check
(choice
  (ask "A German letter is dated 3.10. What is the date?")
  (right "the 3rd of October")
  (wrong "the 10th of March"
    "German dates put the day first: 3.10. is the third day of the tenth month, October.")
  (hint "day first, then month."))
```

---

## A worked example

```example
(example
  (problem "Say the date 21.3. in words: Heute ist der ...")
  (step "21 is einundzwanzig. From 20 on, add -ste: einundzwanzigste.")
  (step "The month 3 is März.")
  (answer "Heute ist der einundzwanzigste März."))
```

---

## Now you finish one

Say 8.7.: **Heute ist der ___ Juli.**

```check
(text
  (ask "Type the ordinal of 8.")
  (accept "achte")
  (wrong-if "achtte" "Acht already ends in t, so add only -e: achte.")
  (wrong-if "achtste" "From 2 to 19, add -te, and acht has its t already: achte.")
  (hint "acht + e"))
```

---

## A note on the fridge

> Heute ist der zweite Juni. Am Samstag haben wir eine Party. Das ist der sechste Juni. Am Montag beginnt der Kurs. Das ist der achte Juni.

```check
(choice
  (ask "What is the date today?")
  (right "June 2")
  (wrong "June 6"
    "The 6th is Saturday, the day of the party. Heute ist der zweite Juni.")
  (wrong "June 8"
    "The 8th is Monday, when the course begins. Today is der zweite Juni.")
  (hint "Find heute."))
```

```check
(choice
  (ask "When does the course begin?")
  (right "on Monday, June 8")
  (wrong "on Saturday, June 6"
    "Saturday is the party. Am Montag beginnt der Kurs: der achte Juni.")
  (hint "Find Kurs."))
```

---

## Practice

```check
(text
  (ask "Type the ordinal of 1, with -e: der ___ Januar.")
  (accept "erste")
  (wrong-if "einste" "One is irregular: erste.")
  (wrong-if "einte" "One is irregular: erste.")
  (hint "first"))
```

```check
(choice
  (ask "How is der 7. April read?")
  (right "der siebte April")
  (wrong "der sieben April"
    "A date needs the ordinal number, seventh: siebte.")
  (wrong "der siebzehnte April"
    "Siebzehnte is the 17th. The 7th is siebte.")
  (hint "seventh"))
```

```check
(choice
  (ask "Which ordinal is right?")
  (right "der zwanzigste Mai")
  (wrong "der zwanzigte Mai"
    "From 20 on, add -ste: zwanzigste.")
  (wrong "der zwanzig Mai"
    "A date needs an ordinal number: zwanzigste.")
  (hint "20 and up: -ste."))
```

Now you can make ordinal numbers with -te and -ste and say today's date.
