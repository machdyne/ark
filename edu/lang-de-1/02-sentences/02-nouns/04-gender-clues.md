# Clues to gender

```lesson
(objective "Guess a noun's gender from clues that almost always hold: -in, -ung, -chen and compound nouns.")
(minutes 25)
(keywords "compound noun")
```

You cannot guess the gender of most nouns, but a few endings tell you
the gender almost every time.

The first clue is **-in**. Many words for people have two forms: one
for a man, and one for a woman with -in added. The -in form is always
feminine.

| a man | a woman | English |
|---|---|---|
| der Lehrer | die Lehrerin | the teacher |
| der Student | die Studentin | the student |
| der Freund | die Freundin | the friend |

```check
(text
  (ask "der Lehrer is a male teacher. Write the word for a female teacher, with its article.")
  (accept "die Lehrerin")
  (wrong-if "der Lehrerin" "The -in form is for a woman, and it is always feminine: die Lehrerin.")
  (wrong-if "die Lehrer" "For one woman, add -in: die Lehrerin. (die Lehrer is the plural, the teachers.)")
  (hint "Add -in to Lehrer.")
  (hint "-in words are feminine: die ..."))
```

---

## I am a teacher

To say what someone is, such as their job, German usually leaves out
ein and eine:

- Ich bin Lehrer. (I am a teacher: a man speaking.)
- Ich bin Lehrerin. (I am a teacher: a woman speaking.)
- Paul ist Student. (Paul is a student.)

```sources
(source "Duden, Die Grammatik (10th edition, 2022): nouns without an article")
```

```check
(text
  (ask "Sara is a student. Write \"Sara is a student.\" in German.")
  (accept "Sara ist Studentin.") (accept "Sara ist eine Studentin.")
  (wrong-if "Sara ist Student." "Sara is a woman, so use the -in form: Studentin.")
  (wrong-if "Sara ist eine Student." "Sara is a woman, so use the -in form: Studentin. And Germans usually leave out eine here: Sara ist Studentin.")
  (hint "Sara is a woman: use the -in form.")
  (hint "Sara ist ..."))
```

---

## -ung and -chen

Nouns that end in **-ung** are almost always feminine: die Zeitung
(the newspaper), die Übung (the exercise).

Nouns that end in **-chen**, an ending for small things, are neuter:
das Mädchen (the girl). This holds almost always; a few words just
happen to end in the same letters, like der Knochen (the bone).

Many nouns that end in -e are feminine too, such as die Lampe and die
Brille, but not all: der Junge.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the gender of nouns, endings")
```

```check
(choice
  (ask "die Übung means \"the exercise\". Which ending tells you it is feminine?")
  (right "-ung")
  (wrong "Ü at the start"
    "The first letter tells you nothing about the gender. The ending -ung does: -ung words are feminine.")
  (wrong "-e"
    "Übung does not end in -e. It ends in -ung, and -ung words are feminine.")
  (hint "Look at the end of the word."))
```

---

## Words made of words

German often joins two nouns into one: das Wort (the word), plural
die Wörter, and das Buch make das Wörterbuch (the dictionary). Such a
noun is a **compound noun**. It almost always takes the gender of its
**last** part:

- die Wörter + das Buch = das Wörterbuch
- das Haus + die Tür = die Haustür (the front door)

```check
(choice
  (ask "das Haus + die Tür = ___ Haustür. Which article?")
  (right "die")
  (wrong "das"
    "das Haus is the first part. A compound noun takes the gender of its last part, die Tür.")
  (wrong "der"
    "Neither part is masculine. The last part is die Tür, so it is die Haustür.")
  (hint "Which part is last?"))
```

---

## Worked example

```example
(example
  (problem "Which article does Freundin (a female friend) take?")
  (step "Freundin ends in -in: it is der Freund with -in added, for a woman.")
  (step "-in words are always feminine.")
  (answer "die Freundin"))
```

```example
(example
  (problem "Find the article of Haustür (front door).")
  (step "It is a compound noun: Haus + Tür.")
  (step "The last part is Tür.")
  (step (choice (ask "So which article?")
          (right "die")
          (wrong "das" "das goes with Haus, the first part. The last part decides.")))
  (answer "die Haustür"))
```

---

## Read

> Das ist Sara. Sara ist Studentin und studiert in Wien. Das ist Jonas.
> Jonas ist Lehrer und arbeitet in Graz. Sara und Jonas sind Freunde.
> Sie spielen gern Fußball.

```check
(choice
  (ask "What is Jonas's job?")
  (right "He is a teacher.")
  (wrong "He is a student."
    "Sara ist Studentin: Sara is the student. Jonas ist Lehrer.")
  (wrong "He is a soccer player."
    "They like playing soccer (spielen gern Fußball), but that is not a job here. Jonas ist Lehrer.")
  (hint "Find the sentence with Jonas ist ..."))
```

---

## Practice

```check
(text
  (ask "Write \"the dictionary\" in German, with its article.")
  (accept "das Wörterbuch")
  (wrong-if "die Wörterbuch" "Wörterbuch is a compound noun: die Wörter + das Buch. The last part decides: das Wörterbuch.")
  (wrong-if "das Woerterbuch" "Write it with the umlaut: Wörterbuch.")
  (hint "Wörter + Buch: which part is last?"))
```

```check
(choice
  (ask "Which of these nouns is neuter?")
  (right "Mädchen")
  (wrong "Freundin"
    "Freundin ends in -in, the ending for a woman, so it is feminine: die Freundin.")
  (wrong "Zeitung"
    "Zeitung ends in -ung, so it is feminine: die Zeitung.")
  (hint "Which ending is neuter?"))
```

---

```check
(text
  (ask "Tom is a student. Write \"Tom is a student.\" in German.")
  (accept "Tom ist Student.") (accept "Tom ist ein Student.")
  (wrong-if "Tom ist Studentin." "Studentin is for a woman. Tom is a man: Student.")
  (hint "For a man, no -in."))
```

```check
(choice
  (ask "Lisa says: \"Ich bin Student.\" Is this right?")
  (right "No: Lisa is a woman, so she says Studentin")
  (wrong "Yes"
    "Lisa is a woman, so the word is Studentin, with -in. Student is for a man.")
  (wrong "No: she must say ein Student"
    "Germans usually leave out ein for a job or a course of study. The mistake is the ending: for a woman, Studentin.")
  (hint "Is Lisa a man or a woman?"))
```

```cards
(card "der Lehrer, die Lehrer" "the teacher" (typed) (note "a man"))
(card "die Lehrerin, die Lehrerinnen" "the teacher" (typed) (note "a woman"))
(card "der Student, die Studenten" "the student" (typed) (note "a man"))
(card "die Studentin, die Studentinnen" "the student" (typed) (note "a woman"))
(card "der Freund, die Freunde" "the friend" (typed) (note "a man; also: the boyfriend"))
(card "die Freundin, die Freundinnen" "the friend" (typed) (note "a woman; also: the girlfriend"))
(card "die Übung, die Übungen" "the exercise" (typed))
(card "das Wörterbuch, die Wörterbücher" "the dictionary" (typed))
```

So: -in words are feminine, -ung words almost always feminine, -chen
words almost always neuter, and a compound noun takes the gender of its
last part.
