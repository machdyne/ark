# 13 to 20

```lesson
(objective "Say, read and write 13 to 20, with the short forms sechzehn and siebzehn.")
(minutes 20)
```

In this lesson you learn the numbers from 13 to 20.

## 13 to 19: ones, then zehn

Like English thirteen (three + teen), German puts the ones first and then **zehn**:

- 13 dreizehn (drei + zehn)
- 14 vierzehn
- 15 fünfzehn
- 18 achtzehn
- 19 neunzehn

They are written as one word.

```figure
(define n (slider 'n 13 19 13 "Number" 1))
(text 160 90 (number->string n) 56 'centre)
(text 160 150 (de1-word n) 'big 'centre 'bold)
(text 160 180 (string-append (list-ref de1-ones (- n 10)) " + zehn") 'body 'centre)
(caption "13 to 19: the ones, then zehn.")
```

```check
(text
  (ask "Type 14 in German.")
  (accept "vierzehn")
  (accents nearly)
  (wrong-if "zehnvier" "German puts the ones first: vier, then zehn. vierzehn.")
  (wrong-if "vier zehn" "Close: it is one word, vierzehn.")
  (hint "4 is vier; then zehn.")
  (hint "vier + zehn, in one word."))
```

---

## Two short forms

Two of them drop letters:

- 16 is **sechzehn**: sechs loses its s.
- 17 is **siebzehn**: sieben loses its en.

```check
(text
  (ask "Type 17 in German.")
  (accept "siebzehn")
  (accents nearly)
  (wrong-if "siebenzehn" "Close, but sieben loses its en here: siebzehn.")
  (wrong-if "siebzig" "siebzig is 70. 17 is siebzehn.")
  (hint "sieben gets shorter.")
  (hint "sieb + zehn."))
```

---

## 20

20 is **zwanzig**. The -ig at the end sounds like ich in standard German: "TSVAN-tsich". In the south of Germany, in Austria and in Switzerland, many people say "-ik". Both are right.

```check
(number
  (ask "Which number is zwanzig?")
  (answer 20)
  (wrong-if 12 "12 is zwölf. zwanzig is 20.")
  (wrong-if 2 "2 is zwei. zwanzig, with -zig, is 20.")
  (hint "It comes after neunzehn (19)."))
```

```sources
(source "Duden, Die Grammatik: the cardinal numbers (sechzehn, siebzehn)")
(source "Duden, Das Aussprachewörterbuch (Duden volume 6): -ig at the end of a word")
```

---

## Your numbers

```cards
(card "dreizehn" "13" (typed))
(card "vierzehn" "14" (typed))
(card "fünfzehn" "15" (typed))
(card "sechzehn" "16" (typed) (note "sechs loses its s"))
(card "siebzehn" "17" (typed) (note "sieben loses its en"))
(card "achtzehn" "18" (typed))
(card "neunzehn" "19" (typed))
(card "zwanzig" "20" (typed))
```

```check
(text
  (ask "Type 16 in German.")
  (accept "sechzehn")
  (accents nearly)
  (wrong-if "sechszehn" "Close, but sechs loses its s here: sechzehn.")
  (wrong-if "sechzig" "sechzig is 60. 16 is sechzehn.")
  (hint "sechs gets shorter.")
  (hint "sech + zehn."))
```

---

## Read: which course?

- **Sara:** Entschuldigung! Wo ist Kurs vierzehn?
- **Frau Berger:** Vierzehn? Da, links. Kurs dreizehn ist da, rechts.
- **Sara:** Vielen Dank!
- **Frau Berger:** Bitte schön!

(links = on the left; rechts = on the right)

```check
(choice
  (ask "Where is course 14?")
  (right "On the left")
  (wrong "On the right"
    "On the right, rechts, is course dreizehn, 13. Vierzehn, 14, is links: on the left.")
  (hint "Find vierzehn in Frau Berger's line."))
```

```check
(number
  (ask "Which course is on the right?")
  (answer 13)
  (wrong-if 14 "14, vierzehn, is on the left. dreizehn, on the right, is 13.")
  (hint "dreizehn = drei + zehn."))
```

---

## Building a number

```example
(example
  (problem "Say 15 in German.")
  (step "15 is 5 and 10.")
  (step "Ones first: fünf, then zehn.")
  (answer "fünfzehn"))
```

```example
(example
  (problem "Say 19 in German.")
  (step "19 is 9 and 10.")
  (step (choice (ask "Which comes first?")
    (right "neun, then zehn")
    (wrong "zehn, then neun"
      "As in English nineteen, the ones come first: neunzehn.")))
  (answer "neunzehn"))
```

---

## Practice

```check
(number
  (ask "Type as digits: achtzehn")
  (answer 18)
  (wrong-if 80 "80 would be achtzig. achtzehn, with zehn, is 18.")
  (wrong-if 8 "acht is 8. achtzehn is acht + zehn: 18.")
  (hint "acht + zehn."))
```

---

```check
(text
  (ask "Type 13 in German.")
  (accept "dreizehn")
  (accents nearly)
  (wrong-if "dreissig" "dreißig is 30. 13 is drei + zehn: dreizehn.")
  (hint "drei + zehn."))
```

---

```check
(choice
  (ask "Which word is 17?")
  (right "siebzehn")
  (wrong "siebenzehn"
    "sieben loses its en in 17: siebzehn.")
  (wrong "zehnsieben"
    "The ones come first, as in seventeen: siebzehn.")
  (hint "sieben gets shorter."))
```

So: 13 to 19 are the ones and then zehn, sechzehn and siebzehn are short, and 20 is zwanzig.
