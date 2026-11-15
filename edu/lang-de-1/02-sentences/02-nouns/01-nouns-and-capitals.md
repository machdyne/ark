# Nouns and capitals

```lesson
(objective "Recognise nouns and write every German noun with a capital letter.")
(minutes 20)
(keywords "noun")
```

In German, every noun starts with a capital letter, wherever it is in
the sentence.

A **noun** is a word for a person, an animal, a thing, a place or an
idea: Anna, Buch (book), Tisch (table), Haus (house). A verb says what
someone does; a noun names who or what.

You know two nouns already: Musik and Fußball. Look: both start with a
capital letter.

```check
(choice
  (ask "Which word is a noun?")
  (right "Tisch (table)")
  (wrong "spielen (to play)"
    "spielen says what someone does, so it is a verb. A noun names a person, an animal, a thing, a place or an idea.")
  (wrong "gern (gladly)"
    "gern tells how someone does something: Ich spiele gern. It does not name a thing, so it is not a noun.")
  (hint "Which word names a thing you can touch?"))
```

---

## Capital letters

In English, names, "I" and the first word of a sentence get a capital
letter. In German, **every noun** gets one too:

- Das **B**uch ist hier. (The book is here.)
- Hier ist die **L**ampe. (Here is the lamp.)
- Anna hört **M**usik. (Anna listens to music.)

The words that are not nouns stay small: ist, hier, die, hört. The
first word of a sentence gets a capital, as in English.

```sources
(source "Rat für deutsche Rechtschreibung, Deutsche Rechtschreibung: Regeln und Wörterverzeichnis (2024), part D: capital letters")
```

```check
(choice
  (ask "Which sentence is written correctly?")
  (right "Tom spielt Fußball.")
  (wrong "Tom spielt fußball."
    "Fußball is a noun, and every German noun starts with a capital letter, also in the middle of a sentence.")
  (wrong "Tom Spielt Fußball."
    "spielt is a verb, not a noun, so it stays small. Only nouns, names and the first word get a capital.")
  (hint "Find the noun. Then check that it, and only it, has a capital in the middle of the sentence."))
```

---

## Small words, big help

Every German noun has its own small word for "the": **der**, **die**
or **das**. All three mean "the". Which one a noun takes is part of
the noun, so learn them together: das Buch, der Tisch, die Lampe. The
next lesson tells you more.

| German | English |
|---|---|
| das Buch | the book |
| der Tisch | the table |
| die Lampe | the lamp |
| das Haus | the house |
| die Tür | the door |
| das Fenster | the window |

```check
(text
  (ask "Write \"the door\" in German, with its small word.")
  (accept "die Tür")
  (case)
  (wrong-if "die tür" "Tür is a noun, so it starts with a capital T: die Tür.")
  (wrong-if "die Tuer" "With an umlaut it is Tür. ue is the way to write ü only when you cannot type it.")
  (wrong-if "Tür" "Right noun, but learn it with its small word: die Tür.")
  (wrong-if "der Tür" "Tür takes die, not der: die Tür. Learn the small word with every noun.")
  (hint "Look at the table: the door.")
  (hint "Two words: the small word, then the noun with a capital letter."))
```

---

## Worked example

```example
(example
  (problem "Write this with the right capitals: anna kocht und hört musik. (Anna cooks and listens to music.)")
  (step "The first word of a sentence gets a capital: Anna.")
  (step "Anna is also a name, and names are nouns.")
  (step "Find the other nouns: Musik names a thing. kocht, und and hört are not nouns.")
  (answer "Anna kocht und hört Musik."))
```

```example
(example
  (problem "Write this with the right capitals: hier ist das fenster. (Here is the window.)")
  (step "The first word gets a capital: Hier.")
  (step (choice (ask "Which other word needs a capital?")
          (right "fenster")
          (wrong "das" "das is the small word in front of a noun. It stays small in the middle of a sentence.")
          (wrong "ist" "ist is a form of the verb sein. Verbs stay small.")))
  (answer "Hier ist das Fenster."))
```

---

## Read

Lena shows a friend her home.

> Hier wohnt Lena. Das ist das Haus. Hier ist die Tür, und hier ist
> das Fenster. Hier ist der Tisch, und hier ist die Lampe. Lena kocht
> gern und hört gern Musik.

```check
(choice
  (ask "What does Lena like doing?")
  (right "Cooking and listening to music")
  (wrong "Playing soccer"
    "Fußball is not in the text. Look at the last line: kocht is cooks and hört Musik is listens to music.")
  (wrong "Painting"
    "Painting is malen, and it is not in the text. The last line says kocht and hört Musik.")
  (hint "Look at the last line, the one with gern."))
```

---

## Practice

```check
(text
  (ask "Write \"the house\" in German, with its small word.")
  (accept "das Haus")
  (case)
  (wrong-if "das haus" "Haus is a noun, so it starts with a capital H: das Haus.")
  (wrong-if "Das haus" "The small word can be small; the noun cannot. Write Haus with a capital H.")
  (hint "Haus takes das."))
```

```check
(choice
  (ask "In which sentence is a capital letter missing?")
  (right "Hier ist das buch.")
  (wrong "Hier ist der Tisch."
    "Tisch is a noun and has its capital. This sentence is right.")
  (wrong "Ich lerne Deutsch."
    "Deutsch here is the language, a noun, and it has its capital. This sentence is right.")
  (hint "Find the noun in each sentence. Does it start with a capital?"))
```

---

```check
(text
  (ask "Write \"Here is the lamp.\" in German.")
  (accept "Hier ist die Lampe.") (accept "Die Lampe ist hier.")
  (case)
  (wrong-if "Hier ist die lampe." "Lampe is a noun: it needs a capital L, even in the middle of the sentence.")
  (wrong-if "hier ist die Lampe." "The first word of a sentence starts with a capital, as in English: Hier.")
  (wrong-if "Hier Ist die Lampe." "ist is a verb, so it stays small. Only nouns, names and the first word get capitals.")
  (hint "Hier ist ... (Here is ...)")
  (hint "Then die and the noun, with a capital."))
```

```check
(choice
  (ask "Which word is NOT a noun?")
  (right "lernen")
  (wrong "Fenster"
    "Fenster names a thing, a window, so it is a noun. lernen says what someone does: it is a verb.")
  (wrong "Lena"
    "A name is a noun too: it names a person. lernen is a verb.")
  (hint "Which word says what someone does?"))
```

These are your new words. On each card you also see the word for more
than one (die Bücher, the books): the plurals come in unit 5.

```cards
(card "das Buch, die Bücher" "the book" (typed))
(card "der Tisch, die Tische" "the table" (typed))
(card "die Lampe, die Lampen" "the lamp" (typed))
(card "das Haus, die Häuser" "the house" (typed))
(card "die Tür, die Türen" "the door" (typed))
(card "das Fenster, die Fenster" "the window" (typed))
(card "hier" "here" (typed))
```

So: a noun names a person, an animal, a thing, a place or an idea, and
in German it always starts with a capital letter.
