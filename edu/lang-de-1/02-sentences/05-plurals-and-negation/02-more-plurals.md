# Plurals with -e, -er and umlauts

```lesson
(objective "Use the plurals with -e, -er, an umlaut or no change, and count things.")
(minutes 25)
```

Masculine and neuter nouns often make their plural with -e or -er, and
often add an umlaut too.

Many masculine nouns add **-e**, some with an umlaut:

- der Tisch, die Tische
- der Hund, die Hunde
- der Berg, die Berge (the mountain)
- der Baum, die Bäume (the tree)

Some neuter nouns do too: das Meer, die Meere (the sea).

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the plural of nouns")
```

```check
(text
  (ask "Write the plural of der Freund, with its article.")
  (accept "die Freunde")
  (wrong-if "die Freunden" "der Freund adds -e: die Freunde.")
  (wrong-if "der Freunde" "Every plural takes die: die Freunde.")
  (wrong-if "die Freunds" "-s is for foreign words and words ending in a vowel. Freund adds -e.")
  (hint "Like der Hund, die Hunde."))
```

---

## -er

Many short neuter nouns add **-er**, with an umlaut where they can
take one:

- das Kind, die Kinder
- das Bild, die Bilder
- das Buch, die Bücher
- das Haus, die Häuser
- das Dorf, die Dörfer (the village)

```check
(text
  (ask "Write the plural of das Haus, with its article.")
  (accept "die Häuser")
  (wrong-if "die Hauser" "Haus takes an umlaut in the plural: Häuser.")
  (wrong-if "die Hause" "Haus adds -er, with an umlaut: Häuser.")
  (wrong-if "das Häuser" "Every plural takes die: die Häuser.")
  (hint "Like das Buch, die Bücher."))
```

---

## No ending

Masculine and neuter nouns that end in -er, -el, -en or -chen almost
always add nothing; some take an umlaut:

- das Fenster, die Fenster
- der Lehrer, die Lehrer
- das Mädchen, die Mädchen
- der Vogel, die Vögel (the bird)
- der Garten, die Gärten (the garden)

So often only the article tells you it is plural: der Lehrer (one),
die Lehrer (more than one).

```check
(choice
  (ask "What is the plural of der Computer?")
  (right "die Computer")
  (wrong "die Computers"
    "English adds -s, but German nouns that end in -er add nothing: die Computer.")
  (wrong "die Computeren"
    "Nouns that end in -er add nothing: die Computer.")
  (hint "It ends in -er."))
```

---

## How many?

**wie viele** asks how many, with a plural: Wie viele Kinder hast du?
For one, use ein or eine; for more, the number and the plural:

- ein Hund, zwei Hunde
- eine Blume, drei Blumen

Count with eins (1, 2, 3...), but before a noun it is ein: ein Hund.

```check
(text
  (ask "Write \"three dogs\" in German.")
  (accept "drei Hunde")
  (wrong-if "drei Hund" "For more than one, use the plural: drei Hunde.")
  (wrong-if "drei Hunds" "Hund adds -e: Hunde.")
  (hint "der Hund, die Hunde."))
```

---

## Worked example

```example
(example
  (problem "Answer: Wie viele Bücher hast du? (You have 2.)")
  (step "das Buch, die Bücher: -er with an umlaut.")
  (step "zwei and the plural: zwei Bücher.")
  (answer "Ich habe zwei Bücher."))
```

```example
(example
  (problem "Answer: Wie viele Gärten hat das Dorf? (It has 4.)")
  (step "der Garten ends in -en: no ending, but an umlaut: Gärten.")
  (step (text (ask "Write the answer.") (accept "Das Dorf hat vier Gärten.") (accept "Es hat vier Gärten.") (accept "vier Gärten") (accept "vier") (accept "Das Dorf hat 4 Gärten.") (accept "Es hat 4 Gärten.") (accept "4 Gärten") (accept "4")
          (wrong-if "Das Dorf hat vier Gartens." "Garten adds no ending, only an umlaut: Gärten.")))
  (answer "Das Dorf hat vier Gärten."))
```

---

## Read

> Das Dorf ist klein. Es hat zwei Straßen und zwölf Häuser. Die Häuser
> haben Gärten, und die Gärten sind grün (green). Hier sind Berge und
> ein See (a lake). Die Berge sind hoch (high), und der See ist schön.

```check
(number
  (ask "How many houses does the village have?")
  (answer 12)
  (wrong-if 2 "2 is the number of streets: zwei Straßen. The houses: zwölf Häuser.")
  (hint "Find Häuser. Which number comes before it?"))
```

---

## Practice

```check
(text
  (ask "Write the plural of der Baum, with its article.")
  (accept "die Bäume")
  (wrong-if "die Baume" "Baum takes an umlaut in the plural: Bäume.")
  (wrong-if "die Bäumen" "Baum adds -e with an umlaut: Bäume.")
  (hint "-e and an umlaut."))
```

```check
(choice
  (ask "\"Wie viele Vögel siehst du?\" What does it mean?")
  (right "How many birds do you see?")
  (wrong "How many trees do you see?"
    "Trees are Bäume. der Vogel, die Vögel: birds.")
  (wrong "Do you see the bird?"
    "wie viele asks how many, and Vögel is plural.")
  (hint "Vögel is the plural of der Vogel."))
```

---

```check
(text
  (ask "Write the plural of das Dorf, with its article.")
  (accept "die Dörfer")
  (wrong-if "die Dorfe" "Dorf adds -er with an umlaut: Dörfer.")
  (wrong-if "die Dorfer" "Dorf takes an umlaut: Dörfer.")
  (hint "Like das Buch, die Bücher."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Ich habe zwei Kinder.")
  (wrong "Ich habe zwei Kind."
    "For more than one, use the plural: Kinder.")
  (wrong "Ich habe zwei Kinds."
    "Kind adds -er: Kinder.")
  (hint "das Kind, die Kinder."))
```

```cards
(card "der Baum, die Bäume" "the tree" (typed))
(card "der Vogel, die Vögel" "the bird" (typed))
(card "der Garten, die Gärten" "the garden" (typed) (note "also: the yard"))
(card "das Dorf, die Dörfer" "the village" (typed))
(card "der Berg, die Berge" "the mountain" (typed))
(card "der See, die Seen" "the lake" (typed))
(card "das Meer, die Meere" "the sea" (typed))
(card "wie viele" "how many" (typed))
```

So: masculine and neuter nouns often add -e or -er, often with an
umlaut, and nouns that end in -er, -el or -en usually add nothing; learn
each plural with its noun.
