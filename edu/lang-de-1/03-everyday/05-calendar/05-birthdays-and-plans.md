# Birthdays and plans

```lesson
(objective "Say when something happens with am ersten Mai, and make a plan for a day and a time.")
(minutes 25)
```

In this lesson you say on which date something happens and make plans: **Ich habe am ersten Mai Geburtstag.** (My birthday is on May 1.)

To say **on** a date, use **am**, as with days. After am, the ordinal number ends in **-en**:

| the date | on the date |
|---|---|
| der erste Mai | am ersten Mai |
| der dritte Mai | am dritten Mai |
| der zwanzigste Mai | am zwanzigsten Mai |

Written: **am 1. Mai**.

```check
(text
  (ask "Say on May 2: am ___ Mai. Type the ordinal.")
  (accept "zweiten")
  (wrong-if "zweite" "After am, the ordinal ends in -en: am zweiten Mai.")
  (wrong-if "zwei" "A date needs the ordinal, and after am it ends in -en: zweiten.")
  (hint "zweite + n"))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): ordinal numbers in dates (am ersten Mai)")
```

---

## Birthdays

```cards
(card "der Geburtstag, die Geburtstage" "the birthday" (typed))
(card "Herzlichen Glückwunsch zum Geburtstag!" "Happy birthday!" (typed))
```

German says you **have** your birthday:

> Wann hast du Geburtstag? - Ich habe am zehnten Mai Geburtstag.

> Heute habe ich Geburtstag! - Herzlichen Glückwunsch!

You can also answer with just the month: **Im Mai.**

```check
(choice
  (ask "Ask a friend when their birthday is.")
  (right "Wann hast du Geburtstag?")
  (wrong "Wann bist du Geburtstag?"
    "German says you have your birthday: Wann hast du Geburtstag?")
  (wrong "Wo hast du Geburtstag?"
    "Wo asks where. When is wann.")
  (hint "German says: When do you have birthday?"))
```

---

## Making a plan

```cards
(card "der Termin, die Termine" "the appointment" (typed))
(card "frei" "free" (typed) (note "Not busy: Ich bin frei."))
(card "Das geht." "That works." (typed) (note "Das geht nicht: that does not work for me."))
```

> Hast du am Freitag Zeit? - Ja, ich bin frei.

> Geht es um drei Uhr? - Ja, das geht. / Nein, das geht nicht. Ich habe einen Termin.

When you give a day and a time, the day usually comes first: **am Freitag um drei Uhr**.

```check
(choice
  (ask "Ask a friend: Do you have time on Friday?")
  (right "Hast du am Freitag Zeit?")
  (wrong "Bist du am Freitag Zeit?"
    "Time is something you have: Zeit haben. Hast du am Freitag Zeit?")
  (wrong "Hast du im Freitag Zeit?"
    "Im is for months and seasons. With a day: am Freitag.")
  (hint "Zeit haben; am + day."))
```

---

## A worked example

```example
(example
  (problem "Say in German: My birthday is on March 21.")
  (step "German says: I have birthday. Ich habe ... Geburtstag.")
  (step "On the 21st: am + einundzwanzigste + n.")
  (step "The date goes between habe and Geburtstag.")
  (answer "Ich habe am einundzwanzigsten März Geburtstag."))
```

---

## Now you finish one

Say: Do you have time on Sunday? **Hast du ___ Sonntag Zeit?**

```check
(text
  (ask "Type the missing word.")
  (accept "am")
  (wrong-if "im" "Im is for months and seasons. With a day: am Sonntag.")
  (wrong-if "um" "Um is for clock times. With a day: am Sonntag.")
  (hint "on + a day"))
```

---

## A plan for the weekend

> Lea: Hallo Tim! Am Samstag habe ich Geburtstag. Ich mache eine Party. Hast du Zeit?

> Tim: Toll! Um wie viel Uhr?

> Lea: Um sieben Uhr abends.

> Tim: Am Samstag um sieben? Ja, das geht! Bis Samstag! (see you)

```check
(choice
  (ask "When is the party?")
  (right "Saturday at 7 p.m.")
  (wrong "Saturday at 7 a.m."
    "Lea says um sieben Uhr abends: in the evening.")
  (wrong "Sunday at 7 p.m."
    "The party is on Lea's birthday: am Samstag.")
  (hint "Find Samstag and abends."))
```

```check
(choice
  (ask "Can Tim come?")
  (right "yes")
  (wrong "no"
    "Tim says: Ja, das geht! That works.")
  (hint "das geht"))
```

---

## Practice

```check
(text
  (ask "Say on the 31st: am ___ Dezember. Type the ordinal.")
  (accept "einunddreißigsten")
  (accept "einunddreissigsten")
  (wrong-if "einunddreißigste" "After am, add -n: einunddreißigsten.")
  (wrong-if "einunddreissigste" "After am, add -n: einunddreißigsten.")
  (hint "einunddreißig + sten"))
```

```check
(choice
  (ask "Your friend asks: Geht es am Montag? You are busy. What do you say?")
  (right "Nein, das geht leider nicht.")
  (wrong "Ja, das geht."
    "That means it works for you. You are busy, so: Nein, das geht leider nicht.")
  (wrong "Nein, ich bin frei."
    "Frei means free, not busy. You are busy.")
  (hint "das geht nicht"))
```

```check
(choice
  (ask "Heute hat Oma Geburtstag. What do you say to her?")
  (right "Herzlichen Glückwunsch zum Geburtstag!")
  (wrong "Gute Nacht!"
    "Gute Nacht is for going to bed. For a birthday: Herzlichen Glückwunsch!")
  (wrong "Entschuldigung!"
    "Entschuldigung is sorry or excuse me. For a birthday: Herzlichen Glückwunsch!")
  (hint "Happy birthday!"))
```

Now you can say dates with am ersten Mai, talk about birthdays and make plans for a day and a time.
