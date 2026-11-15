# Drinks and what you like

```lesson
(objective "Name drinks and meals and say what you like with mögen.")
(minutes 25)
```

In this lesson you name drinks and meals and say what you like: **Ich mag Tee.**

```cards
(card "trinken" "to drink" (typed) (note "Regular: ich trinke, du trinkst, er trinkt."))
(card "der Kaffee" "the coffee" (typed))
(card "der Tee" "the tea" (typed))
(card "das Wasser" "the water" (typed))
(card "die Milch" "the milk" (typed))
(card "der Saft, die Säfte" "the juice" (typed))
```

Drinks are like bread and cheese: you say them with no article. **Ich trinke Wasser.** In a café you count cups and glasses: **einen Kaffee** is a cup of coffee.

```check
(choice
  (ask "In a café: I would like a coffee, please.")
  (right "Ich möchte einen Kaffee, bitte.")
  (wrong "Ich möchte ein Kaffee, bitte."
    "Der Kaffee is masculine and the object of möchte, so ein becomes einen.")
  (wrong "Ich möchte eine Kaffee, bitte."
    "Eine is for feminine nouns. Der Kaffee is masculine: einen Kaffee.")
  (hint "der Kaffee, as an object."))
```

---

## mögen

**mögen** means "to like". Its singular forms change the vowel and have no ending for ich and er:

| | mögen |
|---|---|
| ich | mag |
| du | magst |
| er, sie, es | mag |
| wir | mögen |
| ihr | mögt |
| sie, Sie | mögen |

What you like is the object, in the accusative:

> Ich mag Milch. Magst du den Tee? Er mag keinen Kaffee.

```cards
(card "mögen" "to like" (typed) (note "ich mag, du magst, er mag"))
```

```check
(text
  (ask "Er ___ Saft. Type the form of mögen.")
  (accept "mag")
  (wrong-if "magt" "Er mag has no ending, the same as ich mag.")
  (wrong-if "mögt" "Mögt is for ihr. For er it is mag.")
  (hint "ich mag, er ..."))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): the forms of mögen")
```

---

## mag, möchte, gern

Three ways to talk about what you like:

- **Ich mag Tee.** I like tea, in general.
- **Ich möchte einen Tee.** I would like a tea, now.
- **Ich trinke gern Tee.** I like drinking tea: gern goes with a verb.

```check
(choice
  (ask "A waiter asks what you want. Which answer fits?")
  (right "Ich möchte einen Saft.")
  (wrong "Ich mag einen Saft."
    "Mag says what you like in general. To ask for something now, say möchte: Ich möchte einen Saft.")
  (wrong "Ich trinke gern einen Saft."
    "Gern says what you like doing in general. To order, say Ich möchte einen Saft.")
  (hint "Which one means would like, now?"))
```

---

## Meals

```cards
(card "das Frühstück" "the breakfast" (typed))
(card "das Mittagessen" "the lunch" (typed))
(card "das Abendessen" "the dinner" (typed) (note "Also: the supper."))
```

Mittagessen and Abendessen are compound nouns with **das Essen** (the food, the meal) at the end, so they are neuter.

To ask what someone has for a meal, use the fixed phrase **zum Frühstück** (for breakfast):

> Was trinkst du zum Frühstück? - Ich trinke Milch.

```check
(choice
  (ask "What is the gender of das Abendessen, and why?")
  (right "Neuter: the last part, das Essen, is neuter.")
  (wrong "Masculine: der Abend is masculine."
    "In a compound noun, the last part decides the gender. Here it is das Essen.")
  (hint "Which part of a compound noun gives its gender?"))
```

---

## A worked example

```example
(example
  (problem "Say in German: She does not like coffee.")
  (step "sie mag.")
  (step "Not liking a noun: kein. der Kaffee as an object: keinen Kaffee.")
  (answer "Sie mag keinen Kaffee."))
```

---

## Now you finish one

Ask a friend: Do you like tea? **Magst du ___?**

```check
(text
  (ask "Type the missing word.")
  (accept "Tee")
  (wrong-if "einen Tee" "Einen Tee is one cup. Tea in general takes no article: Magst du Tee?")
  (wrong-if "Kaffee" "Kaffee is coffee. Tea is Tee.")
  (hint "tea in general, no article."))
```

---

## What we drink

Emma writes about her family.

> Zum Frühstück trinkt mein Vater Kaffee. Meine Mutter mag keinen Kaffee. Sie trinkt Tee. Ich trinke Milch oder Saft. (or) Zum Abendessen trinken wir Wasser.

```check
(choice
  (ask "What does Emma's mother drink at breakfast?")
  (right "tea")
  (wrong "coffee"
    "Her father drinks coffee. Her mother mag keinen Kaffee: she drinks tea.")
  (wrong "milk"
    "Emma drinks milk or juice. Her mother drinks tea.")
  (hint "Find Meine Mutter."))
```

```check
(choice
  (ask "What does the family drink at dinner?")
  (right "water")
  (wrong "juice"
    "Emma drinks milk or juice, but at dinner the family drinks water: Zum Abendessen trinken wir Wasser.")
  (hint "Find Abendessen."))
```

---

## Practice

```check
(text
  (ask "Wir ___ Obst. Type the form of mögen.")
  (accept "mögen")
  (wrong-if "mag" "Mag is for ich and er. For wir it is mögen.")
  (wrong-if "mögt" "Mögt is for ihr. For wir it is mögen.")
  (hint "wir uses the infinitive form."))
```

```check
(text
  (ask "What is the plural of der Saft? Type it with die.")
  (accept "die Säfte")
  (accept "Säfte")
  (wrong-if "die Safte" "The plural has an umlaut: die Säfte.")
  (hint "Add -e and an umlaut."))
```

```check
(choice
  (ask "Ich trinke gern Wasser. What does it mean?")
  (right "I like drinking water.")
  (wrong "I would like a water."
    "That is Ich möchte ein Wasser. Gern with a verb says what you like doing.")
  (wrong "I drink water quickly."
    "Gern is not about speed. It means that you like doing it.")
  (hint "gern goes with the verb."))
```

Now you can name drinks and meals and say what you like with mögen, möchte and gern.
