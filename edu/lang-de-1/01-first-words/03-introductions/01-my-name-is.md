# My name is ...

```lesson
(objective "Say your name and ask someone's, with du and with Sie.")
(minutes 20)
```

In this lesson you learn to say your name and to ask other people theirs.

## Saying your name

There are three common ways:

- **Ich heiße Anna.** I'm called Anna. (heiße: ei, then the sharp ß)
- **Ich bin Anna.** I'm Anna.
- **Mein Name ist Anna Berger.** My name is Anna Berger. (a little more formal)

Learn them as whole phrases. Part 2 of the course explains how words like heiße change.

```check
(text
  (ask "Say that your name is Anna, with Ich heiße.")
  (accept "Ich heiße Anna")
  (accept "Ich heisse Anna")
  (accents nearly)
  (wrong-if "Ich heiße ist Anna" "heiße already means am called. Say Ich heiße Anna, with no ist.")
  (wrong-if "Ich heise Anna" "After ei, the sharp s is written ß (or ss): heiße.")
  (hint "Ich heiße, then the name."))
```

---

## Asking someone's name

| | du | Sie |
|---|---|---|
| What is your name? | Wie heißt du? | Wie heißen Sie? |

You can also ask politely: **Wie ist Ihr Name?** (What is your name?)

German asks with **wie** (how), not with was (what). Was ist Ihr Name? is a word-for-word copy of the English: people will understand it, but it is not the usual question.

```check
(choice
  (ask "You meet an older man at a party. How do you ask his name?")
  (right "Wie heißen Sie?")
  (wrong "Wie heißt du?"
    "That is for someone you say du to. With an adult you do not know, use Sie: Wie heißen Sie?")
  (wrong "Was ist Ihr Name?"
    "People would understand, but German usually asks for a name with wie, not was. Say Wie heißen Sie? or Wie ist Ihr Name?")
  (hint "He is an adult you do not know, and German asks with wie."))
```

---

## And you? Nice to meet you!

After you say your name, ask back with **Und du?** or **Und Sie?** (And you?)

When you meet someone, say **Freut mich.** (Nice to meet you.) If they say it first, you can answer **Freut mich auch.** (auch = too)

```check
(choice
  (ask "Lea says: Ich bin Lea. Freut mich! What can you answer?")
  (right "Ich heiße Tom. Freut mich auch!")
  (wrong "Ich heiße Tom. Wie geht's?"
    "Wie geht's? asks how someone is. Lea said she is glad to meet you, so answer Freut mich auch!")
  (wrong "Freut mich. Tschüss!"
    "Tschüss is goodbye. You have only just met: say your name and Freut mich auch!")
  (hint "auch means too."))
```

```sources
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste: heißen, der Name")
(source "Duden, entry freuen: freut mich")
```

---

## Your words

```cards
(card "Ich heiße ..." "My name is ..., I'm called ...")
(card "Wie heißt du?" "What's your name?" (note "with du"))
(card "Wie heißen Sie?" "What's your name?" (note "with Sie"))
(card "Mein Name ist ..." "My name is ...")
(card "Wie ist Ihr Name?" "What is your name?" (note "with Sie"))
(card "Ich bin ..." "I am ...")
(card "Freut mich." "Nice to meet you.")
(card "Und du? / Und Sie?" "And you?" (note "du or Sie"))
```

```check
(text
  (ask "Ask a new classmate (your age) her name, with du.")
  (accept "Wie heißt du")
  (accept "Wie heisst du")
  (accept "Wie ist dein Name")
  (accents nearly)
  (wrong-if "Wie heißen Sie" "That is the Sie form. With a classmate your age, ask Wie heißt du?")
  (wrong-if "Was ist dein Name" "German asks for a name with wie: Wie heißt du?")
  (hint "Wie heißt ... ?")
  (hint "Wie heißt du?"))
```

---

## Read: meeting people

(At a party)

- **Tom:** Hallo! Ich heiße Tom. Und du?
- **Lea:** Ich bin Lea. Freut mich!
- **Tom:** Freut mich auch!

(At work)

- **Frau Berger:** Guten Tag! Mein Name ist Petra Berger.
- **Herr Wolf:** Guten Tag, Frau Berger. Ich heiße Jan Wolf. Freut mich.

```check
(choice
  (ask "What is Tom's friend called?")
  (right "Lea")
  (wrong "Petra"
    "Petra Berger is at work, with Herr Wolf. At the party, Tom meets Lea: Ich bin Lea.")
  (wrong "We do not know"
    "She says it: Ich bin Lea.")
  (hint "Read the second line."))
```

```check
(choice
  (ask "Do Frau Berger and Herr Wolf say du or Sie?")
  (right "Sie: they use Guten Tag, full names and Frau")
  (wrong "du: they say their first names"
    "They give their first names, but Herr Wolf answers Guten Tag, Frau Berger. Frau with the family name goes with Sie.")
  (hint "How does Herr Wolf greet her?"))
```

---

## A short meeting

```example
(example
  (problem "At a party, a girl says: Hallo! Wie heißt du? Answer with your name (say Max) and ask back.")
  (step "Your name: Ich heiße Max. (Or: Ich bin Max.)")
  (step "She says du, so ask back with du: Und du?")
  (answer "Ich heiße Max. Und du?"))
```

```example
(example
  (problem "A woman at an office says: Guten Tag! Wie ist Ihr Name? Answer (say Sara Lee) and say you are glad to meet her.")
  (step "Your name: Mein Name ist Sara Lee.")
  (step (choice (ask "What do you add to say nice to meet you?")
    (right "Freut mich.")
    (wrong "Mir geht es gut."
      "Mir geht es gut means I am fine: the answer to Wie geht es Ihnen? For nice to meet you, say Freut mich.")))
  (answer "Mein Name ist Sara Lee. Freut mich."))
```

---

## Practice

```check
(text
  (ask "Type the German for Nice to meet you.")
  (accept "Freut mich")
  (accents nearly)
  (wrong-if "Freue mich" "Close. The phrase is Freut mich.")
  (wrong-if "Mir geht es gut" "That is I am fine. Nice to meet you is Freut mich.")
  (hint "Two words: Freut, then mich."))
```

---

```check
(text
  (ask "Ask Herr Wolf his name, with Sie.")
  (accept "Wie heißen Sie")
  (accept "Wie heissen Sie")
  (accept "Wie ist Ihr Name")
  (accents nearly)
  (wrong-if "Wie heißt du" "That is the du form. With Herr Wolf, use Sie: Wie heißen Sie?")
  (wrong-if "Was ist Ihr Name" "German asks for a name with wie: Wie heißen Sie? or Wie ist Ihr Name?")
  (hint "Wie heißen ... ?"))
```

---

```check
(choice
  (ask "Which sentence does NOT say your name is Tom?")
  (right "Ich heiße ist Tom.")
  (wrong "Ich bin Tom."
    "Ich bin Tom is right: I am Tom.")
  (wrong "Mein Name ist Tom."
    "Mein Name ist Tom is right: my name is Tom.")
  (wrong "Ich heiße Tom."
    "Ich heiße Tom is right: I am called Tom.")
  (hint "One of them has two words that both do the job of is."))
```

So: say Ich heiße ..., Ich bin ... or Mein Name ist ...; ask Wie heißt du? or Wie heißen Sie?; and say Freut mich.
