# The tens

```lesson
(objective "Say, read and write the tens 30 to 100, with dreißig and the -ig sound.")
(minutes 20)
```

In this lesson you learn the tens: 30, 40, 50 and on to 100.

## -zig

Most tens are the ones and then **-zig**, like English -ty:

| | German |
|---|---|
| 20 | zwanzig |
| 40 | vierzig |
| 50 | fünfzig |
| 80 | achtzig |
| 90 | neunzig |

The -ig sounds like ich, or "-ik" in the south, in Austria and in Switzerland.

```check
(text
  (ask "Type 40 in German.")
  (accept "vierzig")
  (accents nearly)
  (wrong-if "vierzehn" "vierzehn is 14. 40 ends in -zig: vierzig.")
  (wrong-if "fierzig" "The f sound is written v here, as in vier: vierzig.")
  (hint "vier + zig."))
```

---

## Three to watch

- 30 is **dreißig**, with ß, not z.
- 60 is **sechzig**: sechs loses its s, as in sechzehn.
- 70 is **siebzig**: sieben loses its en, as in siebzehn.

```check
(text
  (ask "Type 30 in German.")
  (accept "dreißig")
  (accept "dreissig")
  (accents nearly)
  (wrong-if "dreizig" "30 is the odd one: it has ß, not z. dreißig.")
  (wrong-if "dreizehn" "dreizehn is 13. 30 is dreißig.")
  (hint "It has the sharp s, ß.")
  (hint "drei + ßig."))
```

---

## 100

100 is **hundert**, or **einhundert** when you want to be very clear.

```check
(number
  (ask "Which number is hundert?")
  (answer 100)
  (wrong-if 1000 "That is tausend. hundert is 100.")
  (wrong-if 10 "10 is zehn. hundert is 100.")
  (hint "It sounds like the English hundred."))
```

```sources
(source "Duden, Die Grammatik: the cardinal numbers (dreißig, sechzig, siebzig, hundert)")
```

---

## Your numbers

```cards
(card "dreißig" "30" (typed) (note "with ß, not z"))
(card "vierzig" "40" (typed))
(card "fünfzig" "50" (typed))
(card "sechzig" "60" (typed) (note "sechs loses its s"))
(card "siebzig" "70" (typed) (note "sieben loses its en"))
(card "achtzig" "80" (typed))
(card "neunzig" "90" (typed))
(card "hundert" "100" (typed))
```

```check
(text
  (ask "Type 70 in German.")
  (accept "siebzig")
  (accents nearly)
  (wrong-if "siebenzig" "Close, but sieben loses its en: siebzig.")
  (wrong-if "siebzehn" "siebzehn is 17. 70 is siebzig.")
  (hint "Like siebzehn, but with -zig."))
```

---

## Read: how old?

Lea and Tom look at a photo of their course.

- **Tom:** Herr Wolf ist achtzig, oder?
- **Lea:** Achtzig? Nein! Er ist fünfzig.
- **Tom:** Und Frau Berger?
- **Lea:** Sie ist vierzig. Und Frau Smith ist sechzig.

(oder? at the end = right?)

```check
(number
  (ask "How old is Herr Wolf?")
  (answer 50)
  (wrong-if 80 "That is Tom's guess, achtzig. Lea says: Nein! Er ist fünfzig: 50.")
  (wrong-if 15 "15 is fünfzehn. Lea says fünfzig, with -zig: 50.")
  (hint "Read Lea's first line."))
```

```check
(choice
  (ask "Who is 40?")
  (right "Frau Berger")
  (wrong "Frau Smith"
    "Frau Smith is sechzig, 60. Frau Berger is vierzig, 40.")
  (wrong "Herr Wolf"
    "Herr Wolf is fünfzig, 50.")
  (hint "vierzig is 40."))
```

---

## Teen or ten?

```example
(example
  (problem "Is achtzehn 18 or 80?")
  (step "The end is -zehn, not -zig.")
  (step "-zehn is the teens; -zig is the tens.")
  (answer "achtzehn is 18; 80 is achtzig."))
```

```example
(example
  (problem "Is sechzig 16 or 60?")
  (step (choice (ask "Which end does it have?")
    (right "-zig")
    (wrong "-zehn"
      "Look again: sechzig ends in -zig.")))
  (step "-zig is the tens.")
  (answer "sechzig is 60; 16 is sechzehn."))
```

---

## Practice

```check
(number
  (ask "Type as digits: neunzig")
  (answer 90)
  (wrong-if 19 "19 is neunzehn, with -zehn. neunzig, with -zig, is 90.")
  (wrong-if 9 "neun is 9. neunzig is 90.")
  (hint "-zig is the tens."))
```

---

```check
(text
  (ask "Type 60 in German.")
  (accept "sechzig")
  (accents nearly)
  (wrong-if "sechszig" "sechs loses its s: sechzig.")
  (wrong-if "sechzehn" "sechzehn is 16. 60 is sechzig.")
  (hint "Like sechzehn, but with -zig."))
```

---

```check
(number
  (ask "Type as digits: dreißig")
  (answer 30)
  (wrong-if 13 "13 is dreizehn. dreißig is 30.")
  (wrong-if 3 "drei is 3. dreißig is 30.")
  (hint "drei with -ßig."))
```

So: the tens end in -zig (dreißig with ß), sechzig and siebzig are short, and 100 is hundert.
