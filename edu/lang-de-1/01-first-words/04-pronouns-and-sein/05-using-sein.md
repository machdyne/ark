# Using sein

```lesson
(objective "Ask and answer with sein: Was ist das?, Wo ist ...?, Ich bin aus ..., and tell she from they by the form of sein.")
(minutes 25)
```

In this lesson you use sein to ask what something is and where someone is, and to tell sie (she) from sie (they).

## Was ist das?

**Was ist das?** means What is that? or What is this? Answer with Das ist ...:

- Was ist das? Das ist das Hotel.
- Was ist das? Das ist Köln.

```check
(text
  (ask "Ask: What is that?")
  (accept "Was ist das")
  (accents nearly)
  (wrong-if "Wo ist das" "wo asks where. For what, ask was: Was ist das?")
  (wrong-if "Wie ist das" "wie asks how. For what, ask was: Was ist das?")
  (hint "what = was; is = ist; that = das."))
```

---

## Wo ist ...?

**Wo ist ...?** means Where is ...? Answer with a place, or with da:

- Wo ist Lea? Sie ist in Wien.
- Wo ist das Taxi? Da!

For more than one, use sind: Wo sind Tom und Sara?

```check
(text
  (ask "Ask: Where is Tom?")
  (accept "Wo ist Tom")
  (accents nearly)
  (wrong-if "Woher ist Tom" "woher asks where from. For where someone is now: Wo ist Tom?")
  (wrong-if "Was ist Tom" "was asks what. For where: Wo ist Tom?")
  (hint "Wo ist, then the name."))
```

---

## Ich bin aus ...

**Ich bin aus ...** means the same as Ich komme aus ...: I am from ... You can use either. The others follow sein:

- Er ist aus Graz.
- Wir sind aus Kanada.
- Woher sind Sie? (Where are you from?)

```check
(choice
  (ask "Which sentence means the same as Ich komme aus Irland?")
  (right "Ich bin aus Irland.")
  (wrong "Ich wohne in Irland."
    "Ich wohne in says where you live, which can be a different place. Ich bin aus Irland means I am from Ireland.")
  (wrong "Ich bin Irland."
    "Without aus, this says you are Ireland. Say Ich bin aus Irland.")
  (hint "Keep the aus."))
```

---

## She or they?

sie can be she or they. The form of sein tells you which:

| German | English |
|---|---|
| sie ist | she is |
| sie sind | they are |
| Sie sind | you are (formal) |

At the start of a sentence, Sie sind can be they or the formal you. Then ask who is being talked about, or to.

```check
(choice
  (ask "Sie ist aus Wien. Who is from Vienna?")
  (right "She is")
  (wrong "They are"
    "With they, sein is sind: sie sind. Here it is ist, so it is one person: she.")
  (wrong "You (formal) are"
    "With the formal you, sein is sind: Sie sind. Here it is ist: she.")
  (hint "Look at the form of sein: ist or sind?"))
```

```sources
(source "Duden, Die Grammatik: the forms of sein, and the pronoun sie (she, they) and Sie")
```

---

## Your words

**toll** means great: Das ist toll!

```cards
(card "Was ist das?" "What is that?")
(card "Wo ist ...?" "Where is ...?")
(card "Ich bin aus ..." "I am from ...")
(card "toll" "great" (typed))
```

```check
(text
  (ask "Say: That is great!")
  (accept "Das ist toll")
  (accept "Das ist super")
  (accents nearly)
  (wrong-if "Das ist groß" "groß means big. great, as in wonderful, is toll: Das ist toll!")
  (wrong-if "Das ist gut" "gut is good. For great: Das ist toll!")
  (hint "Das ist, then the word for great."))
```

---

## Read: where is everyone?

- **Frau Berger:** Wo sind Tom und Sara?
- **Herr Wolf:** Sie sind in Köln. Sie sind zusammen da.
- **Frau Berger:** Ach so. Und wo ist Lea?
- **Herr Wolf:** Sie ist in Hamburg. Es ist kalt da!
- **Frau Berger:** Und Sie, Herr Wolf? Woher sind Sie?
- **Herr Wolf:** Ich bin aus Graz. Graz ist toll!

```check
(choice
  (ask "In Herr Wolf's first line, who does Sie mean?")
  (right "Tom and Sara: they are in Cologne")
  (wrong "Frau Berger: you are in Cologne"
    "Frau Berger asked about Tom und Sara. Herr Wolf answers about them: they.")
  (wrong "Lea: she is in Cologne"
    "The form is sind, so it is more than one person: Tom and Sara.")
  (hint "What did Frau Berger ask about, and is it ist or sind?"))
```

```check
(choice
  (ask "Where is Lea?")
  (right "In Hamburg, where it is cold")
  (wrong "In Cologne with Tom and Sara"
    "Tom and Sara are in Köln. Herr Wolf says: Sie ist in Hamburg.")
  (wrong "In Graz"
    "Graz is where Herr Wolf is from. Lea is in Hamburg.")
  (hint "Read Herr Wolf's second line."))
```

---

## Reading sie and Sie

```example
(example
  (problem "What does Sie mean in: Lea und Ben? Sie sind aus Wien.")
  (step "The form of sein is sind: more than one, or the formal you.")
  (step "The sentence before names two people, Lea und Ben.")
  (answer "they: Lea and Ben are from Vienna."))
```

```example
(example
  (problem "What does sie mean in: Das ist Sara. Sie ist neu.")
  (step (choice (ask "Which form of sein is it?")
    (right "ist: one person")
    (wrong "sind: more than one"
      "Look again: the sentence says ist, which is for one person.")))
  (step "The person just named is Sara.")
  (answer "she: Sara is new."))
```

---

## Practice

```check
(text
  (ask "Ask Frau Berger where she is from, with sein.")
  (accept "Woher sind Sie")
  (accents nearly)
  (wrong-if "Woher bist du" "That is the du form. With Frau Berger: Woher sind Sie?")
  (wrong-if "Wo sind Sie" "wo asks where she is now. For where from: Woher sind Sie?")
  (hint "Woher, then the Sie form of sein."))
```

---

```check
(text
  (ask "Fill in: Wo ___ Tom und Sara?")
  (accept "sind")
  (accept "Wo sind Tom und Sara")
  (accents nearly)
  (wrong-if "ist" "Tom und Sara are two people: they. With they, sein is sind.")
  (hint "Two people: sie sind."))
```

---

```check
(choice
  (ask "Which sentence says They are from Graz?")
  (right "Sie sind aus Graz.")
  (wrong "Sie ist aus Graz."
    "ist is for one person: she is. For they, sein is sind.")
  (wrong "Ihr seid aus Graz."
    "ihr seid speaks to two or more people: you are. For they: sie sind.")
  (hint "they are = sie sind."))
```

So: ask Was ist das? and Wo ist ...?, say Ich bin aus ..., and look at ist or sind to tell she from they.
