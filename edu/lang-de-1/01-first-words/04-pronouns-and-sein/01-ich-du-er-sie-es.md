# ich, du, er, sie, es

```lesson
(objective "Use ich, du, er, sie and es for one person or thing.")
(minutes 20)
(keywords "pronoun" "personal pronoun")
```

In this lesson you learn the German words for he, she and it.

## Pronouns

A **pronoun** is a short word that stands in for a name or a thing, so you do not have to say it again. In English, I, you, he, she and it are pronouns. The pronouns for people and things, like I, you, he, she, it, we and they, are the **personal pronouns**.

You already know three German personal pronouns: ich (I), du (you, informal) and Sie (you, formal).

```check
(choice
  (ask "In Tom is new. He is from Canada., which word is a pronoun?")
  (right "He")
  (wrong "Tom"
    "Tom is a name. The pronoun is the short word that stands in for it the second time: he.")
  (wrong "Canada"
    "Canada is the name of a country. The pronoun stands in for Tom: he.")
  (hint "Which word stands in for Tom?"))
```

---

## er and sie

**er** means he, and **sie** means she:

- Das ist Tom. **Er** ist neu.
- Das ist Lea. **Sie** ist aus Wien.

(ist means is: the next lessons are all about it.)

```check
(text
  (ask "Fill in: Das ist Tom. ___ ist neu. (he)")
  (accept "Er")
  (accept "Er ist neu")
  (accents nearly)
  (wrong-if "Sie" "sie is she. For Tom, he: Er ist neu.")
  (wrong-if "Es" "es is it. For a man or a boy, he: er.")
  (hint "he is er."))
```

---

## es

**es** means it:

- Das Hotel ist alt. **Es** ist schön.
- Das Taxi ist neu. **Es** ist gut.

For some things, German says er or sie where English says it. Part 2 of the course explains which. In this part, es is it.

```check
(choice
  (ask "Das Hotel ist alt. ___ ist schön. Which word fits?")
  (right "Es")
  (wrong "Er"
    "er is he: for a man or a boy. The hotel is a thing: es.")
  (wrong "Sie"
    "sie is she. The hotel is a thing, so here it is es.")
  (hint "it in German is es."))
```

---

## aber

**aber** means but. It joins two ideas that pull in different directions:

- Das Hotel ist alt, aber es ist schön.
- Ich komme aus Kanada, aber ich wohne in Berlin.

```check
(text
  (ask "Type the German word for but.")
  (accept "aber")
  (accents nearly)
  (wrong-if "oder" "oder means or. but is aber.")
  (wrong-if "und" "und means and. but is aber.")
  (hint "It starts with a, like and, but it is not und."))
```

```sources
(source "Duden, Die Grammatik: the personal pronouns")
```

---

## Your words

| German | English |
|---|---|
| ich | I |
| du | you (informal) |
| Sie | you (formal) |
| er | he |
| sie | she |
| es | it |

```cards
(card "er" "he" (typed))
(card "sie" "she" (note "small s; also they, next lesson"))
(card "es" "it" (typed))
(card "aber" "but" (typed))
```

```check
(text
  (ask "Type the German word for it.")
  (accept "es")
  (accents nearly)
  (wrong-if "er" "er is he. it is es.")
  (wrong-if "ist" "ist is is. The word for it is es.")
  (hint "Two letters: e and s."))
```

---

## Read: photos

Lea shows Ben her photos.

- Das ist Tom. Er ist aus Kanada.
- Das ist Sara. Sie ist auch aus Kanada.
- Und das ist das Hotel in Wien. Es ist alt, aber sehr schön.

```check
(choice
  (ask "In the last line, what does Es stand for?")
  (right "The hotel in Vienna")
  (wrong "Sara"
    "For Sara, Lea says sie. Es stands for the hotel: Es ist alt, aber sehr schön.")
  (wrong "Vienna"
    "The line is about das Hotel in Wien. Es stands in for the hotel.")
  (hint "Es stands in for a thing in the same line."))
```

```check
(choice
  (ask "Who is from Canada?")
  (right "Tom and Sara")
  (wrong "Only Tom"
    "Sara is too: Sie ist auch aus Kanada. auch means too.")
  (wrong "Lea"
    "Lea shows the photos. Tom and Sara are from Kanada.")
  (hint "Look for aus Kanada."))
```

---

## Using pronouns

```example
(example
  (problem "Say the second sentence with a pronoun: Das ist Anna. Anna ist neu.")
  (step "Anna is a woman: she.")
  (step "she is sie.")
  (answer "Das ist Anna. Sie ist neu."))
```

```example
(example
  (problem "Say the second sentence with a pronoun: Das ist Ben. Ben ist aus Graz.")
  (step (choice (ask "Which pronoun stands in for Ben?")
    (right "er")
    (wrong "es"
      "es is it, for a thing. For a man or a boy, use er.")))
  (answer "Das ist Ben. Er ist aus Graz."))
```

---

## Practice

```check
(text
  (ask "Type the German word for she.")
  (accept "sie")
  (accents nearly)
  (wrong-if "er" "er is he. she is sie.")
  (wrong-if "es" "es is it. she is sie.")
  (hint "Three letters, the same as the polite you, but written small."))
```

---

```check
(choice
  (ask "Das ist Herr Wolf. ___ ist aus Österreich.")
  (right "Er")
  (wrong "Sie"
    "Herr Wolf is a man: he, er. Sie with a capital is the polite you; sie is she.")
  (wrong "Es"
    "es is it, for things. For Herr Wolf, use er.")
  (hint "Herr is Mr."))
```

---

```check
(text
  (ask "Say: The hotel is old, but beautiful. Start: Das Hotel ist alt, ...")
  (accept "Das Hotel ist alt, aber schön")
  (accept "Das Hotel ist alt aber schön")
  (accept "Das Hotel ist alt, aber schoen")
  (accept "Das Hotel ist alt aber schoen")
  (accept "aber schön")
  (accept "aber schoen")
  (accept "Das Hotel ist alt, aber es ist schön")
  (accept "Das Hotel ist alt aber es ist schön")
  (accents nearly)
  (wrong-if "Das Hotel ist alt, und schön" "und is and. For but, use aber.")
  (hint "but is aber; beautiful is schön."))
```

So: er is he, sie is she, es is it, and with ich, du and Sie they are personal pronouns: words that stand in for people and things.
