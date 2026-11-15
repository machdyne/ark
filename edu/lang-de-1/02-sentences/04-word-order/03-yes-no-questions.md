# Yes or no?

```lesson
(objective "Ask a yes/no question with the verb first, and answer it.")
(minutes 25)
```

To ask a question that has the answer yes or no, put the verb first
and the subject second.

```figure
(define c (choice 's '("statement" "question") "Sentence"))
(if (= c 0) (de2-slots 80 '("Du" "spielst" "Klavier.") 2))
(if (= c 1) (de2-slots 80 '("Spielst" "du" "Klavier?") 1))
(caption "Klavier = piano")
```

- Du spielst Klavier. (You play the piano.)
- Spielst du Klavier? (Do you play the piano?)

German has no word for English "do" in questions. The verb itself
comes to the front.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the position of the verb in the sentence")
```

```check
(text
  (ask "Make a question: \"Du spielst Tennis.\"")
  (accept "Spielst du Tennis?")
  (wrong-if "Du spielst Tennis?" "In speech, a rising voice can make this a question, but the usual German question puts the verb first: Spielst du Tennis?")
  (hint "Put spielst first, then du."))
```

---

## Questions with Sie

With Sie, it works the same way. You know some already:

- Sprechen Sie Deutsch?
- Kommen Sie aus Kanada?
- Spielen Sie Schach? (Do you play chess?)

```check
(text
  (ask "Ask Frau Weber (Sie) if she plays chess.")
  (accept "Spielen Sie Schach?")
  (wrong-if "Spielst du Schach?" "That is the informal du. With Frau Weber, use Sie: Spielen Sie Schach?")
  (wrong-if "Sie spielen Schach?" "Put the verb first: Spielen Sie Schach?")
  (hint "Spielen, then Sie."))
```

---

## Answers

Answer with Ja or Nein, then a whole sentence if you like:

- Spielst du Tennis? Ja, ich spiele Tennis.
- Spielst du Klavier? Nein, ich spiele Schach.

The answer is a statement again, so the verb is second. Ja and Nein
stand outside the sentence, before it, and take no place.

To check a fact: Ist das richtig? (Is that right?) Ja, das ist
richtig. Nein, das ist falsch. (No, that is wrong.)

```check
(choice
  (ask "Kommst du aus Wien? (You do.) Which answer is right?")
  (right "Ja, ich komme aus Wien.")
  (wrong "Ja, komme ich aus Wien."
    "That is the question order. An answer is a statement: the verb is second, after ich. Ja does not take a place.")
  (wrong "Ja, ich kommst aus Wien."
    "kommst is for du. In the answer you speak about yourself: ich komme.")
  (hint "After Ja, a normal statement."))
```

---

## Worked example

```example
(example
  (problem "Ask a friend if she is learning German.")
  (step "A friend: du. lernen with du: lernst.")
  (step "The verb first: Lernst.")
  (step "Then du, then the rest: Deutsch.")
  (answer "Lernst du Deutsch?"))
```

```example
(example
  (problem "Ask two friends (ihr) if they are cooking.")
  (step "kochen with ihr: kocht.")
  (step (text (ask "Write the question.") (accept "Kocht ihr?")
          (wrong-if "Ihr kocht?" "Put the verb first: Kocht ihr?")))
  (answer "Kocht ihr?"))
```

---

## Read

- Mia: Spielst du Klavier, Ben?
- Ben: Nein, ich spiele Tennis.
- Mia: Spielst du auch Schach?
- Ben: Ja! Spielst du gern Schach?
- Mia: Ja, sehr gern.

```check
(choice
  (several)
  (ask "What does Ben play? Choose all that fit.")
  (right "tennis")
  (right "chess")
  (wrong "the piano"
    "Mia asks Spielst du Klavier? and Ben says Nein. He plays tennis, and chess too.")
  (hint "Look at Ben's two answers."))
```

---

## Practice

```check
(text
  (ask "Make a question: \"Er wohnt in Berlin.\"")
  (accept "Wohnt er in Berlin?")
  (wrong-if "Er wohnt in Berlin?" "Put the verb first: Wohnt er in Berlin?")
  (hint "The verb first, then er."))
```

```check
(choice
  (ask "\"Ist das falsch?\" What does it mean?")
  (right "Is that wrong?")
  (wrong "That is wrong."
    "The verb ist comes first, so it is a question: Is that wrong?")
  (wrong "Is that right?"
    "Right is richtig. falsch means wrong.")
  (hint "Where is the verb?"))
```

---

```check
(text
  (ask "Ask a friend: \"Do you speak English?\"")
  (accept "Sprichst du Englisch?")
  (wrong-if "Sprechst du Englisch?" "sprechen changes e to i with du: sprichst.")
  (wrong-if "Du sprichst Englisch?" "Put the verb first: Sprichst du Englisch?")
  (hint "sprechen with du: sprichst."))
```

```check
(choice
  (ask "Which one is a question?")
  (right "Fährt Tom nach Graz?")
  (wrong "Tom fährt nach Graz."
    "The verb is second, so this is a statement.")
  (wrong "Nach Graz fährt Tom."
    "Nach Graz is in place 1 and the verb second: a statement.")
  (hint "In which one is the verb first?"))
```

```cards
(card "das Klavier, die Klaviere" "the piano" (typed) (note "Klavier spielen"))
(card "das Tennis" "tennis" (typed) (note "Tennis spielen"))
(card "das Schach" "chess" (typed) (note "Schach spielen"))
(card "richtig" "right" (typed) (note "also: correct"))
(card "falsch" "wrong" (typed))
```

So: in a yes/no question the verb comes first and the subject second.
