# ich, du, er

```lesson
(objective "Conjugate a regular verb with ich, du and er, sie, es in the present tense (-e, -st, -t).")
(minutes 25)
(keywords "ending (of a verb)" "conjugate" "present tense")
```

A German verb changes its form for the person who does it: ich spiele,
du spielst, er spielt.

The part you add to the stem is the **ending**. To **conjugate** a
verb is to give it the right ending for each person.

| | spielen (stem spiel-) | ending |
|---|---|---|
| ich | spiele | -e |
| du | spielst | -st |
| er, sie, es | spielt | -t |

You know this already: ich wohne, du wohnst; ich komme, du kommst.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the present tense, endings")
```

```check
(text
  (ask "du ___ (spielen). Write the right form.")
  (accept "spielst")
  (wrong-if "spielt" "-t is the ending for er, sie and es. For du, add -st: spielst.")
  (wrong-if "spiele" "-e is the ending for ich. For du, add -st: spielst.")
  (wrong-if "spielen" "spielen is the infinitive. For du, take the stem spiel- and add -st.")
  (hint "Stem spiel-, then the ending for du.")
  (hint "du takes -st."))
```

---

## er, sie, es and names

er, sie and es all take **-t**. So does one person's name, because Anna
is a "she" and Tom is a "he":

- Er lernt Deutsch. (He learns German.)
- Anna kocht. (Anna cooks.)

```check
(text
  (ask "Tom ___ (lernen) Deutsch. Write the right form.")
  (accept "lernt")
  (wrong-if "lernst" "-st is for du. Tom is one person, a \"he\": er takes -t. lernt.")
  (wrong-if "lerne" "-e is for ich. Tom is er, and er takes -t: lernt.")
  (hint "Tom = er."))
```

---

## Now, and usually

These forms are the **present tense**: they say what happens now or
what happens usually. English has several ways to say it, but German
has one:

Ich koche. = I cook. / I am cooking. / I do cook.

So never look for a German word for "am" in "I am cooking": it is just
Ich koche.

```check
(choice
  (several)
  (ask "\"Ich lerne Deutsch.\" Which English sentences can it mean? Choose all that fit.")
  (right "I learn German.")
  (right "I am learning German.")
  (wrong "I learned German."
    "learned is in the past. Ich lerne is the present tense: I learn, or I am learning.")
  (hint "The present tense covers now and usually."))
```

---

## Four new verbs

| Infinitive | English |
|---|---|
| sagen | to say |
| kennen | to know (a person or a place) |
| glauben | to believe, to think |
| malen | to paint |

kennen is to know a person or a place: Ich kenne Anna. To know a fact
you say Ich weiß.

```check
(text
  (ask "Sie (she) ___ (kennen) Anna. Write the right form.")
  (accept "kennt")
  (wrong-if "kennst" "-st is for du. sie (she) takes -t: kennt.")
  (wrong-if "kennen" "kennen is the infinitive. For sie (she), add -t to the stem.")
  (hint "Stem kenn-, and sie (she) takes -t."))
```

---

## Worked example

```example
(example
  (problem "Conjugate malen for ich, du and er.")
  (step "Take -en off: the stem is mal-.")
  (step "ich: add -e: ich male.")
  (step "du: add -st: du malst.")
  (step "er: add -t: er malt.")
  (answer "ich male, du malst, er malt"))
```

```example
(example
  (problem "Conjugate sagen for ich, du and er.")
  (step "The stem is sag-.")
  (step "ich sage, du sagst.")
  (step (text (ask "And for er?") (accept "sagt") (accept "er sagt")
          (wrong-if "sagst" "-st is for du. er takes -t.")))
  (answer "ich sage, du sagst, er sagt"))
```

---

## Read

- Anna: Hallo! Ich heiße Anna. Und du?
- Ben: Ich heiße Ben. Ich komme aus Kanada.
- Anna: Kennst du Lena? Sie lernt Deutsch, wie (like) du.
- Ben: Ja, ich kenne Lena! Sie malt und kocht.

```check
(choice
  (ask "What does Ben say about Lena?")
  (right "She paints and cooks.")
  (wrong "She comes from Canada."
    "Ben comes from Canada: Ich komme aus Kanada. About Lena he says: Sie malt und kocht.")
  (wrong "She does not know Anna."
    "Ben says nothing like that. His last line is: Sie malt und kocht.")
  (hint "Look at Ben's last line."))
```

---

## Practice

```check
(text
  (ask "ich ___ (glauben). Write the right form.")
  (accept "glaube")
  (wrong-if "glaubt" "-t is for er, sie, es. For ich, add -e: glaube.")
  (hint "ich takes -e."))
```

```check
(text
  (ask "Write \"You (du) play.\" in German.")
  (accept "Du spielst.")
  (wrong-if "Du spielt." "du takes -st: du spielst.")
  (hint "du + stem + -st."))
```

---

```check
(choice
  (ask "\"Er hört Musik.\" What does it mean?")
  (right "He is listening to music.")
  (wrong "He listened to music."
    "That is the past. hört is the present tense: he listens, or he is listening.")
  (wrong "She is listening to music."
    "Er means he. She would be Sie hört Musik.")
  (hint "er = he; hört is the present tense."))
```

```check
(text
  (ask "Mia ___ (sagen) Hallo. Write the right form.")
  (accept "sagt")
  (wrong-if "sagst" "-st is for du. Mia is a \"she\": -t. sagt.")
  (hint "Mia = sie (she)."))
```

```cards
(card "sagen" "to say" (typed))
(card "kennen" "to know" (typed) (note "a person or a place: Ich kenne Anna."))
(card "glauben" "to believe" (typed) (note "also: to think"))
(card "malen" "to paint" (typed))
```

So: to conjugate a regular verb, take its stem and add -e for ich,
-st for du and -t for er, sie, es.
