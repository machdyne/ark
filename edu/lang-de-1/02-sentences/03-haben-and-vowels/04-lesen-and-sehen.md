# lesen and sehen

```lesson
(objective "Conjugate verbs that change e to ie: lesen and sehen.")
(minutes 20)
```

lesen (to read) and sehen (to see) change e to ie with du and er,
sie, es.

ie sounds like the ee in "see", a long sound.

| | lesen | sehen |
|---|---|---|
| ich | lese | sehe |
| du | liest (ie) | siehst (ie) |
| er, sie, es | liest (ie) | sieht (ie) |
| wir | lesen | sehen |
| ihr | lest | seht |
| sie, Sie | lesen | sehen |

lesen's stem ends in s, so du takes only -t: du liest, the same as er
liest.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): verbs with a vowel change in the present")
```

```check
(text
  (ask "Er ___ (lesen) die Zeitung. Write the right form.")
  (accept "liest")
  (wrong-if "lest" "lest is for ihr. With er, e becomes ie: liest.")
  (wrong-if "lesst" "With er, e becomes ie: liest.")
  (hint "e becomes ie, and the ending is -t."))
```

---

## sehen

- Ich sehe das Haus. (I see the house.)
- Du siehst das Bild. (You see the picture.)
- Sie sieht die Katze. (She sees the cat.)

```check
(text
  (ask "du ___ (sehen). Write the right form.")
  (accept "siehst")
  (wrong-if "sehst" "Right ending, but sehen changes e to ie with du: siehst.")
  (wrong-if "sieht" "sieht is for er, sie, es. du takes -st: siehst.")
  (hint "e becomes ie; the ending for du is -st."))
```

---

## Which change?

You now know three changes: a to ä (fahren), e to i (sprechen) and e
to ie (sehen). You cannot tell from the infinitive which verbs change,
or how. So learn the er form with each one: fahren, er fährt; sprechen,
er spricht; sehen, er sieht. Your cards show it.

```check
(choice
  (ask "Which verb changes e to ie?")
  (right "lesen")
  (wrong "essen"
    "essen changes e to i: er isst. lesen changes e to ie: er liest.")
  (wrong "sprechen"
    "sprechen changes e to i: er spricht. lesen changes e to ie: er liest.")
  (hint "Think of the er forms: er isst, er spricht, er liest."))
```

---

## Worked example

```example
(example
  (problem "Say \"She reads a story.\" (die Geschichte = the story)")
  (step "lesen with sie (she): e becomes ie: liest.")
  (step "die Geschichte is feminine: eine Geschichte.")
  (answer "Sie liest eine Geschichte."))
```

```example
(example
  (problem "Say \"He sees the picture.\" (das Bild)")
  (step "sehen with er: e becomes ie.")
  (step (text (ask "Write the form of sehen for er.") (accept "sieht")
          (wrong-if "seht" "seht is for ihr. With er: sieht.")))
  (answer "Er sieht das Bild."))
```

---

## Read

> Lena liest gern. Sie liest eine Geschichte. Tom liest die Zeitung.
> Paul sieht ein Bild und lacht. Und Mia? Mia liest eine E-Mail.

```check
(choice
  (ask "Who is looking at a picture?")
  (right "Paul")
  (wrong "Tom"
    "Tom liest die Zeitung: Tom reads the newspaper. Find sieht ein Bild.")
  (wrong "Mia"
    "Mia liest eine E-Mail: she reads an email. Find sieht ein Bild.")
  (hint "Bild is a picture. Who sieht ein Bild?"))
```

---

## Practice

```check
(text
  (ask "Write \"You (du) read the email.\" in German.")
  (accept "Du liest die E-Mail.")
  (wrong-if "Du lest die E-Mail." "With du, lesen changes e to ie: du liest.")
  (wrong-if "Du liesst die E-Mail." "The stem ends in s, so du adds only -t: liest.")
  (hint "du liest ..."))
```

```check
(choice
  (ask "Ihr ___ das Haus. Which form?")
  (right "seht")
  (wrong "sieht"
    "sieht is for er, sie, es. ihr does not change the vowel: ihr seht.")
  (wrong "siehst"
    "siehst is for du. ihr: seht.")
  (hint "ihr never changes the vowel."))
```

---

```check
(text
  (ask "Write the form of sehen for er, sie, es.")
  (accept "sieht")
  (wrong-if "seht" "seht is for ihr. With er, sie, es: sieht.")
  (hint "e becomes ie."))
```

```check
(choice
  (ask "What does \"die Geschichte\" mean?")
  (right "the story (or history)")
  (wrong "the picture"
    "The picture is das Bild.")
  (wrong "the newspaper"
    "The newspaper is die Zeitung.")
  (hint "Think of what Lena reads."))
```

In Austria and Switzerland, many people say das E-Mail.

```cards
(card "lesen" "to read" (typed) (note "du liest, er liest"))
(card "sehen" "to see" (typed) (note "du siehst, er sieht"))
(card "das Bild, die Bilder" "the picture" (typed))
(card "die Geschichte, die Geschichten" "the story" (typed) (note "also: history"))
(card "die E-Mail, die E-Mails" "the email" (typed))
```

So: lesen and sehen change e to ie with du and er, sie, es: du liest,
er sieht.
