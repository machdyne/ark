# der, die, das

```lesson
(objective "Use der, die and das, and learn every noun with its article because its gender is part of the word.")
(minutes 25)
(keywords "article" "gender (of nouns)" "masculine" "feminine" "neuter")
```

German has three words for "the": der, die and das. Each noun takes
one of them, and you learn it with the noun.

The small word in front of a noun is an **article**. In English the
article "the" is the same for every noun: the table, the lamp, the
book. In German it changes: der Tisch, die Lampe, das Buch.

```check
(text
  (ask "What is the article in \"das Fenster\"?")
  (accept "das")
  (wrong-if "Fenster" "Fenster is the noun, the word for the thing. The article is the small word in front of it.")
  (hint "The article is the small word that means \"the\"."))
```

---

## Three groups

Every German noun in the singular belongs to one of three groups. This is called its
**gender**. Nouns with der are **masculine**, nouns with die are
**feminine**, and nouns with das are **neuter**.

| Article | Gender | Example |
|---|---|---|
| der | masculine | der Tisch (the table) |
| die | feminine | die Lampe (the lamp) |
| das | neuter | das Buch (the book) |

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the noun, gender")
```

```check
(choice
  (ask "die Tür (the door): which gender is Tür?")
  (right "feminine")
  (wrong "masculine"
    "Masculine nouns take der. Tür takes die, and nouns with die are feminine.")
  (wrong "neuter"
    "Neuter nouns take das. Tür takes die, so it is feminine.")
  (hint "der is masculine, die is feminine, das is neuter."))
```

---

## Things have a gender too

A table is not a man and a lamp is not a woman. The gender of a word
for a thing is grammar, not meaning, and you usually cannot guess it.
So learn every noun with its article, as one word: not "Tisch", but
"der Tisch".

```check
(text
  (ask "Write \"the table\" in German, with its article.")
  (accept "der Tisch")
  (wrong-if "die Tisch" "Tisch takes der: der Tisch. You cannot guess it from the meaning, so learn the article with the noun.")
  (wrong-if "das Tisch" "Tisch takes der: der Tisch. You cannot guess it from the meaning, so learn the article with the noun.")
  (wrong-if "Tisch" "Right noun. Now add its article: der, die or das?")
  (hint "Tisch is masculine."))
```

---

## People

For people, the gender often matches the person: der Mann (the man),
die Frau (the woman), der Junge (the boy).

But not always. das Kind (the child) and das Baby (the baby) are
neuter, for a boy or a girl. And das Mädchen (the girl) is neuter
too: words that end in -chen are almost always neuter.

In Austria, Switzerland and the south of Germany, people often say
der Bub for a boy.

```check
(text
  (ask "Write \"the girl\" in German, with its article.")
  (accept "das Mädchen")
  (wrong-if "die Mädchen" "A girl is female, but Mädchen ends in -chen, and -chen words are almost always neuter: das Mädchen.")
  (wrong-if "der Mädchen" "Mädchen ends in -chen, and -chen words are almost always neuter: das Mädchen.")
  (hint "Look at the ending: -chen.")
  (hint "-chen words take das."))
```

---

## Worked example

```example
(example
  (problem "Which article does Frau (woman) take, and what gender is it?")
  (step "You learned it as one word: die Frau.")
  (step "Nouns with die are feminine.")
  (answer "die Frau: feminine."))
```

```example
(example
  (problem "Which article does Kind (child) take, and what gender is it?")
  (step "You learned it as one word: das Kind.")
  (step (choice (ask "So what gender is Kind?")
          (right "neuter")
          (wrong "masculine" "Masculine nouns take der. Kind takes das, so it is neuter.")
          (wrong "feminine" "Feminine nouns take die. Kind takes das, so it is neuter.")))
  (answer "das Kind: neuter."))
```

---

## Read

> Hier wohnen Tom und Mia. Tom kommt aus England, Mia kommt aus
> Österreich. Das Baby heißt Ben. Tom kocht gern, und Mia arbeitet
> viel. Das Mädchen hier ist Lea. Lea spielt gern Fußball, und Ben
> lacht.

```check
(choice
  (ask "Who likes cooking?")
  (right "Tom")
  (wrong "Mia"
    "Mia arbeitet viel: Mia works a lot. Look for kocht gern.")
  (wrong "Lea"
    "Lea spielt gern Fußball: Lea likes playing soccer. Look for kocht gern.")
  (hint "kocht means cooks. Who kocht gern?"))
```

---

## Practice

```check
(text
  (ask "Write \"the woman\" in German, with its article.")
  (accept "die Frau")
  (wrong-if "der Frau" "Frau takes die: die Frau.")
  (wrong-if "das Frau" "Frau takes die: die Frau.")
  (hint "A woman, and the gender matches: feminine."))
```

```check
(choice
  (ask "Which article goes with Junge (boy)?")
  (right "der")
  (wrong "das"
    "Kind and Mädchen take das, but Junge takes der: der Junge.")
  (wrong "die"
    "die is for feminine nouns. A boy is der Junge.")
  (hint "For this person, the gender matches."))
```

---

```check
(choice
  (ask "Which article goes with Fenster (window)?")
  (right "das")
  (wrong "der"
    "Fenster takes das: das Fenster. You learned it with its article in the last lesson.")
  (wrong "die"
    "Fenster takes das: das Fenster. You learned it with its article in the last lesson.")
  (hint "das Buch, das Haus, ... Fenster."))
```

```check
(choice
  (ask "Why is it das Mädchen, not die Mädchen, for one girl?")
  (right "-chen words are almost always neuter, whatever they mean")
  (wrong "Mädchen means a boy"
    "Mädchen means a girl. The article comes from the ending -chen, which makes a word neuter.")
  (wrong "das is used for all children"
    "das Kind is neuter, but der Junge is masculine. das Mädchen is neuter because of its ending, -chen.")
  (hint "Look at the end of the word."))
```

```cards
(card "der Mann, die Männer" "the man" (typed))
(card "die Frau, die Frauen" "the woman" (typed))
(card "das Kind, die Kinder" "the child" (typed))
(card "das Mädchen, die Mädchen" "the girl" (typed) (note "neuter, like almost every -chen word"))
(card "der Junge, die Jungen" "the boy" (typed))
(card "das Baby, die Babys" "the baby" (typed))
```

So: every noun has a gender, masculine, feminine or neuter, and its
article, der, die or das, shows it; learn the two together.
