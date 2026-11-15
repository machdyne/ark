# haben and möchten

```lesson
(objective "Use haben and möchten with an object in the accusative, and conjugate möchten.")
(minutes 25)
```

In this lesson you say what you have and what you would like: **Ich habe einen Bruder. Ich möchte einen Hund.**

You know haben. What you have is its object, so it is in the accusative:

> Ich habe einen Bruder und eine Schwester.

> Hast du einen Computer?

> Wir haben keinen Balkon.

```check
(text
  (ask "Hast du ___ Hund? Type the missing word (a).")
  (accept "einen")
  (wrong-if "ein" "Der Hund is what you have, the object of hast. Masculine ein becomes einen.")
  (hint "Der Hund is masculine."))
```

---

## Hunger, thirst and time

Some things you have take no article at all:

> Ich habe Hunger. (I am hungry.)

> Hast du Durst? (Are you thirsty?)

> Ich habe keine Zeit. (I have no time.)

English says "I **am** hungry". German usually says "I **have** hunger": **Ich habe Hunger**.

```cards
(card "Ich habe Hunger." "I am hungry." (typed) (note "der Hunger"))
(card "Ich habe Durst." "I am thirsty." (typed) (note "der Durst"))
(card "die Zeit" "the time" (typed) (note "Time you have: Hast du Zeit? The time on a clock comes later."))
(card "das Geschenk, die Geschenke" "the present" (typed) (note "Review from part 2. Also: the gift. German das Gift means poison."))
(card "das Eis" "the ice cream" (typed) (note "Also ice."))
(card "das Fahrrad, die Fahrräder" "the bike" (typed) (note "Also: the bicycle."))
(card "dann" "then" (typed) (note "Gut, dann einen Ball! Good, a ball then!"))
```

```check
(choice
  (ask "How do you say: I am thirsty.")
  (right "Ich habe Durst.")
  (wrong "Ich bin Durst."
    "German does not say I am thirst. You have thirst: Ich habe Durst.")
  (wrong "Ich habe einen Durst."
    "Durst here takes no article: Ich habe Durst.")
  (hint "German says: I have thirst."))
```

---

## möchten

**möchten** means "would like". It is the polite way to say what you want, in a shop or at home.

| | möchten |
|---|---|
| ich | möchte |
| du | möchtest |
| er, sie, es | möchte |
| wir | möchten |
| ihr | möchtet |
| sie, Sie | möchten |

Look at ich and er: both are **möchte**, with no -t for er.

What you would like is the object, in the accusative: **Ich möchte einen Ball.**

```cards
(card "möchten" "would like" (typed) (note "ich möchte, du möchtest, er möchte"))
```

```check
(text
  (ask "Er ___ ein Eis. Type the form of möchten.")
  (accept "möchte")
  (wrong-if "möchtet" "Möchtet is for ihr. For er it is möchte, the same as ich.")
  (wrong-if "möchten" "Möchten is the infinitive and the form for wir and sie. For er it is möchte.")
  (hint "ich möchte, er ...")
  (hint "Like ich: no -t."))
```

---

## Asking politely

**Was möchtest du?** asks a friend what they would like. **Was möchten Sie?** asks a stranger or a customer.

> Was möchten Sie? - Ich möchte einen Stift, bitte.

```check
(choice
  (ask "In a shop, the seller asks you. Which is the usual polite question?")
  (right "Was möchten Sie?")
  (wrong "Was möchtest du?"
    "Du is for friends, family and children. A seller and a customer who do not know each other say Sie.")
  (wrong "Was möchte Sie?"
    "With Sie, the verb takes -en: Was möchten Sie?")
  (hint "Strangers say Sie, and Sie takes the -en form."))
```

---

## A worked example

```example
(example
  (problem "Say in German: We would like a present.")
  (step "wir takes möchten: wir möchten.")
  (step "das Geschenk is neuter, so ein stays ein.")
  (answer "Wir möchten ein Geschenk."))
```

---

## Now you finish one

Ask a friend: Would you like an ice cream? **___ du ein Eis?**

```check
(text
  (ask "Type the form of möchten.")
  (accept "Möchtest")
  (wrong-if "möchte" "Möchte is for ich and er. For du, add -st: möchtest.")
  (wrong-if "möchten" "Möchten is for wir, sie and Sie. For du it is möchtest.")
  (hint "Most du forms end in -st."))
```

---

## A birthday

Oma asks Paul about his birthday present.

> Oma: Paul, was möchtest du? Möchtest du ein Buch?

> Paul: Nein, danke. Ich habe viele Bücher.

> Oma: Ein Spiel?

> Paul: Ich möchte einen Ball. Ich habe keinen Ball.

> Oma: Gut, dann einen Ball!

```check
(choice
  (ask "What does Paul want?")
  (right "a ball")
  (wrong "a book"
    "Paul says no to a book: he has many books.")
  (wrong "a game"
    "Oma asks about a game, but Paul says: Ich möchte einen Ball.")
  (hint "Find Ich möchte."))
```

---

## Practice

```check
(text
  (ask "Wir haben ___ Zeit. Type the missing word (no).")
  (accept "keine")
  (wrong-if "keinen" "Die Zeit is feminine, and feminine does not change: keine Zeit.")
  (wrong-if "nicht" "With a noun, say no with kein: keine Zeit.")
  (hint "die Zeit: feminine."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Ihr möchtet ein Fahrrad.")
  (wrong "Ihr möchtet einen Fahrrad."
    "Das Fahrrad is neuter, so ein does not change.")
  (wrong "Ihr möchte ein Fahrrad."
    "Möchte is for ich and er. For ihr it is möchtet.")
  (hint "das Fahrrad is neuter; ihr forms end in -t."))
```

```check
(text
  (ask "Ich möchte ___ Pullover. Type the missing word (a).")
  (accept "einen")
  (wrong-if "ein" "Der Pullover is masculine and the object of möchte, so ein becomes einen.")
  (hint "Der Pullover is masculine."))
```

```check
(choice
  (ask "Ich habe Hunger. What does it mean?")
  (right "I am hungry.")
  (wrong "I have a hunger."
    "Word for word it is I have hunger, but in English you say: I am hungry.")
  (wrong "I would like a hunger."
    "Habe is from haben, to have, not from möchten.")
  (hint "A fixed phrase with haben."))
```

Now you can say what you have and would like, with the object in the accusative.
