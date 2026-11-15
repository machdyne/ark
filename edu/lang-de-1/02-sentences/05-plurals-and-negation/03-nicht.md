# nicht

```lesson
(objective "Say no with nicht in the right place.")
(minutes 25)
```

nicht means "not", and where it goes depends on what you say no to.

With just a verb, nicht comes after the verb:

- Ich arbeite nicht. (I am not working. / I do not work.)
- Tom kocht nicht.

German has no word for "do" in "I do not work". Just add nicht.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): negation with nicht, its position")
```

```check
(text
  (ask "Write \"She is not laughing.\" in German.")
  (accept "Sie lacht nicht.")
  (wrong-if "Sie nicht lacht." "nicht comes after the verb: Sie lacht nicht.")
  (wrong-if "Sie lacht nein." "nein answers a question. In a sentence, \"not\" is nicht.")
  (hint "Sie lacht ... and then not."))
```

---

## Before a describing word

nicht goes right before a word that describes:

- Ich bin nicht müde. (I am not tired.)
- Deutsch ist nicht schwer. (German is not difficult.)
- Das ist nicht einfach. (That is not easy.)

```check
(text
  (ask "Write \"I am not ill.\" in German.")
  (accept "Ich bin nicht krank.")
  (wrong-if "Ich bin krank nicht." "nicht goes before the describing word: nicht krank.")
  (wrong-if "Ich nicht bin krank." "The verb stays second: Ich bin nicht krank.")
  (hint "Ich bin ... krank."))
```

---

## gern, places, and the end

nicht also goes **before** gern and before a place:

- Ich koche nicht gern. (I do not like cooking.)
- Er wohnt nicht in Wien.

With der, die, das words and names, nicht comes **at the end** of a
short sentence:

- Ich kenne Anna nicht.
- Ich lese das Buch nicht.

```check
(choice
  (ask "Which sentence says \"I do not like playing soccer\"?")
  (right "Ich spiele nicht gern Fußball.")
  (wrong "Ich spiele gern nicht Fußball."
    "nicht comes before gern: nicht gern.")
  (wrong "Ich nicht spiele gern Fußball."
    "The verb stays second, and nicht comes before gern.")
  (hint "nicht goes before gern."))
```

---

## Worked example

```example
(example
  (problem "Say no: Ich bin fertig. (I am finished.)")
  (step "fertig describes, so nicht goes right before it.")
  (answer "Ich bin nicht fertig."))
```

```example
(example
  (problem "Say no: Wir sehen das Haus.")
  (step "das Haus is a der, die, das word.")
  (step (choice (ask "So where does nicht go?")
          (right "at the end: Wir sehen das Haus nicht.")
          (wrong "after the verb: Wir sehen nicht das Haus." "With a der, die, das word, nicht goes at the end of a short sentence.")))
  (answer "Wir sehen das Haus nicht."))
```

---

## Read

- Tom: Bist du müde, Lena?
- Lena: Nein, ich bin nicht müde. Aber ich bin krank.
- Tom: Oh! Arbeitest du?
- Lena: Nein, ich arbeite nicht. Ich lese ein Buch.
- Tom: Ist das Buch gut?
- Lena: Ja, und es ist nicht schwer.

```check
(choice
  (ask "How is Lena?")
  (right "She is ill, but not tired.")
  (wrong "She is tired, but not ill."
    "It is the other way round: ich bin nicht müde, aber ich bin krank.")
  (wrong "She is well and working."
    "She says ich bin krank and ich arbeite nicht.")
  (hint "Look at Lena's first answer."))
```

---

## Practice

```check
(text
  (ask "Write \"He does not work.\" in German.")
  (accept "Er arbeitet nicht.")
  (wrong-if "Er macht nicht arbeiten." "German has no helper like do. Just: Er arbeitet nicht.")
  (wrong-if "Er nicht arbeitet." "nicht comes after the verb: Er arbeitet nicht.")
  (hint "Er arbeitet ..."))
```

```check
(text
  (ask "Say no: \"Das ist einfach.\"")
  (accept "Das ist nicht einfach.")
  (wrong-if "Das ist einfach nicht." "Before a describing word: nicht einfach.")
  (hint "nicht goes right before einfach."))
```

---

```check
(choice
  (ask "Which sentence is right?")
  (right "Ich kenne Tom nicht.")
  (wrong "Ich nicht kenne Tom."
    "The verb stays second. With a name, nicht goes at the end: Ich kenne Tom nicht.")
  (wrong "Ich kenne nicht."
    "Here Tom is missing: Ich kenne Tom nicht.")
  (hint "With a name, nicht goes at the end."))
```

```check
(choice
  (ask "\"Der Hund ist nicht gesund.\" What does it mean?")
  (right "The dog is not healthy.")
  (wrong "The dog is healthy."
    "nicht makes it negative: not healthy.")
  (wrong "The dog is not tired."
    "Tired is müde. gesund is healthy.")
  (hint "gesund = healthy."))
```

```cards
(card "nicht" "not" (typed))
(card "müde" "tired" (typed))
(card "krank" "sick" (typed) (note "also: ill"))
(card "gesund" "healthy" (typed))
(card "fertig" "finished" (typed) (note "also: ready"))
(card "schwer" "difficult" (typed) (note "also: heavy"))
(card "einfach" "easy" (typed) (note "also: simple"))
```

So: nicht follows the verb, comes before a describing word, gern or a
place, and goes at the end after a der, die, das word or a name.
