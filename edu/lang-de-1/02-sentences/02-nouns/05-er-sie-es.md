# er, sie, es for things

```lesson
(objective "Replace a noun with er, sie or es by its gender, and describe things with sein.")
(minutes 25)
```

In German, "it" can be er, sie or es: the word you use depends on the
gender of the noun.

You know er (he), sie (she) and es (it). For things, English always
says "it". German picks by gender:

| Noun | Instead of the noun |
|---|---|
| der Tisch (masculine) | er |
| die Lampe (feminine) | sie |
| das Buch (neuter) | es |

So "Der Tisch ist hier." becomes "Er ist hier." Er means "it" here,
not "he".

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the personal pronoun")
```

```check
(text
  (ask "\"Die Lampe ist hier.\" Write the sentence with a word for \"it\" instead of \"Die Lampe\".")
  (accept "Sie ist hier.") (accept "Hier ist sie.")
  (wrong-if "Es ist hier." "English says \"it\", but German picks by gender. Lampe is feminine (die Lampe), so it is sie.")
  (wrong-if "Er ist hier." "er is for masculine nouns, with der. Lampe is feminine: sie.")
  (hint "die Lampe is feminine.")
  (hint "die goes with sie."))
```

---

## Describing things

To say what a thing is like, use sein and a describing word:

- Das Haus ist groß. (The house is big.)
- Das Heft ist klein. (The exercise book is small.)
- Der Tisch ist lang. (The table is long.)
- Der Computer ist kaputt. (The computer is broken.)

groß also means tall, for people: Tom ist groß.

```check
(text
  (ask "Write \"The house is small.\" in German.")
  (accept "Das Haus ist klein.")
  (wrong-if "Das Haus ist groß." "groß is big. Small is klein.")
  (wrong-if "Der Haus ist klein." "Haus is neuter: das Haus.")
  (hint "das Haus ... sein ... small: klein."))
```

---

## People and children

For people, er and sie work as in English: der Mann is er, die Frau
is sie. das Kind and das Baby are neuter, so the word is es.

With das Mädchen, people say es, as the gender asks, or sie, because
a girl is female. Both are used.

```check
(choice
  (ask "Das Kind lacht. ___ ist klein. Which word goes in the gap?")
  (right "Es")
  (wrong "Er"
    "Kind is neuter (das Kind), whether the child is a boy or a girl. Neuter nouns take es.")
  (wrong "Sie"
    "Kind is neuter (das Kind), so the word is es.")
  (hint "das Kind: which gender?"))
```

---

## hier and dort

Wo ist ...? asks where something is. Answer with hier (here) or dort
(there), and er, sie or es:

- Wo ist der Kuli? Er ist hier.
- Wo ist die Zeitung? Sie ist dort.

```check
(choice
  (ask "Wo ist das Telefon? Pick the right answer.")
  (right "Es ist dort.")
  (wrong "Er ist dort."
    "Telefon is neuter: das Telefon. Neuter nouns take es.")
  (wrong "Sie ist dort."
    "Telefon is neuter: das Telefon. Neuter nouns take es.")
  (hint "das Telefon."))
```

---

## Worked example

```example
(example
  (problem "Say \"It is broken.\" about der Computer.")
  (step "der Computer is masculine.")
  (step "Masculine nouns take er.")
  (answer "Er ist kaputt."))
```

```example
(example
  (problem "Say \"It is long.\" about die Zeitung.")
  (step "die Zeitung is feminine.")
  (step (choice (ask "So which word for \"it\"?")
          (right "sie")
          (wrong "es" "es is for neuter nouns. Zeitung is feminine: sie.")))
  (answer "Sie ist lang."))
```

---

## Read

- Mia: Wo ist das Telefon?
- Tom: Es ist dort.
- Mia: Und die Brille?
- Tom: Sie ist hier.
- Mia: Und der Computer?
- Tom: Er ist kaputt!

```check
(choice
  (ask "What is broken?")
  (right "the computer")
  (wrong "the phone"
    "Es ist dort: the phone is over there. The last line says Er ist kaputt, about der Computer.")
  (wrong "the glasses"
    "Sie ist hier: the glasses are here. Er ist kaputt is about der Computer.")
  (hint "Find kaputt. Which noun does er stand for?"))
```

---

## Practice

```check
(text
  (ask "Write \"It is big.\" about das Haus.")
  (accept "Es ist groß.") (accept "Es ist gross.")
  (wrong-if "Er ist groß." "Haus is neuter (das Haus), so it is es.")
  (wrong-if "Sie ist groß." "Haus is neuter (das Haus), so it is es.")
  (hint "das Haus is neuter."))
```

```check
(text
  (ask "Write \"It is here.\" about der Tisch.")
  (accept "Er ist hier.") (accept "Hier ist er.")
  (wrong-if "Es ist hier." "English says \"it\", but Tisch is masculine (der Tisch), so German says er.")
  (wrong-if "Sie ist hier." "Tisch is masculine (der Tisch): er.")
  (hint "der Tisch is masculine."))
```

---

```check
(choice
  (ask "Die Brille ist kaputt. What does it mean?")
  (right "The glasses are broken.")
  (wrong "The glasses are big."
    "Big is groß. kaputt means broken.")
  (wrong "The glasses are here."
    "Here is hier. kaputt means broken.")
  (hint "English has borrowed this word: kaput."))
```

```check
(choice
  (ask "Der Junge ist groß. What does it mean?")
  (right "The boy is tall.")
  (wrong "The boy is long."
    "For people, groß means tall. lang is for things like a table or a text.")
  (wrong "The boy is small."
    "Small is klein. groß is big, or tall for people.")
  (hint "groß, for a person."))
```

```cards
(card "groß" "big" (typed) (note "also: tall, for people. Swiss spelling: gross"))
(card "klein" "small" (typed))
(card "lang" "long" (typed))
(card "kaputt" "broken" (typed))
(card "dort" "there" (typed))
```

So: for a thing, "it" is er for der words, sie for die words and es
for das words.
