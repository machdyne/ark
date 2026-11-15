# Furniture

```lesson
(objective "Name furniture and say what a room has and is like.")
(minutes 25)
```

With a few furniture words, haben and sein, you can describe any room.

| German | English |
|---|---|
| das Bett | the bed |
| das Sofa | the sofa, the couch |
| das Regal | the shelf, the bookcase |
| der Stuhl | the chair |
| der Schrank | the cupboard, the wardrobe |

You know der Tisch and die Lampe already.

In Austria and Switzerland, a Schrank is often called der Kasten.

```check
(text
  (ask "Write \"the bed\" in German, with its article.")
  (accept "das Bett")
  (wrong-if "der Bett" "Bett takes das: das Bett.")
  (wrong-if "das Bet" "Bett has a double t.")
  (hint "das ..."))
```

---

## What a room has

Use haben, as you know, with das words, die words and plurals:

- Das Zimmer hat ein Bett und ein Sofa.
- Die Küche hat zwei Fenster.
- Wir haben vier Stühle.

For a der word, use Hier ist ... or Das ist ... for now:

- Hier ist der Schrank. Das ist mein Stuhl.

```check
(text
  (ask "Write \"The room has a shelf.\" in German. (das Regal)")
  (accept "Das Zimmer hat ein Regal.")
  (wrong-if "Das Zimmer hat eine Regal." "Regal is neuter (das Regal): ein.")
  (wrong-if "Das Zimmer ist ein Regal." "The room is not a shelf: it has one. Use hat.")
  (hint "Das Zimmer hat ..."))
```

---

## Light and dark

hell means bright or light, and dunkel means dark:

- Das Wohnzimmer ist hell.
- Das Bad ist dunkel.
- Der Schrank ist dunkel. (a dark color)

```check
(choice
  (ask "The bedroom has a big window and lots of sun. What do you say?")
  (right "Das Schlafzimmer ist hell.")
  (wrong "Das Schlafzimmer ist dunkel."
    "dunkel is dark. With a big window and sun, the room is hell.")
  (wrong "Das Schlafzimmer hat hell."
    "To say what something is like, use sein: ist hell.")
  (hint "Bright = ?"))
```

---

## Worked example

```example
(example
  (problem "Say that you and your family (wir) have 2 sofas.")
  (step "das Sofa, plural die Sofas.")
  (step "haben with wir: haben.")
  (answer "Wir haben zwei Sofas."))
```

```example
(example
  (problem "Say that you (ich) have 4 chairs.")
  (step "der Stuhl, plural die Stühle: -e with an umlaut.")
  (step (text (ask "Write the sentence.") (accept "Ich habe vier Stühle.") (accept "Ich habe 4 Stühle.")
          (wrong-if "Ich habe vier Stuhle." "Stuhl takes an umlaut in the plural: Stühle.")))
  (answer "Ich habe vier Stühle."))
```

---

## Read

> Das ist mein Zimmer. Es ist klein, aber hell. Hier ist das Bett, und
> hier ist der Schrank. Das Regal ist voll: Ich lese viel! Ich habe kein
> Sofa, aber ich habe zwei Stühle.

```check
(choice
  (ask "Why is the shelf full?")
  (right "The writer reads a lot.")
  (wrong "The writer has no sofa."
    "That is true, but it is not why the shelf is full. Ich lese viel: I read a lot.")
  (wrong "The room is dark."
    "The room is klein, aber hell: small but bright. The shelf is full because ich lese viel.")
  (hint "Look right after Das Regal ist voll."))
```

---

## Practice

```check
(text
  (ask "Write the plural of das Bett, with its article.")
  (accept "die Betten")
  (wrong-if "die Bette" "Bett adds -en: die Betten.")
  (wrong-if "die Betts" "Bett adds -en: die Betten.")
  (hint "Add -en."))
```

```check
(text
  (ask "Write \"The bathroom is dark.\" in German.")
  (accept "Das Bad ist dunkel.")
  (wrong-if "Das Bad ist hell." "hell is bright. Dark is dunkel.")
  (wrong-if "Der Bad ist dunkel." "Bad takes das.")
  (hint "das Bad ... dunkel."))
```

---

```check
(choice
  (ask "Which sentence is right for now?")
  (right "Hier ist der Schrank.")
  (wrong "Das Zimmer hat ein Schrank."
    "Schrank is a der word. After haben, ein changes with der words, which part 3 shows. For now, say Hier ist der Schrank.")
  (wrong "Hier ist das Schrank."
    "Schrank takes der: der Schrank.")
  (hint "der Schrank, with ist."))
```

```check
(choice
  (ask "What is \"der Stuhl\" in English?")
  (right "the chair")
  (wrong "the table"
    "The table is der Tisch.")
  (wrong "the sofa"
    "The sofa is das Sofa.")
  (hint "You sit on it at a table."))
```

```cards
(card "das Bett, die Betten" "the bed" (typed))
(card "das Sofa, die Sofas" "the sofa" (typed))
(card "das Regal, die Regale" "the shelf" (typed))
(card "der Stuhl, die Stühle" "the chair" (typed))
(card "der Schrank, die Schränke" "the cupboard" (typed) (note "also: the wardrobe"))
(card "hell" "bright" (typed) (note "also: light"))
(card "dunkel" "dark" (typed))
```

So: say what a room has with hat and das or die words, and what it is
like with ist: Das Zimmer hat ein Bett. Es ist hell.
