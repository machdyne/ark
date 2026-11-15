# The vowels

```lesson
(objective "Read the five vowels a, e, i, o, u, long and short, and the weak e at the end of a word.")
(minutes 20)
(keywords "vowel" "consonant")
```

In this lesson you learn to read the five German vowels aloud.

German uses the same 26 letters as English, plus four more: ä, ö, ü and ß. The letters a, e, i, o and u are the **vowels**: their sounds are made with the mouth open, so the air flows freely. (ä, ö and ü, in the next lesson, are vowels too.) Most other letters are **consonants**, like b, t or s: for these, the lips, tongue or teeth stop or squeeze the air.

The good news: German spelling is regular. A vowel letter almost always keeps the same sound, so you can read most words aloud as soon as you know the letters.

```note
(note "F6 reads the English words of these lessons aloud. Zeitlos has a German voice too, but it is a robot reading by spelling rules, not yet a model to copy. So this course describes each German sound in words, by comparing it with English. Recordings will come later.")
```

```check
(choice
  (ask "Which letters in the word Taxi are vowels?")
  (right "a and i")
  (wrong "T and x"
    "T and x are consonants: your tongue stops the air for t, and x is the two sounds k and s. The vowels are a and i.")
  (wrong "Only a"
    "i is a vowel too. The five vowels are a, e, i, o and u.")
  (hint "The vowels are a, e, i, o and u."))
```

---

## a, long and short

A German vowel can be **long** (held a little) or **short** (quick). The sound stays nearly the same; only its length changes.

German a is close to the a in "father". In **ja** (yes) it is long: "yah". In **alt** (old) it is short.

A rule of thumb: a vowel is usually long before one consonant (Name) and usually short before two (alt).

```check
(choice
  (ask "Is the a in alt long or short?")
  (right "Short: two consonants, l and t, come after it")
  (wrong "Long: a always sounds like the a in father"
    "The a in alt has the father sound, but quick. Two consonants after it, l and t, usually mean a short vowel.")
  (hint "Count the consonants after the a."))
```

---

## e, and the e at the end

Long e is close to the "ay" in "say", but it does not slide toward "ee" at the end. Short e is close to the e in "bed".

An e at the end of a German word is **not silent** (only a few words borrowed from English, like das Make-up, keep a silent e). It is a weak, short sound, like the a at the end of "sofa". So **der Name** (the name) sounds like "NAH-muh", not like English "name".

```check
(choice
  (ask "How does the e at the end of Name sound?")
  (right "Weak and short, like the a at the end of sofa")
  (wrong "It is silent, as in the English word name"
    "In English the final e of name is silent. In German words a final e is spoken, as a weak sound like the a in sofa.")
  (wrong "Like the ay in say"
    "That is the long e, as in Lena. At the end of a word, e is a weak sound, like the a in sofa.")
  (hint "Is any letter silent at the end of a German word?"))
```

```sources
(source "Duden, Das Aussprachewörterbuch (Duden volume 6): the German vowels, long and short, and unstressed e")
```

---

## i, o and u

| Letter | Long | Short |
|---|---|---|
| i | like the ee in "see" | like the i in "bit" |
| o | close to the o in "go", with no slide toward oo | close to the o in "off" |
| u | like the oo in "too" | close to the u in "put" |

So **gut** (good) sounds like "goot", with a long u. **und** (and) has a short u. **oder** (or) starts with a long o.

```check
(text
  (ask "Type the German word for good. It sounds like \"goot\".")
  (accept "gut")
  (accents nearly)
  (wrong-if "goot" "That is how it sounds, but German writes the oo sound with one letter: u.")
  (hint "The oo sound is written with the letter u.")
  (hint "g, then the vowel, then t."))
```

---

## Your first words

German words often come with **der**, **die** or **das**. All three mean "the". Learn each word with its der, die or das, the way it is shown here: part 2 of the course explains why.

```cards
(card "ja" "yes" (typed))
(card "gut" "good" (typed))
(card "alt" "old" (typed))
(card "und" "and" (typed))
(card "oder" "or" (typed))
(card "der Name" "the name" (typed))
(card "das Hotel" "the hotel" (typed))
(card "das Taxi" "the taxi" (typed))
```

```check
(text
  (ask "Type the German word for or.")
  (accept "oder")
  (accents nearly)
  (wrong-if "und" "und means and. The word for or is oder.")
  (hint "It starts with a long o."))
```

---

## Reading a word you have not seen

```example
(example
  (problem "Read the name Ute aloud.")
  (step "Find the vowels: u and e.")
  (step "The u has one consonant after it, t, so it is long: oo, as in too.")
  (step "The e is at the end of the word, so it is weak, like the a in sofa.")
  (answer "Ute sounds like \"OO-tuh\"."))
```

```example
(example
  (problem "Read the name Lena aloud.")
  (step "Find the vowels: e and a.")
  (step (choice (ask "The e has one consonant after it, n. Is it long or short?")
    (right "Long, like the ay in say")
    (wrong "Short, like the e in bed"
      "One consonant after a vowel usually means it is long. Two would usually mean short.")))
  (step "The a at the end is short.")
  (answer "Lena sounds like \"LAY-nah\"."))
```

---

## Practice

```check
(choice
  (ask "Which word has a short vowel?")
  (right "alt")
  (wrong "ja"
    "The a in ja ends the word and is long: yah.")
  (wrong "gut"
    "The u in gut has just one consonant after it, t, and it is long: goot.")
  (hint "Look for two consonants after the vowel."))
```

---

```check
(text
  (ask "Type the German word for yes.")
  (accept "ja")
  (accents nearly)
  (wrong-if "yah" "That is how it sounds. German writes the y sound at the start with the letter j: more on j in lesson 5.")
  (hint "Two letters: the first one is j."))
```

---

```check
(text
  (ask "Type the German for the hotel, with der, die or das.")
  (accept "das Hotel")
  (accents nearly)
  (wrong-if "Hotel" "Right word. Add the der, die or das that goes with it: das Hotel.")
  (wrong-if "der Hotel" "Hotel goes with das: das Hotel. Learn each word with its der, die or das.")
  (wrong-if "die Hotel" "Hotel goes with das: das Hotel. Learn each word with its der, die or das.")
  (hint "It is the same word as in English, with das before it."))
```

---

```check
(choice
  (ask "An English speaker reads the German word Name like the English word name. What is wrong?")
  (right "The a should sound as in father, and the final e should be spoken")
  (wrong "Nothing: German and English say it the same way"
    "The spelling is the same, but the sounds are not. German a is close to the a in father, and the final e is spoken, like the a in sofa.")
  (wrong "Only the capital N"
    "Capitals do not change how a word sounds. Think about the vowels: a as in father, and a spoken e at the end.")
  (hint "Think about the a and about the e at the end."))
```

So: German vowels keep their sounds, they can be long or short, and an e at the end of a German word is spoken.
