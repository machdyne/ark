# Introducing people

```lesson
(objective "Introduce yourself in a few sentences and introduce someone else with Das ist.")
(minutes 25)
```

In this lesson you put your phrases together to introduce yourself, and you learn to introduce someone else.

## Introducing yourself

A short introduction can have four lines:

1. Hallo! (or Guten Tag!) Ich heiße Sam.
2. Ich komme aus Irland.
3. Ich wohne in Dublin.
4. Ich spreche Englisch und ein wenig Deutsch.

```check
(text
  (ask "Fill in the missing word: Ich ____ aus Irland. (I come from Ireland.)")
  (accept "komme")
  (accept "Ich komme aus Irland")
  (accents nearly)
  (wrong-if "wohne" "Ich wohne in is for where you live. For where you come from: Ich komme aus.")
  (wrong-if "bin" "Ich bin aus Irland is good German too (I am from Ireland), but the English here says come: Ich komme aus Irland.")
  (hint "Which phrase goes with aus?"))
```

---

## Das ist ...

To introduce someone, say **Das ist ...** (This is ...):

- Das ist Lea. (to a friend)
- Das ist Herr Wolf. (to someone you say Sie to)

The others answer with a greeting, and often Freut mich: Hallo, Lea! or Guten Tag, Herr Wolf. Freut mich.

```check
(choice
  (ask "Your friend says: Das ist Frau Berger. What do you say to her?")
  (right "Guten Tag, Frau Berger. Freut mich.")
  (wrong "Hallo, Berger!"
    "With Sie, use Frau with the family name: Guten Tag, Frau Berger.")
  (wrong "Das ist Frau Berger."
    "Your friend has already introduced her. Now greet her: Guten Tag, Frau Berger. Freut mich.")
  (hint "Greet her, and say you are glad to meet her."))
```

---

## New in the course

**der Kurs** is the course, the class: a German course, for example. When you are new somewhere, say **Ich bin neu.** (I'm new.) People may answer Herzlich willkommen! (Welcome!)

```check
(text
  (ask "Say: I am new.")
  (accept "Ich bin neu")
  (accents nearly)
  (wrong-if "Ich bin new" "new is English. In German: neu, which sounds like noy.")
  (wrong-if "Ich heiße neu" "Ich heiße is for your name. To say you are new: Ich bin neu.")
  (hint "Ich bin, then the word for new."))
```

---

## Your words

```cards
(card "Das ist ..." "This is ..." (note "to introduce someone"))
(card "der Kurs" "the course" (typed) (note "also: the class"))
(card "Ich bin neu." "I'm new.")
```

```check
(text
  (ask "Introduce your friend Max to someone: This is Max.")
  (accept "Das ist Max")
  (accents nearly)
  (wrong-if "Er ist Max" "Er ist Max (he is Max) is German too, but to introduce someone, say Das ist Max.")
  (wrong-if "Ich bin Max" "Ich bin Max says that you are Max. To introduce him: Das ist Max.")
  (hint "Das ist, then the name."))
```

---

## Read: the first day of the course

- **Frau Berger:** Guten Morgen! Herzlich willkommen! Ich bin Petra Berger.
- **Frau Berger:** Das ist Herr Wolf. Er ist auch neu.
- **Herr Wolf:** Guten Morgen! Ich heiße Jan Wolf. Ich komme aus Österreich, aus Graz.
- **Sara:** Hallo! Ich bin Sara. Ich komme aus Kanada, aber ich wohne in Köln.
- **Frau Berger:** Und Sie, Herr Wolf? Wo wohnen Sie?
- **Herr Wolf:** In Köln, wie Sara.

(er = he; aber = but; wie here = like)

```check
(choice
  (ask "Who does Frau Berger say is new?")
  (right "Herr Wolf")
  (wrong "Frau Berger"
    "Frau Berger welcomes everyone. She says: Das ist Herr Wolf. Er ist auch neu.")
  (wrong "Sara"
    "Frau Berger introduces Herr Wolf: Er ist auch neu, he is new too.")
  (hint "Read Frau Berger's second line."))
```

```check
(choice
  (ask "Where do Sara and Herr Wolf live?")
  (right "Both in Köln (Cologne)")
  (wrong "Sara in Canada, Herr Wolf in Graz"
    "Those are where they come from. Sara says: aber ich wohne in Köln. Herr Wolf says: In Köln, wie Sara.")
  (wrong "Both in Graz"
    "Herr Wolf comes from Graz, but he lives in Köln, like Sara.")
  (hint "Look for wohne and wohnen."))
```

---

## Your own introduction

```example
(example
  (problem "Introduce Sam: Sam, from Ireland, lives in Dublin, speaks English.")
  (step "Greeting and name: Hallo! Ich heiße Sam.")
  (step "From: Ich komme aus Irland.")
  (step "Lives: Ich wohne in Dublin.")
  (step "Speaks: Ich spreche Englisch.")
  (answer "Hallo! Ich heiße Sam. Ich komme aus Irland. Ich wohne in Dublin. Ich spreche Englisch."))
```

```example
(example
  (problem "Introduce Mia: Mia, from Australia, lives in Wien, speaks English and German.")
  (step "Hallo! Ich heiße Mia.")
  (step "Ich komme aus Australien.")
  (step (choice (ask "How does Mia say where she lives?")
    (right "Ich wohne in Wien.")
    (wrong "Ich komme aus Wien."
      "Mia comes from Australia. Where she lives goes with Ich wohne in.")))
  (step "Ich spreche Englisch und Deutsch.")
  (answer "Hallo! Ich heiße Mia. Ich komme aus Australien. Ich wohne in Wien. Ich spreche Englisch und Deutsch."))
```

---

## Practice

```check
(choice
  (ask "A woman in your course asks: Woher kommen Sie? What does she want to know?")
  (right "Where you come from")
  (wrong "Where you live"
    "That would be Wo wohnen Sie? woher asks where from.")
  (wrong "Your name"
    "That would be Wie heißen Sie? woher asks where from.")
  (hint "woher means where from."))
```

---

```check
(text
  (ask "Answer Frau Berger: Wie heißen Sie? (Your name is Sam.)")
  (accept "Ich heiße Sam")
  (accept "Ich heisse Sam")
  (accept "Ich bin Sam")
  (accept "Mein Name ist Sam")
  (accept "Sam")
  (accents nearly)
  (wrong-if "Du heißt Sam" "du heißt is you are called. About yourself: Ich heiße Sam.")
  (hint "Ich heiße ..."))
```

---

```check
(choice
  (ask "You introduce your colleague Herr Klein to Frau Berger. What do you say?")
  (right "Frau Berger, das ist Herr Klein.")
  (wrong "Frau Berger, ich bin Herr Klein."
    "Ich bin says who you are. To introduce someone else: das ist Herr Klein.")
  (wrong "Frau Berger, wie heißen Sie?"
    "That asks her name. To introduce Herr Klein, say: das ist Herr Klein.")
  (hint "Das ist ..."))
```

So: introduce yourself with your name, where you come from, where you live and what you speak, and introduce others with Das ist ...
