# fahren, tragen, laufen

```lesson
(objective "Conjugate verbs that change a to ä (and au to äu) with du and er, sie, es: fahren, tragen, laufen.")
(minutes 25)
```

Some German verbs change a vowel in the stem, but only with du and
with er, sie, es.

In fahren (to go by car, bus or train; to drive), the stem fahr- has
the vowel a. With du and er, sie, es, it becomes ä:

| | fahren |
|---|---|
| ich | fahre |
| du | fährst (ä) |
| er, sie, es | fährt (ä) |
| wir | fahren |
| ihr | fahrt |
| sie, Sie | fahren |

The endings are the regular ones. Only the vowel changes.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): verbs with a vowel change in the present")
```

```check
(text
  (ask "du ___ (fahren). Write the right form.")
  (accept "fährst")
  (wrong-if "fahrst" "Right ending, but fahren changes its vowel with du: a becomes ä. du fährst.")
  (wrong-if "fährt" "fährt is for er, sie, es. du takes -st: fährst.")
  (hint "With du: a becomes ä, and the ending is -st."))
```

---

## Only du and er, sie, es

ich, wir, ihr, sie and Sie keep the a: ich fahre, ihr fahrt. Look
closely: ihr fahrt (no umlaut) and er fährt (umlaut) differ only in
the ä.

```check
(text
  (ask "ihr ___ (fahren). Write the right form.")
  (accept "fahrt")
  (wrong-if "fährt" "That is the form for er, sie, es. The vowel changes only with du and er, sie, es, so ihr keeps the a: ihr fahrt.")
  (wrong-if "fahren" "fahren is for wir, sie and Sie. ihr takes -t: fahrt.")
  (hint "Does the vowel change with ihr?"))
```

---

## tragen and laufen

Two more verbs work the same way:

- tragen (to carry, to wear): du trägst, er trägt.
- laufen (to run; in everyday talk also to walk): au becomes äu: du
  läufst, er läuft.

Sie trägt eine Brille. (She wears glasses.)

```check
(text
  (ask "Write \"She wears glasses.\" in German.")
  (accept "Sie trägt eine Brille.") (accept "Sie trägt Brille.")
  (wrong-if "Sie tragt eine Brille." "With er, sie, es, tragen changes a to ä: sie trägt.")
  (wrong-if "Sie trägt ein Brille." "Brille is feminine (die Brille): eine Brille.")
  (hint "sie trägt ... and die Brille is feminine."))
```

---

## gehen or fahren

gehen is to go on foot. fahren is to go in a car, a bus, a train or on
a bike. nach means "to" before a city or a country:

- Wir fahren nach Wien. (We are going to Vienna.)
- Er fährt Auto. (He drives a car.)

```check
(choice
  (ask "Paul is driving to Hamburg. Which sentence says it?")
  (right "Paul fährt nach Hamburg.")
  (wrong "Paul geht nach Hamburg."
    "gehen is to go on foot. In a car, use fahren: Paul fährt nach Hamburg.")
  (wrong "Paul fahrt nach Hamburg."
    "Paul is er, and with er fahren changes its vowel: fährt.")
  (hint "On foot or by car?"))
```

---

## Worked example

```example
(example
  (problem "Say \"Tom runs fast.\" (schnell = fast)")
  (step "Tom is er, so laufen changes au to äu.")
  (step "The ending for er is -t: läuft.")
  (answer "Tom läuft schnell."))
```

```example
(example
  (problem "Say \"You (du) drive slowly.\" (langsam = slow, slowly)")
  (step "fahren with du: the vowel changes.")
  (step (text (ask "Write the form of fahren for du.") (accept "fährst")
          (wrong-if "fahrst" "With du, a becomes ä.")))
  (answer "Du fährst langsam."))
```

---

## Read

> Tom und Lena fahren nach Salzburg. Tom fährt. Lena lacht: "Du fährst
> sehr (very) langsam, Tom!" In Salzburg laufen sie viel.

```check
(choice
  (ask "What does Lena say about Tom?")
  (right "He drives very slowly.")
  (wrong "He drives very fast."
    "Fast is schnell. Lena says langsam: slowly.")
  (wrong "He runs a lot."
    "They both walk a lot in Salzburg (laufen sie viel). Lena's words are about Tom's driving: langsam.")
  (hint "Look at what Lena says, in the quotation marks."))
```

---

## Practice

```check
(text
  (ask "Er ___ (laufen) schnell. Write the right form.")
  (accept "läuft")
  (wrong-if "lauft" "With er, laufen changes au to äu: läuft.")
  (wrong-if "läufst" "läufst is for du. With er the ending is -t: läuft.")
  (hint "au becomes äu."))
```

```check
(text
  (ask "Write \"We are going to Berlin.\" (by train)")
  (accept "Wir fahren nach Berlin.") (accept "Nach Berlin fahren wir.")
  (wrong-if "Wir gehen nach Berlin." "gehen is on foot. By train it is fahren.")
  (wrong-if "Wir fähren nach Berlin." "The vowel changes only with du and er, sie, es. wir fahren.")
  (hint "Wir fahren nach ..."))
```

---

```check
(choice
  (ask "Which form is wrong?")
  (right "ich fähre")
  (wrong "du trägst"
    "du trägst is right: with du, tragen changes a to ä.")
  (wrong "ihr lauft"
    "ihr lauft is right: with ihr, the vowel does not change.")
  (hint "Which person never has the vowel change?"))
```

```check
(choice
  (ask "\"Anna trägt das Buch.\" What does it mean?")
  (right "Anna carries the book.")
  (wrong "Anna wears the book."
    "tragen means both carry and wear; with a book, carry is the meaning that fits.")
  (wrong "Anna reads the book."
    "tragen means to carry or to wear.")
  (hint "What do you do with a book you take with you?"))
```

```cards
(card "fahren" "to drive" (typed) (note "also: to go by car, bus or train. du fährst, er fährt"))
(card "tragen" "to carry" (typed) (note "also: to wear. du trägst, er trägt"))
(card "laufen" "to run" (typed) (note "du läufst, er läuft; in everyday talk also: to walk"))
(card "nach" "to" (typed) (note "before a city or a country: nach Wien"))
(card "schnell" "fast" (typed))
(card "langsam" "slow" (typed) (note "also: slowly"))
```

So: fahren, tragen and laufen change a to ä (au to äu) with du and
er, sie, es, and keep their regular endings.
