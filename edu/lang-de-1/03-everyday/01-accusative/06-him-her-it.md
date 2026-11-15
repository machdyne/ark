# ihn, sie, es

```lesson
(objective "Use ihn, sie, es and sie for people and things, choosing by the noun's gender.")
(minutes 25)
```

In this lesson you say "him", "her", "it" and "them" as objects: **Ich finde ihn toll.**

| nominative | accusative |
|---|---|
| er | ihn |
| sie (she) | sie |
| es | es |
| sie (they) | sie |

Only **er** changes: it becomes **ihn**. Again, only the masculine changes, as with der and den.

> Kennst du Tom? - Ja, ich kenne ihn.

> Kennst du Anna? - Ja, ich kenne sie.

```check
(text
  (ask "Siehst du Paul? - Ja, ich sehe ___. Type the missing word.")
  (accept "ihn")
  (wrong-if "er" "Er is the subject form. Here Paul is the object of sehe, so er becomes ihn.")
  (wrong-if "ihm" "Ihm is a different case, for German 2. The object of sehen is ihn.")
  (hint "Paul is er. What does er become as an object?"))
```

---

## Things too

You know that a thing is er, sie or es by its gender: der Pullover is er. As an object, it is **ihn**:

> Wie findest du den Pullover? - Ich finde ihn schön.

> Wie findest du die Jacke? - Ich finde sie toll.

> Wie findest du das Hemd? - Ich finde es schön.

> Wie findest du die Schuhe? - Ich finde sie toll.

English says "it" for every thing. German says **ihn** for a masculine thing. "Ich finde es schön" about der Pullover is a common mistake.

```check
(choice
  (ask "Wie findest du den Ball? - Ich finde ___ toll.")
  (right "ihn")
  (wrong "es"
    "In English a ball is it, but der Ball is masculine. As an object, it is ihn.")
  (wrong "er"
    "Er is the right gender, but here it is the object of finde. Er becomes ihn.")
  (hint "der Ball: masculine, and it is the object."))
```

---

## What do you think?

**Wie findest du ...?** asks what someone thinks of something. Word for word it is "How do you find ...?"

```cards
(card "Wie findest du ...?" "What do you think of ...?")
(card "finden" "to find" (typed) (note "Ich finde ihn nett: I think he is nice. Regular: ich finde, du findest, er findet."))
(card "interessant" "interesting" (typed))
(card "langweilig" "boring" (typed))
(card "lustig" "funny" (typed))
(card "nett" "nice" (typed) (note "Also: kind. Mostly for people: Ich finde ihn nett."))
(card "die Tasche, die Taschen" "the bag" (typed))
```

```check
(choice
  (ask "Wie findest du das Buch? - Ich finde es langweilig. What does the answer mean?")
  (right "I think it is boring.")
  (wrong "I cannot find it."
    "Finden can mean find, but after Wie findest du it gives an opinion: I think it is boring.")
  (wrong "I think it is interesting."
    "Interesting is interessant. Langweilig means boring.")
  (hint "What does langweilig mean?"))
```

---

## A worked example

```example
(example
  (problem "Answer: Wie findest du die Hose? Say: I think it is nice.")
  (step "die Hose is feminine, so the pronoun is sie.")
  (step "As an object, sie stays sie.")
  (step "Nice, for a thing: schön.")
  (answer "Ich finde sie schön."))
```

---

## Now you finish one

**Wie findest du den Lehrer?** Say: I think he is funny. **Ich finde ___ lustig.**

```check
(text
  (ask "Type the missing word.")
  (accept "ihn")
  (wrong-if "er" "Er is the subject form. The teacher is the object of finde, so er becomes ihn.")
  (wrong-if "es" "Der Lehrer is a man and masculine: ihn, not es.")
  (hint "der Lehrer: er, as an object ..."))
```

---

## New in class

Mara and Jan talk about a new student.

> Mara: Kennst du Leon? Er ist neu.

> Jan: Ja, ich kenne ihn. Ich finde ihn nett.

> Mara: Und die Lehrerin? Wie findest du sie?

> Jan: Ich finde sie toll. Aber das Buch finde ich langweilig.

> Mara: Ich finde es interessant!

```check
(choice
  (ask "What does Jan think of the book?")
  (right "It is boring.")
  (wrong "It is interesting."
    "That is Mara's view: Ich finde es interessant. Jan says: das Buch finde ich langweilig.")
  (wrong "It is new."
    "Neu is about Leon: Er ist neu.")
  (hint "Find Jan's line with das Buch."))
```

```check
(choice
  (ask "In Ich kenne ihn, who is ihn?")
  (right "Leon")
  (wrong "the teacher"
    "The teacher is die Lehrerin, a woman: she would be sie. Ihn is a masculine object: Leon.")
  (wrong "the book"
    "Das Buch is neuter, so it would be es. Ihn is masculine: Leon.")
  (hint "Ihn is masculine. Who is er in Mara's first line?"))
```

---

## Practice

```check
(text
  (ask "Wo ist die Tasche? - Ich suche ___ auch. Type the missing word.")
  (accept "sie")
  (wrong-if "ihn" "Ihn is for masculine nouns. Die Tasche is feminine: sie.")
  (wrong-if "es" "In English the bag is it, but die Tasche is feminine: sie.")
  (hint "die Tasche is feminine."))
```

```check
(choice
  (ask "Brauchst du das Handy? - Ja, ich brauche ___.")
  (right "es")
  (wrong "ihn"
    "Ihn is only for masculine nouns. Das Handy is neuter, so it stays es.")
  (wrong "er"
    "Das Handy is neuter: es. And er is the subject form.")
  (hint "das Handy: which gender?"))
```

```check
(choice
  (ask "Kaufst du die Schuhe? - Ja, ich kaufe ___.")
  (right "sie")
  (wrong "es"
    "Die Schuhe is plural. The plural pronoun is sie, for people and things.")
  (wrong "ihn"
    "Der Schuh is masculine, but die Schuhe is plural. The plural pronoun is sie.")
  (hint "Schuhe is plural."))
```

```check
(text
  (ask "Wie findest du den Park? - Ich finde ___ schön. Type the missing word.")
  (accept "ihn")
  (wrong-if "es" "The park is it in English, but der Park is masculine. As an object: ihn.")
  (wrong-if "er" "Er is the subject form. The park is the object of finde: ihn.")
  (hint "der Park: masculine object."))
```

Now you can say him, her, it and them as objects, and choose ihn for every masculine thing.
