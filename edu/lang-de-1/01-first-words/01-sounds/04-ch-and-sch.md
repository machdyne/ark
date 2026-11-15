# ch and sch

```lesson
(objective "Read the two sounds of ch, and sch, tsch, sp and st.")
(minutes 20)
```

In this lesson you learn to read ch, which has two sounds, and sch, tsch, sp and st.

## ch after a, o, u and au

After a, o, u and au, **ch** is made at the back of the throat, like the ch in the Scottish word "loch". It is a rough, breathy sound, never a k.

So **auch** (also, too) ends with the loch sound, and so does **Ach so!** (Oh, I see!). In **die Sprache** (the language) it comes after a.

```check
(choice
  (ask "In which word is ch made at the back of the throat, as in loch?")
  (right "auch")
  (wrong "Österreich"
    "In Österreich the ch comes after ei. After ei, ch is the soft sound at the front of the mouth.")
  (wrong "München"
    "In München the ch comes after n, so it is the soft sound. The loch sound comes only after a, o, u and au.")
  (hint "Look at the letter just before the ch."))
```

---

## ch everywhere else

After any other letter (e, i, ä, ö, ü, ei, eu, or a consonant like n or l), ch is a soft hiss at the front of the mouth. It is close to the h at the start of "huge", said strongly. The middle of your tongue is close to the roof of your mouth.

So **ich** (I) does not sound like "ick" or "ish". The same soft ch is in Österreich and München.

(At the start of a word, ch changes from word to word, often in words from other languages. You will meet those words later.)

```check
(choice
  (ask "How does ich (I) sound?")
  (right "i, then a soft hiss like the h in huge, said strongly")
  (wrong "Like ick"
    "German ch is never a k sound in ich. It is a soft hiss, close to the h at the start of huge.")
  (wrong "Like ish"
    "Close, and many learners start there, but sh is made with rounded lips. For ch, keep your lips flat and hiss as for the h in huge.")
  (hint "After i, ch is the soft sound."))
```

```sources
(source "Duden, Das Aussprachewörterbuch (Duden volume 6): the two sounds of ch")
```

---

## sch and tsch

**sch** sounds like English sh. You have met it in schön and die Schweiz. Languages often end in -isch: **Englisch** (English) and **Französisch** (French).

**tsch** sounds like the ch in "church": Deutsch, Tschüss.

```check
(text
  (ask "Type the German word for English, the language.")
  (accept "Englisch")
  (accents nearly)
  (wrong-if "English" "That is the English spelling. German writes the sh sound as sch: Englisch.")
  (wrong-if "Englich" "ch alone is a different sound. The sh sound is written sch.")
  (hint "It ends with the sh sound, written sch.")
  (hint "E, n, g, l, i, s, c, h."))
```

---

## sp and st at the start

At the start of a word, **sp** sounds like "shp" and **st** like "sht". So **der Sport** (sport) sounds like "shport", and die Sprache starts with "shp".

In the middle or at the end of a word, s and t keep their own sounds: the st in Österreich is s, then t.

```check
(choice
  (ask "How do you say der Sport?")
  (right "Like shport")
  (wrong "Like sport in English"
    "At the start of a German word, sp sounds like shp. So Sport starts with sh.")
  (wrong "Like s-port, with a pause"
    "sp is not split. At the start of a word it sounds shp, all in one.")
  (hint "Where is the sp in the word?"))
```

---

## Your words

```cards
(card "ich" "I" (typed))
(card "auch" "also" (typed) (note "also: too"))
(card "Ach so!" "Oh, I see!" (note "when someone has just told you something"))
(card "die Sprache" "the language" (typed))
(card "Englisch" "English" (typed) (note "the language"))
(card "Französisch" "French" (typed) (note "the language"))
(card "der Sport" "sport" (typed) (note "also: sports"))
```

```check
(text
  (ask "Type the German word for also or too.")
  (accept "auch")
  (accents nearly)
  (wrong-if "auk" "ch after au is the loch sound, never a k. It is written ch: auch.")
  (hint "It sounds like the ow of how, then the loch sound.")
  (hint "a, u, c, h."))
```

---

## Read: two students

Anna and Ben meet at a summer school.

- **Anna:** Hallo! Ich bin Anna. Ich bin aus Wien.
- **Ben:** Hallo, Anna! Ich bin Ben. Ich bin auch aus Österreich.
- **Anna:** Ach so! Aus Wien?
- **Ben:** Nein, aus Graz.

(Hallo = hello; bin = am; Graz = a city in Austria)

```check
(choice
  (ask "Where is Ben from?")
  (right "From Graz, in Austria")
  (wrong "From Vienna"
    "Anna asks: Aus Wien? Ben says: Nein, aus Graz. nein means no.")
  (wrong "From Switzerland"
    "Ben says: Ich bin auch aus Österreich. Österreich is Austria.")
  (hint "Read Ben's last line."))
```

```check
(choice
  (ask "What does auch tell you in Ben's line Ich bin auch aus Österreich?")
  (right "Ben is from Austria too, like Anna")
  (wrong "Ben is from Austria, not like Anna"
    "auch means also or too. Anna is from Vienna, in Austria, and Ben is from Austria too.")
  (hint "auch means also or too."))
```

---

## Reading names

```example
(example
  (problem "Read the city name Bochum aloud.")
  (step "B, then o: one consonant comes next, so the o is long.")
  (step "ch comes after o, so it is the loch sound.")
  (step "Then u and m.")
  (answer "Bochum sounds like \"BOH-khum\", with the loch sound for kh."))
```

```example
(example
  (problem "Read the name Michael the German way.")
  (step "M, then a short i, as in bit.")
  (step (choice (ask "ch comes after i. Which sound is it?")
    (right "The soft hiss, as in ich")
    (wrong "The loch sound"
      "The loch sound comes only after a, o, u and au. After i, ch is the soft hiss.")))
  (step "Then a and e, said one after the other, and l.")
  (answer "Michael sounds like \"MI-cha-el\", with the soft ch of ich."))
```

---

## Practice

```check
(text
  (ask "Type the German word for I.")
  (accept "ich")
  (accents nearly)
  (wrong-if "ick" "German writes this soft sound ch: ich. It is never a k.")
  (wrong-if "isch" "sch is the sh sound. The soft hiss in I is written ch: ich.")
  (hint "Three letters: i, then the soft ch."))
```

---

```check
(choice
  (ask "Which word starts with the sound sh?")
  (right "die Sprache")
  (wrong "Englisch"
    "Englisch ends with the sh sound, written sch. It starts with E.")
  (wrong "das Taxi"
    "T is as in English. Look for sp, st or sch at the start of a word.")
  (hint "sp at the start of a word sounds shp."))
```

---

```check
(text
  (ask "Type the German word for French, the language.")
  (accept "Französisch")
  (accept "Franzoesisch")
  (accents nearly)
  (wrong-if "French" "That is the English word. In German, languages often end in -isch.")
  (hint "It ends like Englisch, with -isch.")
  (hint "Franz, then ö, then sisch."))
```

So: ch is the loch sound after a, o, u and au and a soft hiss everywhere else; sch is sh, tsch is the ch of church, and sp and st start with sh.
