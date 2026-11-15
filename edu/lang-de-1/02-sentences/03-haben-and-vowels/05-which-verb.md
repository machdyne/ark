# Which kind of verb?

```lesson
(objective "Tell regular verbs, haben, sein and the vowel-change verbs apart and use each rightly.")
(minutes 25)
```

To conjugate a verb, first ask which kind it is: regular, sein,
haben, or a verb that changes its vowel.

The er form shows the kind best:

| Kind | Infinitive | er ... |
|---|---|---|
| regular | spielen | spielt |
| sein | sein | ist |
| haben | haben | hat |
| a to ä | fahren | fährt |
| e to i | sprechen | spricht |
| e to ie | sehen | sieht |

With ich, wir, ihr, sie and Sie, the vowel-change verbs are regular.
sein is different everywhere: ich bin, du bist, wir sind, ihr seid.

```check
(text
  (ask "Ihr ___ (sein) hier. Write the right form.")
  (accept "seid")
  (wrong-if "seit" "Close in sound, but the form of sein for ihr is spelled seid, with d.")
  (wrong-if "sind" "sind is for wir, sie and Sie. ihr: seid.")
  (wrong-if "seht" "seht is from sehen. sein with ihr is seid.")
  (hint "sein is not regular: ich bin, du bist, er ist, wir sind, ihr ..."))
```

---

## sein or haben?

sein says what someone or something is. haben says what someone has.

- Ich bin Studentin. (I am a student.)
- Ich habe eine Katze. (I have a cat.)
- Das Spiel ist lang. (The game is long.)

```check
(choice
  (ask "Ich ___ ein Auto. Which word goes in the gap?")
  (right "habe")
  (wrong "bin"
    "bin says what you are. You are not a car: you have one. Ich habe ein Auto.")
  (wrong "hat"
    "hat is haben's form for er, sie, es. With ich: habe.")
  (hint "Are you a car, or do you have one?"))
```

---

## Worked example

```example
(example
  (problem "Write the right form: Tom ___ (fahren) nach Graz.")
  (step "Tom is er.")
  (step "fahren is a verb that changes a to ä with er.")
  (step "The ending for er is -t.")
  (answer "Tom fährt nach Graz."))
```

```example
(example
  (problem "Write the right form: Lena ___ (lesen) eine Geschichte.")
  (step "Lena is sie (she).")
  (step "lesen changes e to ie with sie (she).")
  (step (text (ask "So which form?") (accept "liest")
          (wrong-if "lest" "lest is for ihr. With sie (she), e becomes ie: liest.")))
  (answer "Lena liest eine Geschichte."))
```

---

## Read

> Lena macht eine Party. Tom und Mia sind hier. Tom hat ein Geschenk.
> Mia spricht viel und lacht. Paul hört ein Lied und isst viel. Und
> Lena? Lena sieht Paul und lacht.

```check
(choice
  (ask "Who has a present?")
  (right "Tom")
  (wrong "Mia"
    "Mia spricht viel und lacht: she talks and laughs. Find hat ein Geschenk.")
  (wrong "Paul"
    "Paul hört ein Lied und isst viel: he listens to a song and eats a lot. Find hat ein Geschenk.")
  (hint "das Geschenk is the present. Who hat ein Geschenk?"))
```

---

## Practice

```check
(text
  (ask "Wir ___ (spielen) ein Spiel. Write the right form.")
  (accept "spielen")
  (wrong-if "spielt" "spielt is for er, sie, es and ihr. wir: spielen.")
  (hint "wir takes -en."))
```

```check
(text
  (ask "du ___ (nehmen). Write the right form.")
  (accept "nimmst")
  (wrong-if "nehmst" "nehmen changes with du: du nimmst.")
  (wrong-if "nimmt" "nimmt is for er, sie, es. du: nimmst.")
  (hint "The h goes, the m is doubled, e becomes i."))
```

---

```check
(choice
  (ask "Which sentence is right?")
  (right "Das Lied ist lang.")
  (wrong "Das Lied hat lang."
    "To say what something is like, use sein: Das Lied ist lang.")
  (wrong "Das Lied bist lang."
    "bist is for du. Das Lied is es: ist.")
  (hint "das Lied = es. What is sein with es?"))
```

```check
(text
  (ask "Er ___ (essen) viel. Write the right form.")
  (accept "isst")
  (wrong-if "ist" "ist is from sein. He eats: er isst.")
  (wrong-if "esst" "esst is for ihr. With er, e becomes i: isst.")
  (hint "essen changes e to i."))
```

```check
(choice
  (ask "\"Sie macht eine Party.\" What does it mean?")
  (right "She is having a party.")
  (wrong "She is at a party."
    "machen is to make or to do. eine Party machen is to have, or throw, a party.")
  (wrong "She has a present."
    "That would be Sie hat ein Geschenk.")
  (hint "machen = to make, to do."))
```

```cards
(card "das Spiel, die Spiele" "the game" (typed))
(card "das Lied, die Lieder" "the song" (typed))
(card "die Party, die Partys" "the party" (typed))
```

So: check the kind of verb first, then use its forms: regular, sein,
haben, or a vowel change with du and er, sie, es.
