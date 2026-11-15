# wir, ihr, sie

```lesson
(objective "Conjugate a regular verb with wir, ihr, sie and Sie (-en, -t, -en), and know the whole present tense of a regular verb.")
(minutes 25)
(keywords "singular" "plural")
```

With wir, ihr, sie and Sie, regular verbs take the endings -en, -t and
-en, and then you know the whole present tense.

ich, du and er, sie, es are one person or thing: they are
**singular**. wir, ihr and sie (they) are more than one: they are
**plural**. Here is a whole regular verb:

| singular | | | plural | | |
|---|---|---|---|---|---|
| ich | spiele | -e | wir | spielen | -en |
| du | spielst | -st | ihr | spielt | -t |
| er, sie, es | spielt | -t | sie, Sie | spielen | -en |

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the present tense, endings")
```

```check
(text
  (ask "wir ___ (lachen). Write the right form.")
  (accept "lachen")
  (wrong-if "lacht" "-t is for er, sie, es and ihr. wir takes -en: lachen.")
  (wrong-if "lache" "-e is for ich. wir takes -en, so the form looks like the infinitive: lachen.")
  (hint "wir takes -en."))
```

---

## ihr

ihr (you, to two or more friends) takes **-t**, the same as er:

- Ihr lacht. (You laugh.)
- Er lacht. (He laughs.)

```check
(text
  (ask "ihr ___ (spielen). Write the right form.")
  (accept "spielt")
  (wrong-if "spielen" "-en is for wir, sie and Sie. ihr takes -t: spielt.")
  (wrong-if "spielst" "-st is for du, one person. ihr is more than one, and takes -t.")
  (hint "ihr takes the same ending as er."))
```

---

## sie and Sie

sie (they) and Sie (you, formal) both take -en, so their forms are
always the same: sie spielen, Sie spielen. sie (she) takes -t: sie
spielt. So the ending tells you which sie it is:

- Sie lacht. = She laughs.
- Sie lachen. = They laugh, or: You laugh (formal).

```check
(choice
  (ask "\"Sie studieren in Wien.\" Who can this be about?")
  (right "They, or you (formal)")
  (wrong "She"
    "For she, the verb would take -t: sie studiert. -en is for they and for formal you.")
  (wrong "I"
    "I is ich, and ich takes -e: ich studiere.")
  (hint "Look at the ending: -en."))
```

---

## Four new verbs

| Infinitive | English |
|---|---|
| bleiben | to stay |
| lachen | to laugh |
| studieren | to study (at a university or college) |
| fliegen | to fly |

studieren is for a university or college. For school, or for learning
words, Germans say lernen.

```check
(text
  (ask "Herr Weber, you (Sie) ___ (bleiben) in Berlin. Write the right form.")
  (accept "bleiben")
  (wrong-if "bleibt" "-t is for er, sie, es and ihr. Sie (formal) takes -en: bleiben.")
  (wrong-if "bleibst" "-st is for du. With Herr Weber you say Sie, and Sie takes -en.")
  (hint "Sie (formal) takes -en."))
```

---

## Worked example

```example
(example
  (problem "Conjugate fliegen with wir, ihr and sie (they).")
  (step "The stem is flieg-.")
  (step "wir: -en: wir fliegen.")
  (step "ihr: -t: ihr fliegt.")
  (step "sie (they): -en: sie fliegen.")
  (answer "wir fliegen, ihr fliegt, sie fliegen"))
```

```example
(example
  (problem "Conjugate studieren with wir, ihr and Sie.")
  (step "The stem is studier-.")
  (step "wir studieren, Sie studieren.")
  (step (text (ask "And with ihr?") (accept "studiert") (accept "ihr studiert")
          (wrong-if "studieren" "-en is for wir, sie and Sie. ihr takes -t.")))
  (answer "wir studieren, ihr studiert, Sie studieren"))
```

---

## Read

> Tom und Mia studieren in Wien. Sie wohnen zusammen. Tom kommt aus
> England, und Mia kommt aus Kanada. Mia fliegt nach (to) Kanada. Tom
> bleibt in Wien.

```check
(choice
  (ask "Who stays in Vienna?")
  (right "Tom")
  (wrong "Mia"
    "Mia fliegt nach Kanada: Mia flies to Canada. Tom bleibt in Wien.")
  (wrong "Tom and Mia"
    "They live together in Vienna, but Mia flies to Canada. Only Tom bleibt: stays.")
  (hint "bleiben = to stay. Who bleibt?"))
```

---

## Practice

```check
(text
  (ask "Write \"We laugh.\" in German.")
  (accept "Wir lachen.")
  (wrong-if "Wir lacht." "wir takes -en: wir lachen.")
  (hint "wir + stem + -en."))
```

```check
(choice
  (ask "Which form is plural?")
  (right "ihr kocht")
  (wrong "er kocht"
    "er is one person, so it is singular. ihr kocht looks the same, but ihr is more than one: plural.")
  (wrong "du kochst"
    "du is one person: singular. ihr is the plural you.")
  (hint "Which pronoun is more than one person?"))
```

---

```check
(text
  (ask "ihr ___ (lernen). Write the right form.")
  (accept "lernt")
  (wrong-if "lernen" "-en is for wir, sie and Sie. ihr takes -t.")
  (hint "ihr takes -t."))
```

```check
(choice
  (ask "\"Sie lacht.\" Who laughs?")
  (right "she")
  (wrong "they"
    "For they, the verb takes -en: sie lachen. lacht with -t is she.")
  (wrong "you (formal)"
    "Formal Sie takes -en: Sie lachen. lacht with -t is she.")
  (hint "Look at the ending: -t."))
```

```cards
(card "bleiben" "to stay" (typed))
(card "lachen" "to laugh" (typed))
(card "studieren" "to study" (typed) (note "at a university or college"))
(card "fliegen" "to fly" (typed))
```

So: a regular verb takes -e, -st, -t in the singular and -en, -t, -en
in the plural.
