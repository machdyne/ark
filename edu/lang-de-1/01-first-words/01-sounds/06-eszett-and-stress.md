# ß, ss and stress

```lesson
(objective "Write ß or ss by the vowel before it, and read a word aloud with its stress on the right syllable.")
(minutes 25)
(keywords "syllable" "stress (of a word)")
```

In this lesson you learn when German writes ß, and which part of a word to say loudest.

## ß

The letter **ß** is called Eszett ("ess-tset") or "sharp s". It sounds like the s in "see", never like z. Here are three words with it: **Viele Grüße** (best wishes, at the end of a message), **Viel Spaß!** (Have fun!) and **Ich weiß.** (I know.)

```check
(choice
  (ask "How does ß sound?")
  (right "Like the s in see")
  (wrong "Like the z in zoo"
    "An s before a vowel often sounds like z, but ß never does. It is always the sharp s of see.")
  (wrong "Like the letter B"
    "It looks a little like B, but it is an s sound. Its name, Eszett, comes from s and z.")
  (hint "Its other name is sharp s."))
```

---

## ß or ss?

After a **long** vowel, or after ei, au or eu, the sharp s is written **ß**: Grüße, Spaß, weiß.

After a **short** vowel it is written **ss**: **die Adresse** (the address), Tschüss.

In Switzerland, people always write ss, never ß: Grüsse. That is right there. Written all in capitals, ß usually becomes SS: GRÜSSE.

```check
(text
  (ask "Type the German word for bye (Tschü_ _). Its ü is short.")
  (accept "Tschüss")
  (accept "Tschüs")
  (accept "Tschuess")
  (accept "Tschues")
  (accents nearly)
  (wrong-if "Tschüß" "That is an old spelling, from before the 1996 spelling reform. The ü is short, so today it is ss: Tschüss.")
  (hint "After a short vowel, write ss."))
```

```sources
(source "Rat für deutsche Rechtschreibung, Deutsche Rechtschreibung: Regeln und Wörterverzeichnis: the rules for the s sounds (ß after a long vowel or ei, au, eu; ss in Switzerland; SS in capitals)")
(source "Duden, entry tschüss (also tschüs)")
```

---

## Syllables

A **syllable** is a part of a word with one vowel sound in it. Clap as you say a word: each clap is a syllable.

- Na-me: 2 syllables
- Ur-laub: 2 syllables (au is one vowel sound)
- A-dres-se: 3 syllables

```check
(number
  (ask "How many syllables does der Vorname have? (Do not count der.)")
  (answer 3)
  (wrong-if 2 "Clap it: Vor-na-me. The e at the end is spoken in German, so it is a syllable of its own.")
  (wrong-if 4 "Vor-na-me has three vowel sounds: o, a and the final e.")
  (hint "Count the vowel sounds: o, a, e.")
  (hint "Vor-na-me."))
```

---

## Stress

The **stress** of a word is the syllable you say louder and a little longer, like the middle "na" in English "banana".

Most German words stress the **first** syllable: NA-me, UR-laub, VOR-na-me.

Many words from other languages stress a **later** syllable: ho-TEL, bü-RO, a-DRES-se, in-for-ma-TION (the end sounds like "tsee-ohn").

```check
(choice
  (ask "Which syllable is stressed in das Büro (the office)?")
  (right "The last: bü-RO")
  (wrong "The first: BÜ-ro"
    "Most German words stress the first syllable, but Büro came from French and stresses the last: bü-RO.")
  (hint "Büro is a word from another language."))
```

```sources
(source "Duden, Das Aussprachewörterbuch (Duden volume 6): word stress, and the entries Büro, Hotel, Information, Adresse")
```

---

## Almost no silent letters

German has almost no silent letters. The main one is **h after a vowel**: it is not spoken, and it shows that the vowel is long. So sehr is "zay-uh" and die Zahl is "tsahl".

At the start of a word, h is spoken, as in English.

```check
(choice
  (ask "Which letter in Zahl is not spoken?")
  (right "h")
  (wrong "Z"
    "Z is spoken, as ts. The silent letter comes after the vowel.")
  (wrong "l"
    "l is spoken. The h after the a only makes the a long.")
  (hint "Look right after the vowel."))
```

---

## Your words

```cards
(card "Viele Grüße" "Best wishes" (note "at the end of a letter or message"))
(card "Viel Spaß!" "Have fun!")
(card "Ich weiß." "I know.")
(card "das Büro" "the office" (typed))
(card "die Information" "the information" (note "also the information desk"))
(card "die Adresse" "the address" (typed))
```

```check
(text
  (ask "Type the German for the address, with der, die or das.")
  (accept "die Adresse")
  (accents nearly)
  (wrong-if "die Adreße" "After a short vowel, the sharp s is written ss: Adresse.")
  (wrong-if "die Adress" "German says the final e: A-dres-se, three syllables.")
  (wrong-if "Adresse" "Right word. Add the der, die or das that goes with it: die Adresse.")
  (hint "die, then the word: a, d, r, e, s, s, e."))
```

---

## Read: a message

Tom writes to Lea.

> Hallo Lea,

> wie ist Wien? Wie ist das Hotel?

> Viel Spaß in Wien!

> Viele Grüße, Tom

```check
(choice
  (ask "What does Tom wish Lea?")
  (right "Have fun in Vienna")
  (wrong "A good journey home"
    "Tom writes: Viel Spaß in Wien! Viel Spaß means have fun.")
  (wrong "Happy birthday"
    "Nothing in the message is about a birthday. Viel Spaß means have fun.")
  (hint "Find Viel Spaß."))
```

```check
(choice
  (ask "What does Tom ask Lea about?")
  (right "Vienna and the hotel")
  (wrong "Her address"
    "Tom asks: wie ist Wien? and wie ist das Hotel? wie means how.")
  (wrong "The taxi"
    "There is no taxi in this message. Tom asks how Vienna and the hotel are.")
  (hint "Read the second line."))
```

---

## Reading a word with ß

```example
(example
  (problem "Read Grüße aloud.")
  (step "Gr, then ü: ß comes after it, so the ü is long.")
  (step "ß is a sharp s, as in see. The e at the end is weak.")
  (step "The stress is on the first syllable: GRÜ-ße.")
  (answer "Grüße sounds like GRÜ-suh, with a long ü."))
```

```example
(example
  (problem "Read die Adresse aloud.")
  (step "A-dres-se: 3 syllables.")
  (step (choice (ask "Adresse came from French. Which syllable is stressed?")
    (right "The middle one: a-DRES-se")
    (wrong "The first one: A-dres-se"
      "Most German words stress the first syllable, but Adresse is not one of them. It stresses dres.")))
  (step "ss after the short e is a sharp s, and the final e is weak.")
  (answer "die Adresse sounds like \"dee a-DRES-suh\"."))
```

---

## Practice

```check
(text
  (ask "Type the German for I know.")
  (accept "Ich weiß")
  (accept "Ich weiss")
  (accents nearly)
  (wrong-if "Ich weis" "The sharp s after ei is written ß (or ss in Switzerland): Ich weiß.")
  (hint "ei, then ß: the s sound after ei is written ß."))
```

---

```check
(text
  (ask "Type how you end a friendly message: best wishes.")
  (accept "Viele Grüße")
  (accept "Viele Grüsse")
  (accept "Viele Gruesse")
  (accents nearly)
  (wrong-if "Viele Grüse" "After the long ü, the sharp s is written ß (or ss in Switzerland). A single s there would sound like z.")
  (hint "Viele, then the word with ü and ß."))
```

---

```check
(choice
  (ask "Which word stresses the first syllable?")
  (right "der Urlaub")
  (wrong "das Hotel"
    "Hotel is from another language and stresses the last syllable: ho-TEL.")
  (wrong "die Information"
    "Information stresses the last syllable: in-for-ma-TION.")
  (hint "Most German words stress the first syllable; words from other languages often do not."))
```

So: ß after a long vowel or ei, au, eu, and ss after a short one; most German words stress the first syllable, and an h after a vowel is silent.
