# The flat

```lesson
(objective "Name the rooms of a home.")
(minutes 25)
```

You can name every room of a home in German, and most of the names
are made of words you know.

Many Germans live in a **Wohnung** (a flat, or apartment), not in a
house. This is Tom's flat:

```figure
(de2-room 16 14 160 90 "Wohnzimmer")
(de2-room 176 14 128 90 "Küche")
(de2-room 16 104 160 70 "Schlafzimmer")
(de2-room 176 104 128 70 "Bad")
(de2-room 16 174 160 32 "Balkon")
(caption "Tom's flat, seen from above")
```

| German | English |
|---|---|
| die Wohnung | the flat, the apartment |
| das Zimmer | the room |
| die Küche | the kitchen |
| das Bad | the bathroom |
| der Balkon | the balcony |

```check
(text
  (ask "Write \"the kitchen\" in German, with its article.")
  (accept "die Küche")
  (wrong-if "die Kuche" "Küche has an umlaut: ü.")
  (wrong-if "der Küche" "Küche takes die: die Küche.")
  (wrong-if "das Küche" "Küche takes die: die Küche.")
  (hint "Küche ends in -e, like many die words."))
```

---

## Rooms made of words

Two rooms are compound nouns with Zimmer:

- das Wohnzimmer: wohnen (to live) + Zimmer: the living room
- das Schlafzimmer: Schlaf (sleep) + Zimmer: the bedroom

Both take das, from das Zimmer, their last part.

```check
(choice
  (ask "das Wohnzimmer: why das?")
  (right "Its last part is das Zimmer.")
  (wrong "All rooms are neuter."
    "Not all: die Küche and der Balkon are rooms too. A compound noun takes the gender of its last part, das Zimmer.")
  (wrong "wohnen is neuter."
    "wohnen is a verb, and verbs have no gender. The last part decides: das Zimmer.")
  (hint "Which part of a compound noun decides its gender?"))
```

---

## Describing a flat

- Die Wohnung hat drei Zimmer. (The flat has 3 rooms.)
- Die Küche ist klein.
- Das Wohnzimmer ist groß.

Zimmer ends in -er and adds nothing in the plural: ein Zimmer, drei
Zimmer.

```check
(text
  (ask "Write \"The bathroom is small.\" in German.")
  (accept "Das Bad ist klein.")
  (wrong-if "Der Bad ist klein." "Bad takes das: das Bad.")
  (wrong-if "Das Bad ist groß." "groß is big. Small is klein.")
  (hint "das Bad ... klein."))
```

---

## Worked example

```example
(example
  (problem "Look at the plan. Which room is next to the kitchen?")
  (step "The kitchen, Küche, is at the top right.")
  (step "Next to it, on the left, is the Wohnzimmer.")
  (answer "das Wohnzimmer"))
```

```example
(example
  (problem "Look at the plan. Which room is under the kitchen?")
  (step "The kitchen is at the top right.")
  (step (choice (ask "What is under it?")
          (right "das Bad")
          (wrong "das Schlafzimmer" "The bedroom is under the living room, on the left.")))
  (answer "das Bad"))
```

---

## Read

> Tom wohnt in Hamburg. Die Wohnung ist nicht groß: Sie hat zwei
> Zimmer, eine Küche und ein Bad. Das Wohnzimmer ist schön. Die Küche
> ist klein, aber der Balkon ist toll.

```check
(choice
  (ask "What does Tom like best?")
  (right "the balcony")
  (wrong "the kitchen"
    "Die Küche ist klein: the kitchen is small. aber der Balkon ist toll.")
  (wrong "the bathroom"
    "The text says only that there is a bathroom. Toll is the balcony.")
  (hint "Which room is toll?"))
```

---

## Practice

```check
(text
  (ask "Write \"the bedroom\" in German, with its article.")
  (accept "das Schlafzimmer")
  (wrong-if "der Schlafzimmer" "A compound noun takes the gender of its last part: das Zimmer, so das Schlafzimmer.")
  (wrong-if "die Schlafzimmer" "For one bedroom: das Schlafzimmer. (die Schlafzimmer is the plural.)")
  (hint "Its last part is das Zimmer."))
```

```check
(choice
  (ask "\"Die Wohnung hat vier Zimmer.\" What does it mean?")
  (right "The flat has 4 rooms.")
  (wrong "The house has 4 rooms."
    "Haus is house. die Wohnung is a flat, or apartment.")
  (wrong "The flat has 4 bedrooms."
    "Bedrooms are Schlafzimmer. Zimmer alone is rooms.")
  (hint "die Wohnung = the flat."))
```

---

```check
(text
  (ask "Write the plural of das Bad, with its article.")
  (accept "die Bäder")
  (wrong-if "die Bads" "Bad adds -er with an umlaut, like das Buch: die Bäder.")
  (wrong-if "die Bader" "Bad takes an umlaut: Bäder.")
  (hint "Like das Haus, die Häuser."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Der Balkon ist groß.")
  (wrong "Das Balkon ist groß."
    "Balkon takes der: der Balkon.")
  (wrong "Der Balkon sind groß."
    "One balcony: ist.")
  (hint "der Balkon."))
```

```cards
(card "die Wohnung, die Wohnungen" "the apartment" (typed) (note "also: the flat"))
(card "das Zimmer, die Zimmer" "the room" (typed))
(card "die Küche, die Küchen" "the kitchen" (typed))
(card "das Bad, die Bäder" "the bathroom" (typed))
(card "das Schlafzimmer, die Schlafzimmer" "the bedroom" (typed))
(card "das Wohnzimmer, die Wohnzimmer" "the living room" (typed))
(card "der Balkon, die Balkone" "the balcony" (typed) (note "also: die Balkons"))
```

So: a home has a Wohnzimmer, a Küche, a Bad and a Schlafzimmer, and
the -zimmer rooms take das.
