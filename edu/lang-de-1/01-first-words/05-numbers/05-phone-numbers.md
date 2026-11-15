# Phone numbers

```lesson
(objective "Give and understand a phone number, digit by digit, with zwo.")
(minutes 20)
```

In this lesson you learn to ask for a phone number, give yours, and write one down.

## Asking for a number

| | du | Sie |
|---|---|---|
| What is your phone number? | Wie ist deine Telefonnummer? | Wie ist Ihre Telefonnummer? |

Answer: **Meine Nummer ist ...** (My number is ...).

**die Telefonnummer** is the phone number, and **die Nummer** the number. A mobile phone is **das Handy** in Germany: it looks English, but English does not use the word this way.

As with Wie ist Ihr Name?, German usually asks with wie, not was.

```check
(choice
  (ask "You want Frau Berger's phone number. What do you ask?")
  (right "Wie ist Ihre Telefonnummer?")
  (wrong "Wie ist deine Telefonnummer?"
    "deine goes with du. You say Sie to Frau Berger: Wie ist Ihre Telefonnummer?")
  (wrong "Was ist Ihre Telefonnummer?"
    "People would understand, but German usually asks for a number with wie: Wie ist Ihre Telefonnummer?")
  (hint "Sie, and ask with wie."))
```

---

## Digit by digit

People often say a phone number one digit at a time: 030 is null, drei, null. Many also say the digits in pairs: 45 is fünfundvierzig. Then listen carefully: the ones come first.

```check
(text
  (ask "Someone says: null, vier, null. Type the digits.")
  (accept "040")
  (accents nearly)
  (wrong-if "404" "Write each digit as you hear it: null (0), vier (4), null (0): 040.")
  (wrong-if "40" "The first null is a digit too: 040.")
  (hint "null is 0."))
```

---

## zwo

On the phone, **zwei** and **drei** can sound alike. So many people say **zwo** for 2, above all on the phone.

```check
(number
  (ask "Someone says zwo. Which digit is it?")
  (answer 2)
  (wrong-if 3 "drei is 3. zwo is another way to say 2, so it is not mixed up with drei.")
  (wrong-if 12 "12 is zwölf. zwo is 2.")
  (hint "It starts like zwei."))
```

```sources
(source "Duden, entry zwo (used for zwei, especially on the telephone, to tell it from drei)")
```

---

## Once more, please

When a number is too fast, say **Noch einmal, bitte.** (Once more, please.) Wie bitte? works too.

Country codes: Germany is +49, Austria +43, Switzerland +41.

```check
(choice
  (ask "You did not get the whole number. What do you say?")
  (right "Noch einmal, bitte.")
  (wrong "Vielen Dank!"
    "Vielen Dank is many thanks, for when you have the number. To hear it again: Noch einmal, bitte.")
  (wrong "Kein Problem."
    "Kein Problem answers an excuse me. To hear it again: Noch einmal, bitte.")
  (hint "once more = noch einmal"))
```

```sources
(source "ITU, List of ITU-T Recommendation E.164 assigned country codes: +49 Germany, +43 Austria, +41 Switzerland")
```

---

## Your words

```cards
(card "die Telefonnummer" "the phone number" (typed))
(card "die Nummer" "the number" (note "a phone, house or room number"))
(card "das Handy" "the cell phone" (typed) (note "also: the mobile phone"))
(card "Wie ist deine Telefonnummer?" "What is your phone number?" (note "with du"))
(card "Wie ist Ihre Telefonnummer?" "What is your phone number?" (note "with Sie"))
(card "Meine Nummer ist ..." "My number is ...")
(card "zwo" "2" (note "said for zwei, on the phone"))
(card "Noch einmal, bitte." "Once more, please.")
```

```check
(text
  (ask "Ask your friend Tom for his phone number.")
  (accept "Wie ist deine Telefonnummer")
  (accept "Wie ist deine Nummer")
  (accept "Wie ist deine Handynummer")
  (accents nearly)
  (wrong-if "Wie ist Ihre Telefonnummer" "Ihre goes with Sie. Tom is your friend: Wie ist deine Telefonnummer?")
  (wrong-if "Was ist deine Telefonnummer" "German asks with wie: Wie ist deine Telefonnummer?")
  (hint "Wie ist deine ...?"))
```

---

## Read: Lea's number

- **Tom:** Lea, wie ist deine Telefonnummer?
- **Lea:** Null, eins, sieben, sechs, zwo, vier, acht, neun.
- **Tom:** Noch einmal, bitte!
- **Lea:** Null eins sieben sechs, zwo vier acht neun.
- **Tom:** Danke! Und meine Nummer ist null, eins, fünf, zwo, drei, drei, sieben, null.

```check
(text
  (ask "Type Lea's number as digits.")
  (accept "01762489")
  (accept "0176 2489")
  (accents nearly)
  (wrong-if "01763489" "zwo is 2, not 3: 0176 2489.")
  (wrong-if "1762489" "The number starts with null, 0: 01762489.")
  (hint "zwo is 2.")
  (hint "0 1 7 6, then 2 4 8 9."))
```

```check
(choice
  (ask "Why does Tom say Noch einmal, bitte?")
  (right "He wants to hear the number again")
  (wrong "He wants a second number"
    "noch einmal means once more: Lea says the same number again.")
  (wrong "He is saying goodbye"
    "He says Danke after he has the number. Noch einmal, bitte asks to hear it again.")
  (hint "noch einmal = once more."))
```

---

## Writing a number down

```example
(example
  (problem "Someone says: null, drei, null, zwo, fünf. Write it down.")
  (step "null is 0, drei is 3, null is 0.")
  (step "zwo is 2, fünf is 5.")
  (answer "03025"))
```

```example
(example
  (problem "Someone says the pairs: dreiundzwanzig, siebenundvierzig. Write them down.")
  (step "dreiundzwanzig: 3 and 20, so 23.")
  (step (choice (ask "siebenundvierzig is ...")
    (right "47")
    (wrong "74"
      "sieben (7) is the ones and vierzig (40) the tens: 47.")))
  (answer "23 47"))
```

---

## Practice

```check
(text
  (ask "Someone says: null, zwo, zwo, eins. Type the digits.")
  (accept "0221")
  (accents nearly)
  (wrong-if "0331" "zwo is 2, not 3: 0221.")
  (wrong-if "221" "Start with the null: 0221.")
  (hint "zwo = 2."))
```

---

```check
(text
  (ask "Type the German for the mobile phone, with der, die or das.")
  (accept "das Handy")
  (accents nearly)
  (wrong-if "Handy" "Right word. Add the der, die or das that goes with it: das Handy.")
  (wrong-if "das Mobile" "In German a mobile phone is das Handy.")
  (hint "It looks English: H, a, n, d, y."))
```

---

```check
(choice
  (ask "A Swiss phone number starts with ...")
  (right "+41")
  (wrong "+49"
    "+49 is Germany. Switzerland is +41.")
  (wrong "+43"
    "+43 is Austria. Switzerland is +41.")
  (hint "Germany 49, Austria 43, Switzerland ..."))
```

So: ask Wie ist deine (or Ihre) Telefonnummer?, say the digits one by one with zwo for 2, and ask Noch einmal, bitte if it was too fast.
