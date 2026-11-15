# 21 to 99

```lesson
(objective "Say, read and write 21 to 99, ones first: einundzwanzig.")
(minutes 25)
```

In this lesson you learn every number from 21 to 99. German says them backwards from English: the ones first.

## Ones, und, tens

21 in German is **einundzwanzig**: one and twenty. The ones come first, then und (and), then the tens, all in one word.

Move the slider and watch the parts.

```figure
(define n (slider 'n 21 99 47 "Number" 1))
(de1-build n)
(caption "Say the ones first, then und, then the tens.")
```

```check
(choice
  (ask "How do you say 47 in German?")
  (right "siebenundvierzig")
  (wrong "vierzigundsieben"
    "That is the English order, forty-seven. German says the ones first: sieben und vierzig, in one word.")
  (wrong "vierundsiebzig"
    "That is 74: vier (4) und siebzig (70). For 47, say the 7 first: siebenundvierzig.")
  (hint "Ones first: 7, und, 40."))
```

---

## eins becomes ein

When 1 comes before und, eins loses its s: **ein**undzwanzig (21), **ein**unddreißig (31), **ein**undfünfzig (51).

```check
(text
  (ask "Type 21 in German.")
  (accept "einundzwanzig")
  (accents nearly)
  (wrong-if "einsundzwanzig" "Close: eins loses its s before und. einundzwanzig.")
  (wrong-if "zwanzigeins" "German says the ones first: ein und zwanzig, in one word.")
  (wrong-if "ein und zwanzig" "Right parts, but German writes it as one word: einundzwanzig.")
  (hint "ein + und + zwanzig, in one word."))
```

```sources
(source "Duden, Die Grammatik: the cardinal numbers (einundzwanzig)")
(source "Rat für deutsche Rechtschreibung, Deutsche Rechtschreibung: Regeln und Wörterverzeichnis: numbers under a million are written as one word")
```

---

## Reading the digits

In fünfundzwanzig you hear the 5 first, but 5 is the ones digit. So you write 2, then 5: 25.

The classic mistake is to write the digits in the order you hear them: 52.

```check
(number
  (ask "Type as digits: fünfundzwanzig")
  (answer 25)
  (wrong-if 52 "You wrote the digits in the order you heard them. fünf (5) is the ones, zwanzig (20) the tens: 25.")
  (wrong-if 7 "That is 5 + 2. The word is fünf und zwanzig: 5 and 20, which is 25.")
  (hint "fünf is the ones, zwanzig the tens.")
  (hint "20 + 5."))
```

---

## Your numbers

These four show the pattern for every number from 21 to 99:

```cards
(card "einundzwanzig" "21" (typed))
(card "fünfundzwanzig" "25" (typed))
(card "achtundvierzig" "48" (typed))
(card "neunundneunzig" "99" (typed))
```

```check
(text
  (ask "Type 48 in German.")
  (accept "achtundvierzig")
  (accents nearly)
  (wrong-if "vierundachtzig" "That is 84. For 48, the 8 comes first: achtundvierzig.")
  (wrong-if "vierzigundacht" "German says the ones first: acht und vierzig, in one word.")
  (hint "acht + und + vierzig."))
```

---

## Read: bingo

Frau Berger plays bingo with the course.

- **Frau Berger:** Dreiundzwanzig! Siebenundsechzig! Zweiundfünfzig!
- **Sara:** Zweiundfünfzig? Ja! Und dreiundzwanzig! Bingo!
- **Frau Berger:** Toll, Sara!

```check
(number
  (ask "Frau Berger calls Zweiundfünfzig. Which number is that?")
  (answer 52)
  (wrong-if 25 "zwei (2) is the ones and fünfzig (50) the tens: 52.")
  (hint "zwei und fünfzig: 2 and 50."))
```

```check
(number
  (ask "Which number is siebenundsechzig?")
  (answer 67)
  (wrong-if 76 "sieben (7) is the ones and sechzig (60) the tens: 67.")
  (hint "7 and 60."))
```

---

## Building a number

```example
(example
  (problem "Say 36 in German.")
  (step "36 is 30 and 6.")
  (step "Ones first: sechs.")
  (step "Then und, then the tens: dreißig.")
  (answer "sechsunddreißig"))
```

```example
(example
  (problem "Say 71 in German.")
  (step "71 is 70 and 1.")
  (step (choice (ask "What is 1 before und?")
    (right "ein")
    (wrong "eins"
      "Before und, eins loses its s: ein.")))
  (step "Then und, then siebzig.")
  (answer "einundsiebzig"))
```

---

## Practice

```check
(number
  (ask "Type as digits: vierundachtzig")
  (answer 84)
  (wrong-if 48 "vier (4) is the ones and achtzig (80) the tens: 84.")
  (hint "4 and 80."))
```

---

```check
(text
  (ask "Type 99 in German.")
  (accept "neunundneunzig")
  (accents nearly)
  (wrong-if "neunzigneun" "German says the ones first: neun und neunzig, in one word.")
  (wrong-if "neunundneunzehn" "-zehn is the teens. 90 is neunzig: neunundneunzig.")
  (hint "neun + und + neunzig."))
```

---

```check
(number
  (ask "Type as digits: dreiunddreißig")
  (answer 33)
  (wrong-if 3 "That is drei alone. dreiunddreißig is 3 and 30: 33.")
  (hint "3 and 30."))
```

So: from 21 to 99, say the ones, then und, then the tens, all in one word, and write the digits in their places: fünfundzwanzig is 25.
