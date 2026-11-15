# How old are you?

```lesson
(objective "Ask someone's age with du and Sie and say your own.")
(minutes 20)
```

In this lesson you learn to ask how old someone is, and to say your age.

## Asking

German asks about age with sein and **alt** (old):

| | du | Sie |
|---|---|---|
| How old are you? | Wie alt bist du? | Wie alt sind Sie? |

```check
(text
  (ask "Ask your friend Lea how old she is.")
  (accept "Wie alt bist du")
  (accents nearly)
  (wrong-if "Wie alt sind Sie" "That is the Sie form. Lea is your friend: Wie alt bist du?")
  (wrong-if "Wie alt ist du" "With du, sein is bist: Wie alt bist du?")
  (hint "Wie alt, then the du form of sein."))
```

---

## Answering

Say **Ich bin ... Jahre alt.** (I am ... years old.) Or just **Ich bin ...** with the number:

- Ich bin sechzehn Jahre alt.
- Ich bin sechzehn.

Two mistakes to avoid:

- **Ich habe sechzehn Jahre** copies French, Spanish or Italian. German uses sein: Ich bin.
- **Ich bin sechzehn Jahre** stops too early. Add alt, or leave out Jahre.

```check
(text
  (ask "Say: I am 16 years old. (Write the number as a word or as digits.)")
  (accept "Ich bin sechzehn Jahre alt")
  (accept "Ich bin 16 Jahre alt")
  (accept "Ich bin sechzehn")
  (accept "Ich bin 16")
  (accents nearly)
  (wrong-if "Ich habe sechzehn Jahre" "That copies French or Spanish. German says your age with sein: Ich bin sechzehn Jahre alt.")
  (wrong-if "Ich habe 16 Jahre" "That copies French or Spanish. German says your age with sein: Ich bin 16 Jahre alt.")
  (wrong-if "Ich bin sechzehn Jahre" "Nearly: add alt at the end. Ich bin sechzehn Jahre alt.")
  (wrong-if "Ich bin 16 Jahre" "Nearly: add alt at the end. Ich bin 16 Jahre alt.")
  (hint "Ich bin, the number, Jahre alt."))
```

---

## Others' ages

The other forms of sein work the same way:

- Er ist zwanzig Jahre alt.
- Wir sind vierzehn.
- Frau Berger, wie alt sind Sie?

**das Alter** is the age: forms ask for it with the single word Alter.

```check
(text
  (ask "Fill in: Tom ___ achtzehn Jahre alt.")
  (accept "ist")
  (accept "Tom ist achtzehn Jahre alt")
  (accents nearly)
  (wrong-if "bin" "bin goes with ich. Tom is er: ist.")
  (wrong-if "hat" "German says age with sein: Tom ist achtzehn Jahre alt.")
  (hint "Tom = er."))
```

```sources
(source "Duden, entry alt (giving an age: ... Jahre alt)")
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste: alt, das Alter")
```

---

## Your words

```cards
(card "Wie alt bist du?" "How old are you?" (note "with du"))
(card "Wie alt sind Sie?" "How old are you?" (note "with Sie"))
(card "Ich bin ... Jahre alt." "I am ... years old.")
(card "das Alter" "the age" (typed))
```

```check
(text
  (ask "Ask Herr Wolf how old he is.")
  (accept "Wie alt sind Sie")
  (accents nearly)
  (wrong-if "Wie alt bist du" "That is the du form. With Herr Wolf: Wie alt sind Sie?")
  (wrong-if "Wie alt ist Sie" "With Sie, sein is sind: Wie alt sind Sie?")
  (hint "Wie alt, then the Sie form of sein."))
```

---

## Read: how old?

- **Tom:** Wie alt bist du, Lea?
- **Lea:** Ich bin siebzehn. Und du?
- **Tom:** Ich bin achtzehn Jahre alt.
- **Sara:** Ich bin auch achtzehn!
- **Lea:** Und Frau Berger? Wie alt ist sie?
- **Tom:** Ich weiß. Sie ist vierzig.

```check
(number
  (ask "How old is Lea?")
  (answer 17)
  (wrong-if 70 "70 is siebzig. Lea says siebzehn, with -zehn: 17.")
  (wrong-if 18 "Tom and Sara are 18. Lea says siebzehn: 17.")
  (hint "siebzehn = sieben + zehn, with sieben shortened."))
```

```check
(choice
  (ask "Who is 18?")
  (right "Tom and Sara")
  (wrong "Only Tom"
    "Sara says: Ich bin auch achtzehn! auch means too.")
  (wrong "Lea"
    "Lea is siebzehn, 17. Tom and Sara are achtzehn.")
  (hint "Look for achtzehn."))
```

---

## Saying an age

```example
(example
  (problem "Say that you are 21.")
  (step "21 is einundzwanzig.")
  (step "Age goes with sein: Ich bin.")
  (answer "Ich bin einundzwanzig Jahre alt. (Or: Ich bin einundzwanzig.)"))
```

```example
(example
  (problem "Say that Frau Smith is 60.")
  (step "Frau Smith is sie: the form is ist.")
  (step (choice (ask "How do you say 60?")
    (right "sechzig")
    (wrong "sechzehn"
      "sechzehn is 16. 60 is sechzig, with -zig.")))
  (answer "Frau Smith ist sechzig Jahre alt."))
```

---

## Practice

```check
(choice
  (ask "Which sentence is right German?")
  (right "Ich bin vierzehn Jahre alt.")
  (wrong "Ich habe vierzehn Jahre."
    "German says age with sein: Ich bin vierzehn Jahre alt.")
  (wrong "Ich bin vierzehn Jahre."
    "This stops too early. Add alt: Ich bin vierzehn Jahre alt.")
  (hint "sein, and alt at the end."))
```

---

```check
(number
  (ask "Herr Wolf says: Ich bin dreiundfünfzig. How old is he? Type the digits.")
  (answer 53)
  (wrong-if 35 "drei (3) is the ones and fünfzig (50) the tens: 53.")
  (hint "3 and 50."))
```

---

```check
(text
  (ask "Type the German word for the age, as on a form, with der, die or das.")
  (accept "das Alter")
  (accents nearly)
  (wrong-if "Alter" "Right word. Add its der, die or das: das Alter.")
  (wrong-if "der Alter" "Alter goes with das: das Alter.")
  (hint "It starts like alt."))
```

So: ask Wie alt bist du? or Wie alt sind Sie?, and answer with sein: Ich bin ... Jahre alt.
