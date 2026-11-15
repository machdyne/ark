# du and Sie

```lesson
(objective "Choose du or Sie for the person you speak to, and greet people by name with Herr and Frau.")
(minutes 20)
(keywords "informal" "formal")
```

In this lesson you learn that German has two words for "you", and when to use each.

## Two words for you

**du** is the **informal** "you": relaxed and friendly, for people you are close to. Say du to family, to friends, to children, and to other young people your age.

**Sie** is the **formal** "you": polite, with some distance. Say Sie to adults you do not know, to people in shops and offices, and to adults you meet at work or school, unless they offer du.

Sie is always written with a capital S, even in the middle of a sentence.

```check
(choice
  (ask "You talk to a 6-year-old child. Which you do you use?")
  (right "du")
  (wrong "Sie"
    "Sie is for adults you do not know well. Children are always du.")
  (hint "Is a child someone you need to keep a polite distance from?"))
```

---

## Herr and Frau

With Sie, people use the family name with **Herr** (Mr.) or **Frau** (Ms. or Mrs.): Guten Tag, Herr Wolf! Guten Abend, Frau Berger!

With du, they use the first name: Hallo, Lea!

Herr and Frau go with the family name, never with the first name.

```check
(choice
  (ask "Your new neighbor is Mr. Peter Klein. You do not know him yet. How do you greet him?")
  (right "Guten Tag, Herr Klein!")
  (wrong "Hallo, Peter!"
    "With an adult you do not know, start with Sie: the polite greeting, Herr and his family name.")
  (wrong "Guten Tag, Herr Peter!"
    "Herr goes with the family name, Klein, not with the first name.")
  (hint "Use Herr with his family name."))
```

```sources
(source "Duden, Die Grammatik: the forms of address du and Sie")
(source "Rat für deutsche Rechtschreibung, Deutsche Rechtschreibung: Regeln und Wörterverzeichnis: the rules for capital letters (Sie as a form of address is written with a capital)")
```

---

## Moving to du

Often the older person, or the one in charge, offers du. Then both say du from that day on.

At work, many colleagues say du to each other: a **Kollege** is a man you work with, a **Kollegin** a woman. In other places, colleagues say Sie. Listen to what people around you do.

If you are not sure, start with Sie. People know you are learning: a mistake with du and Sie is forgiven.

```check
(choice
  (ask "You start a new job. You are not sure whether to say du or Sie to a colleague. What do you do?")
  (right "Start with Sie, and change if the colleague offers du")
  (wrong "Say du: it is friendlier"
    "du can sound too familiar to someone who expects Sie. Start with Sie and let the other person offer du.")
  (wrong "Say nothing until you know"
    "You do not need to wait. Sie is always polite, and the other person can offer du.")
  (hint "Which choice is never rude?"))
```

---

## Capital Sie

In writing, the capital S shows that Sie means "you". Small sie is a different word: you will learn it in unit 4.

```check
(choice
  (ask "You write to Frau Berger. Which word for you is right, in the middle of a sentence?")
  (right "Sie, with a capital S")
  (wrong "sie, with a small s"
    "With a small s, sie is a different word. The polite you is always Sie, with a capital S.")
  (wrong "du"
    "You call her Frau Berger, so you use the formal you: Sie.")
  (hint "The polite you always has a capital letter."))
```

---

## Your words

```cards
(card "du" "you (informal)" (note "to family, friends, children, young people"))
(card "Sie" "you (formal)" (note "always with a capital S"))
(card "Herr ..." "Mr. ..." (note "with the family name: Herr Wolf"))
(card "Frau ..." "Ms. ..., Mrs. ..." (note "with the family name: Frau Berger"))
(card "der Kollege" "the colleague" (typed) (note "a man"))
(card "die Kollegin" "the colleague" (typed) (note "a woman"))
```

```check
(text
  (ask "Type the informal German word for you.")
  (accept "du")
  (accents nearly)
  (wrong-if "Sie" "Sie is the formal you. The informal one is du.")
  (wrong-if "you" "That is English. The informal German you has two letters.")
  (hint "Two letters: d and u."))
```

---

## Read: at work and in the street

(At work)

- **Herr Wolf:** Guten Morgen, Frau Berger!
- **Frau Berger:** Guten Morgen, Herr Wolf!

(In the street: Lea is back from a trip.)

- **Lea:** Hallo, Tom!
- **Tom:** Hallo, Lea! Der Urlaub ist vorbei?
- **Lea:** Ja, leider.

(vorbei = over; leider = unfortunately)

```check
(choice
  (ask "Do Herr Wolf and Frau Berger most likely say du or Sie to each other?")
  (right "Sie: they use Herr and Frau with the family name")
  (wrong "du: they are colleagues"
    "Some colleagues say du, but these two greet each other with Herr and Frau and the family name. That goes with Sie.")
  (hint "Look at how they greet each other."))
```

```check
(choice
  (ask "What does Tom ask Lea?")
  (right "Whether her holiday is over")
  (wrong "Where her holiday is"
    "Tom says: Der Urlaub ist vorbei? vorbei means over. Lea answers: Ja, leider, yes, unfortunately.")
  (hint "vorbei means over."))
```

---

## Du or Sie?

```example
(example
  (problem "You ask a woman in the street, whom you do not know, for the way. Du or Sie?")
  (step "She is an adult.")
  (step "You do not know her.")
  (answer "Sie: an adult you do not know."))
```

```example
(example
  (problem "Your friend Max brings his 10-year-old sister to the park. Du or Sie with her?")
  (step "She is a child.")
  (step (choice (ask "So which is it?")
    (right "du")
    (wrong "Sie, because you have just met"
      "With adults you have just met, Sie is right. Children are du.")))
  (answer "du: children are always du."))
```

---

## Practice

```check
(choice
  (ask "Your friend's father, whom you have met only once, opens the door. What do you say?")
  (right "Guten Tag, Herr Schulz!")
  (wrong "Hallo, du!"
    "He is an adult you hardly know. Start with Sie and greet him with Herr and his family name.")
  (wrong "Tschüss, Herr Schulz!"
    "Tschüss is a goodbye. He has just opened the door: greet him.")
  (hint "You are arriving, and he is an adult you hardly know."))
```

---

```check
(text
  (ask "Type the German for the colleague, a woman, with der, die or das.")
  (accept "die Kollegin")
  (accents nearly)
  (wrong-if "der Kollege" "der Kollege is a man. A woman is die Kollegin.")
  (wrong-if "Kollegin" "Right word. Add the der, die or das that goes with it: die Kollegin.")
  (hint "Like Schülerin, the word for a woman ends in -in."))
```

So: say du to family, friends and children, Sie to adults you do not know, and use Herr and Frau with the family name.
