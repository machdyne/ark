# Premises and conclusions

```lesson
(objective "Find the premises and the conclusion of a short argument.")
(minutes 15)
(keywords "premise" "conclusion" "indicator word")
```

You can find the parts of an argument, wherever they come in a
sentence.

In an argument, each reason is called a **premise**. The claim the
premises support is the **conclusion**: the point the argument wants
you to accept.

- Premise: Every ticket for Saturday is sold.
- Premise: We do not have a ticket.
- Conclusion: We cannot go on Saturday.

```check
(choice
  (ask "\"The pool closes at 6. It is already 6:30. So the pool is closed.\" What is the conclusion?")
  (right "The pool is closed.")
  (wrong "The pool closes at 6."
    "This is a premise: it is given as support. The conclusion is what the support leads to.")
  (wrong "It is already 6:30."
    "This is a premise too. Ask which claim the other two are there to prove.")
  (hint "Which claim do the other two support?"))
```

---

## Indicator words

**Indicator words** show which part is which.

| Before a conclusion | Before a premise |
|---|---|
| so, therefore, thus | because, since |
| which means, that is why | for, given that |

The conclusion does not have to come last. In "We cannot go, since the
tickets are sold out", it comes first.

```check
(choice
  (ask "\"Since the shop sells only fruit, it does not sell bread.\" What is the conclusion?")
  (right "It does not sell bread.")
  (wrong "The shop sells only fruit."
    "\"Since\" comes before a premise. The conclusion is the other part: it does not sell bread.")
  (hint "\"Since\" marks a premise."))
```

---

## No indicator word

Sometimes there is no indicator word. Then ask: "Which claim is the
point? Which ones are there to support it?" Try putting "therefore" in
front of each claim and see which one reads well.

```check
(choice
  (ask "\"You will need an umbrella. The forecast says heavy rain all afternoon.\" What is the conclusion?")
  (right "You will need an umbrella.")
  (wrong "The forecast says heavy rain all afternoon."
    "The forecast is offered as support. Try \"The forecast says rain; therefore you will need an umbrella\" -- that reads well, so the umbrella is the conclusion.")
  (hint "Put \"therefore\" before each claim. Which one reads well?"))
```

---

## Worked example

```example
(example
  (problem "\"Sam has trained every day for a month, and the race is short. Therefore Sam should finish.\" Find the premises and the conclusion.")
  (step "\"Therefore\" is a conclusion word: the conclusion is \"Sam should finish\".")
  (step "What comes before supports it: Sam has trained every day for a month; the race is short.")
  (answer "2 premises (daily training, a short race) and 1 conclusion (Sam should finish)."))
```

```example
(example
  (problem "\"The library is a good place to study, because it is quiet and it has free desks.\" How many premises are there?")
  (step "\"Because\" is a premise word: what comes after it is support.")
  (step (number (ask "How many separate reasons come after \"because\"?") (answer 2)
    (wrong-if 1 "Look again: \"it is quiet\" and \"it has free desks\" are 2 separate reasons.")))
  (answer "2 premises: it is quiet; it has free desks."))
```

---

## Practice

```check
(choice
  (ask "\"Given that the bridge is closed, the trip will take longer.\" Which is a premise?")
  (right "The bridge is closed.")
  (wrong "The trip will take longer."
    "This is the point being made: the conclusion. \"Given that\" marks the premise.")
  (hint "\"Given that\" comes before a premise."))
```

---

```check
(choice
  (ask "\"This phone is the better buy. It costs less and its battery lasts longer.\" What is the conclusion?")
  (right "This phone is the better buy.")
  (wrong "It costs less."
    "Costing less is a reason to buy it. The claim the reasons support is that it is the better buy.")
  (wrong "Its battery lasts longer."
    "A longer battery life is offered as support. The conclusion is the point it supports.")
  (hint "Which claim do the other two support?"))
```

---

```check
(text
  (ask "Type the indicator word in: \"The milk smells sour, so it has gone off.\"")
  (accept "so")
  (wrong-if "sour" "\"Sour\" is part of a premise. Look for the small word that joins the premise to the conclusion.")
  (hint "It is a 2-letter word."))
```

So: premises are the reasons, the conclusion is the point, and
indicator words help you tell them apart.
