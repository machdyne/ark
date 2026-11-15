# The alphabet

```lesson
(objective "Say the names of the German letters, and the ones English speakers mix up.")
(minutes 25)
```

In this lesson you learn what Germans call each letter, so you can spell words aloud. **das Alphabet** is the alphabet, and **der Buchstabe** is a letter of it.

## A to M

Most German letter names follow the sounds you know. Here they are, with English sounds to help:

| Letter | Name | Close to |
|---|---|---|
| A | A | "ah" |
| B | Be | "bay" |
| C | Ce | "tsay" |
| D | De | "day" |
| E | E | "ay" |
| F | Ef | "eff" |
| G | Ge | "gay" |
| H | Ha | "hah" |
| I | I | "ee" |
| J | Jot | "yot" |
| K | Ka | "kah" |
| L | El | "ell" |
| M | Em | "emm" |

(The ay sounds are the German long e: no slide toward ee.)

```check
(choice
  (ask "How do Germans say the letter E?")
  (right "Like ay")
  (wrong "Like ee"
    "ee is the German name of I. E is said like the German long e: close to ay.")
  (wrong "Like eh, short"
    "The name of E is long, close to ay, without a slide toward ee.")
  (hint "Think of the German long e, as in Lena."))
```

---

## N to Z

| Letter | Name | Close to |
|---|---|---|
| N | En | "enn" |
| O | O | "oh" |
| P | Pe | "pay" |
| Q | Qu | "koo" |
| R | Er | "air", with the German r |
| S | Es | "ess" |
| T | Te | "tay" |
| U | U | "oo" |
| V | Vau | "fow", rhymes with how |
| W | We | "vay" |
| X | Ix | "iks" |
| Y | Ypsilon | "ÜP-see-lon" |
| Z | Zet | "tset" |

```check
(choice
  (ask "How do Germans say the letter W?")
  (right "Like vay")
  (wrong "Like double-u"
    "double-u is the English name. In German, W is We, said like vay.")
  (wrong "Like fow"
    "fow is the name of V, Vau. W is We: vay.")
  (hint "German w sounds like English v."))
```

---

## Ä, Ö, Ü and ß

The umlauts are said as their sounds: ä, ö, ü. People also say "A-Umlaut", "O-Umlaut", "U-Umlaut". ß is called **Eszett** ("ess-tset").

```check
(text
  (ask "Type the German name of the letter ß.")
  (accept "Eszett")
  (accept "scharfes S")
  (accept "scharfes ß")
  (accents nearly)
  (wrong-if "Esszett" "Close: one s. Es (the name of S) + Zet (the name of Z): Eszett.")
  (wrong-if "B" "ß looks a little like B, but it is a sharp s. Its name is Eszett.")
  (hint "It is S and Z said together: Es + Zet."))
```

```sources
(source "Duden, entries for the letter names (A, Be, Ce ... Jot, Vau, We, Ix, Ypsilon, Zet, Eszett)")
```

---

## The ones English speakers mix up

These letters have names that sound like other letters in English:

- **E** is said ay (English A), and **I** is said ee (English E).
- **G** is said gay, and **J** is said yot.
- **V** is said fow, and **W** is said vay.

In Austria you will also hear Je for J.

```check
(text
  (ask "A German spells: Ha, I. Type the two letters.")
  (accept "HI")
  (accept "H I")
  (accept "H, I")
  (accents nearly)
  (wrong-if "HE" "I is said ee in German. So Ha, I (ee) is H, I.")
  (wrong-if "AE" "Ha is H. And the ee sound is the name of I.")
  (hint "The German name of I sounds like English ee."))
```

---

## Your words

```cards
(card "das Alphabet" "the alphabet" (typed))
(card "der Buchstabe" "the letter" (typed) (note "of the alphabet"))
(card "Jot" "the letter J" (note "said yot"))
(card "Vau" "the letter V" (note "said fow"))
(card "We" "the letter W" (note "said vay"))
(card "Ypsilon" "the letter Y")
(card "Zet" "the letter Z" (note "said tset"))
(card "Eszett" "the letter ß")
(card "E" "the letter E" (note "said ay"))
(card "I" "the letter I" (note "said ee"))
```

```check
(text
  (ask "Which letter is called Vau? Type the letter.")
  (accept "V")
  (accents nearly)
  (wrong-if "W" "W is We, said vay. Vau, said fow, is V.")
  (wrong-if "F" "F is Ef. Vau is V: and v sounds like f in German words, too.")
  (hint "Vau sounds like fow."))
```

---

## Read: letters you say

Tom asks Lea about short forms.

- **Tom:** Wie sagt man USA auf Deutsch?
- **Lea:** U, Es, A: "oo-ess-ah".
- **Tom:** Und EU?
- **Lea:** E, U: "ay-oo". Ganz einfach! (ganz einfach = very easy)

```check
(choice
  (ask "How do Germans say EU?")
  (right "ay-oo")
  (wrong "ee-yoo"
    "That is English. In German, E is said ay and U is said oo: ay-oo.")
  (wrong "oy"
    "eu in a word sounds like oy, as in neu. But EU here is two letters, said one by one: E, U.")
  (hint "Say the German names of E and U."))
```

```check
(choice
  (ask "Lea says the letter S in USA. How does she say it?")
  (right "Es")
  (wrong "Zet"
    "Zet is the name of Z. S is Es.")
  (wrong "Eszett"
    "Eszett is the name of ß. S is simply Es.")
  (hint "Look at what Lea writes for S."))
```

---

## Spelling aloud

```example
(example
  (problem "Spell Jens aloud with German letter names.")
  (step "J is Jot.")
  (step "E is E, said ay.")
  (step "N is En, and S is Es.")
  (answer "Jot, E, En, Es."))
```

```example
(example
  (problem "Spell Ivo aloud with German letter names.")
  (step (choice (ask "How do you say I?")
    (right "I, said ee")
    (wrong "E, said ay"
      "The German name of I is said ee. ay is the name of E.")))
  (step "V is Vau, said fow.")
  (step "O is O.")
  (answer "I, Vau, O."))
```

---

## Practice

```check
(choice
  (ask "A German says: Ge. Which letter is it?")
  (right "G")
  (wrong "J"
    "J is Jot. Ge, said gay, is G.")
  (hint "Ge sounds like gay."))
```

---

```check
(text
  (ask "Type the German name of the letter J.")
  (accept "Jot")
  (accept "Jott")
  (accept "Je")
  (accents nearly)
  (wrong-if "Jay" "That is the English name. In German, J is Jot, said yot.")
  (wrong-if "Ge" "Ge is G. J is Jot.")
  (hint "It sounds like yot."))
```

---

```check
(choice
  (ask "A German spells: We, E, Be. Which word is it?")
  (right "WEB")
  (wrong "VEB"
    "We is W, said vay. Vau would be V.")
  (wrong "WIB"
    "E is said ay, and is E. The name of I would be ee.")
  (hint "We = W, E = E, Be = B."))
```

So: German letter names follow German sounds; watch E (ay), I (ee), J (Jot), V (Vau), W (We) and Z (Zet), and ß is Eszett.
