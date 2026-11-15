# W-questions

```lesson
(objective "Ask a question with a question word first and the verb second.")
(minutes 25)
(keywords "question word")
```

To ask for more than yes or no, start with a question word; the verb
still comes second.

A **question word** asks for a piece of information. Most German
question words start with w, so these are often called W-questions:

| German | English |
|---|---|
| wer | who |
| was | what |
| wo | where |
| woher | where from |
| wohin | where to |
| wie | how |

```figure
(de2-slots 90 '("Was" "machst" "du?") 2)
(caption "The question word in place 1, the verb in place 2.")
```

```check
(text
  (ask "Ask a friend: \"What are you cooking?\"")
  (accept "Was kochst du?")
  (wrong-if "Was du kochst?" "After the question word comes the verb: Was kochst du?")
  (wrong-if "Was kocht du?" "kochen with du takes -st: kochst.")
  (hint "Was, then the verb, then du."))
```

---

## wo, woher, wohin

English often says just "where". German asks three ways:

- Wo wohnst du? In Köln. (where: the place)
- Woher kommst du? Aus Kanada. (where from)
- Wohin fährst du? Nach Wien. (where to)

```check
(choice
  (ask "Paul is driving somewhere. You want to know where to. Which question fits?")
  (right "Wohin fährst du?")
  (wrong "Wo fährst du?"
    "wo asks where something is or happens. For the place someone is going to, ask wohin.")
  (wrong "Woher fährst du?"
    "woher asks where from. For where to, ask wohin.")
  (hint "where to = wohin"))
```

---

## wer

wer asks for a person. Its verb takes the er form, as for one person,
even when the answer is two people (one exception you may hear: Wer
sind Sie?):

- Wer ist das? Das ist Jana. (Who is that?)
- Wer spielt Klavier? Mia spielt Klavier.

```check
(text
  (ask "Wer ___ (kommen)? Write the right form.")
  (accept "kommt")
  (wrong-if "kommen" "wer takes the er form of the verb: Wer kommt?")
  (wrong-if "kommst" "kommst is for du. wer takes the er form: kommt.")
  (hint "wer is like er."))
```

---

## Worked example

```example
(example
  (problem "Ask Herr Weber (Sie) where he lives.")
  (step "where = wo. It goes first.")
  (step "Then the verb: wohnen with Sie: wohnen.")
  (step "Then Sie.")
  (answer "Wo wohnen Sie?"))
```

```example
(example
  (problem "Ask a friend what he likes doing.")
  (step "Was goes first.")
  (step "Then the verb: machen with du: machst.")
  (step (choice (ask "What comes next?")
          (right "du gern")
          (wrong "gern du" "The subject comes right after the verb; gern follows it.")))
  (answer "Was machst du gern?"))
```

---

## Read

- Lea: Wer ist das?
- Max: Das ist Jana. Sie ist neu hier.
- Lea: Woher kommt sie?
- Max: Aus Graz.
- Lea: Hat sie ein Hobby?
- Max: Ja, Schach. Sie spielt gern Schach.

```check
(choice
  (ask "Where does Jana come from?")
  (right "Graz")
  (wrong "Here"
    "Sie ist neu hier: she is new here. Woher kommt sie? Aus Graz.")
  (wrong "Vienna"
    "Vienna is not in the dialogue. Max says: Aus Graz.")
  (hint "Find the answer to Woher?"))
```

---

## Practice

```check
(text
  (ask "Ask a friend: \"Where are you going?\" (by train)")
  (accept "Wohin fährst du?") (accept "Wo fährst du hin?")
  (wrong-if "Wo fährst du?" "For where to, German says wohin: Wohin fährst du?")
  (wrong-if "Wohin fahrst du?" "fahren changes a to ä with du: fährst.")
  (wrong-if "Wohin du fährst?" "The verb comes second, right after Wohin: Wohin fährst du?")
  (hint "Wohin, then fahren with du."))
```

```check
(choice
  (ask "Which question asks about a person?")
  (right "Wer ist das?")
  (wrong "Was ist das?"
    "was asks what, about a thing. wer asks who.")
  (wrong "Wo ist das?"
    "wo asks where. wer asks who.")
  (hint "who = ?"))
```

---

```check
(text
  (ask "Ask a friend: \"How are you called?\" (What is your name?)")
  (accept "Wie heißt du?") (accept "Wie heisst du?")
  (wrong-if "Was heißt du?" "German asks wie, how, for a name: Wie heißt du?")
  (wrong-if "Wie du heißt?" "The verb comes second: Wie heißt du?")
  (hint "You know this one from part 1."))
```

```check
(choice
  (ask "\"Die Antwort ist richtig.\" What does it mean?")
  (right "The answer is right.")
  (wrong "The question is right."
    "die Antwort is the answer.")
  (wrong "The answer is wrong."
    "Wrong is falsch. richtig means right.")
  (hint "Antwort goes with antworten, to answer."))
```

```cards
(card "wer" "who" (typed))
(card "wohin" "where to" (typed))
(card "das Hobby, die Hobbys" "the hobby" (typed))
(card "die Antwort, die Antworten" "the answer" (typed))
```

So: in a W-question, the question word comes first and the verb
second.
