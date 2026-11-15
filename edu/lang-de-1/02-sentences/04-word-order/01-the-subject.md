# The subject

```lesson
(objective "Find the subject of a sentence and match the verb to it, also when the subject is a noun or a name.")
(minutes 25)
(keywords "subject")
```

The verb's ending depends on who does the action, and that is the
subject of the sentence.

The **subject** is the person or thing that does what the verb says,
or that the sentence is about with sein. Ask "who?" or "what?" before
the verb:

- Anna kocht. Who cooks? Anna. Anna is the subject.
- Der Hund spielt. What plays? Der Hund (the dog).
- Das Haus ist groß. What is big? Das Haus.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the subject")
```

```check
(choice
  (ask "\"Die Frau hört Musik.\" What is the subject?")
  (right "die Frau")
  (wrong "Musik"
    "Musik is what the woman hears. Ask who hears: die Frau. That is the subject.")
  (wrong "hört"
    "hört is the verb. The subject is who does it: die Frau.")
  (hint "Ask: who hears?"))
```

---

## A noun as the subject

When the subject is a noun or a name, think of the pronoun it stands
for, and use that ending:

| Subject | Like | Verb |
|---|---|---|
| Anna, der Hund, das Kind | er, sie, es | spielt |
| die Kinder, die Leute | sie (they) | spielen |

die Leute (people) is always plural: Die Leute lachen.

```check
(text
  (ask "Die Kinder ___ (spielen). Write the right form.")
  (accept "spielen")
  (wrong-if "spielt" "die Kinder is more than one child, so it is like sie (they): spielen.")
  (hint "Kinder: one, or more than one?"))
```

---

## Two people

Two people joined by und are more than one, so the verb is plural:

- Anna und Tom spielen. (like sie, they)
- Tom und ich spielen. (like wir, we)

German usually puts ich second: Tom und ich, the same as polite
English.

```check
(text
  (ask "Lena und ich ___ (lernen) Deutsch. Write the right form.")
  (accept "lernen")
  (wrong-if "lerne" "The subject is Lena und ich, two people, like wir: lernen.")
  (wrong-if "lernt" "Two people with ich are like wir, and wir takes -en: lernen.")
  (hint "Lena und ich = wir."))
```

---

## Worked example

```example
(example
  (problem "Die Nachbarin ___ (arbeiten) viel. Write the verb.")
  (step "Who works? Die Nachbarin (the neighbor, a woman): she is the subject.")
  (step "One woman is like sie (she).")
  (step "arbeiten has a t stem: sie arbeitet.")
  (answer "Die Nachbarin arbeitet viel."))
```

```example
(example
  (problem "Die Leute ___ (sein) hier. Write the verb.")
  (step "Who is here? Die Leute: that is the subject.")
  (step "die Leute is always plural, like sie (they).")
  (step (text (ask "So which form of sein?") (accept "sind")
          (wrong-if "ist" "ist is for one person or thing. die Leute is plural: sind.")))
  (answer "Die Leute sind hier."))
```

---

## Read

> Hier wohnen Herr Bauer und Frau Kaya. Sie sind Nachbarn. Herr Bauer
> hat eine Katze. Frau Kaya hat zwei Hunde. Die Tiere spielen zusammen,
> und die Leute lachen.

```check
(choice
  (ask "Who has 2 dogs?")
  (right "Frau Kaya")
  (wrong "Herr Bauer"
    "Herr Bauer hat eine Katze: he has a cat. Frau Kaya hat zwei Hunde.")
  (wrong "Both of them"
    "Each has their own animals: Herr Bauer a cat, Frau Kaya 2 dogs.")
  (hint "Hunde is more than one Hund. Who has them?"))
```

---

## Practice

```check
(choice
  (ask "\"Die Katze sieht das Bild.\" What is the subject?")
  (right "die Katze")
  (wrong "das Bild"
    "The picture does not see anything. Ask who sees: die Katze.")
  (wrong "sieht"
    "sieht is the verb. The subject is who sees: die Katze.")
  (hint "Ask: who sees?"))
```

```check
(text
  (ask "Der Nachbar ___ (fahren) nach Wien. Write the right form.")
  (accept "fährt")
  (wrong-if "fahren" "der Nachbar is one person, like er. And fahren changes its vowel: fährt.")
  (wrong-if "fahrt" "der Nachbar is like er, and with er fahren becomes fährt.")
  (hint "der Nachbar = er.")
  (hint "fahren changes a to ä with er."))
```

---

```check
(text
  (ask "Tom und Mia ___ (haben) ein Auto. Write the right form.")
  (accept "haben")
  (wrong-if "hat" "Tom und Mia are two people, like sie (they): haben.")
  (hint "Two people = sie (they)."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Die Tiere sind klein.")
  (wrong "Die Tiere ist klein."
    "Tiere is more than one animal, so the verb is plural: sind.")
  (wrong "Die Tiere bist klein."
    "bist is for du. Tiere is plural, like sie (they): sind.")
  (hint "Tiere: one, or more?"))
```

```cards
(card "der Nachbar, die Nachbarn" "the neighbor" (typed) (note "a man"))
(card "die Nachbarin, die Nachbarinnen" "the neighbor" (typed) (note "a woman"))
(card "die Leute" "the people" (typed) (note "always plural"))
(card "der Hund, die Hunde" "the dog" (typed))
(card "das Tier, die Tiere" "the animal" (typed))
```

So: the subject is who or what does the action, and the verb's ending
matches it: a noun is like er, sie or es, and two or more are plural.
