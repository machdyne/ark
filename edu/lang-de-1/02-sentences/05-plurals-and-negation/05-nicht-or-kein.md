# nicht or kein?

```lesson
(objective "Choose between nicht and kein.")
(minutes 20)
```

English says "not" and "no" in many places where German must choose
between nicht and kein, and one question decides it.

Ask: is it a noun with ein, eine or no article?

- Yes: use **kein**. Das ist ein Hund. Das ist kein Hund.
- No: use **nicht**. Das ist der Hund. Das ist nicht der Hund.

nicht is for everything else too: verbs, describing words, gern,
places and names.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): negation with nicht and kein")
```

```check
(choice
  (ask "Say no: \"Das ist das Auto.\" (It is a different car.)")
  (right "Das ist nicht das Auto.")
  (wrong "Das ist kein das Auto."
    "kein replaces ein; it never stands with der, die or das. With das Auto, use nicht.")
  (wrong "Das ist kein Auto."
    "That says it is not a car at all. To say it is not that car, keep das and add nicht.")
  (hint "Is there ein, or das?"))
```

---

## Look at what you say no to

- Hier ist Platz. (There is room here.) Platz is a noun with no
  article: Hier ist kein Platz.
- Das Haus ist voll. (The house is full.) voll describes: Das Haus ist
  nicht voll.
- Ich habe ein Radio. ein Radio: Ich habe kein Radio.

```check
(text
  (ask "Say no: \"Hier ist Platz.\"")
  (accept "Hier ist kein Platz.")
  (wrong-if "Hier ist nicht Platz." "Platz is a noun with no article, so German uses kein: Hier ist kein Platz.")
  (wrong-if "Hier ist keine Platz." "der Platz is masculine: kein.")
  (hint "A noun with no article."))
```

---

## Worked example

```example
(example
  (problem "Say no: Die Straße ist leer. (The street is empty.)")
  (step "What do you say no to? leer, a describing word.")
  (step "Describing words take nicht, right before them.")
  (answer "Die Straße ist nicht leer."))
```

```example
(example
  (problem "Say no: Ich habe Geschenke.")
  (step "Geschenke is a plural with no article.")
  (step (choice (ask "nicht or kein?")
          (right "keine")
          (wrong "nicht" "A noun with no article takes kein, keine.")))
  (answer "Ich habe keine Geschenke."))
```

---

## Read

> Lena macht eine Party. Das Haus ist voll. Tom sagt: "Hier ist kein
> Platz!" Er ist müde und spricht nicht viel. Lena hat eine Idee: "Der
> Garten ist leer. Komm (come)!"

```check
(choice
  (ask "Where is there room?")
  (right "in the garden")
  (wrong "in the house"
    "Das Haus ist voll: the house is full. Der Garten ist leer.")
  (wrong "nowhere"
    "Tom says hier ist kein Platz, in the house. Lena says the garden is empty.")
  (hint "What is leer?"))
```

---

## Practice

```check
(text
  (ask "Say no: \"Ich kenne Anna.\"")
  (accept "Ich kenne Anna nicht.")
  (wrong-if "Ich kenne keine Anna." "Anna is a name. Names take nicht, at the end: Ich kenne Anna nicht.")
  (wrong-if "Ich kenne nicht Anna." "With a name, nicht goes at the end of a short sentence: Ich kenne Anna nicht.")
  (hint "A name: nicht, at the end."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Der Platz ist nicht leer.")
  (wrong "Der Platz ist kein leer."
    "leer describes. kein only goes with nouns: Der Platz ist nicht leer.")
  (wrong "Der Platz ist leer nicht."
    "nicht goes right before the describing word: nicht leer.")
  (hint "leer is a describing word."))
```

---

```check
(text
  (ask "Say no: \"Wir haben ein Auto.\"")
  (accept "Wir haben kein Auto.")
  (wrong-if "Wir haben nicht ein Auto." "ein Auto: the no form is kein Auto.")
  (wrong-if "Wir haben keine Auto." "Auto is neuter: kein.")
  (hint "ein becomes kein."))
```

```check
(choice
  (ask "\"Ich spiele nicht gern Tennis.\" Why nicht, not kein?")
  (right "It says no to gern, and gern is not a noun")
  (wrong "Because Tennis is a noun"
    "If it said no to Tennis, the sentence would need kein. Here it says no to gern: you do not like it.")
  (wrong "kein is never used with spielen"
    "kein can go with spielen: Ich spiele kein Tennis (I do not play tennis). Here, nicht says no to gern.")
  (hint "What does nicht stand right before?"))
```

```cards
(card "der Platz, die Plätze" "the place, the room, the seat, the square" (note "Hier ist kein Platz. = There is no room here."))
(card "leer" "empty" (typed))
(card "voll" "full" (typed))
```

So: kein goes with a noun that has ein, eine or no article; nicht goes
with everything else.
