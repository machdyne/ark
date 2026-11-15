# Food

```lesson
(objective "Name everyday foods with their articles and plurals and say what you eat, with and without an article.")
(minutes 20)
```

In this lesson you name everyday foods and say what you eat: **Ich esse ein Brötchen mit Käse.** (I eat a roll with cheese.)

```cards
(card "das Brot, die Brote" "the bread" (typed) (note "Also: the loaf. Zwei Brote: two loaves."))
(card "das Brötchen, die Brötchen" "the bread roll" (typed) (note "In Austria and southern Germany often die Semmel."))
(card "der Käse" "the cheese" (typed))
(card "das Ei, die Eier" "the egg" (typed))
(card "der Apfel, die Äpfel" "the apple" (typed))
(card "das Obst" "the fruit" (typed) (note "All fruit together; no plural."))
(card "das Gemüse" "the vegetables" (typed) (note "All vegetables together; singular in German."))
(card "das Fleisch" "the meat" (typed))
```

Brötchen ends in -chen, so it is neuter, as almost every noun with -chen is.

```check
(text
  (ask "What is the plural of das Ei? Type it with die.")
  (accept "die Eier")
  (accept "Eier")
  (wrong-if "die Eis" "Eis is the ice cream. The plural of das Ei adds -er: die Eier.")
  (wrong-if "die Eien" "Das Ei adds -er in the plural: die Eier.")
  (hint "It adds -er."))
```

---

## With or without an article

Some foods you count: one apple, two eggs. They take ein or a number:

> Ich esse einen Apfel. Ich esse zwei Eier.

Other foods you do not count: bread, cheese, meat. Like English, German says them with no article:

> Ich esse Brot und Käse. Isst du Fleisch?

```check
(choice
  (ask "How do you say: I eat cheese.")
  (right "Ich esse Käse.")
  (wrong "Ich esse einen Käse."
    "Einen Käse is a whole cheese. Cheese in general takes no article, as in English: Ich esse Käse.")
  (wrong "Ich esse der Käse."
    "Without an article it means cheese in general. And der Käse as an object would be den Käse.")
  (hint "English says I eat cheese, with no article."))
```

---

## No meat: kein

To say you eat none, use **kein**, also with no-article foods:

> Ich esse kein Fleisch. (I do not eat meat.)

Das Fleisch is neuter, so kein stays kein.

```check
(text
  (ask "Er isst ___ Obst. (no) Type the missing word.")
  (accept "kein")
  (wrong-if "keinen" "Das Obst is neuter. Only masculine kein becomes keinen.")
  (wrong-if "nicht" "With a noun, say no with kein: kein Obst.")
  (hint "das Obst is neuter."))
```

---

## Obst and Gemüse

**das Obst** is all fruit, and **das Gemüse** all vegetables. Both are singular, so the verb is singular too:

> Das Gemüse ist gut.

English says "the vegetables are"; German says "das Gemüse ist".

```check
(choice
  (ask "Which is right?")
  (right "Das Obst ist gut.")
  (wrong "Das Obst sind gut."
    "Das Obst is singular in German: all fruit, as one thing. So it is ist.")
  (wrong "Die Obste sind gut."
    "Obst has no plural. It already means all fruit.")
  (hint "das Obst is one word for all fruit, and it is singular."))
```

---

## A worked example

```example
(example
  (problem "Say in German: I eat an apple and bread.")
  (step "ich esse.")
  (step "An apple: you count it. der Apfel as an object: einen Apfel.")
  (step "Bread in general: no article: Brot.")
  (answer "Ich esse einen Apfel und Brot."))
```

---

## Now you finish one

Say: She eats an egg. **Sie isst ___ Ei.**

```check
(text
  (ask "Type the missing word.")
  (accept "ein")
  (wrong-if "einen" "Das Ei is neuter. Neuter ein does not change.")
  (wrong-if "eine" "Eine is for feminine nouns. Das Ei is neuter: ein Ei.")
  (hint "das Ei: neuter."))
```

---

## Breakfast at home

> Mutter: Was isst du, Ben? Ein Brötchen?

> Ben: Ja, ein Brötchen mit Käse. (with)

> Mutter: Und ein Ei?

> Ben: Nein, danke. Ich esse kein Ei. Aber ich esse einen Apfel.

> Mutter: Gut. Obst ist gesund! (healthy)

```check
(choice
  (ask "What does Ben NOT eat?")
  (right "an egg")
  (wrong "an apple"
    "Ben says: Aber ich esse einen Apfel. He does eat an apple.")
  (wrong "a roll"
    "Ben says ja to a Brötchen mit Käse.")
  (hint "Find kein."))
```

---

## Practice

```check
(text
  (ask "What is the plural of der Apfel? Type it with die.")
  (accept "die Äpfel")
  (accept "Äpfel")
  (wrong-if "die Apfel" "The plural has an umlaut: die Äpfel.")
  (wrong-if "die Apfeln" "Der Apfel adds no ending in the plural, only an umlaut: die Äpfel.")
  (hint "Add an umlaut to the A."))
```

```check
(choice
  (ask "Isst du Fleisch? - Nein, ...")
  (right "Nein, ich esse kein Fleisch.")
  (wrong "Nein, ich esse nicht Fleisch."
    "With a noun and no article, say no with kein: kein Fleisch.")
  (wrong "Nein, ich esse keinen Fleisch."
    "Das Fleisch is neuter, so kein does not change.")
  (hint "das Fleisch is neuter, and it is a noun."))
```

```check
(choice
  (ask "Which food do you usually count with ein?")
  (right "das Brötchen")
  (wrong "das Fleisch"
    "Meat is not counted: Ich esse Fleisch, with no article. A roll is counted: ein Brötchen.")
  (wrong "das Gemüse"
    "Gemüse means all vegetables, so it is not counted: Ich esse Gemüse.")
  (hint "Which can you have one of, or two of?"))
```

Now you can name foods with their articles and plurals, and say what you eat with ein, kein or no article.
