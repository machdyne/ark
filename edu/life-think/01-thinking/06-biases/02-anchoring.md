# Anchoring

```lesson
(objective "Notice how a first number pulls later guesses toward it.")
(minutes 15)
(keywords "anchoring")
```

You can notice when a number you just saw is steering your judgment.

**Anchoring** is the pull of a first number on an estimate or a
decision that follows it. Even when the first number has nothing to do
with the question, people's guesses end up closer to it.

In a well-known experiment by Tversky and Kahneman, people first saw a
number from a spinning wheel, then estimated an unrelated quantity.
Those who saw a higher number typically gave higher estimates.

```sources
(source "Tversky, A. and Kahneman, D. (1974), \"Judgment under Uncertainty: Heuristics and Biases\", Science 185, section on anchoring")
(source "Kahneman, D. (2011), Thinking, Fast and Slow")
```

```check
(choice
  (ask "Why is the spinning wheel part so striking?")
  (right "The wheel's number had nothing to do with the question, yet it still pulled the guesses")
  (wrong "The wheel gave people a useful hint"
    "The wheel's number told people nothing about the question. That it moved estimates at all shows how strong anchoring is.")
  (wrong "People who saw high numbers were better at guessing"
    "The high-number group gave higher estimates, not better ones. Their guesses were pulled, not improved.")
  (hint "Was the wheel's number related to the question?"))
```

---

## Anchors in daily life

- A made-up jacket is marked "was \$200, now \$90". The \$200 makes
  \$90 feel cheap, whatever the jacket is worth.
- In a negotiation, the first price named often shapes the deal.
- A question like "Is it more or less than 1000?" pulls your answer
  toward 1000.

```check
(choice
  (ask "A made-up shop shows a phone case \"was 40 dollars, now 15\". What should you ask?")
  (right "\"Is 15 dollars a good price for this case compared with others?\"")
  (wrong "\"How much did I save?\""
    "The \"was\" price is the anchor. The saving only feels real because of it. Compare with other shops instead.")
  (wrong "\"Will the price go back up?\""
    "That question still starts from the anchor. Judge the case by what similar cases cost.")
  (hint "Ignore the \"was\" price."))
```

---

## The habit: make your own estimate first

Against anchoring: before you see someone else's number, think of your
own. Then compare with other sources, not with the first number you
were shown.

---

## Worked example

```example
(example
  (problem "A made-up seller asks 500 dollars for a used bike. Similar bikes sell for about 250. How does anchoring work here, and what can you do?")
  (step "The 500 is the anchor: an offer of 400 might feel like a bargain.")
  (step "Look at what similar bikes sell for: about 250.")
  (answer "Start from the 250, not from the 500."))
```

---

## Practice

```check
(choice
  (ask "Before guessing the number of sweets in a jar, a friend says \"I bet it's over 900.\" What is the risk?")
  (right "Your guess may be pulled toward 900")
  (wrong "None: you can just ignore it"
    "The spinning wheel showed that even a plainly random number pulls guesses. It helps to guess before you hear any number.")
  (wrong "Your guess will be more accurate"
    "The friend's number is a guess too. It moves your estimate, but not toward the truth.")
  (hint "What does a first number do to the next guess?"))
```

---

```check
(choice
  (ask "Which is the best defense against anchoring?")
  (right "Make your own estimate before you see anyone else's number")
  (wrong "Always pick a number far from the anchor"
    "That is still steered by the anchor, just the other way. Start from your own reasoning.")
  (wrong "Take the average of the anchor and your guess"
    "That builds the anchor right into your answer.")
  (hint "When should you think of your own number?"))
```

So: a first number pulls the next; make your own estimate before you
hear one.
