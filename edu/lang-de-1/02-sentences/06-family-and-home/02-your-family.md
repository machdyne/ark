# Your family

```lesson
(objective "Ask about someone's family with dein, deine and Ihr, Ihre.")
(minutes 25)
```

To ask about someone else's family, use dein (your, to a friend) or
Ihr (your, formal); they change like mein.

| | der, das words | die words, plurals |
|---|---|---|
| ich: my | mein | meine |
| du: your | dein | deine |
| Sie: your | Ihr | Ihre |

Ihr meaning "your" has a capital I, like Sie.

- Wie heißt dein Bruder? (to a friend)
- Wie heißt Ihre Tochter? (formal)

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the possessive article")
```

```check
(text
  (ask "Ask a friend: \"Is that your mother?\"")
  (accept "Ist das deine Mutter?")
  (wrong-if "Ist das dein Mutter?" "Mutter is feminine (die Mutter): deine.")
  (wrong-if "Ist das Ihre Mutter?" "Ihre is formal. To a friend, say deine.")
  (wrong-if "Das ist deine Mutter?" "A yes/no question puts the verb first: Ist das deine Mutter?")
  (hint "Verb first: Ist das ...?"))
```

---

## Three generations

This is more of Lena's family. Each box shows who the person is for
Lena.

```figure
(de2-person 110 40 "Karl" "Opa")
(de2-person 210 40 "Rosa" "Oma")
(line 140 40 180 40 'ink 1.5)
(de2-link 160 40 100 102)
(de2-link 160 40 220 102)
(de2-person 100 120 "Peter" "Vater")
(de2-person 220 120 "Eva" "Tante")
(line 100 138 100 182 'ink 1.5)
(de2-person 100 200 "Lena" "ich")
(caption "Lena's grandparents, father and aunt")
```

| German | English |
|---|---|
| der Opa | grandpa |
| die Oma | grandma |
| die Großeltern | the grandparents |
| der Onkel | the uncle |
| die Tante | the aunt |

The more formal words are der Großvater and die Großmutter.

```check
(text
  (ask "Who is Eva for Lena? Write the German word with its article.")
  (accept "die Tante") (accept "Tante") (accept "meine Tante")
  (wrong-if "die Schwester" "Eva is Peter's sister, so for Lena, Peter's daughter, she is her aunt: die Tante.")
  (wrong-if "die Oma" "Rosa is Lena's grandma. Eva is her father's sister: die Tante.")
  (hint "Eva is the sister of Lena's father."))
```

---

## Husband and wife

mein Mann and meine Frau also mean "my husband" and "my wife".
verheiratet means married:

- Das ist meine Frau. (This is my wife.)
- Ich bin verheiratet. (I am married.)

```check
(choice
  (ask "\"Ist das Ihr Mann?\" What does it mean?")
  (right "Is that your husband?")
  (wrong "Is that her husband?"
    "Ihr with a capital I is the formal \"your\", like Sie.")
  (wrong "Is that your son?"
    "Son is Sohn. mein Mann, Ihr Mann: husband.")
  (hint "Ihr with a capital I = your (formal)."))
```

---

## Worked example

```example
(example
  (problem "Ask Frau Kaya (Sie) what her son is called.")
  (step "A W-question: Wie first, then the verb: Wie heißt.")
  (step "der Sohn, and Sie: Ihr.")
  (answer "Wie heißt Ihr Sohn?"))
```

```example
(example
  (problem "Ask a friend how old his grandma is.")
  (step "Wie alt first, then the verb: ist.")
  (step (choice (ask "dein or deine?")
          (right "deine")
          (wrong "dein" "Oma is feminine (die Oma): deine.")))
  (answer "Wie alt ist deine Oma?"))
```

---

## Read

- Ben: Ist das deine Familie, Lena?
- Lena: Ja! Das ist meine Oma. Sie heißt Rosa.
- Ben: Und der Mann?
- Lena: Das ist mein Opa, Karl. Sie sind schon 50 Jahre (years) verheiratet!
- Ben: Toll! Und die Frau hier?
- Lena: Das ist meine Tante Eva.

```check
(number
  (ask "How many years have Lena's grandparents been married?")
  (answer 50)
  (hint "Find verheiratet. Which number is in that sentence?"))
```

---

## Practice

```check
(text
  (ask "Ask a friend: \"What is your brother called?\"")
  (accept "Wie heißt dein Bruder?") (accept "Wie heisst dein Bruder?")
  (wrong-if "Wie heißt deine Bruder?" "Bruder is masculine (der Bruder): dein.")
  (wrong-if "Wie heißt Ihr Bruder?" "Ihr is formal. To a friend, say dein.")
  (hint "Wie heißt ... ?"))
```

```check
(text
  (ask "Write the plural of die Tante, with its article.")
  (accept "die Tanten")
  (wrong-if "die Tantes" "Tante is feminine and ends in -e: add -n.")
  (hint "Like die Lampe, die Lampen."))
```

---

```check
(choice
  (ask "Herr Weber asks: \"Sind Sie verheiratet?\" What is he asking?")
  (right "Are you married?")
  (wrong "Are you tired?"
    "Tired is müde. verheiratet is married.")
  (wrong "Do you have children?"
    "That would be Haben Sie Kinder? verheiratet is married.")
  (hint "verheiratet = married."))
```

```check
(choice
  (ask "Which question is right to Frau Roth?")
  (right "Wohnen Ihre Eltern in Wien?")
  (wrong "Wohnen deine Eltern in Wien?"
    "deine is for a friend. With Frau Roth, use Ihre.")
  (wrong "Wohnen Ihr Eltern in Wien?"
    "Eltern is plural, so it takes Ihre.")
  (hint "Formal, and plural."))
```

```cards
(card "dein, deine" "your" (typed) (note "to a friend"))
(card "Ihr, Ihre" "your" (typed) (note "formal"))
(card "die Familie, die Familien" "the family" (typed))
(card "die Großeltern" "the grandparents" (typed) (note "always plural"))
(card "der Opa, die Opas" "grandpa" (typed))
(card "die Oma, die Omas" "grandma" (typed))
(card "der Onkel, die Onkel" "the uncle" (typed))
(card "die Tante, die Tanten" "the aunt" (typed))
(card "verheiratet" "married" (typed))
```

So: dein and Ihr change like mein: dein Bruder, deine Schwester, Ihr
Sohn, Ihre Tochter.
