# Vowel pairs

```lesson
(objective "Read ei, ie, au and eu (äu), and tell ei from ie.")
(minutes 20)
```

In this lesson you learn four pairs of vowels that make one sound each: ei, ie, au and eu.

## ei

**ei** sounds like the English word "eye". So **nein** (no) sounds like English "nine", and **die Schweiz** (Switzerland) has the same "eye" sound in the middle.

```check
(text
  (ask "Type the German word for no. It sounds like the English word nine.")
  (accept "nein")
  (accents nearly)
  (wrong-if "nien" "Close! But ie sounds like ee. The eye sound is written ei: nein.")
  (wrong-if "nine" "That is the English spelling. German writes the eye sound as ei.")
  (hint "The eye sound is written e, then i."))
```

---

## ie

**ie** sounds like the ee in "see". So **wie** (how) sounds like "vee": the German w sounds like English v (lesson 5). **Wien** (Vienna) sounds like "veen".

ei or ie? Say the English name of the **second** letter. In ei, the second letter is i, and English says "eye". In ie, it is e, and English says "ee".

```check
(choice
  (ask "How do you say Wien, the German name of Vienna?")
  (right "Like veen")
  (wrong "Like vine"
    "vine would be written with ei. In ie the second letter is e, so it sounds like ee: veen.")
  (wrong "Like wee-en, two sounds"
    "ie is one sound, a long ee. It is not i and then e.")
  (hint "Say the English name of the second letter."))
```

---

## au

**au** sounds like the ow in "how". So **aus** (from, out of) rhymes with English "house". **der Urlaub** (the holiday, the vacation) ends with the same sound: "OOR-lowp".

```check
(choice
  (ask "Which German word has the ow sound of how?")
  (right "aus")
  (wrong "nein"
    "nein has ei, the eye sound. The ow sound is written au.")
  (wrong "wie"
    "wie has ie, the ee sound. Look for au.")
  (hint "The ow sound is written a, then u."))
```

---

## eu and äu

**eu** sounds like the oy in "boy". So **neu** (new) sounds like "noy". **Deutsch** (German, the language) starts with "doy". The pair **äu** has the same sound.

```check
(text
  (ask "Type the German word for new. It sounds like noy.")
  (accept "neu")
  (accents nearly)
  (wrong-if "noi" "That is the sound in English spelling. German writes the oy sound as eu.")
  (wrong-if "neo" "The oy sound is written e, then u: neu.")
  (hint "The oy sound is written e, then u."))
```

```sources
(source "Duden, Das Aussprachewörterbuch (Duden volume 6): the diphthongs ei, au and eu, and ie as long i")
```

---

## Your words

```cards
(card "nein" "no" (typed))
(card "wie" "how" (typed))
(card "Wien" "Vienna" (typed))
(card "die Schweiz" "Switzerland" (typed))
(card "aus" "from, out of" (note "Ich komme aus ... means I come from ..."))
(card "der Urlaub" "the holiday, the vacation" (note "time off work, or a holiday trip; school holidays are die Ferien"))
(card "Deutsch" "German" (typed) (note "the language"))
(card "neu" "new" (typed))
```

```check
(text
  (ask "Type the German word for German, the language.")
  (accept "Deutsch")
  (accents nearly)
  (wrong-if "Doitsch" "That is close to the sound. The oy sound is written eu: Deutsch.")
  (wrong-if "German" "That is the English word. In German it is Deutsch.")
  (hint "It starts with d, then the oy sound, written eu.")
  (hint "D, e, u, t, s, c, h."))
```

---

## Read: a postcard

Ben is on holiday. He writes to Anna.

> Hallo Anna,

> Urlaub in Wien!

> Das Hotel ist alt und schön.

> Das Taxi ist neu.

> Wien ist schön!

> Tschüss, Ben

(Hallo = hello; in = in; ist = is)

```check
(choice
  (ask "What does Ben say is new?")
  (right "The taxi")
  (wrong "The hotel"
    "Ben writes: Das Hotel ist alt und schön. alt means old. The taxi is new: Das Taxi ist neu.")
  (wrong "Vienna"
    "Ben writes that Wien is schön: beautiful. neu comes in the line about the taxi.")
  (hint "Find the word neu in the postcard."))
```

```check
(choice
  (ask "Where is Ben on holiday?")
  (right "In Vienna")
  (wrong "In Switzerland"
    "Switzerland is die Schweiz. Ben writes Wien: Vienna, in Austria.")
  (wrong "In Munich"
    "Munich is München. Ben writes Wien, with ie: veen, Vienna.")
  (hint "Look at the second line."))
```

---

## Reading a name

```example
(example
  (problem "Read the name Dieter aloud.")
  (step "ie is one sound: ee, as in see.")
  (step "Then t, then e and r: the end sounds weak, a little like the end of English sofa.")
  (answer "Dieter sounds like \"DEE-tuh\"."))
```

```example
(example
  (problem "Read the name Heike aloud.")
  (step (choice (ask "How do you say ei?")
    (right "Like the English word eye")
    (wrong "Like ee"
      "That is ie. In ei the second letter is i, and English says eye.")))
  (step "Then k, then a weak e at the end.")
  (answer "Heike sounds like \"HY-kuh\"."))
```

---

## Practice

```check
(choice
  (ask "Which pair sounds like the oy in boy?")
  (right "eu")
  (wrong "ei"
    "ei sounds like eye. The oy sound is eu (or äu).")
  (wrong "au"
    "au sounds like the ow in how. The oy sound is eu.")
  (hint "Think of neu, new."))
```

---

```check
(text
  (ask "Type the German name of Vienna.")
  (accept "Wien")
  (accents nearly)
  (wrong-if "Wein" "With ei it would sound like vine, a different word. Vienna is said veen: ie.")
  (wrong-if "Vienna" "That is the English name. The German name is short: it sounds like veen.")
  (hint "It sounds like veen. German w sounds like v.")
  (hint "W, then ie, then n."))
```

---

```check
(choice
  (ask "How do you say die Schweiz, Switzerland?")
  (right "With the eye sound, as in nein")
  (wrong "With the ee sound, as in wie"
    "Schweiz is written with ei, and the second letter is i: eye. ie would be ee.")
  (hint "Is it ei or ie? Say the English name of the second letter."))
```

So: ei is eye, ie is ee, au is ow and eu is oy; for ei and ie, say the English name of the second letter.
