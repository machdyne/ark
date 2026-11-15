# w, v, z, j, s and r

```lesson
(objective "Read w, v, z, j, s and r, and b, d and g at the end of a word.")
(minutes 25)
```

In this lesson you learn the consonants that German says differently from English.

## w

German **w** sounds like English v. So **wo** (where) sounds like "voh", and **was** (what) like "vass", with a short a. You have met this in wie and Wien.

```check
(text
  (ask "Type the German word for where. It sounds like voh.")
  (accept "wo")
  (accents nearly)
  (wrong-if "vo" "The v sound is written w in German: wo.")
  (wrong-if "wie" "wie means how. where is wo.")
  (hint "German writes the v sound with w."))
```

---

## v

German **v** usually sounds like f. So **der Vorname** (the first name) sounds like "FOR-nah-muh".

In some words that came from other languages, v sounds like English v: das Video, for example.

```check
(choice
  (ask "How do you say der Vorname?")
  (right "With an f sound at the start: FOR-nah-muh")
  (wrong "With a v sound at the start, as in English"
    "German v usually sounds like f. Only some words from other languages keep the English v sound.")
  (wrong "With a w sound at the start"
    "German has no w sound like English we. And v usually sounds like f.")
  (hint "German v usually sounds like a different English letter."))
```

---

## z

German **z** sounds like the ts in "cats", even at the start of a word. So **die Zahl** (the number) sounds like "tsahl". The Schweiz ends with ts too.

**Herzlich willkommen!** (Welcome!) has both: herz sounds like "herts", and willkommen starts with a v sound.

```check
(text
  (ask "Type the German word for number (like 7 or 12). It sounds like tsahl.")
  (accept "Zahl")
  (accept "die Zahl")
  (accents nearly)
  (wrong-if "Tsahl" "German writes the ts sound with one letter: z. So: Zahl.")
  (wrong-if "Zal" "Close: there is an h after the a, which makes the a long. Zahl.")
  (hint "The ts sound is written z.")
  (hint "Z, a, h, l."))
```

---

## j

German **j** sounds like the y in "yes". So ja sounds like "yah", and **jung** (young) like "yoong", with a short u.

```check
(choice
  (ask "How do you say jung (young)?")
  (right "Like yoong, with a y sound")
  (wrong "Like the English word young"
    "Close in meaning, but German j sounds like y, and the u is the oo of book, not the u of young.")
  (wrong "With the j of jump"
    "German j is never the j of jump. It sounds like the y in yes.")
  (hint "Think of ja: yah."))
```

---

## s

Before a vowel, German **s** usually sounds like English z. So **sehr** (very) starts like "zay". At the end of a word, or before a consonant, s sounds like the s in "see": was, aus.

In the south of Germany, in Austria and in Switzerland, many people say s there too. Both are right.

```check
(choice
  (ask "How does sehr (very) start, in most of Germany?")
  (right "With a z sound, as in zoo")
  (wrong "With an s sound, as in see"
    "In the south and in Austria and Switzerland, many say it so. But in most of Germany, s before a vowel sounds like z.")
  (wrong "With a sh sound"
    "Only sch, sp and st at the start make sh. A plain s before a vowel sounds like z.")
  (hint "s is before a vowel here."))
```

---

## r

At the start of a word or after a consonant, **r** in most of Germany is made at the back of the mouth, close to a soft gargle. Many people in the south, in Austria and in Switzerland roll it with the tip of the tongue instead.

After a vowel at the end of a word, r is often only a weak sound, close to the a in "sofa". So sehr sounds like "zay-uh".

```check
(choice
  (ask "Which is a usual way to say the r at the end of sehr?")
  (right "As a weak sound, close to the a in sofa")
  (wrong "As a strong English r"
    "After a vowel at the end of a word, German r is usually weak, close to the a in sofa.")
  (wrong "It is not there at all"
    "It is weak, but you still hear it, close to the a in sofa.")
  (hint "Think of the r at the end of sehr."))
```

```sources
(source "Duden, Das Aussprachewörterbuch (Duden volume 6): the consonants w, v, z, j, s and r, and final b, d and g")
```

---

## b, d and g at the end

At the end of a word, **b** sounds like p, **d** like t, and **g** like k. So und sounds like "unt", and der Urlaub ends like "lowp".

```check
(choice
  (ask "How does und end?")
  (right "With a t sound: unt")
  (wrong "With a d sound, as in English and"
    "At the end of a German word, d sounds like t. So und sounds like unt.")
  (hint "At the end of a word, d sounds like another letter."))
```

---

## Your words

```cards
(card "wo" "where" (typed))
(card "was" "what" (typed))
(card "Herzlich willkommen!" "Welcome!")
(card "der Vorname" "the first name" (typed))
(card "die Zahl" "the number" (note "a number like 7 or 12"))
(card "jung" "young" (typed))
(card "sehr" "very" (typed))
```

```check
(text
  (ask "Type the German word for what.")
  (accept "was")
  (accents nearly)
  (wrong-if "wo" "wo means where. what is was.")
  (wrong-if "vas" "Close in sound. German writes the v sound with w: was.")
  (hint "It sounds like vass, with a short a."))
```

---

## Read: where is Lea?

- **Tom:** Wo ist Lea?
- **Anna:** Lea ist in Wien. Urlaub!
- **Tom:** Ach so! Wien ist sehr schön.
- **Anna:** Ja, sehr schön. Und das Hotel ist neu.

(ist = is; in = in)

```check
(choice
  (ask "Where is Lea?")
  (right "In Vienna, on holiday")
  (wrong "At the hotel in Munich"
    "Anna says: Lea ist in Wien. Wien is Vienna; München would be Munich.")
  (wrong "Nobody knows"
    "Tom asks: Wo ist Lea? (Where is Lea?) And Anna answers: Lea ist in Wien.")
  (hint "Read Anna's first line."))
```

```check
(choice
  (ask "What does Tom say about Vienna?")
  (right "It is very beautiful")
  (wrong "It is very new"
    "Anna says the hotel is new: das Hotel ist neu. Tom says: Wien ist sehr schön.")
  (wrong "It is very old"
    "old is alt, and nobody says it. Tom says: sehr schön, very beautiful.")
  (hint "sehr means very; schön means beautiful."))
```

---

## Reading names

```example
(example
  (problem "Read the name Jens aloud.")
  (step "J sounds like the y in yes.")
  (step "e has two consonants after it, n and s, so it is short, as in bed.")
  (step "s at the end of a word sounds like s.")
  (answer "Jens sounds like \"yens\"."))
```

```example
(example
  (problem "Read the name Susanne aloud.")
  (step (choice (ask "The first s comes before a vowel. How does it sound, in most of Germany?")
    (right "Like z")
    (wrong "Like s in see"
      "Before a vowel, s usually sounds like z in most of Germany.")))
  (step "The second s is also between vowels: z again.")
  (step "nn makes the a short, and the final e is weak.")
  (answer "Susanne sounds like \"zoo-ZAH-nuh\"."))
```

---

## Practice

```check
(text
  (ask "Type the German word for very. It sounds like zay-uh.")
  (accept "sehr")
  (accents nearly)
  (wrong-if "zehr" "German writes this z sound with s: s before a vowel sounds like z. So: sehr.")
  (wrong-if "ser" "Close: there is an h after the e. It makes the e long: sehr.")
  (hint "It starts with s and has an h after the e."))
```

---

```check
(choice
  (ask "Which German letter sounds like the ts in cats?")
  (right "z")
  (wrong "s"
    "s sounds like z before a vowel and like s elsewhere. The ts sound is written z.")
  (wrong "j"
    "j sounds like the y in yes. The ts sound is written z.")
  (hint "Think of die Zahl: tsahl."))
```

---

```check
(text
  (ask "Type the German word for young.")
  (accept "jung")
  (accents nearly)
  (wrong-if "young" "That is the English word. German writes the y sound with j: jung.")
  (wrong-if "yung" "German writes the y sound with j: jung.")
  (hint "It sounds like yoong."))
```

So: w is v, v is usually f, z is ts, j is y, s before a vowel is usually z, and b, d and g at the end sound like p, t and k.
