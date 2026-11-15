# Asking people

```lesson
(objective "Ask and answer questions with du and Sie in a short conversation.")
(minutes 25)
```

When you meet someone, you ask both kinds of question, with du or with
Sie, and react to the answers.

With du, the verb takes -st; with Sie, it takes -en, and Sie has a
capital S. The word order is the same:

| du | Sie |
|---|---|
| Wo wohnst du? | Wo wohnen Sie? |
| Was machst du gern? | Was machen Sie gern? |
| Spielst du Tennis? | Spielen Sie Tennis? |

```check
(text
  (ask "Change it to Sie: \"Woher kommst du?\"")
  (accept "Woher kommen Sie?") (accept "Wo kommen Sie her?")
  (wrong-if "Woher kommst Sie?" "With Sie, the verb takes -en: kommen.")
  (wrong-if "Woher Sie kommen?" "The verb stays second: Woher kommen Sie?")
  (hint "kommen with Sie: kommen."))
```

---

## Reacting

Short words keep a conversation going:

| German | English |
|---|---|
| Genau! | Exactly! |
| Wirklich? | Really? |
| Super! | Great! |

wirklich also works inside a sentence: Das ist wirklich gut. (That is
really good.)

```check
(choice
  (ask "Tom says: \"Ich spiele Klavier, Tennis und Schach.\" You are surprised. What do you say?")
  (right "Wirklich?")
  (wrong "Genau!"
    "Genau means exactly: you say it when you agree with something. To show surprise, ask Wirklich?")
  (wrong "Falsch!"
    "Falsch says Tom is wrong, which is rude here. To show surprise, ask Wirklich?")
  (hint "Which one means Really?"))
```

---

## From answer to question

To find the question for an answer, look at what the answer gives:

- Ich wohne in Köln. A place, so: Wo wohnst du?
- Das ist Jana. A person, so: Wer ist das?
- Ja, ich spiele Schach. Ja, so: Spielst du Schach?

```check
(text
  (ask "The answer is \"Ich heiße Tom.\" Write the du question.")
  (accept "Wie heißt du?") (accept "Wie heisst du?")
  (wrong-if "Was heißt du?" "German asks wie for a name: Wie heißt du?")
  (hint "You know it: Wie ...?"))
```

---

## Worked example

```example
(example
  (problem "The answer is \"Ich fahre nach Hamburg.\" Write the du question.")
  (step "The answer gives a place someone goes to: wohin.")
  (step "fahren with du: fährst.")
  (answer "Wohin fährst du?"))
```

```example
(example
  (problem "The answer is \"Ich komme aus Kanada.\" Write the Sie question.")
  (step "The answer gives where someone is from: woher.")
  (step (text (ask "Write the question.") (accept "Woher kommen Sie?") (accept "Wo kommen Sie her?")
          (wrong-if "Woher kommst du?" "That is the du question. With Sie: Woher kommen Sie?")))
  (answer "Woher kommen Sie?"))
```

---

## Read

- Frau Roth: Guten Tag! Wie heißen Sie?
- Tom: Ich heiße Tom Clark.
- Frau Roth: Woher kommen Sie, Herr Clark?
- Tom: Aus Kanada. Ich wohne gerade in Wien.
- Frau Roth: Wirklich? Was machen Sie in Wien?
- Tom: Ich studiere hier.
- Frau Roth: Super! Sprechen Sie schon Deutsch?
- Tom: Ja, aber ich lerne noch.

```check
(choice
  (ask "What does Tom do in Vienna?")
  (right "He studies.")
  (wrong "He teaches German."
    "Tom says Ich studiere hier: he studies there. And he is still learning German.")
  (wrong "He lives there for good."
    "Ich wohne gerade in Wien: he lives there at the moment. And Ich studiere hier: he studies.")
  (hint "Find the answer to Was machen Sie in Wien?"))
```

---

## Practice

```check
(text
  (ask "Ask Frau Roth (Sie): \"Do you play chess?\"")
  (accept "Spielen Sie Schach?")
  (wrong-if "Spielst du Schach?" "With Frau Roth, use Sie: Spielen Sie Schach?")
  (wrong-if "Sie spielen Schach?" "Put the verb first: Spielen Sie Schach?")
  (hint "Verb first, then Sie."))
```

```check
(text
  (ask "The answer is \"Ich lerne Deutsch.\" Write the du question with Was.")
  (accept "Was lernst du?")
  (wrong-if "Was du lernst?" "The verb comes second: Was lernst du?")
  (wrong-if "Was lernen du?" "lernen with du: lernst.")
  (hint "Was, then lernen with du."))
```

---

```check
(choice
  (ask "Your friend says: \"Wien ist in Österreich, richtig?\" What do you answer?")
  (right "Genau!")
  (wrong "Wirklich?"
    "Wirklich? shows surprise or doubt. Vienna is in Austria, so agree: Genau!")
  (wrong "Falsch!"
    "Vienna is in Austria, so it is not wrong. Agree: Genau!")
  (hint "Is your friend right?"))
```

```check
(choice
  (ask "Which question is right for Herr Weber, whom you do not know well?")
  (right "Wohnen Sie hier?")
  (wrong "Wohnst du hier?"
    "du is for friends, family and children. With Herr Weber, use Sie.")
  (wrong "Wohnen du hier?"
    "wohnen with du would be wohnst; but with Herr Weber you say Sie anyway: Wohnen Sie hier?")
  (hint "Herr Weber: du or Sie?"))
```

```cards
(card "Genau!" "Exactly!" (typed))
(card "wirklich" "really" (typed))
(card "Super!" "Great!" (typed))
```

So: ask with a question word or with the verb first, use du or Sie as
fits the person, and react with Genau!, Wirklich? and Super!
