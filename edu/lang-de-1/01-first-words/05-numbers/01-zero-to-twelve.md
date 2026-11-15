# 0 to 12

```lesson
(objective "Say, read and write the numbers 0 to 12.")
(minutes 20)
```

In this lesson you learn the German numbers from 0 to 12. You can read most of them aloud already, from their spelling.

## 0 to 5

| | German | Sounds like |
|---|---|---|
| 0 | null | "nool", short u |
| 1 | eins | "eyns": ei is eye |
| 2 | zwei | "tsvy": z is ts, w is v |
| 3 | drei | "dry" |
| 4 | vier | "feer": v is f, ie is ee |
| 5 | fünf | ü, then nf |

```check
(text
  (ask "Type 4 in German.")
  (accept "vier")
  (accents nearly)
  (wrong-if "fier" "It sounds like feer, but German writes the f sound here with v: vier.")
  (wrong-if "fünf" "fünf is 5. 4 is vier.")
  (hint "It sounds like feer.")
  (hint "v, then ie, then r."))
```

---

## 6 to 10

| | German | Sounds like |
|---|---|---|
| 6 | sechs | "zeks": chs is ks |
| 7 | sieben | "ZEE-ben": s before a vowel is z |
| 8 | acht | a, then the loch sound, then t |
| 9 | neun | "noyn": eu is oy |
| 10 | zehn | "tsayn": the h is silent |

Do not mix up **neun** (9) and **nein** (no): eu is oy, ei is eye.

```check
(text
  (ask "Type 7 in German.")
  (accept "sieben")
  (accents nearly)
  (wrong-if "seiben" "ei would sound like eye. For the ee sound, write ie: sieben.")
  (wrong-if "zieben" "The z sound at the start is written s: sieben.")
  (hint "It sounds like ZEE-ben.")
  (hint "s, ie, b, e, n."))
```

---

## 11 and 12

| | German |
|---|---|
| 11 | elf |
| 12 | zwölf |

**elf** is 11. It has nothing to do with the English word elf.

```check
(number
  (ask "Which number is elf?")
  (answer 11)
  (wrong-if 12 "12 is zwölf. elf is 11.")
  (wrong-if 5 "5 is fünf. elf is 11.")
  (hint "It comes after zehn (10)."))
```

```sources
(source "Duden, Die Grammatik: the cardinal numbers")
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste: numbers")
```

---

## Your numbers

```cards
(card "null" "0" (typed))
(card "eins" "1" (typed))
(card "zwei" "2" (typed))
(card "drei" "3" (typed))
(card "vier" "4" (typed))
(card "fünf" "5" (typed))
(card "sechs" "6" (typed))
(card "sieben" "7" (typed))
(card "acht" "8" (typed))
(card "neun" "9" (typed))
(card "zehn" "10" (typed))
(card "elf" "11" (typed))
(card "zwölf" "12" (typed))
```

```check
(text
  (ask "Type 12 in German.")
  (accept "zwölf")
  (accept "zwoelf")
  (accents nearly)
  (wrong-if "zwelf" "The vowel is ö: zwölf.")
  (wrong-if "zwei" "zwei is 2. 12 is zwölf.")
  (hint "It starts like zwei, with zw.")
  (hint "zw, ö, l, f."))
```

---

## Read: who is missing?

- **Frau Berger:** Guten Morgen! Eins, zwei, drei ... zehn, elf. Elf?
- **Tom:** Herr Wolf ist in Graz.
- **Frau Berger:** Ach so! Wir sind elf. Elf ist auch gut.

```check
(number
  (ask "How many people does Frau Berger count?")
  (answer 11)
  (wrong-if 12 "Twelve is zwölf. Herr Wolf is in Graz, and Frau Berger counts elf: 11.")
  (wrong-if 10 "She counts on past zehn: elf, 11.")
  (hint "elf is 11."))
```

```check
(choice
  (ask "Why is Herr Wolf not there?")
  (right "He is in Graz")
  (wrong "He is ill"
    "Tom says: Herr Wolf ist in Graz.")
  (wrong "He is late"
    "Tom says where he is: in Graz.")
  (hint "Read Tom's line."))
```

---

## Reading a number

```example
(example
  (problem "Read sechs aloud.")
  (step "s before a vowel sounds like z.")
  (step "e is short, before chs.")
  (step "chs sounds like ks.")
  (answer "sechs sounds like \"zeks\"."))
```

```example
(example
  (problem "Read neun aloud.")
  (step "n, then eu.")
  (step (choice (ask "How does eu sound?")
    (right "Like the oy in boy")
    (wrong "Like the eye in eye"
      "That is ei, as in nein (no). eu is oy.")))
  (step "Then n.")
  (answer "neun sounds like \"noyn\"."))
```

---

## Practice

```check
(number
  (ask "Type as digits: neun")
  (answer 9)
  (wrong-if 0 "null is 0. neun, with eu, is 9.")
  (wrong-if 10 "10 is zehn. neun is 9.")
  (hint "Do not mix it up with nein, no."))
```

---

```check
(text
  (ask "Type 6 in German.")
  (accept "sechs")
  (accents nearly)
  (wrong-if "sex" "It sounds like that, but German writes the ks sound here as chs: sechs.")
  (wrong-if "sieben" "sieben is 7. 6 is sechs.")
  (hint "It sounds like zeks.")
  (hint "s, e, c, h, s."))
```

---

```check
(number
  (ask "Type as digits: acht")
  (answer 8)
  (wrong-if 6 "6 is sechs. acht is 8.")
  (hint "It looks a little like the English word eight."))
```

---

```check
(text
  (ask "Type 3 in German.")
  (accept "drei")
  (accents nearly)
  (wrong-if "drie" "ie would sound like ee. The eye sound is ei: drei.")
  (hint "It sounds like dry."))
```

So: null, eins, zwei, drei, vier, fünf, sechs, sieben, acht, neun, zehn, elf, zwölf.
