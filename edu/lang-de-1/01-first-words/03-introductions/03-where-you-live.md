# Where do you live?

```lesson
(objective "Say which town or city you live in and ask others, and know German names of cities.")
(minutes 20)
```

In this lesson you learn to say where you live, and to ask others.

## Ich wohne in ...

**Ich wohne in ...** means I live in ... Put the town, city or country after it:

- Ich wohne in Berlin.
- Ich wohne in Kanada.

You can come from one place and live in another: Ich komme aus Kanada. Ich wohne in Berlin.

```check
(text
  (ask "Say: I live in Vienna.")
  (accept "Ich wohne in Wien")
  (accents nearly)
  (wrong-if "Ich wohne aus Wien" "aus is from. Where you live goes with in: Ich wohne in Wien.")
  (wrong-if "Ich wohne in Vienna" "Vienna is the English name. In German: Wien.")
  (hint "Ich wohne in, then the German name of the city.")
  (hint "Vienna is Wien."))
```

---

## Asking

| | du | Sie |
|---|---|---|
| Where do you live? | Wo wohnst du? | Wo wohnen Sie? |

Here you ask with **wo** (where), not woher (where from).

```check
(choice
  (ask "Which question asks where someone lives?")
  (right "Wo wohnst du?")
  (wrong "Woher wohnst du?"
    "woher means where from: it goes with kommen. For where someone lives, ask wo: Wo wohnst du?")
  (wrong "Woher kommst du?"
    "That asks where someone is from. Where someone lives is Wo wohnst du?")
  (hint "Live goes with wo; come from goes with woher."))
```

---

## German names of cities

Some cities have German names that differ from the English ones:

| German | English |
|---|---|
| München | Munich |
| Köln | Cologne |
| Wien | Vienna |

Others are the same: Berlin, Hamburg, Frankfurt. **Berlin** is the capital of Germany, and Wien is the capital of Austria. **Hamburg** is a big port city in the north of Germany.

```check
(text
  (ask "Type the German name of Cologne.")
  (accept "Köln")
  (accept "Koeln")
  (accents nearly)
  (wrong-if "Cologne" "That is the English name. In German, the city is Köln.")
  (wrong-if "Koln" "The o has an umlaut: Köln (or Koeln).")
  (hint "Four letters, with ö."))
```

```sources
(source "Grundgesetz für die Bundesrepublik Deutschland, Article 22 (Berlin is the capital)")
(source "Bundes-Verfassungsgesetz (Austria), Article 5 (Wien is the federal capital)")
```

---

## Country and town

**das Land** means the country. Ich wohne in works for both:

- Ich wohne in Hamburg. (a city)
- Ich wohne in Deutschland. (a country)

The countries with der, die or das change again: in der Schweiz, in den USA.

```check
(choice
  (ask "How do you say I live in Switzerland?")
  (right "Ich wohne in der Schweiz.")
  (wrong "Ich wohne in Schweiz."
    "die Schweiz keeps a der after in: Ich wohne in der Schweiz, just like aus der Schweiz.")
  (wrong "Ich wohne aus der Schweiz."
    "aus is from. For where you live, use in: in der Schweiz.")
  (hint "Think of aus der Schweiz."))
```

---

## Your words

```cards
(card "Ich wohne in ..." "I live in ...")
(card "Wo wohnst du?" "Where do you live?" (note "with du"))
(card "Wo wohnen Sie?" "Where do you live?" (note "with Sie"))
(card "das Land" "the country" (typed))
(card "Berlin" "Berlin" (note "the capital of Germany"))
(card "Hamburg" "Hamburg" (note "a port city in the north of Germany"))
(card "Köln" "Cologne" (typed))
```

```check
(text
  (ask "Ask your friend Tom where he lives.")
  (accept "Wo wohnst du")
  (accents nearly)
  (wrong-if "Wo wohnen Sie" "That is the Sie form. Tom is your friend: Wo wohnst du?")
  (wrong-if "Woher wohnst du" "woher is where from. For where someone lives: Wo wohnst du?")
  (hint "Wo, then the du form of wohnen."))
```

---

## Read: from here, living there

- **Lea:** Woher kommst du, Tom?
- **Tom:** Aus Kanada. Aber ich wohne in Berlin.
- **Lea:** Ach so! Ich komme aus München, aber ich wohne in Hamburg.
- **Tom:** Hamburg ist sehr schön!
- **Lea:** Ja. Und Berlin?
- **Tom:** Berlin ist toll! (toll = great)

(aber = but)

```check
(choice
  (ask "Where does Tom live?")
  (right "In Berlin")
  (wrong "In Canada"
    "Tom comes from Kanada, but he says: Aber ich wohne in Berlin.")
  (wrong "In Hamburg"
    "That is Lea: ich wohne in Hamburg. Tom lives in Berlin.")
  (hint "Find Tom's line with wohne."))
```

```check
(choice
  (ask "Where is Lea from?")
  (right "From Munich")
  (wrong "From Hamburg"
    "Lea lives in Hamburg, but she comes from München: Ich komme aus München.")
  (wrong "From Berlin"
    "Tom lives in Berlin. Lea comes from München, Munich.")
  (hint "Find Lea's line with komme aus."))
```

---

## From and in

```example
(example
  (problem "You are from England and live in Köln. Say both.")
  (step "Where you are from: Ich komme aus England.")
  (step "Where you live: Ich wohne in Köln.")
  (answer "Ich komme aus England. Ich wohne in Köln."))
```

```example
(example
  (problem "You are from Kanada and live in Wien. Say both.")
  (step "Ich komme aus Kanada.")
  (step (choice (ask "Which word goes before Wien?")
    (right "in")
    (wrong "aus"
      "aus is for where you come from. Where you live goes with in.")))
  (answer "Ich komme aus Kanada. Ich wohne in Wien."))
```

---

## Practice

```check
(text
  (ask "Ask Herr Wolf where he lives.")
  (accept "Wo wohnen Sie")
  (accents nearly)
  (wrong-if "Wo wohnst du" "That is the du form. With Herr Wolf, use Sie: Wo wohnen Sie?")
  (hint "Wo, then wohnen Sie."))
```

---

```check
(text
  (ask "Say: I live in Munich.")
  (accept "Ich wohne in München")
  (accept "Ich wohne in Muenchen")
  (accents nearly)
  (wrong-if "Ich wohne in Munich" "Munich is the English name. In German: München.")
  (wrong-if "Ich komme aus München" "That says you are from Munich. For live, use Ich wohne in.")
  (hint "Ich wohne in, then the German name of Munich."))
```

---

```check
(choice
  (ask "Tom says: Ich komme aus Kanada. Ich wohne in Berlin. Which is true?")
  (right "Tom is from Canada and lives in Berlin")
  (wrong "Tom is from Berlin and lives in Canada"
    "aus goes with where you are from: Kanada. in goes with where you live: Berlin.")
  (wrong "Tom lives in Canada and in Berlin"
    "Ich komme aus Kanada says where he is from, not where he lives.")
  (hint "aus = from; wohne in = live in."))
```

So: say Ich wohne in ..., ask Wo wohnst du? or Wo wohnen Sie?, and learn the German names of cities: München, Köln, Wien.
