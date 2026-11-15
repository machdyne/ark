# My family

```lesson
(objective "Name your family with mein and meine.")
(minutes 25)
```

To talk about your family, you need the family words and **mein**
(my), which changes like ein.

This is Lena's family. Each box shows a name and who that person is
for Lena.

```figure
(de2-person 110 40 "Peter" "Vater")
(de2-person 210 40 "Anna" "Mutter")
(line 140 40 180 40 'ink 1.5)
(de2-link 160 40 60 152)
(de2-link 160 40 160 152)
(de2-link 160 40 260 152)
(de2-person 60 170 "Tom" "Bruder")
(de2-person 160 170 "Lena" "ich")
(de2-person 260 170 "Mia" "Schwester")
(caption "Lena's family")
```

| German | English |
|---|---|
| der Vater | the father |
| die Mutter | the mother |
| der Bruder | the brother |
| die Schwester | the sister |

```check
(text
  (ask "Write \"the mother\" in German, with its article.")
  (accept "die Mutter")
  (wrong-if "der Mutter" "Mutter is a woman, and the gender matches: die Mutter.")
  (wrong-if "die Muter" "Mutter has a double t.")
  (hint "A woman: die."))
```

---

## mein, meine

mein goes like ein: **mein** before der and das words, **meine**
before die words and plurals.

- Das ist mein Vater. (der Vater)
- Das ist meine Mutter. (die Mutter)
- Das ist mein Kind. (das Kind)
- Das sind meine Brüder. (plural)

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the possessive article")
```

```check
(text
  (ask "Write \"my sister\" in German.")
  (accept "meine Schwester")
  (wrong-if "mein Schwester" "Schwester is feminine (die Schwester): meine.")
  (wrong-if "die Schwester" "That is \"the sister\". For \"my\", use meine.")
  (hint "die Schwester: like eine Schwester."))
```

---

## Parents, brothers and sisters

Two words have no singular in everyday German; they are always plural:

- die Eltern (the parents): Meine Eltern wohnen in Graz.
- die Geschwister (brothers and sisters): Ich habe zwei Geschwister.

The plurals of the family words: die Väter, die Mütter, die Brüder,
die Schwestern.

```check
(text
  (ask "Write \"My parents work a lot.\" in German.")
  (accept "Meine Eltern arbeiten viel.")
  (wrong-if "Mein Eltern arbeiten viel." "Eltern is plural, and plurals take meine.")
  (wrong-if "Meine Eltern arbeitet viel." "Eltern is plural, like sie (they): arbeiten.")
  (hint "Plural: meine, and the verb with -en."))
```

---

## Sons and daughters

For parents, their children are der Sohn (the son), plural die Söhne,
and die Tochter (the daughter), plural die Töchter.

- Das ist mein Sohn.
- Meine Tochter heißt Mia.

```check
(choice
  (ask "Peter talks about Mia. What does he say?")
  (right "Das ist meine Tochter.")
  (wrong "Das ist mein Tochter."
    "Tochter is feminine (die Tochter): meine.")
  (wrong "Das ist meine Schwester."
    "Mia is Lena's sister, but Peter is her father: for him she is his daughter, Tochter.")
  (hint "Look at the figure: Peter is Mia's father."))
```

---

## Worked example

```example
(example
  (problem "Tom talks about Lena. What does he say?")
  (step "Lena is Tom's sister: die Schwester.")
  (step "die word: meine.")
  (answer "Das ist meine Schwester."))
```

```example
(example
  (problem "Anna talks about Tom. What does she say?")
  (step "Anna is Tom's mother, so Tom is her son: der Sohn.")
  (step (choice (ask "mein or meine?")
          (right "mein")
          (wrong "meine" "Sohn is masculine (der Sohn): mein.")))
  (answer "Das ist mein Sohn."))
```

---

## Read

> Ich heiße Lena. Mein Vater heißt Peter, und meine Mutter heißt Anna.
> Ich habe zwei Geschwister. Mein Bruder heißt Tom, und meine Schwester
> heißt Mia. Tom ist 16, und Mia ist 10. Meine Eltern arbeiten viel.

```check
(number
  (ask "How old is Lena's sister?")
  (answer 10)
  (wrong-if 16 "16 is Tom, her brother. Mia, her sister, is 10.")
  (hint "Lena's sister is Mia."))
```

---

## Practice

```check
(text
  (ask "Write \"my brother\" in German.")
  (accept "mein Bruder")
  (wrong-if "meine Bruder" "Bruder is masculine (der Bruder): mein.")
  (hint "der Bruder."))
```

```check
(text
  (ask "Write the plural of der Bruder, with its article.")
  (accept "die Brüder")
  (wrong-if "die Bruder" "Bruder takes an umlaut in the plural: Brüder.")
  (wrong-if "die Brüdern" "Bruder adds no ending, only an umlaut: Brüder.")
  (hint "Like der Vogel, die Vögel."))
```

---

```check
(choice
  (ask "\"Hast du Geschwister?\" What does it mean?")
  (right "Do you have brothers or sisters?")
  (wrong "Do you have parents?"
    "Parents are Eltern. Geschwister are brothers and sisters.")
  (wrong "Do you have a sister?"
    "A sister is eine Schwester. Geschwister means brothers and sisters together.")
  (hint "Geschwister: brothers and sisters."))
```

```check
(choice
  (ask "Who is Tom for Peter?")
  (right "his son: der Sohn")
  (wrong "his brother: der Bruder"
    "Tom is Lena's brother. For Peter, his father, Tom is his son.")
  (wrong "his father: der Vater"
    "Peter is Tom's father, not the other way round. Tom is Peter's son.")
  (hint "Look at the figure: Peter is at the top."))
```

```cards
(card "der Vater, die Väter" "the father" (typed))
(card "die Mutter, die Mütter" "the mother" (typed))
(card "die Eltern" "the parents" (typed) (note "always plural"))
(card "der Bruder, die Brüder" "the brother" (typed))
(card "die Schwester, die Schwestern" "the sister" (typed))
(card "die Geschwister" "brothers and sisters" (typed) (note "always plural in everyday German"))
(card "der Sohn, die Söhne" "the son" (typed))
(card "die Tochter, die Töchter" "the daughter" (typed))
(card "mein, meine" "my" (typed))
```

So: mein goes before der and das words, meine before die words and
plurals: mein Vater, meine Mutter, meine Eltern.
