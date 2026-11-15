# Umlauts

```lesson
(objective "Read and write ä, ö and ü, and see that an umlaut changes a word.")
(minutes 20)
(keywords "umlaut")
```

In this lesson you learn to read and write ä, ö and ü.

The two dots over a, o or u are an **umlaut**. The letters ä, ö and ü are often called "umlauts" too. An umlaut is not decoration: it changes the vowel's sound, and leaving it out can turn one word into another.

German says ä as "a-umlaut", ö as "o-umlaut" and ü as "u-umlaut".

```check
(choice
  (ask "Which word has an umlaut?")
  (right "schön")
  (wrong "Name"
    "Name has the vowels a and e, with no dots. An umlaut is the two dots over a, o or u.")
  (wrong "Hotel"
    "Hotel has o and e with no dots. Look for ä, ö or ü.")
  (hint "Look for two dots over a vowel."))
```

---

## ä

Short ä sounds the same as a short German e: close to the e in "bed". Long ä is that same sound, held longer (not the "ay" of long e). In **Dänemark** (Denmark), the ä is long: the e of "bed", held a little.

```check
(choice
  (ask "Which English word has a sound close to German short ä?")
  (right "bed")
  (wrong "cat"
    "The a in cat is lower and flatter. German ä is close to the e in bed.")
  (wrong "father"
    "That is close to German a, without the dots. The umlaut moves the sound to the e of bed.")
  (hint "Short ä sounds like a short German e."))
```

---

## ö

English has no ö. To make it, say the German long e, close to the "ay" in "say". Keep your tongue where it is and round your lips, as if you were saying o.

**schön** (beautiful, nice) has a long ö, and so does the start of **Österreich** (Austria). A short ö starts from the e in "bed" instead, with the lips rounded the same way.

```check
(text
  (ask "Type the German word for beautiful or nice.")
  (accept "schön")
  (accept "schoen")
  (accents nearly)
  (hint "It starts with sch, like English sh.")
  (hint "s, c, h, then o with two dots, then n."))
```

---

## ü

English has no ü either. Say "ee", as in "see". Keep your tongue where it is and round your lips, as if you were saying "oo".

**für** (for) has a long ü. **München** (Munich) and **Tschüss** (bye) have a short ü: start from the i in "bit" and round your lips.

A **Schüler** is a school student, a boy or a man; a girl or a woman is a **Schülerin**.

```check
(choice
  (ask "How do you make the sound ü?")
  (right "Say ee, then round your lips as for oo")
  (wrong "Say oo, as in too"
    "oo is the sound of German u, without dots. For ü, your tongue stays where it is for ee, and only your lips round.")
  (wrong "Say u, as in up"
    "The u in up is not a German sound at all. For ü, say ee and round your lips.")
  (hint "Start from the ee in see."))
```

```sources
(source "Duden, Das Aussprachewörterbuch (Duden volume 6): the vowels ä, ö and ü")
```

---

## Without an umlaut key

On a keyboard with no umlauts, Germans write the vowel and then e: ae, oe, ue. So Österreich becomes Oesterreich, and München becomes Muenchen. German passports do the same in the machine-readable lines at the bottom of the page: Müller is written MUELLER there.

Do not just drop the dots: u and ü are different sounds.

```sources
(source "ICAO, Doc 9303, Machine Readable Travel Documents, Part 3: transliteration of national characters")
```

```check
(text
  (ask "You have no ü key. How do you write München?")
  (accept "Muenchen")
  (accents nearly)
  (wrong-if "Munchen" "Dropping the dots gives a different sound. Write u and then e: Muenchen.")
  (hint "ü becomes two letters: u and e."))
```

---

## Your words

```cards
(card "schön" "beautiful" (typed) (note "also: nice"))
(card "für" "for" (typed))
(card "der Schüler" "the student (boy or man)" (note "at school"))
(card "die Schülerin" "the student (girl or woman)" (note "at school"))
(card "Tschüss!" "Bye!")
(card "Österreich" "Austria" (typed))
(card "München" "Munich" (typed))
(card "Dänemark" "Denmark" (typed))
```

```check
(text
  (ask "Type the German word for Austria.")
  (accept "Österreich")
  (accept "Oesterreich")
  (accents nearly)
  (wrong-if "Austria" "That is the English name. In German, Austria is Österreich.")
  (hint "It starts with ö.")
  (hint "Ö, s, t, e, r, r, e, i, c, h."))
```

---

## Reading a word with an umlaut

```example
(example
  (problem "Read schön aloud.")
  (step "sch sounds like English sh (lesson 4 has more on it).")
  (step "ö has one consonant after it, n, so it is long: say ay, then round your lips.")
  (step "n is as in English.")
  (answer "schön is sh, then a long ö, then n."))
```

```example
(example
  (problem "Read für aloud.")
  (step "f is as in English.")
  (step (choice (ask "ü has one consonant after it, r. How do you say it?")
    (right "Long: say ee and round your lips")
    (wrong "Like oo in too"
      "That is u without dots. For ü, keep your tongue at ee and round your lips.")))
  (answer "für sounds like ee with rounded lips, between f and r."))
```

---

## Practice

```check
(choice
  (ask "A Schülerin is ...")
  (right "a girl or a woman at school")
  (wrong "a boy or a man at school"
    "That is der Schüler. Adding -in makes a word for a woman or a girl: die Schülerin.")
  (wrong "a school"
    "A Schülerin is a person. Look at the ü: it is a word for someone who goes to school.")
  (hint "Compare der Schüler and die Schülerin."))
```

---

```check
(text
  (ask "Type the German word for for.")
  (accept "für")
  (accept "fuer")
  (accents nearly)
  (hint "Three letters: f, u with two dots, r."))
```

---

```check
(choice
  (ask "Which word starts with a sound English does not have?")
  (right "Österreich")
  (wrong "Dänemark"
    "D is as in English, and ä is close to the e in bed, which English has.")
  (wrong "Hotel"
    "H and o are close to English sounds. Look for ö or ü: English has neither.")
  (hint "English has no ö and no ü."))
```

So: ä is close to the e in bed, ö and ü are e and ee with rounded lips, and the dots are part of the spelling.
