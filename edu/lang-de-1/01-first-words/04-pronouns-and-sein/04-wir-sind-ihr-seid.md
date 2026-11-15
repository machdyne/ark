# wir sind, ihr seid

```lesson
(objective "Say wir sind, ihr seid, sie sind and Sie sind, and know all of sein.")
(minutes 20)
```

In this lesson you learn the rest of sein: we are, you are, they are.

## wir sind

With wir, the form is **sind**: Wir sind neu. (We are new.) Wir sind aus Kanada.

```check
(text
  (ask "Fill in: Lea und ich, wir ___ aus Deutschland.")
  (accept "sind")
  (accept "wir sind aus Deutschland")
  (accents nearly)
  (wrong-if "ist" "ist is for one: he, she, it. With wir: sind.")
  (wrong-if "bin" "bin is for ich alone. With wir: sind.")
  (hint "we are = wir ..."))
```

---

## ihr seid

With ihr, the form is **seid**: Ihr seid jung. (You are young, to two or more friends.)

seid sounds just like seit, a different word that means since. The form of sein is always seid, with d.

```check
(text
  (ask "Fill in: Tom und Sara, ihr ___ neu.")
  (accept "seid")
  (accept "ihr seid neu")
  (accents nearly)
  (wrong-if "seit" "seit is a different word (since). With ihr, sein is seid, with d.")
  (wrong-if "sind" "sind is for wir, sie and Sie. With ihr: seid.")
  (hint "It sounds like zite, and ends in d."))
```

---

## sie sind, Sie sind

They are and the formal you are both **sind**: sie sind (they are), Sie sind (you are).

- Tom und Sara sind aus Kanada. Sie sind jung.
- Herr Wolf, Sie sind neu, oder? (oder? at the end = right?)

```check
(choice
  (ask "Frau Berger, ___ sind aus München?")
  (right "Sie")
  (wrong "du"
    "With du, sein is bist: du bist. Frau Berger is Sie: Sie sind.")
  (wrong "ihr"
    "With ihr, sein is seid. Frau Berger is one person you say Sie to: Sie sind.")
  (hint "sind goes with wir, sie (they) and Sie."))
```

---

## All of sein

| | one | more than one |
|---|---|---|
| I, we | ich bin | wir sind |
| you (informal) | du bist | ihr seid |
| he, she, it; they | er, sie, es ist | sie sind |
| you (formal) | Sie sind | Sie sind |

```check
(text
  (ask "Which form of sein goes with ihr?")
  (accept "seid")
  (accept "ihr seid")
  (accents nearly)
  (wrong-if "seit" "seit means since. The form of sein is seid, with d.")
  (wrong-if "sind" "sind goes with wir, sie and Sie. With ihr: seid.")
  (hint "ihr ... (it ends in d)"))
```

```sources
(source "Duden, Die Grammatik: the forms of sein")
```

---

## zusammen and da

**zusammen** means together: Wir sind zusammen in Wien.

**da** means there, and also here, present: Da ist Lea! (There's Lea!) Ich bin da. (I'm here.)

```cards
(card "wir sind" "we are" (typed))
(card "ihr seid" "you are (two or more, informal)" (note "seid, with d"))
(card "sie sind / Sie sind" "they are / you are (formal)")
(card "zusammen" "together" (typed))
(card "da" "there; here (present)")
```

```check
(text
  (ask "Type the German word for together.")
  (accept "zusammen")
  (accents nearly)
  (wrong-if "tsusammen" "The ts sound is written z: zusammen.")
  (wrong-if "zusamen" "Two m's: they make the a short. zusammen.")
  (hint "It starts with z, which sounds like ts.")
  (hint "zu, then sammen."))
```

---

## Read: the course starts

- **Frau Berger:** Guten Morgen! Sara und Tom, ihr seid da. Sehr gut!
- **Sara:** Ja, wir sind zusammen da.
- **Tom:** Und Herr Wolf ist auch da.
- **Herr Wolf:** Guten Morgen! Wir sind alle da.
- **Frau Berger:** Toll! Herzlich willkommen!

(toll = great)

```check
(choice
  (ask "Who is there?")
  (right "Everyone: Sara, Tom and Herr Wolf")
  (wrong "Only Sara and Tom"
    "Tom says Herr Wolf ist auch da, and Herr Wolf says: Wir sind alle da.")
  (wrong "Nobody yet"
    "Frau Berger says: ihr seid da. They are there.")
  (hint "Herr Wolf says: Wir sind alle da."))
```

```check
(choice
  (ask "Frau Berger says ihr seid da to Sara and Tom. Why ihr?")
  (right "She talks to two people at once, informally")
  (wrong "She is talking about them, not to them"
    "To talk about them she would say sie sind. ihr seid speaks to them.")
  (wrong "ihr is the formal you"
    "The formal you is Sie. ihr is the informal you for two or more.")
  (hint "ihr speaks to two or more people."))
```

---

## Choosing the form

```example
(example
  (problem "Say: We are together.")
  (step "We: wir.")
  (step "With wir, sein is sind.")
  (answer "Wir sind zusammen."))
```

```example
(example
  (problem "Say to Lea and Tom: You are new.")
  (step "Two friends: ihr.")
  (step (choice (ask "Which form goes with ihr?")
    (right "seid")
    (wrong "sind"
      "sind goes with wir, sie and Sie. With ihr: seid.")))
  (answer "Ihr seid neu."))
```

---

## Practice

```check
(choice
  (ask "Which sentence is right?")
  (right "Wir sind aus Kanada.")
  (wrong "Wir seid aus Kanada."
    "seid goes with ihr. With wir: sind.")
  (wrong "Wir ist aus Kanada."
    "ist is for one: he, she, it. With wir: sind.")
  (hint "we are = wir sind."))
```

---

```check
(text
  (ask "Fill in: Herr Wolf und Frau Berger ___ da.")
  (accept "sind")
  (accept "Herr Wolf und Frau Berger sind da")
  (accents nearly)
  (wrong-if "ist" "Two people: they. With sie (they), sein is sind.")
  (wrong-if "seid" "seid is for ihr, when you talk to them. Here you talk about them: sind.")
  (hint "Two people = sie (they)."))
```

---

```check
(text
  (ask "Type the German for we are.")
  (accept "wir sind")
  (accents nearly)
  (wrong-if "wir seid" "seid goes with ihr. we are is wir sind.")
  (wrong-if "wir bin" "bin goes with ich. we are is wir sind.")
  (hint "wir, then the form for more than one."))
```

So: wir sind, ihr seid, sie sind, Sie sind; with ich bin, du bist and er, sie, es ist, that is all of sein.
