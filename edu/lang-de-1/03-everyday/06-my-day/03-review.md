# Review

```lesson
(objective "Use the accusative, modal verbs, prices and times together in short exchanges.")
(minutes 30)
```

In this lesson you put the whole part together: things you need and buy, what you can and must do, prices, times and dates.

## The accusative

Only the masculine changes: **der, ein, kein, mein** become **den, einen, keinen, meinen**; **er** becomes **ihn**. Feminine, neuter and plural stay as they are.

```check
(text
  (ask "Ich brauche ___ Schlüssel. (my) Type the missing word.")
  (accept "meinen")
  (wrong-if "mein" "Der Schlüssel is the object of brauche, so mein becomes meinen.")
  (wrong-if "meine" "Meine is for feminine and plural. Der Schlüssel is masculine: meinen.")
  (hint "der Schlüssel, as an object."))
```

```check
(choice
  (ask "Wie findest du den Kuchen? - Ich finde ___ toll.")
  (right "ihn")
  (wrong "es"
    "In English the cake is it, but der Kuchen is masculine: ihn.")
  (wrong "sie"
    "Sie would be for a feminine noun or a plural. Der Kuchen is masculine: ihn.")
  (hint "der Kuchen"))
```

---

## In a shop

```check
(choice
  (ask "You want two bottles of water. What do you say?")
  (right "Ich hätte gern zwei Flaschen Wasser.")
  (wrong "Ich hätte gern zwei Flasche Wasser."
    "Flasche is feminine and takes the plural after a number: zwei Flaschen.")
  (wrong "Ich hätte gern zwei Flaschen von Wasser."
    "German needs no word for of: zwei Flaschen Wasser.")
  (hint "Flasche is feminine."))
```

```check
(text
  (ask "The bill is 12 euros and 40 cents. Write it as a German shop does, e.g. 2,50 €.")
  (accept "12,40 €")
  (accept "12,40")
  (accept "12,40€")
  (accept "12,40 Euro")
  (accept "12,40 EUR")
  (accept "€ 12,40")
  (wrong-if "12.40 €" "German uses the decimal comma: 12,40 €.")
  (wrong-if "12.40" "German uses the decimal comma: 12,40 €.")
  (hint "Euros, a comma, two digits for the cents."))
```

---

## Modal verbs

The modal verb is second (or first in a yes/no question); the infinitive goes to the end.

```check
(choice
  (ask "A sign says: Hier darf man nicht parken. What does it mean?")
  (right "You must not park here.")
  (wrong "You don't have to park here."
    "That would be muss nicht. Darf nicht means it is not allowed.")
  (wrong "You can park here."
    "Nicht makes it a no, and dürfen is about what is allowed: you must not.")
  (hint "dürfen + nicht"))
```

```check
(text
  (ask "Willst du heute Abend ins Kino ___? (to go) Type the missing word.")
  (accept "gehen")
  (wrong-if "gehst" "After a modal verb the second verb stays in the infinitive: gehen.")
  (hint "the infinitive"))
```

---

## Times and dates

```check
(choice
  (ask "Der Kurs beginnt um halb zehn. When does the course begin?")
  (right "9:30")
  (wrong "10:30"
    "Halb zehn is half way to ten: 9:30.")
  (wrong "10:00"
    "10:00 is zehn Uhr. Halb zehn is half an hour before it.")
  (hint "halb counts toward the next hour."))
```

```check
(text
  (ask "Say on May 3: am ___ Mai. Type the ordinal.")
  (accept "dritten")
  (wrong-if "dreiten" "Three is irregular: dritte, and after am, dritten.")
  (wrong-if "dritte" "After am, add -n: dritten.")
  (hint "third, after am"))
```

---

## A worked example

```example
(example
  (problem "Say in German: On Saturday at 8 p.m. I want to see a movie.")
  (step "The day, then the time: am Samstag um acht Uhr abends.")
  (step "Put them first. The modal verb comes second: will ich.")
  (step "der Film as an object: einen Film. The infinitive sehen at the end.")
  (answer "Am Samstag um acht Uhr abends will ich einen Film sehen."))
```

---

## Now you finish one

Say: I have to buy a sweater. **Ich muss ___ Pullover kaufen.**

```check
(text
  (ask "Type the missing word (a).")
  (accept "einen")
  (wrong-if "ein" "Der Pullover is the object of kaufen, so ein becomes einen.")
  (hint "der Pullover, as an object."))
```

---

## On the phone

> Max: Hallo Anna! Hast du am Freitag Zeit?

> Anna: Am Freitag? Ich muss bis fünf Uhr arbeiten. (until)

> Max: Und um sechs? Wir können einen Kaffee trinken. Ich kenne ein Café. Es ist gut.

> Anna: Ja, das geht. Aber ich möchte keinen Kaffee. Ich trinke lieber Tee. (rather)

> Max: Klar! Am Freitag um sechs. Bis Freitag!

```check
(choice
  (ask "When do Max and Anna meet?")
  (right "Friday at six")
  (wrong "Friday at five"
    "Anna works until five. They meet at six: am Freitag um sechs.")
  (wrong "Saturday at six"
    "Max asks about Freitag, and Anna says das geht.")
  (hint "Read Max's last line."))
```

```check
(choice
  (ask "What will Anna drink?")
  (right "tea")
  (wrong "coffee"
    "Anna says: ich möchte keinen Kaffee. Ich trinke lieber Tee.")
  (wrong "water"
    "Nobody says Wasser. Anna would rather drink tea.")
  (hint "Find keinen Kaffee."))
```

---

## Practice

```check
(choice
  (ask "Gibt es hier einen Supermarkt? - Nein, ...")
  (right "Nein, hier gibt es keinen Supermarkt.")
  (wrong "Nein, hier gibt es kein Supermarkt."
    "Der Supermarkt is the object of gibt: keinen Supermarkt.")
  (wrong "Nein, hier gibt es nicht Supermarkt."
    "With a noun, say no with kein: keinen Supermarkt.")
  (hint "der Supermarkt; no = kein + ending"))
```

```check
(number
  (ask "The train leaves at 17:45 Uhr. What hour is that on a 12-hour clock?")
  (answer 5) (from "17 - 12")
  (wrong-if 7 "Take away 12: 17 - 12 = 5. It leaves at 5:45 p.m.")
  (hint "Take away 12."))
```

```check
(choice
  (ask "Besuchst du ___ am Wochenende? (us)")
  (right "uns")
  (wrong "wir"
    "Wir is the subject form. We are visited, so the object form: uns.")
  (wrong "euch"
    "Euch is you (friends). Us is uns.")
  (hint "us, as an object"))
```

Now you can use the accusative, modal verbs, prices, times and dates together.
