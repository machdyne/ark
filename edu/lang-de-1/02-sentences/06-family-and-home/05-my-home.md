# My home

```lesson
(objective "Describe your family and your home in a few sentences.")
(minutes 30)
```

With what you know now, you can write a short message about your home
and your family.

Three more words to describe a home:

| German | English |
|---|---|
| ruhig | quiet, calm |
| modern | modern |
| praktisch | practical, handy |

- Die Straße ist ruhig.
- Die Küche ist modern und praktisch.

```check
(text
  (ask "Write \"The flat is quiet.\" in German.")
  (accept "Die Wohnung ist ruhig.")
  (wrong-if "Die Wohnung ist nicht ruhig." "That says it is not quiet. Leave out nicht.")
  (wrong-if "Der Wohnung ist ruhig." "Wohnung ends in -ung, so it is feminine: die Wohnung.")
  (hint "die Wohnung ... ruhig."))
```

---

## A message from Lena

> Hallo Ben! Ich wohne in Köln. Die Wohnung ist klein, aber modern und
> praktisch. Sie hat zwei Zimmer, eine Küche und ein Bad. Das
> Wohnzimmer ist hell, und die Straße ist ruhig. Meine Schwester Mia
> wohnt nicht hier: Sie studiert in Wien. Meine Eltern kommen bald.
> Wie ist deine Wohnung? Viele Grüße, Lena

```check
(choice
  (ask "Where is Lena's sister?")
  (right "in Vienna, at university")
  (wrong "in Cologne, with Lena"
    "Mia wohnt nicht hier: she does not live with Lena. Sie studiert in Wien.")
  (wrong "on her way to visit"
    "Lena's parents are coming soon (kommen bald). Mia studies in Vienna.")
  (hint "Find Mia."))
```

---

## About the flat

```check
(choice
  (several)
  (ask "What does Lena say about her flat? Choose all that fit.")
  (right "It is small.")
  (right "It is modern.")
  (wrong "It has three rooms."
    "Sie hat zwei Zimmer: two rooms, and a kitchen and a bathroom.")
  (wrong "The street is loud."
    "die Straße ist ruhig: the street is quiet.")
  (hint "Look at the second and third sentences."))
```

---

## Worked example

```example
(example
  (problem "Write 2 sentences about a flat: it has 3 rooms, and the kitchen is practical.")
  (step "die Wohnung, haben: Die Wohnung hat drei Zimmer.")
  (step "die Küche, sein: Die Küche ist praktisch.")
  (answer "Die Wohnung hat drei Zimmer. Die Küche ist praktisch."))
```

```example
(example
  (problem "Write: my brother does not live here.")
  (step "der Bruder: mein Bruder.")
  (step "wohnen with er: wohnt.")
  (step (choice (ask "Where does nicht go?")
          (right "Mein Bruder wohnt nicht hier.")
          (wrong "Mein Bruder nicht wohnt hier." "The verb stays second; nicht comes before the place: wohnt nicht hier.")))
  (answer "Mein Bruder wohnt nicht hier."))
```

---

## Your answer to Lena

Ben writes back. Help him with the sentences.

```check
(text
  (ask "Write \"My flat is big.\" in German.")
  (accept "Meine Wohnung ist groß.") (accept "Meine Wohnung ist gross.")
  (wrong-if "Mein Wohnung ist groß." "Wohnung is feminine: meine.")
  (wrong-if "Meine Wohnung hat groß." "To say what something is like, use ist.")
  (hint "die Wohnung: meine."))
```

```check
(text
  (ask "Write \"My flat has no living room.\" in German.")
  (accept "Meine Wohnung hat kein Wohnzimmer.")
  (wrong-if "Meine Wohnung hat nicht ein Wohnzimmer." "For \"no\" before a noun, use kein: kein Wohnzimmer.")
  (wrong-if "Meine Wohnung hat keine Wohnzimmer." "Wohnzimmer is neuter (das Wohnzimmer): kein.")
  (wrong-if "Meine Wohnung hat nicht Wohnzimmer." "Before a noun with no article, use kein: kein Wohnzimmer.")
  (hint "das Wohnzimmer: ein Wohnzimmer, so kein Wohnzimmer."))
```

---

## Practice

```check
(text
  (ask "Write \"My parents live in Canada.\" in German.")
  (accept "Meine Eltern wohnen in Kanada.") (accept "In Kanada wohnen meine Eltern.")
  (wrong-if "Mein Eltern wohnen in Kanada." "Eltern is plural: meine.")
  (wrong-if "Meine Eltern wohnt in Kanada." "Eltern is plural, like sie (they): wohnen.")
  (hint "Plural: meine, and the verb with -en."))
```

```check
(text
  (ask "Ask Ben (du): \"How many rooms does your flat have?\"")
  (accept "Wie viele Zimmer hat deine Wohnung?")
  (wrong-if "Wie viele Zimmer hat dein Wohnung?" "Wohnung is feminine: deine.")
  (wrong-if "Wie viele Zimmer deine Wohnung hat?" "The verb comes second, after Wie viele Zimmer: hat deine Wohnung.")
  (hint "Wie viele Zimmer, then the verb hat, then deine Wohnung."))
```

---

```check
(choice
  (ask "Which sentence is right?")
  (right "Bald fährt meine Schwester nach Wien.")
  (wrong "Bald meine Schwester fährt nach Wien."
    "After Bald comes the verb: Bald fährt meine Schwester nach Wien.")
  (wrong "Bald fahrt meine Schwester nach Wien."
    "meine Schwester is sie (she), so fahren changes its vowel: fährt.")
  (hint "Verb second, and fahren changes a to ä with sie (she)."))
```

```check
(choice
  (ask "\"Das Haus ist nicht modern, aber praktisch.\" What does it mean?")
  (right "The house is not modern, but it is practical.")
  (wrong "The house is modern and practical."
    "nicht modern: not modern. aber: but.")
  (wrong "The flat is not modern."
    "das Haus is a house; a flat is die Wohnung.")
  (hint "nicht = not; aber = but."))
```

```cards
(card "ruhig" "quiet" (typed) (note "also: calm"))
(card "modern" "modern" (typed))
(card "praktisch" "practical" (typed))
```

So: you can now say who is in your family, where they live, and what
your home is like, in sentences with the verb in the right place.
