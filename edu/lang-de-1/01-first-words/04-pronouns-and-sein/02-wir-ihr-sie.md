# wir, ihr, sie

```lesson
(objective "Use wir, ihr, sie (they) and Sie, and tell sie (she), sie (they) and Sie (you) apart.")
(minutes 20)
```

In this lesson you learn the personal pronouns for more than one person: we, you and they.

## wir

**wir** means we: you and one or more others.

- Lea und ich: wir.

```check
(text
  (ask "Lea and you are talking about yourselves. Which pronoun do you use for Lea und ich?")
  (accept "wir")
  (accents nearly)
  (wrong-if "sie" "sie (they) is for other people, not you. Lea and you together: wir.")
  (wrong-if "ihr" "ihr is you, said to two or more people. Lea and you together: wir.")
  (hint "Lea and I = we."))
```

---

## ihr

**ihr** is you, said to two or more people you would each say du to: friends, family, children.

- Tom und Sara, ihr ...

English uses "you" for one person and for many. German has three: du (one person, informal), ihr (more than one, informal) and Sie (formal, one or more).

```check
(choice
  (ask "You talk to your two friends Tom and Sara together. Which word for you?")
  (right "ihr")
  (wrong "du"
    "du is for one person. For two or more friends at once, use ihr.")
  (wrong "Sie"
    "Sie is the formal you. Tom and Sara are your friends, so it is ihr.")
  (hint "Friends, and more than one."))
```

---

## sie and Sie

**sie** with a small s can mean **they**: Tom und Sara: sie.

So German has three words that look the same:

| Written | Means |
|---|---|
| sie | she |
| sie | they |
| Sie | you (formal) |

The capital S marks Sie, you. But the first word of a sentence always has a capital, so Sie there can be any of the three. Then the rest of the sentence tells you which: you will see how in lesson 5.

```check
(choice
  (ask "In the middle of a sentence you read sie, with a small s. What can it mean?")
  (right "She or they")
  (wrong "You (formal)"
    "The formal you is always written with a capital S. Small sie is she or they.")
  (wrong "Only she"
    "sie can also mean they. The rest of the sentence tells you which.")
  (hint "The formal you always has a capital S."))
```

```sources
(source "Duden, Die Grammatik: the personal pronouns, and the forms of address du, ihr and Sie")
(source "Rat für deutsche Rechtschreibung, Deutsche Rechtschreibung: Regeln und Wörterverzeichnis: the rules for capital letters (Sie as a form of address is written with a capital)")
```

---

## alle

**alle** means all, everyone: Wir sind alle neu. (We are all new.)

The whole set of personal pronouns:

| | one | more than one |
|---|---|---|
| I, we | ich | wir |
| you (informal) | du | ihr |
| he, she, it; they | er, sie, es | sie |
| you (formal) | Sie | Sie |

```cards
(card "wir" "we" (typed))
(card "ihr" "you (two or more, informal)")
(card "sie" "they" (note "small s; sie is also she"))
(card "alle" "all" (typed) (note "also: everyone"))
```

```check
(text
  (ask "Type the German word for we.")
  (accept "wir")
  (accents nearly)
  (wrong-if "wie" "wie means how. we is wir, with r.")
  (wrong-if "ihr" "ihr is you, to two or more. we is wir.")
  (hint "It sounds like veer."))
```

---

## Read: a new group

Lea tells Ben about her course.

- Das sind Tom und Sara. Sie sind aus Kanada.
- Und das sind Herr Wolf und ich. Wir sind aus Österreich und Deutschland.
- Wir sind alle neu!

(sind = are)

```check
(choice
  (ask "In the first line, who does Sie mean?")
  (right "Tom and Sara: they")
  (wrong "Ben: you (formal)"
    "Sie is at the start of a sentence, so it has a capital anyway. It stands in for Tom und Sara, just named: they.")
  (wrong "Sara: she"
    "Sie stands in for two people, Tom und Sara. So here it means they.")
  (hint "Who was just named before it?"))
```

```check
(choice
  (ask "Who is new?")
  (right "All of them")
  (wrong "Only Tom and Sara"
    "Lea says: Wir sind alle neu! alle means all.")
  (wrong "Only Herr Wolf"
    "Lea says: Wir sind alle neu, we are all new.")
  (hint "alle means all."))
```

---

## Choosing the pronoun

```example
(example
  (problem "You talk about Tom and Sara. Which pronoun stands in for them?")
  (step "You are talking about them, not to them.")
  (step "Two people, not you: they.")
  (answer "sie (they)"))
```

```example
(example
  (problem "You talk to Tom and Sara, your friends. Which word for you?")
  (step "You are talking to them.")
  (step (choice (ask "More than one friend: which you?")
    (right "ihr")
    (wrong "sie"
      "sie is they, for people you talk about. To two friends you talk to, say ihr.")))
  (answer "ihr"))
```

---

## Practice

```check
(choice
  (ask "You talk to Herr Wolf and Frau Berger together. Which word for you?")
  (right "Sie")
  (wrong "ihr"
    "ihr is for two or more people you each say du to. You say Sie to Herr Wolf and Frau Berger: Sie, for one or more.")
  (wrong "du"
    "du is for one person you know well. For these two, use Sie.")
  (hint "Sie is for one person or more."))
```

---

```check
(text
  (ask "Type the informal German you for two or more friends.")
  (accept "ihr")
  (accents nearly)
  (wrong-if "du" "du is for one person. For two or more: ihr.")
  (wrong-if "Sie" "Sie is formal. For friends: ihr.")
  (hint "Three letters: i, h, r."))
```

---

```check
(choice
  (ask "Which pronoun stands in for Lea und Tom when you talk about them?")
  (right "sie")
  (wrong "wir"
    "wir is we: it includes you. Lea und Tom without you: sie, they.")
  (wrong "ihr"
    "ihr is for talking to them. When you talk about them: sie.")
  (hint "they"))
```

So: wir is we, ihr is you to two or more friends, sie is she or they, and Sie with a capital is the formal you.
