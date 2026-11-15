# Spelling a name

```lesson
(objective "Spell your name letter by letter and ask how a name is written.")
(minutes 20)
```

In this lesson you learn to spell your name in German, and to ask how a name is written.

## How do you spell that?

When someone does not know how to write your name, they ask:

- **Wie schreibt man das?** How do you write that?
- **Buchstabieren Sie bitte.** Please spell it. (buchstabieren = to spell)

Then you say the letters one by one, with their German names: Shaw is Es, Ha, A, We.

```check
(choice
  (ask "Frau Berger asks: Wie schreibt man das? What does she want?")
  (right "To know how to write your name")
  (wrong "To know where you are from"
    "That would be Woher kommen Sie? Wie schreibt man das? asks how to write it.")
  (wrong "Your phone number"
    "That would be Wie ist Ihre Telefonnummer? Wie schreibt man das? asks how to write it.")
  (hint "schreiben means to write."))
```

---

## First name, family name

You know der Vorname, the first name. The family name is **der Familienname** or **der Nachname**. Forms often ask for both, Vorname and Nachname.

```check
(choice
  (ask "Your name is Sara Lee. What is your Nachname?")
  (right "Lee")
  (wrong "Sara"
    "Sara is the Vorname, the first name. The Nachname is the family name: Lee.")
  (wrong "Sara Lee"
    "That is the whole name. The Nachname is only the family name: Lee.")
  (hint "Nachname = family name."))
```

---

## Umlauts, ß and double letters

In a name, ä, ö and ü are spelled by their sound or as **A-Umlaut**, O-Umlaut, U-Umlaut. ß is Eszett.

For a double letter, say the letter twice. Hoffmann is: Ha, O, Ef, Ef, Em, A, En, En.

```check
(choice
  (ask "How do you spell Müller aloud?")
  (right "Em, U-Umlaut, El, El, E, Er")
  (wrong "Em, U, El, El, E, Er"
    "Müller has ü, not u. Say U-Umlaut (or the ü sound) for it.")
  (wrong "Em, U-Umlaut, El, E, Er"
    "Müller has two l's. Say El twice.")
  (hint "Look for the dots, and count the l's."))
```

```sources
(source "Duden, entries buchstabieren and Umlaut")
```

---

## Your words

```cards
(card "Wie schreibt man das?" "How do you write that?")
(card "Buchstabieren Sie bitte." "Please spell it." (note "with Sie"))
(card "der Familienname" "the family name" (typed) (note "also: the surname, the last name"))
(card "der Nachname" "the last name" (typed) (note "also: the surname, the family name"))
(card "A-Umlaut" "the letter ä" (note "also O-Umlaut, U-Umlaut"))
```

```check
(text
  (ask "Ask: How do you write that?")
  (accept "Wie schreibt man das")
  (accents nearly)
  (wrong-if "Was schreibt man das" "German asks how: Wie schreibt man das?")
  (wrong-if "Wie sagt man das" "Wie sagt man asks how to say something. For how to write it: Wie schreibt man das?")
  (hint "Wie schreibt man ...?"))
```

---

## Read: at the hotel desk

- **Frau Berger:** Guten Abend! Wie ist Ihr Name, bitte?
- **Herr Shaw:** Shaw, Peter Shaw.
- **Frau Berger:** Wie schreibt man das?
- **Herr Shaw:** Es, Ha, A, We.
- **Frau Berger:** Danke! Herzlich willkommen, Herr Shaw!

```check
(choice
  (ask "How does Herr Shaw say the letter W?")
  (right "We: vay")
  (wrong "double-u"
    "That is English. In German he says We, which sounds like vay.")
  (wrong "Vau: fow"
    "Vau is V. W is We: vay.")
  (hint "Read his spelling."))
```

```check
(choice
  (ask "What is Herr Shaw's Vorname?")
  (right "Peter")
  (wrong "Shaw"
    "Shaw is his Nachname, the family name. His Vorname is Peter.")
  (hint "Vorname = first name."))
```

---

## Spelling your name

```example
(example
  (problem "Spell Wolf aloud.")
  (step "W is We (vay).")
  (step "O is O, and L is El.")
  (step "F is Ef.")
  (answer "We, O, El, Ef."))
```

```example
(example
  (problem "Spell Jäger aloud.")
  (step "J is Jot.")
  (step (choice (ask "How do you spell ä?")
    (right "A-Umlaut")
    (wrong "A"
      "ä is not a. Say A-Umlaut, or the ä sound.")))
  (step "Then Ge, E, Er.")
  (answer "Jot, A-Umlaut, Ge, E, Er."))
```

---

## Practice

```check
(text
  (ask "A German spells a name: Be, E, Er, Ge. Type the name.")
  (accept "Berg")
  (accents nearly)
  (wrong-if "Bigg" "E is said ay, and is E. Er is R: B, E, R, G.")
  (wrong-if "Berj" "Ge is G. J would be Jot.")
  (hint "Be = B, E = E, Er = R, Ge = G."))
```

---

```check
(text
  (ask "Type the German word for the family name, the one that starts with N.")
  (accept "Nachname")
  (accept "der Nachname")
  (accents nearly)
  (wrong-if "Vorname" "Vorname is the first name. The family name is Nachname.")
  (hint "Nach + name."))
```

---

```check
(choice
  (ask "A German spells: Zet, I, En, Ka. Which name is it?")
  (right "Zink")
  (wrong "Cink"
    "Zet is Z. C would be Ce, said tsay.")
  (wrong "Zenk"
    "I is said ee and is I. E would be said ay.")
  (hint "Zet = Z, I = I, En = N, Ka = K."))
```

So: ask Wie schreibt man das?, spell with the German letter names, say A-Umlaut for ä, and say a double letter twice.
