# All about you

```lesson
(objective "Give your details for a simple form and in a short introduction.")
(minutes 25)
```

In this lesson you fill in a simple form in German, and say the same details aloud.

## das Formular

**das Formular** is a form, like the one you fill in at a hotel or a course. Turn on the answers to see Sara's.

```figure
(define a (toggle 'a "Sara's answers"))
(define rows '(("Vorname" "Sara") ("Nachname" "Lee") ("Alter" "18") ("Land" "Kanada")
  ("Wohnort" "Köln") ("Postleitzahl" "50667") ("Hausnummer" "12") ("Telefon" "0221 123456")))
(text 160 22 "Formular" 'body 'centre 'bold)
(let loop ((r rows) (y 52))
  (if (pair? r)
      (begin
        (text 16 y (car (car r)) 'small)
        (line 120 (+ y 4) 300 (+ y 4) 'ink 1)
        (if a (text 126 y (cadr (car r)) 'body 'bold))
        (loop (cdr r) (+ y 23)))))
```

```check
(choice
  (ask "On the form, what goes after Wohnort?")
  (right "The town or city where you live")
  (wrong "The country you come from"
    "That goes after Land. Wohnort is the place where you live: wohnen, Ort (place).")
  (wrong "Your first name"
    "That goes after Vorname. Wohnort is where you live.")
  (hint "Think of Ich wohne in ..."))
```

---

## Postleitzahl and Hausnummer

**die Postleitzahl** is the postal code (the ZIP code): Köln 50667, for example. **die Hausnummer** is the house number, the number of your building on the street.

```check
(text
  (ask "Type the German for the house number, with der, die or das.")
  (accept "die Hausnummer")
  (accents nearly)
  (wrong-if "Hausnummer" "Right word. Add its der, die or das: die Hausnummer.")
  (wrong-if "die Postleitzahl" "That is the postal code. The house number is die Hausnummer.")
  (hint "Haus + Nummer: die Nummer, so die Hausnummer."))
```

---

## From the form to sentences

Each line of the form has a phrase you know:

| Form | Say |
|---|---|
| Vorname, Nachname | Ich heiße Sara Lee. |
| Alter | Ich bin achtzehn Jahre alt. |
| Land | Ich komme aus Kanada. |
| Wohnort | Ich wohne in Köln. |
| Telefon | Meine Nummer ist ... |

```check
(choice
  (ask "Which sentence gives your Wohnort?")
  (right "Ich wohne in Köln.")
  (wrong "Ich komme aus Kanada."
    "That is your Land, where you come from. Wohnort is where you live: Ich wohne in ...")
  (wrong "Ich bin achtzehn Jahre alt."
    "That is your Alter, your age. Wohnort: Ich wohne in ...")
  (hint "wohnen = to live."))
```

---

## Your words

```cards
(card "das Formular" "the form" (typed))
(card "der Wohnort" "the place where you live" (note "on forms"))
(card "die Postleitzahl" "the ZIP code" (typed) (note "also: the postal code"))
(card "die Hausnummer" "the house number" (typed))
```

```check
(text
  (ask "Type the German for the postal code.")
  (accept "die Postleitzahl")
  (accept "Postleitzahl")
  (accents nearly)
  (wrong-if "die Postleizahl" "Close: Post + leit + zahl. There is a t before the z.")
  (wrong-if "die Zahl" "die Zahl is any number. The postal code is die Postleitzahl.")
  (hint "Post + leit + Zahl.")
  (hint "It ends in Zahl, number."))
```

---

## Read: Sara introduces herself

- **Frau Berger:** Herzlich willkommen! Wie heißen Sie?
- **Sara:** Ich heiße Sara Lee. Ich bin achtzehn Jahre alt.
- **Frau Berger:** Woher kommen Sie?
- **Sara:** Aus Kanada. Aber ich wohne in Köln.
- **Frau Berger:** Wie ist Ihre Telefonnummer?
- **Sara:** Null, zwo, zwo, eins, eins, zwo, drei, vier, fünf, sechs.
- **Frau Berger:** Danke! Und wie schreibt man Lee?
- **Sara:** El, E, E.

```check
(text
  (ask "Fill in Sara's form: Wohnort?")
  (accept "Köln")
  (accept "Koeln")
  (accept "Cologne")
  (accents nearly)
  (wrong-if "Kanada" "Kanada is where Sara comes from: her Land. She lives in Köln.")
  (hint "Find Ich wohne in."))
```

```check
(choice
  (ask "Why does Sara say zwo in her number?")
  (right "zwo is 2, said so it is not mixed up with drei")
  (wrong "zwo is a different digit from zwei"
    "zwo and zwei are both 2. On the phone, zwo is easier to tell from drei.")
  (wrong "It is a mistake"
    "zwo is right: many people say it on the phone.")
  (hint "Think of the phone numbers lesson."))
```

---

## A form into words

```example
(example
  (problem "Ben's form: Vorname Ben, Nachname Weiß, Alter 15, Land Österreich, Wohnort Graz. Say his details as Ben.")
  (step "Ich heiße Ben Weiß.")
  (step "Ich bin fünfzehn Jahre alt.")
  (step "Ich komme aus Österreich.")
  (step "Ich wohne in Graz.")
  (answer "Ich heiße Ben Weiß. Ich bin fünfzehn Jahre alt. Ich komme aus Österreich. Ich wohne in Graz."))
```

```example
(example
  (problem "Mia's form: Vorname Mia, Alter 34, Land Irland, Wohnort Wien. Say her details as Mia.")
  (step "Ich heiße Mia.")
  (step (choice (ask "How does Mia give her Alter?")
    (right "Ich bin vierunddreißig Jahre alt.")
    (wrong "Ich bin dreiundvierzig Jahre alt."
      "That is 43. For 34, the 4 comes first: vierunddreißig.")))
  (step "Ich komme aus Irland. Ich wohne in Wien.")
  (answer "Ich heiße Mia. Ich bin vierunddreißig Jahre alt. Ich komme aus Irland. Ich wohne in Wien."))
```

---

## Practice

```check
(text
  (ask "Ben spells his family name: We, E, I, Eszett. Type it.")
  (accept "Weiß")
  (accept "Weiss")
  (accents nearly)
  (wrong-if "Veiss" "We is W, said vay: W, E, I, ß.")
  (wrong-if "Weis" "Eszett is ß, the sharp s: Weiß.")
  (hint "We = W; Eszett = ß."))
```

---

```check
(text
  (ask "Answer for yourself as Sara: Woher kommen Sie? (from Canada)")
  (accept "Ich komme aus Kanada")
  (accept "Aus Kanada")
  (accept "Ich bin aus Kanada")
  (accents nearly)
  (wrong-if "Ich wohne in Kanada" "Woher asks where you come from: Ich komme aus Kanada.")
  (wrong-if "Ich komme aus Köln" "Sara lives in Köln, but she comes from Kanada.")
  (hint "Ich komme aus ..."))
```

---

```check
(choice
  (ask "A man at a course desk asks you: Wie alt sind Sie? You are 25. What do you say?")
  (right "Ich bin fünfundzwanzig.")
  (wrong "Ich bin zweiundfünfzig."
    "That is 52. For 25, the 5 comes first: fünfundzwanzig.")
  (wrong "Ich habe fünfundzwanzig Jahre."
    "German says age with sein: Ich bin fünfundzwanzig (Jahre alt).")
  (hint "Ones first, then und, then the tens."))
```

So: you can now fill in a German form (Vorname, Nachname, Alter, Land, Wohnort, Postleitzahl, Hausnummer, Telefon) and give the same details aloud.
