# Languages

```lesson
(objective "Say which languages you speak, ask others, and ask how to say a word in German.")
(minutes 20)
```

In this lesson you learn to talk about the languages you speak.

## Ich spreche ...

**Ich spreche ...** means I speak ... Most language names end in -isch, and in these phrases they start with a capital letter:

- Ich spreche Englisch.
- Ich spreche Deutsch.
- Ich spreche **Spanisch** (Spanish) und **Italienisch** (Italian).

You know Französisch (French) too. Others: Arabisch, Chinesisch, Japanisch, Russisch, Türkisch, Polnisch, Portugiesisch.

```check
(text
  (ask "Say: I speak English.")
  (accept "Ich spreche Englisch")
  (accents nearly)
  (wrong-if "Ich spreche English" "German writes the language with sch: Englisch.")
  (wrong-if "Ich spreche England" "England is the country. The language is Englisch.")
  (hint "Ich spreche, then the language.")
  (hint "English in German is Englisch."))
```

---

## Asking

| | du | Sie |
|---|---|---|
| Do you speak German? | Sprichst du Deutsch? | Sprechen Sie Deutsch? |

The word changes: spreche, sprichst, sprechen. Learn the three as phrases; part 2 of the course explains them.

Answer with Ja or Nein, and add more if you like: Ja, sehr gut! Or: Nein, aber ich spreche Englisch. (aber = but)

```check
(choice
  (ask "You want to ask a woman at a station, whom you do not know, if she speaks English. What do you say?")
  (right "Entschuldigung, sprechen Sie Englisch?")
  (wrong "Entschuldigung, sprichst du Englisch?"
    "She is an adult you do not know, so use Sie: sprechen Sie Englisch?")
  (wrong "Entschuldigung, ich spreche Englisch?"
    "Ich spreche Englisch says that you speak English. To ask her, say: Sprechen Sie Englisch?")
  (hint "A stranger: Sie."))
```

---

## In German

**auf Deutsch** means in German. To ask how to say a word, use **Wie sagt man ... auf Deutsch?** (How do you say ... in German?)

- Wie sagt man "thank you" auf Deutsch? Danke!

This is the most useful question for a learner: you can ask it with anyone.

```check
(choice
  (ask "You do not know the German for the word key. What do you ask?")
  (right "Wie sagt man key auf Deutsch?")
  (wrong "Wie heißt du key?"
    "Wie heißt du? asks someone's name. To ask for a word, say: Wie sagt man key auf Deutsch?")
  (wrong "Sprechen Sie key?"
    "Sprechen Sie ...? asks about a language. To ask for a word, say: Wie sagt man ... auf Deutsch?")
  (hint "auf Deutsch means in German."))
```

```sources
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste: sprechen, die Sprache, Deutsch")
```

---

## Country or language?

The country and its language are often different words:

| Country | Language |
|---|---|
| Deutschland | Deutsch |
| England | Englisch |
| Frankreich (France) | Französisch |

In Austria, people speak German. Switzerland has four national languages: German, French, Italian and Romansh.

```check
(choice
  (ask "Which word is a language, not a country?")
  (right "Deutsch")
  (wrong "Deutschland"
    "Deutschland is the country, Germany. The language is Deutsch.")
  (wrong "Österreich"
    "Österreich is a country, Austria. People there speak Deutsch.")
  (hint "Languages often end in -isch, or are short like Deutsch."))
```

```sources
(source "Federal Constitution of the Swiss Confederation, Article 4 (national languages: German, French, Italian and Romansh)")
```

---

## Your words

```cards
(card "Ich spreche ..." "I speak ...")
(card "Sprechen Sie Englisch?" "Do you speak English?" (note "with Sie"))
(card "Sprichst du Deutsch?" "Do you speak German?" (note "with du"))
(card "Spanisch" "Spanish" (typed) (note "the language"))
(card "Italienisch" "Italian" (typed) (note "the language"))
(card "auf Deutsch" "in German")
(card "Wie sagt man ... auf Deutsch?" "How do you say ... in German?")
```

```check
(text
  (ask "Ask your friend Lea: Do you speak Spanish?")
  (accept "Sprichst du Spanisch")
  (accents nearly)
  (wrong-if "Sprechen Sie Spanisch" "That is the Sie form. Lea is your friend: Sprichst du Spanisch?")
  (wrong-if "Sprichst du Spanish" "In German the language ends in -isch: Spanisch.")
  (hint "The du form starts with Sprichst.")
  (hint "Sprichst du, then the language."))
```

---

## Read: languages at the summer school

- **Frau Smith:** Sprechen Sie Deutsch, Herr Wolf?
- **Herr Wolf:** Ja, ich komme aus Österreich. Und Sie?
- **Frau Smith:** Ich spreche Englisch und Spanisch. Und ein wenig Deutsch!
- **Herr Wolf:** Sehr gut!
- **Frau Smith:** Wie sagt man "cool" auf Deutsch?
- **Herr Wolf:** Hmm ... cool!

(ein wenig = a little)

```check
(choice
  (ask "Which languages does Frau Smith speak?")
  (right "English, Spanish and a little German")
  (wrong "Only English"
    "She says: Ich spreche Englisch und Spanisch. Und ein wenig Deutsch! ein wenig means a little.")
  (wrong "German, from Austria"
    "That is Herr Wolf: Ich komme aus Österreich. Frau Smith speaks English and Spanish, and a little German.")
  (hint "Read Frau Smith's second line."))
```

```check
(choice
  (ask "What does Frau Smith find out about the word cool?")
  (right "German uses the same word: cool")
  (wrong "There is no German word for it"
    "Herr Wolf answers: cool! German uses the English word.")
  (hint "Read Herr Wolf's last line."))
```

---

## Talking about languages

```example
(example
  (problem "Say that you speak English and a little French. (a little = ein wenig)")
  (step "Ich spreche, then the first language: Ich spreche Englisch.")
  (step "Add und, ein wenig, and the second language: und ein wenig Französisch.")
  (answer "Ich spreche Englisch und ein wenig Französisch."))
```

```example
(example
  (problem "You want to know the German word for apple. Ask Frau Berger.")
  (step "Start politely: Entschuldigung!")
  (step (choice (ask "Which question do you ask?")
    (right "Wie sagt man apple auf Deutsch?")
    (wrong "Sprechen Sie apple?"
      "Sprechen Sie ...? asks about a language. For a word, ask Wie sagt man ... auf Deutsch?")))
  (answer "Entschuldigung, wie sagt man apple auf Deutsch?"))
```

---

## Practice

```check
(text
  (ask "Type the German word for Italian, the language.")
  (accept "Italienisch")
  (accents nearly)
  (wrong-if "Italian" "That is English. German adds -isch: Italienisch.")
  (wrong-if "Italienish" "The sh sound is written sch in German: Italienisch.")
  (hint "Italien (Italy), then -isch."))
```

---

```check
(text
  (ask "Type the German for in German (as in: How do you say it in German?).")
  (accept "auf Deutsch")
  (accents nearly)
  (wrong-if "in Deutsch" "For saying something in a language, German uses auf: auf Deutsch.")
  (wrong-if "auf Deutschland" "Deutschland is the country. The language is Deutsch: auf Deutsch.")
  (hint "Two words: auf, then the language."))
```

---

```check
(choice
  (ask "Herr Wolf asks you: Sprechen Sie Englisch? You do. What do you answer?")
  (right "Ja, ich spreche Englisch.")
  (wrong "Ja, Sie sprechen Englisch."
    "Sie sprechen means you speak. To talk about yourself, say ich spreche.")
  (wrong "Ja, ich komme aus Englisch."
    "Ich komme aus is for places: Ich komme aus England. For a language: Ich spreche Englisch.")
  (hint "Say it about yourself: ich ..."))
```

So: say Ich spreche ..., ask Sprichst du ...? or Sprechen Sie ...?, and ask Wie sagt man ... auf Deutsch? whenever you need a word.
