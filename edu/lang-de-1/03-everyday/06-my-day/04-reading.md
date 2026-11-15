# Reading

```lesson
(objective "Read short A1-style texts (a message, a notice, an advert) and find the facts in them.")
(minutes 30)
```

In this lesson you read three short texts, like the ones in an A1 exam, and find the facts in them.

At level A1 you can understand very short, simple texts one phrase at a time, picking out names, words and phrases you know. You do not need every word. Read the question first, then look for the words that answer it: a time, a day, a price, a name.

```cards
(card "die Nachricht, die Nachrichten" "the message" (typed) (note "Also: the news, in the plural."))
(card "geöffnet" "open" (typed) (note "A store, an office: Der Laden ist geöffnet."))
(card "geschlossen" "closed" (typed))
(card "schreiben" "to write" (typed) (note "You know Wie schreibt man das? Regular: ich schreibe, du schreibst, er schreibt."))
```

```check
(choice
  (ask "A question asks: Wann ist der Laden geschlossen? What do you look for in the text?")
  (right "a day or a time")
  (wrong "a price"
    "Wann asks when, so look for a day or a time, not a price.")
  (wrong "a name"
    "Wann asks when. Look for a day or a time.")
  (hint "wann = when"))
```

```sources
(source "Council of Europe, Common European Framework of Reference for Languages (2001), overall reading comprehension, A1")
```

---

## Text 1: a message

> Hallo Paul, kannst du heute in den Supermarkt gehen? (to the supermarket) Wir brauchen Brot, Milch und sechs Eier. Das Geld ist auf dem Tisch. (on the table) Ich komme um sieben nach Hause. Danke! Mama

```check
(choice
  (ask "Paul soll Käse kaufen. Richtig oder falsch? (Paul should buy cheese.)")
  (right "falsch")
  (wrong "richtig"
    "Mama writes: Brot, Milch und sechs Eier. There is no Käse in the list.")
  (hint "Read the list after Wir brauchen."))
```

```check
(choice
  (ask "When does Mama come home?")
  (right "at seven")
  (wrong "in the afternoon"
    "Mama writes a time: Ich komme um sieben nach Hause.")
  (wrong "at six"
    "Six is the number of eggs. Mama comes home um sieben.")
  (hint "Find nach Hause."))
```

---

## Text 2: a notice

On the door of a bakery:

| Bäckerei Krause | |
|---|---|
| Montag bis Freitag | 6:30 - 18:00 Uhr |
| Samstag | 7:00 - 12:00 Uhr |
| Sonntag | geschlossen |

(bis = until)

```check
(choice
  (ask "Die Bäckerei ist am Sonntag geöffnet. Richtig oder falsch?")
  (right "falsch")
  (wrong "richtig"
    "The notice says Sonntag: geschlossen, closed.")
  (hint "Find Sonntag."))
```

```check
(choice
  (ask "You want bread on Saturday at 2 p.m. Can you buy it here?")
  (right "No: on Saturday it is open only until 12:00.")
  (wrong "Yes: it is open until 18:00."
    "18:00 is for Monday to Friday. On Saturday it closes at 12:00 Uhr.")
  (hint "Find Samstag. 2 p.m. is 14:00."))
```

---

## Text 3: an advert

> Fahrrad zu verkaufen! (for sale) Das Fahrrad ist zwei Jahre alt und sehr gut. Preis: 80 € (price) Am Vormittag habe ich keine Zeit. Bitte schreiben Sie eine Nachricht. Nachmittags und abends bin ich zu Hause. Tom Berger

```check
(number
  (ask "How many euros does the bicycle cost?")
  (answer 80) (unit "€")
  (wrong-if 2 "Two is how old the bicycle is: zwei Jahre alt. The price is 80 €.")
  (hint "Find Preis."))
```

```check
(choice
  (ask "When can you reach Tom at home?")
  (right "in the afternoon and in the evening")
  (wrong "in the late morning"
    "Tom writes: Am Vormittag habe ich keine Zeit. He is at home nachmittags und abends.")
  (wrong "only on the weekend"
    "Nobody says Wochenende. He is at home nachmittags und abends.")
  (hint "Find zu Hause."))
```

---

## A worked example

```example
(example
  (problem "Read: Kino Astoria. Heute: Der Film beginnt um 20:15 Uhr. Karten: 9,50 €. Question: How much is a ticket? (Karten = tickets)")
  (step "The question asks how much: look for a price, with €.")
  (step "Find Karten: 9,50 €.")
  (step "9,50 € is nine euros fifty: neun Euro fünfzig.")
  (answer "9,50 € (neun Euro fünfzig)"))
```

---

## Now you finish one

Read it again: **Kino Astoria. Heute: Der Film beginnt um 20:15 Uhr.**

```check
(text
  (ask "When does the movie begin? Write the time in numbers, like 9:15.")
  (accept "20:15")
  (accept "20.15")
  (accept "20:15 Uhr")
  (accept "20.15 Uhr")
  (accept "8:15")
  (accept "8:15 p.m.")
  (wrong-if "20:50" "Read again: 20:15 Uhr, zwanzig Uhr fünfzehn.")
  (hint "Find beginnt um."))
```

---

## Practice

> Liebe Lisa, (Dear) am Samstag habe ich Geburtstag! Ich mache eine Party. Sie beginnt um vier Uhr nachmittags. Kannst du einen Kuchen machen? Ich kaufe Saft und Wasser. Viele Grüße, Mia

```check
(choice
  (ask "Mia hat am Sonntag Geburtstag. Richtig oder falsch?")
  (right "falsch")
  (wrong "richtig"
    "Mia writes: am Samstag habe ich Geburtstag.")
  (hint "Find Geburtstag."))
```

```check
(choice
  (ask "What should Lisa bring?")
  (right "a cake")
  (wrong "juice and water"
    "Mia buys the juice and water herself: Ich kaufe Saft und Wasser.")
  (wrong "a present"
    "Mia asks: Kannst du einen Kuchen machen?")
  (hint "Find Kannst du."))
```

```check
(text
  (ask "When does the party begin? Write the 24-hour time in numbers, like 9:15.")
  (accept "16:00")
  (accept "16.00")
  (accept "16 Uhr")
  (accept "16:00 Uhr")
  (accept "16.00 Uhr")
  (accept "16")
  (wrong-if "4:00" "That is right on a 12-hour clock. The question asks for the 24-hour time: 16:00.")
  (wrong-if "14:00" "Vier Uhr nachmittags: 4 + 12 = 16, so 16:00.")
  (hint "vier Uhr nachmittags: add 12."))
```

Now you can read short messages, notices and adverts and find the facts you need.
