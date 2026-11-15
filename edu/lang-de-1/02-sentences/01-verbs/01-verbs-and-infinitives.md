# Verbs and infinitives

```lesson
(objective "Recognise a verb, its infinitive ending in -en, and find its stem.")
(minutes 20)
(keywords "verb" "infinitive" "stem (of a verb)")
```

Every German sentence has a verb, and every verb has a short form you
build all its other forms from.

A **verb** is a word that says what someone does, or what someone or
something is. In "Ich wohne in Wien", wohne is the verb: it says what
I do. In "Ich bin Ben", bin is a verb too, a form of sein.

```check
(choice
  (ask "\"Ich komme aus Kanada.\" Which word is the verb?")
  (right "komme")
  (wrong "Kanada"
    "Kanada is the name of a country. The verb says what someone does: komme (come).")
  (wrong "aus"
    "aus means from. The verb says what someone does: komme (come).")
  (hint "Which word says what I do?"))
```

---

## The infinitive

A dictionary lists a verb in one form, the **infinitive**. It is like
the English "to play": the verb without anyone doing it.

Almost every German infinitive ends in **-en**: wohnen, kommen,
spielen. A few end in just -n, like sein.

| You know | The infinitive |
|---|---|
| ich wohne | wohnen (to live) |
| ich komme | kommen (to come) |
| ich heiße | heißen (to be called) |

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the verb, its forms")
```

```check
(text
  (ask "\"Ich wohne in Köln.\" Write the infinitive of the verb.")
  (accept "wohnen")
  (wrong-if "wohne" "wohne is the form for ich. The infinitive, the dictionary form, ends in -en: wohnen.")
  (hint "Almost every infinitive ends in -en."))
```

---

## The stem

Take -en off the infinitive and what is left is the **stem**. You add
small parts to the stem to make the other forms.

| Infinitive | Stem | English |
|---|---|---|
| spielen | spiel- | to play |
| lernen | lern- | to learn |
| machen | mach- | to do, to make |
| gehen | geh- | to go (on foot) |
| hören | hör- | to hear, to listen to |
| kochen | koch- | to cook |

```check
(text
  (ask "What is the stem of lernen?")
  (accept "lern") (accept "lern-")
  (wrong-if "lernen" "lernen is the infinitive. Take -en off it to get the stem.")
  (wrong-if "lerne" "Take off the whole -en, not only the n: lern-.")
  (hint "Take -en off the end."))
```

---

## Worked example

```example
(example
  (problem "\"Ich koche.\" Find the infinitive and the stem of the verb.")
  (step "The verb is koche: it says what I do.")
  (step "The infinitive ends in -en: kochen.")
  (step "Take -en off: koch-.")
  (answer "Infinitive kochen, stem koch-."))
```

```example
(example
  (problem "\"Ich gehe.\" Find the infinitive and the stem of the verb.")
  (step "The verb is gehe.")
  (step "The infinitive ends in -en: gehen.")
  (step (text (ask "What is the stem?") (accept "geh") (accept "geh-")
          (wrong-if "gehen" "That is the infinitive. Take -en off.")))
  (answer "Infinitive gehen, stem geh-."))
```

---

## Read

> Ich heiße Jonas. Ich komme aus Berlin, und ich wohne in Köln. Ich
> lerne Englisch. Ich spiele Fußball (soccer), ich koche, und ich höre
> Musik (music).

```check
(choice
  (ask "What does Jonas learn?")
  (right "English")
  (wrong "German"
    "Jonas comes from Berlin, so he speaks German already. Ich lerne Englisch: he learns English.")
  (wrong "Soccer"
    "He plays soccer: Ich spiele Fußball. He learns English: Ich lerne Englisch.")
  (hint "Find the sentence with lerne."))
```

---

## Practice

```check
(text
  (ask "What is the stem of machen?")
  (accept "mach") (accept "mach-")
  (wrong-if "machen" "That is the infinitive. Take -en off.")
  (wrong-if "mache" "mache is the form for ich. The stem is the infinitive without -en: mach-.")
  (hint "machen without -en."))
```

```check
(text
  (ask "\"Ich höre Musik.\" Write the infinitive of the verb.")
  (accept "hören")
  (wrong-if "hore" "Keep the umlaut, and the infinitive ends in -en: hören.")
  (hint "hör- plus -en."))
```

---

```check
(choice
  (ask "Which word is an infinitive?")
  (right "spielen")
  (wrong "spiele"
    "spiele is the form for ich. The infinitive ends in -en: spielen.")
  (wrong "spiel-"
    "spiel- is the stem, the infinitive without -en.")
  (hint "Which one would you find in a dictionary?"))
```

```check
(choice
  (ask "What does gehen mean?")
  (right "to go (on foot)")
  (wrong "to hear"
    "To hear, or to listen to, is hören.")
  (wrong "to do, to make"
    "To do or to make is machen.")
  (hint "geh- sounds a little like English go."))
```

```cards
(card "spielen" "to play" (typed))
(card "lernen" "to learn" (typed))
(card "machen" "to do" (typed) (note "also: to make"))
(card "gehen" "to go" (typed) (note "on foot"))
(card "hören" "to hear" (typed) (note "also: to listen to"))
(card "kochen" "to cook" (typed))
```

So: a verb says what someone does or is; its infinitive almost always
ends in -en, and without -en it is the stem.
