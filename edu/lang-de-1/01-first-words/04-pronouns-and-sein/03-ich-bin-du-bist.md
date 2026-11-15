# ich bin, du bist

```lesson
(objective "Say ich bin, du bist and er, sie, es ist, and say \"I am cold\" the German way.")
(minutes 20)
```

In this lesson you learn to say I am, you are, and he, she or it is.

## sein: to be

**sein** means to be. Its forms change with the pronoun, as in English (I am, you are, he is). The first three:

| German | English |
|---|---|
| ich bin | I am |
| du bist | you are (informal) |
| er, sie, es ist | he, she, it is |

You know Ich bin ... from introductions: Ich bin Anna.

```check
(text
  (ask "Fill in: Ich ___ Tom.")
  (accept "bin")
  (accept "Ich bin Tom")
  (accents nearly)
  (wrong-if "ist" "ist goes with er, sie and es. With ich, the form is bin.")
  (wrong-if "bist" "bist goes with du. With ich: bin.")
  (hint "I am = ich ..."))
```

---

## du bist

With du, the form is **bist**: Du bist neu. (You are new.) Du bist aus Kanada.

```check
(text
  (ask "Fill in: Du ___ jung. (You are young.)")
  (accept "bist")
  (accept "Du bist jung")
  (accents nearly)
  (wrong-if "bin" "bin goes with ich. With du: bist.")
  (wrong-if "ist" "ist goes with er, sie and es. With du: bist.")
  (hint "du bi..."))
```

---

## er, sie, es ist

With er, sie or es, and with a name or a thing, the form is **ist**:

- Lea ist aus Wien. Sie ist neu.
- Das Hotel ist alt. Es ist schön.

```check
(text
  (ask "Fill in: Herr Wolf ___ aus Graz.")
  (accept "ist")
  (accept "Herr Wolf ist aus Graz")
  (accents nearly)
  (wrong-if "bin" "bin is for ich. Herr Wolf is he: ist.")
  (wrong-if "bist" "bist is for du. Herr Wolf is he: ist.")
  (hint "Herr Wolf = er."))
```

---

## Mir ist kalt

**kalt** means cold and **warm** means warm. But to say "I am cold", German does not say Ich bin kalt. It says **Mir ist kalt.** (literally: to me it is cold). In the same way: Mir ist warm. (I am warm.)

Ich bin kalt describes you as a cold person, or your body as cold to touch. For the weather, say Es ist kalt. (It is cold.)

```check
(text
  (ask "You are cold. Say so.")
  (accept "Mir ist kalt")
  (accents nearly)
  (wrong-if "Ich bin kalt" "This is the classic mistake. Ich bin kalt sounds like you are a cold person. Say Mir ist kalt.")
  (wrong-if "Es ist kalt" "Es ist kalt says the weather is cold. To say you feel cold: Mir ist kalt.")
  (hint "It starts with Mir.")
  (hint "Mir ist ..."))
```

```sources
(source "Duden, Die Grammatik: the forms of sein")
(source "Duden, entry kalt: mir ist kalt")
```

---

## Your words

```cards
(card "sein" "to be")
(card "ich bin" "I am" (typed))
(card "du bist" "you are (informal)" (note "one person"))
(card "er/sie/es ist" "he/she/it is")
(card "kalt" "cold" (typed))
(card "warm" "warm" (typed))
(card "Mir ist kalt." "I'm cold.")
```

```check
(text
  (ask "Type the German for cold.")
  (accept "kalt")
  (accents nearly)
  (wrong-if "cold" "That is English. The German word starts with k: kalt.")
  (wrong-if "warm" "warm is warm. cold is kalt.")
  (hint "It sounds a little like the English word, with k and a."))
```

---

## Read: a cold day in Hamburg

- **Tom:** Hallo, Lea! Wie geht's?
- **Lea:** Es geht. Mir ist kalt!
- **Tom:** Ja, es ist sehr kalt in Hamburg.
- **Lea:** Und dir?
- **Tom:** Mir ist warm. Ich bin aus Kanada!

```check
(choice
  (ask "Why does Lea say Es geht?")
  (right "She is cold")
  (wrong "She is ill"
    "Lea gives the reason: Mir ist kalt! She feels cold.")
  (wrong "She is from Hamburg"
    "Lea says: Mir ist kalt. That is why she is only so-so.")
  (hint "Read the rest of Lea's line."))
```

```check
(choice
  (ask "What does Tom mean by Ich bin aus Kanada!?")
  (right "He is used to cold weather")
  (wrong "He wants to go home"
    "He has just said Mir ist warm. Canada can be very cold, so Hamburg feels warm to him.")
  (wrong "He is a cold person"
    "That would be Ich bin kalt. Tom says Mir ist warm: he feels warm.")
  (hint "Tom says he is warm. Why might that be?"))
```

---

## Choosing the form

```example
(example
  (problem "Say: You are from Vienna. (to a friend)")
  (step "A friend: du.")
  (step "With du, the form of sein is bist.")
  (answer "Du bist aus Wien."))
```

```example
(example
  (problem "Say: Sara is new.")
  (step "Sara is she: sie.")
  (step (choice (ask "Which form goes with sie (she)?")
    (right "ist")
    (wrong "bist"
      "bist goes with du. For she, he or it: ist.")))
  (answer "Sara ist neu."))
```

---

## Practice

```check
(choice
  (ask "Which sentence is right?")
  (right "Ich bin jung.")
  (wrong "Ich ist jung."
    "ist goes with er, sie and es. With ich: bin.")
  (wrong "Ich bist jung."
    "bist goes with du. With ich: bin.")
  (hint "I am = ich bin."))
```

---

```check
(text
  (ask "Fill in: Das Taxi ___ neu.")
  (accept "ist")
  (accept "Das Taxi ist neu")
  (accents nearly)
  (wrong-if "bist" "bist goes with du. The taxi is it: ist.")
  (hint "Das Taxi = es."))
```

---

```check
(text
  (ask "You come in from the snow and feel warm inside. Say: I am warm.")
  (accept "Mir ist warm")
  (accents nearly)
  (wrong-if "Ich bin warm" "Like Ich bin kalt, this describes you, not how you feel. Say Mir ist warm.")
  (hint "Just like Mir ist kalt."))
```

So: ich bin, du bist, er, sie, es ist; and to say you feel cold or warm, say Mir ist kalt or Mir ist warm.
