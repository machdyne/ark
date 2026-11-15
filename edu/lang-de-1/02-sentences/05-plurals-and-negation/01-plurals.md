# Plurals with -n and -s

```lesson
(objective "Use die for every plural, and the plurals with -n, -en and -s.")
(minutes 25)
```

German nouns make their plural in several ways, but the article is
always the same: die.

Every plural takes **die**, whatever the gender of the singular:

| Singular | Plural |
|---|---|
| der Tisch | die Tische |
| die Lampe | die Lampen |
| das Buch | die Bücher |

There is no single ending like English -s. That is why your cards show
each plural: learn it with the noun.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the plural of nouns")
```

```check
(choice
  (ask "das Kind, plural: ___ Kinder. Which article?")
  (right "die")
  (wrong "das"
    "das Kind is neuter, but every plural takes die: die Kinder.")
  (wrong "der"
    "Every plural takes die, whatever the singular has: die Kinder.")
  (hint "Every plural takes the same article."))
```

---

## -n and -en

Most feminine nouns add -n or -en:

- die Lampe, die Lampen
- die Frau, die Frauen
- die Zeitung, die Zeitungen
- die Straße, die Straßen (the street)

Words with -in double the n: die Lehrerin, die Lehrerinnen.

```check
(text
  (ask "die Blume is the flower. Write the plural, with its article.")
  (accept "die Blumen")
  (wrong-if "die Blume" "That is one flower. Most feminine nouns add -n or -en: die Blumen.")
  (wrong-if "die Blumes" "German plurals are rarely -s. Most feminine nouns add -n: die Blumen.")
  (wrong-if "der Blumen" "Every plural takes die: die Blumen.")
  (hint "Blume ends in -e: add -n."))
```

---

## -s

Many words from other languages, and many words that end in a vowel
other than -e, add -s:

- das Auto, die Autos
- das Foto, die Fotos
- das Baby, die Babys
- das Hobby, die Hobbys

Look at the last two: German writes Babys and Hobbys, not "Babies"
and "Hobbies".

```check
(text
  (ask "Write the plural of das Hobby, with its article.")
  (accept "die Hobbys")
  (wrong-if "die Hobbies" "That is the English spelling. German just adds -s: die Hobbys.")
  (wrong-if "das Hobbys" "Every plural takes die: die Hobbys.")
  (hint "Just add -s."))
```

---

## Das sind ...

For more than one, Das ist becomes **Das sind**, and the verb takes
the plural form:

- Das sind Fotos. (Those are photos.)
- Die Blumen sind schön. (The flowers are beautiful.)

```check
(text
  (ask "Write \"The streets are long.\" in German.")
  (accept "Die Straßen sind lang.") (accept "Die Strassen sind lang.")
  (wrong-if "Die Straßen ist lang." "Straßen is plural, so the verb is plural too: sind.")
  (wrong-if "Die Straße sind lang." "For more than one street, use the plural: Straßen.")
  (hint "die Straßen ... sind ..."))
```

---

## Worked example

```example
(example
  (problem "Make it plural: Das ist eine Zeitung.")
  (step "Zeitung is feminine and ends in -ung: it adds -en: Zeitungen.")
  (step "eine has no plural, so it goes: one newspaper is eine Zeitung, two or more are just Zeitungen.")
  (step "Das ist becomes Das sind.")
  (answer "Das sind Zeitungen."))
```

```example
(example
  (problem "Make it plural: Das ist ein Foto.")
  (step "Foto ends in o, a vowel: it adds -s.")
  (step "ein goes, and Das ist becomes Das sind.")
  (step (text (ask "Write the sentence.") (accept "Das sind Fotos.")
          (wrong-if "Das ist Fotos." "For more than one, Das sind.")))
  (answer "Das sind Fotos."))
```

---

## Read

> Das ist die Straße. Hier wohnen Anna und Tom. Die Häuser sind klein
> und alt, aber die Blumen hier sind schön. Anna macht Fotos (takes
> photos). Die Fotos sind super.

```check
(choice
  (ask "What does Anna do?")
  (right "She takes photos.")
  (wrong "She plants flowers."
    "The flowers are there and they are beautiful, but Anna macht Fotos: she takes photos.")
  (wrong "She builds houses."
    "The houses are small and old. Anna macht Fotos.")
  (hint "Find Anna macht ..."))
```

---

## Practice

```check
(text
  (ask "Write the plural of die Lehrerin, with its article.")
  (accept "die Lehrerinnen")
  (wrong-if "die Lehrerinen" "Words with -in double the n: Lehrerinnen.")
  (wrong-if "die Lehrer" "die Lehrer is the plural of der Lehrer, the men. For women: die Lehrerinnen.")
  (hint "-in becomes -innen."))
```

```check
(text
  (ask "die Farbe is the color. Write the plural, with its article.")
  (accept "die Farben")
  (wrong-if "die Farbes" "Farbe is feminine and ends in -e: add -n.")
  (hint "Like die Blume."))
```

---

```check
(choice
  (ask "Which plural is right?")
  (right "die Autos")
  (wrong "die Autoen"
    "Auto ends in o, a vowel: it adds -s, not -en.")
  (wrong "das Autos"
    "Every plural takes die: die Autos.")
  (hint "Auto ends in a vowel."))
```

```check
(choice
  (ask "\"Die Fotos sind schön.\" What does it mean?")
  (right "The photos are beautiful.")
  (wrong "The photo is beautiful."
    "Fotos with -s, and sind, mean more than one: the photos are.")
  (wrong "Those are photos."
    "That would be Das sind Fotos. Die Fotos sind schön: the photos are beautiful.")
  (hint "Look at -s and sind."))
```

```cards
(card "die Blume, die Blumen" "the flower" (typed))
(card "die Straße, die Straßen" "the street" (typed) (note "Swiss spelling: Strasse"))
(card "das Foto, die Fotos" "the photo" (typed))
(card "die Farbe, die Farben" "the color" (typed))
```

So: every plural takes die; most feminine nouns add -n or -en, and
many foreign words and words ending in a vowel add -s.
