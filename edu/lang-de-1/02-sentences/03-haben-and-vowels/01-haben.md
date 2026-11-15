# haben

```lesson
(objective "Conjugate haben and say what you have.")
(minutes 25)
```

haben means "to have", and it is one of the most used verbs in
German.

Most of its forms follow the pattern you know: the stem hab- and the
regular endings.

| | haben |
|---|---|
| ich | habe |
| du | hast (no b) |
| er, sie, es | hat (no b) |
| wir | haben |
| ihr | habt |
| sie, Sie | haben |

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the verbs haben and sein")
```

```check
(text
  (ask "Wir ___ (haben). Write the right form.")
  (accept "haben")
  (wrong-if "habt" "habt is the form for ihr. For wir, the form is the same as the infinitive: haben.")
  (wrong-if "hat" "hat is for er, sie and es. For wir: haben.")
  (hint "wir takes -en, like the infinitive."))
```

---

## du hast, er hat

Two forms lose the b: du **hast** and er, sie, es **hat**. Not "habst"
and not "habt": habt is the form for ihr.

```check
(text
  (ask "Er ___ (haben). Write the right form.")
  (accept "hat")
  (wrong-if "habt" "habt is for ihr. For er, sie and es the form is short: hat.")
  (wrong-if "habet" "There is no such form. For er, sie and es, haben loses the b: hat.")
  (wrong-if "habe" "habe is for ich. For er: hat.")
  (hint "It is a short word, without b.")
  (hint "h-a-t"))
```

---

## What you have

haben goes with ein and eine and a die or das noun:

- Ich habe eine Katze. (I have a cat.)
- Sie hat ein Auto. (She has a car.)
- Wir haben zwei Kinder. (We have 2 children.)

With a der noun, ein changes after haben. Part 3 of this course shows
how. Until then, use haben with die words, das words and plurals.

```check
(text
  (ask "Write \"I have a cat.\" in German.")
  (accept "Ich habe eine Katze.")
  (wrong-if "Ich habe ein Katze." "Katze is feminine (die Katze), so it takes eine.")
  (wrong-if "Ich hat eine Katze." "hat is for er, sie and es. With ich: habe.")
  (hint "Ich habe ... then eine or ein.")
  (hint "die Katze is feminine."))
```

---

## Ideas and problems

Some useful sentences with haben:

- Ich habe eine Idee! (I have an idea!)
- Wir haben ein Problem. (We have a problem.)
- Er hat ein Geschenk. (He has a present.)

```check
(choice
  (ask "\"Wir haben ein Problem.\" What does it mean?")
  (right "We have a problem.")
  (wrong "We are a problem."
    "\"are\" is sein: wir sind. haben means \"to have\".")
  (wrong "He has a problem."
    "wir means we. He has would be Er hat.")
  (hint "wir = we, haben = have."))
```

---

## Worked example

```example
(example
  (problem "Say \"You have a car.\" to a friend (du).")
  (step "du takes the form hast.")
  (step "das Auto is neuter, so it takes ein.")
  (answer "Du hast ein Auto."))
```

```example
(example
  (problem "Say \"She has an idea.\"")
  (step "sie (she) takes the form hat.")
  (step (choice (ask "die Idee: ein or eine?")
          (right "eine")
          (wrong "ein" "Idee is feminine (die Idee), so it takes eine.")))
  (answer "Sie hat eine Idee."))
```

---

## Read

> Lena hat eine Katze. Die Katze heißt Mimi, und sie ist klein. Tom hat
> ein Auto, aber (but) es ist kaputt. Tom hat ein Problem. Lena hat eine
> Idee: "Wir gehen!"

```check
(choice
  (ask "What is Tom's problem?")
  (right "His car is broken.")
  (wrong "His cat is small."
    "The cat, Mimi, is Lena's, and being small is no problem. Tom hat ein Auto, aber es ist kaputt.")
  (wrong "He has no idea."
    "Lena has the idea. Tom's problem is the car: es ist kaputt.")
  (hint "Find Tom hat ein Auto. What comes after aber?"))
```

---

## Practice

```check
(text
  (ask "Ihr ___ (haben) ein Problem. Write the right form.")
  (accept "habt")
  (wrong-if "haben" "haben is for wir, sie and Sie. ihr takes -t: habt.")
  (wrong-if "hat" "hat is for er, sie and es. ihr takes habt.")
  (hint "ihr: the stem hab- and -t."))
```

```check
(text
  (ask "Write \"You have a present.\" to a friend (du).")
  (accept "Du hast ein Geschenk.")
  (wrong-if "Du habst ein Geschenk." "du hast loses the b: du hast.")
  (wrong-if "Du hast eine Geschenk." "Geschenk is neuter (das Geschenk), so it takes ein.")
  (hint "du hast ..."))
```

---

```check
(choice
  (ask "Anna ___ eine Idee. Which form?")
  (right "hat")
  (wrong "habt"
    "habt is for ihr. Anna is one person, like sie: hat.")
  (wrong "haben"
    "haben is for wir, sie (they) and Sie. Anna is one person: hat.")
  (hint "Anna = sie (she)."))
```

```check
(choice
  (ask "Why do you not say \"Ich habe ein Computer\"?")
  (right "With a der noun, ein changes after haben; part 3 shows how")
  (wrong "Because Computer is feminine"
    "Computer is masculine: der Computer. That is why ein changes after haben, which part 3 shows.")
  (wrong "Because haben never takes ein"
    "haben takes ein with das words: Ich habe ein Auto. Only der words change.")
  (hint "What gender is Computer?"))
```

```cards
(card "haben" "to have" (typed) (note "ich habe, du hast, er hat"))
(card "das Auto, die Autos" "the car" (typed))
(card "die Katze, die Katzen" "the cat" (typed))
(card "die Idee, die Ideen" "the idea" (typed))
(card "das Problem, die Probleme" "the problem" (typed))
(card "das Geschenk, die Geschenke" "the present" (typed) (note "also: the gift. But das Gift means poison!"))
```

So: haben is ich habe, du hast, er hat, wir haben, ihr habt, sie
haben; use it with die and das words for now.
