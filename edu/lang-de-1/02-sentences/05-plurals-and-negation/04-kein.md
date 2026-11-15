# kein

```lesson
(objective "Say no to a noun with kein and keine, and answer a no-question with doch.")
(minutes 25)
```

To say "not a" or "no" before a noun, German uses kein: Das ist kein
Hund. (That is not a dog.)

kein is the "no" form of ein. It has the same endings:

| ein | kein |
|---|---|
| ein Tisch (der) | kein Tisch |
| ein Radio (das) | kein Radio |
| eine Kamera (die) | keine Kamera |
| Kinder (plural) | keine Kinder |

Plurals have no ein, but they have keine: Ich habe keine Kinder.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): negation with kein")
```

```check
(text
  (ask "Say no: \"Das ist eine Kamera.\"")
  (accept "Das ist keine Kamera.")
  (wrong-if "Das ist kein Kamera." "Kamera is feminine (die Kamera): eine becomes keine.")
  (wrong-if "Das ist nicht eine Kamera." "For \"not a\", German uses kein: Das ist keine Kamera.")
  (hint "eine becomes keine."))
```

---

## kein with haben

kein works with haben as ein does: with die words, das words and
plurals.

- Ich habe kein Radio.
- Wir haben keine Katze.
- Sie hat keine Haustiere. (She has no pets.)

With a der word, kein changes after haben, as ein does. Part 3 shows
how.

```check
(text
  (ask "Write \"I have no pet.\" in German. (das Haustier)")
  (accept "Ich habe kein Haustier.")
  (wrong-if "Ich habe keine Haustier." "Haustier is neuter (das Haustier): kein, like ein.")
  (wrong-if "Ich habe nicht ein Haustier." "For \"no\" before a noun, use kein: Ich habe kein Haustier.")
  (hint "das Haustier: ein Haustier, so kein Haustier."))
```

---

## Nouns with no article

kein also goes with nouns that have no article, such as a language:

- Ich spreche Spanisch. Ich spreche kein Spanisch.

```check
(choice
  (ask "Which sentence says \"I do not speak Italian\"?")
  (right "Ich spreche kein Italienisch.")
  (wrong "Ich spreche keine Italienisch."
    "Languages are neuter: kein Italienisch.")
  (wrong "Ich nicht spreche Italienisch."
    "The verb stays second. And before a language with no article, German says kein: Ich spreche kein Italienisch.")
  (hint "A language, no article: kein."))
```

---

## doch

To answer yes to a question with kein or nicht in it, say **doch**,
not ja:

- Hast du kein Auto? Doch! (Yes, I do!)
- Hast du kein Auto? Nein. (No, I do not.)

```check
(choice
  (ask "\"Bist du nicht müde?\" You are tired. What do you say?")
  (right "Doch, ich bin müde.")
  (wrong "Ja, ich bin müde."
    "After a question with nicht or kein, yes is doch, not ja.")
  (wrong "Nein, ich bin müde."
    "Nein would agree that you are not tired. To say you are, answer doch.")
  (hint "The question has nicht in it."))
```

---

## Worked example

```example
(example
  (problem "Say no: Wir haben ein Problem.")
  (step "das Problem: ein Problem.")
  (step "The no form of ein is kein.")
  (answer "Wir haben kein Problem."))
```

```example
(example
  (problem "Say no: Das sind Fotos.")
  (step "Fotos is plural, with no article.")
  (step (choice (ask "Which word?")
          (right "keine")
          (wrong "kein" "Plurals take keine.")
          (wrong "nicht" "Before a noun with no article, German uses kein, keine.")))
  (answer "Das sind keine Fotos."))
```

---

## Read

- Mia: Hast du ein Haustier, Ben?
- Ben: Nein, ich habe kein Haustier. Und du?
- Mia: Ich habe zwei Katzen!
- Ben: Super! Hast du Fotos?
- Mia: Nein, ich habe keine Kamera.
- Ben: Hast du kein Handy?
- Mia: Doch! Hier sind die Fotos.

```check
(choice
  (ask "Mia answers \"Doch!\" to \"Hast du kein Handy?\" What does she mean?")
  (right "Yes, she has a cell phone.")
  (wrong "No, she has no cell phone."
    "Doch says yes to a question with kein. And she shows the photos on it.")
  (wrong "She has a camera."
    "She says ich habe keine Kamera. Doch is about the cell phone: yes, she has one.")
  (hint "doch answers yes to a question with kein."))
```

---

## Practice

```check
(text
  (ask "Say no: \"Ich habe eine Idee.\"")
  (accept "Ich habe keine Idee.")
  (wrong-if "Ich habe kein Idee." "Idee is feminine (die Idee): keine.")
  (hint "eine becomes keine."))
```

```check
(text
  (ask "Say no: \"Das ist ein Radio.\"")
  (accept "Das ist kein Radio.")
  (wrong-if "Das ist keine Radio." "Radio is neuter (das Radio): kein.")
  (wrong-if "Das ist nicht ein Radio." "For \"not a\", use kein: Das ist kein Radio.")
  (hint "ein becomes kein."))
```

---

```check
(choice
  (ask "\"Hast du keine Haustiere?\" You have a cat. What do you say first?")
  (right "Doch!")
  (wrong "Ja!"
    "After a question with kein, yes is doch.")
  (wrong "Nein!"
    "Nein would mean you have none. You do: doch.")
  (hint "The question has keine in it."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Das ist kein Tisch.")
  (wrong "Das ist keine Tisch."
    "Tisch is masculine (der Tisch): ein Tisch, so kein Tisch.")
  (wrong "Das ist nicht ein Tisch."
    "For \"not a\", German uses kein: Das ist kein Tisch.")
  (hint "der Tisch: ein Tisch."))
```

```cards
(card "kein, keine" "no" (typed) (note "also: not a, not any"))
(card "doch" "yes (to a question with nicht or kein)")
(card "das Radio, die Radios" "the radio" (typed))
(card "die Kamera, die Kameras" "the camera" (typed))
(card "das Haustier, die Haustiere" "the pet" (typed))
```

So: kein and keine replace ein and eine, and stand before plurals and
nouns with no article; doch says yes to a question with nicht or kein.
