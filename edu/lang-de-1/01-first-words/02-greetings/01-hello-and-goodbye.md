# Hello and goodbye

```lesson
(objective "Greet someone and say goodbye at the right time of day, and know the greetings of Austria and Switzerland.")
(minutes 20)
```

In this lesson you learn to say hello and goodbye in German, at any time of day.

## Hallo

**Hallo** is hello. You can say it at any time of day, to friends and to most people you meet. It is a little relaxed: with people you do not know, many Germans say Guten Tag instead.

```check
(text
  (ask "Type the German word for hello.")
  (accept "Hallo")
  (accents nearly)
  (wrong-if "Hello" "That is English. The German word has an a: Hallo.")
  (wrong-if "Halo" "German writes two l's: Hallo.")
  (hint "It looks almost like the English word, with a after the H."))
```

---

## By the time of day

These greetings say "good ..." with the time of day:

| German | When |
|---|---|
| Guten Morgen! | in the morning, until about 10 or 11 |
| Guten Tag! | during the day |
| Guten Abend! | in the evening, from about 6 |

**Gute Nacht!** (Good night!) is not a greeting. You say it when someone goes to bed, or as a goodbye late at night.

Guten has an n, but Gute Nacht does not. Learn each one as a whole.

```check
(choice
  (ask "It is 8 in the evening. You walk into a hotel. What do you say?")
  (right "Guten Abend!")
  (wrong "Gute Nacht!"
    "Gute Nacht is for going to bed, or for leaving late at night. To greet someone in the evening, say Guten Abend.")
  (wrong "Guten Morgen!"
    "Guten Morgen is for the morning. At 8 in the evening, say Guten Abend.")
  (hint "Abend means evening."))
```

---

## Goodbye

**Auf Wiedersehen!** is the polite goodbye: you say it to people you do not know well. It means "until we see each other again".

**Tschüss!** is the casual goodbye, for friends and family. Many people also say it in shops.

```check
(choice
  (ask "You leave a job interview. What do you say?")
  (right "Auf Wiedersehen!")
  (wrong "Tschüss!"
    "Tschüss is casual, for friends and family. After a job interview, the polite goodbye fits: Auf Wiedersehen.")
  (wrong "Guten Tag!"
    "Guten Tag is a greeting, for meeting someone. To say goodbye politely, say Auf Wiedersehen.")
  (hint "You do not know the people well."))
```

---

## Austria and Switzerland

German is spoken in Germany, Austria and Switzerland, and each has its own greetings:

- **Grüß Gott!** is a polite hello in Austria and in the south of Germany.
- **Servus!** is a casual hello, and also goodbye, in Austria and the south of Germany.
- **Grüezi!** is a polite hello in Switzerland.

None of these is more right than Guten Tag. Answer people with the greeting they use.

```check
(choice
  (ask "You walk into a shop in Vienna. The woman there says Grüß Gott! What is she saying?")
  (right "A polite hello")
  (wrong "Goodbye"
    "Grüß Gott is a greeting, used in Austria and the south of Germany. It means hello.")
  (wrong "A prayer: she is asking you to pray"
    "Gott does mean God, but Grüß Gott is simply the everyday polite hello in Austria and the south of Germany.")
  (hint "You have just walked in."))
```

```sources
(source "Duden, entries Grüß Gott, servus and grüezi")
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste: greetings and goodbyes")
```

---

## Your words

```cards
(card "Hallo!" "Hello!" (typed))
(card "Guten Morgen!" "Good morning!" (typed))
(card "Guten Tag!" "Hello! Good day!" (note "polite, during the day"))
(card "Guten Abend!" "Good evening!" (typed))
(card "Gute Nacht!" "Good night!" (typed))
(card "Auf Wiedersehen!" "Goodbye!" (note "polite"))
(card "Grüß Gott!" "Hello!" (note "polite; Austria and the south of Germany"))
(card "Servus!" "Hi! Bye!" (note "casual; Austria and the south of Germany"))
(card "Grüezi!" "Hello!" (note "polite; Switzerland"))
```

```check
(text
  (ask "Type the German for good morning.")
  (accept "Guten Morgen")
  (accents nearly)
  (wrong-if "Gute Morgen" "Guten Morgen has an n on Guten. Only Gute Nacht has no n.")
  (wrong-if "Guten Tag" "Guten Tag is for the day. good morning is Guten Morgen.")
  (hint "Guten, then the German word for morning.")
  (hint "Guten Mor..."))
```

---

## Read: a day at the hotel

(In the morning)

- **Anna:** Guten Morgen!
- **Herr Weber:** Guten Morgen! Herzlich willkommen!

(In the evening)

- **Anna:** Guten Abend, Herr Weber!
- **Herr Weber:** Guten Abend! Wie ist Wien?
- **Anna:** Sehr schön! Gute Nacht!
- **Herr Weber:** Gute Nacht!

(Herr = Mr.; ist = is)

```check
(choice
  (ask "Why does Anna say Gute Nacht at the end?")
  (right "She is going to bed")
  (wrong "It is the evening greeting"
    "Anna greets Herr Weber with Guten Abend. Gute Nacht comes at the end, when she goes to bed.")
  (wrong "It means good morning"
    "Nacht means night. Good morning is Guten Morgen, which Anna says earlier.")
  (hint "Gute Nacht is for the end of the day."))
```

```check
(choice
  (ask "What does Anna say about Vienna?")
  (right "It is very beautiful")
  (wrong "It is new"
    "Anna says: Sehr schön! sehr is very, and schön is beautiful.")
  (hint "sehr schön"))
```

---

## Choosing a greeting

```example
(example
  (problem "At 9 in the morning you meet your friend Lea. Then you leave. What do you say?")
  (step "Lea is a friend, so you can be casual.")
  (step "To greet her: Hallo! or Guten Morgen!")
  (step "To leave: Tschüss!")
  (answer "Hallo, Lea! ... Tschüss!"))
```

```example
(example
  (problem "At 7 in the evening you go to a hotel desk. Later you leave the desk. What do you say?")
  (step (choice (ask "How do you greet the man at the desk?")
    (right "Guten Abend!")
    (wrong "Gute Nacht!"
      "Gute Nacht is not a greeting. In the evening, greet with Guten Abend.")))
  (step "You do not know him, so the goodbye is polite.")
  (answer "Guten Abend! ... Auf Wiedersehen!"))
```

---

## Practice

```check
(text
  (ask "Type the polite German goodbye.")
  (accept "Auf Wiedersehen")
  (accents nearly)
  (wrong-if "Tschüss" "Tschüss is the casual goodbye. The polite one is Auf Wiedersehen.")
  (wrong-if "Auf Wiedersehn" "Close: it ends in -sehen, with an e before the n.")
  (hint "Two words: Auf, then Wiedersehen."))
```

---

```check
(choice
  (ask "You are in Zürich, in Switzerland. Someone greets you with Grüezi! What is that?")
  (right "A polite Swiss hello")
  (wrong "A mistake: the right word is Guten Tag"
    "Grüezi is right in Switzerland. Austria and Switzerland have their own greetings, and none is wrong.")
  (wrong "A goodbye"
    "Grüezi is a greeting: hello.")
  (hint "Each German-speaking country has its own greetings."))
```

---

```check
(text
  (ask "Your little brother goes to bed. What do you say to him? (2 words)")
  (accept "Gute Nacht")
  (accents nearly)
  (wrong-if "Guten Nacht" "It is Gute Nacht, without n. Learn it as a whole.")
  (wrong-if "Guten Abend" "Guten Abend greets someone in the evening. For going to bed, say Gute Nacht.")
  (hint "Nacht means night."))
```

So: Guten Morgen, Guten Tag and Guten Abend greet by the time of day; Gute Nacht is for bedtime; say Auf Wiedersehen to be polite and Tschüss with friends.
