# ein, eine

```lesson
(objective "Use ein and eine, and tell the definite from the indefinite article.")
(minutes 25)
(keywords "definite article" "indefinite article")
```

German says "a" or "an" with ein or eine, and which one a noun takes
depends on its gender.

English has two kinds of article. "The" points to one particular
thing: the book on your table. "A" points to any one: a book. German
has both kinds:

- der, die, das are the **definite article** ("the").
- ein, eine are the **indefinite article** ("a", "an").

```check
(choice
  (ask "Which of these is an indefinite article?")
  (right "eine")
  (wrong "die"
    "die means \"the\": it points to one particular thing, so it is a definite article. eine means \"a\".")
  (wrong "das"
    "das means \"the\", a definite article. The indefinite articles mean \"a\" or \"an\": ein, eine.")
  (hint "Which one means \"a\"?"))
```

---

## ein or eine

Masculine and neuter nouns take **ein**. Feminine nouns take **eine**.

| the | a | English |
|---|---|---|
| der Computer | ein Computer | a computer |
| das Telefon | ein Telefon | a phone |
| die Zeitung | eine Zeitung | a newspaper |

So you need the gender to choose: one more reason to learn der, die
or das with every noun.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the article")
```

```check
(text
  (ask "Write \"a newspaper\" in German.")
  (accept "eine Zeitung")
  (wrong-if "ein Zeitung" "Zeitung is feminine (die Zeitung), and feminine nouns take eine: eine Zeitung.")
  (wrong-if "die Zeitung" "die Zeitung is \"the newspaper\". For \"a\", feminine nouns take eine.")
  (hint "die Zeitung is feminine.")
  (hint "Feminine nouns take eine."))
```

---

## Das ist ...

To say what something is, use Das ist with ein or eine:

- Das ist ein Kuli. (That is a pen.)
- Das ist ein Heft. (That is an exercise book.)
- Das ist eine Brille. (Those are glasses.)

Look at the last one. English says "glasses", more than one, but
German says eine Brille, one thing: a pair of glasses.

```check
(text
  (ask "Write \"That is an exercise book.\" in German.")
  (accept "Das ist ein Heft.")
  (wrong-if "Das ist eine Heft." "Heft is neuter (das Heft), and neuter nouns take ein, not eine.")
  (wrong-if "Das ist das Heft." "That says \"That is the exercise book.\" For \"an\", use ein.")
  (hint "Das ist ... then ein or eine, then the noun.")
  (hint "Heft is neuter: das Heft."))
```

---

## Worked example

```example
(example
  (problem "Say \"That is a girl.\" in German.")
  (step "The noun: das Mädchen. It is neuter.")
  (step "Neuter nouns take ein.")
  (answer "Das ist ein Mädchen."))
```

```example
(example
  (problem "Say \"That is a lamp.\" in German.")
  (step "The noun: die Lampe. It is feminine.")
  (step (choice (ask "So which article?")
          (right "eine")
          (wrong "ein" "ein is for masculine and neuter nouns. Lampe is feminine, so it takes eine.")))
  (answer "Das ist eine Lampe."))
```

---

## Read

Paul shows his room in a video call.

> Hallo! Hier wohne ich. Das ist der Tisch. Hier ist ein Computer, und
> hier ist ein Telefon. Das ist eine Zeitung, und das ist ein Heft.
> Ich lerne hier Deutsch, und ich höre hier Musik.

```check
(choice
  (ask "Which thing does Paul NOT show?")
  (right "a lamp")
  (wrong "a phone"
    "ein Telefon is a phone, and Paul shows one in the second line.")
  (wrong "a newspaper"
    "eine Zeitung is a newspaper, and Paul shows one.")
  (hint "Look for ein and eine in the text. Which things come after them?"))
```

---

## Practice

```check
(text
  (ask "Write \"a computer\" in German.")
  (accept "ein Computer")
  (wrong-if "eine Computer" "Computer is masculine (der Computer), and masculine nouns take ein.")
  (wrong-if "der Computer" "der Computer is \"the computer\". For \"a\", use ein.")
  (hint "der Computer is masculine."))
```

```check
(choice
  (ask "What does \"eine Brille\" mean?")
  (right "a pair of glasses")
  (wrong "the glasses"
    "eine is the indefinite article, \"a\". \"The glasses\" is die Brille.")
  (wrong "a glass"
    "Brille is only for the glasses you wear on your eyes: one pair, one Brille.")
  (hint "Think of the glasses you wear."))
```

---

```check
(choice
  (ask "Das ist ___ Kind. Which word goes in the gap?")
  (right "ein")
  (wrong "eine"
    "Kind is neuter: das Kind. Neuter nouns take ein, not eine.")
  (wrong "der"
    "der is \"the\" for masculine nouns. Kind is neuter, and \"a\" for a neuter noun is ein.")
  (hint "das Kind: which gender?"))
```

```check
(text
  (ask "Write \"That is a pen.\" in German. Use Kuli.")
  (accept "Das ist ein Kuli.")
  (wrong-if "Das ist eine Kuli." "Kuli is masculine (der Kuli), so it takes ein.")
  (hint "der Kuli is masculine."))
```

Kuli is short for Kugelschreiber, a ballpoint pen.

```cards
(card "der Computer, die Computer" "the computer" (typed))
(card "das Telefon, die Telefone" "the phone" (typed))
(card "die Brille, die Brillen" "the glasses" (typed) (note "one pair: eine Brille"))
(card "der Kuli, die Kulis" "the pen" (typed) (note "short for der Kugelschreiber"))
(card "das Heft, die Hefte" "the exercise book" (typed))
(card "die Zeitung, die Zeitungen" "the newspaper" (typed))
(card "ein, eine" "a, an")
```

So: der, die, das mean "the" and ein, eine mean "a"; masculine and
neuter nouns take ein, feminine nouns take eine.
