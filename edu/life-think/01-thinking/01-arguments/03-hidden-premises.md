# Hidden premises

```lesson
(objective "Find the unstated premise an argument needs.")
(minutes 15)
(keywords "hidden premise")
```

You can find the premise an argument leaves unsaid, and then ask
whether it is true.

Many arguments skip a step. "This bike is cheap, so I should buy it."
That only works if you also accept: "I should buy cheap things." A
premise the argument needs but does not say is a **hidden premise**.

Hidden premises are where weak arguments often hide, because nobody
looks at them.

```check
(choice
  (ask "\"Kai is a teacher, so Kai must be patient.\" What hidden premise does this need?")
  (right "All teachers are patient.")
  (wrong "Kai is a teacher."
    "That premise is stated already. The hidden one is the step that gets you from \"teacher\" to \"patient\".")
  (wrong "Kai is patient."
    "That is the conclusion. A hidden premise is a reason the argument needs, not the point it makes.")
  (hint "What links \"teacher\" to \"patient\"?"))
```

---

## Fill the gap

To find a hidden premise, look at the stated premise and the
conclusion. Then ask: "What must also be true for this to follow?"

- Stated: The shop is out of bread.
- Conclusion: We will have rice tonight.
- Hidden: If there is no bread, we will have rice.

Once it is said aloud, you can ask whether it is true. Maybe there is
pasta in the cupboard.

```check
(choice
  (ask "\"This restaurant is always full, so its food must be good.\" What is the hidden premise?")
  (right "A full restaurant always has good food.")
  (wrong "The restaurant is always full."
    "That is stated. You need the step that turns \"full\" into \"good food\".")
  (wrong "The food is cheap."
    "Nothing in the argument depends on price. The gap is between being full and having good food.")
  (hint "What would turn \"full\" into \"good food\"?"))
```

---

## Is it true?

Once you find a hidden premise, test it. "A full restaurant always has
good food" is doubtful: it might be full because it is cheap, new or
near a station. The argument is only as strong as its hidden premise.

```check
(choice
  (ask "\"Ana got top marks, so she must have studied all night.\" The hidden premise is \"Top marks come only from studying all night.\" Is that likely true?")
  (right "No: people get top marks in other ways too")
  (wrong "Yes: top marks always take a lot of work"
    "Work helps, but \"only from studying all night\" is a much stronger claim. Ana may have studied a little each day for weeks.")
  (hint "Is there any other way to get top marks?"))
```

---

## Worked example

```example
(example
  (problem "\"It is a sports drink, so it is good for you.\" Find the hidden premise and test it.")
  (step "Stated premise: it is a sports drink. Conclusion: it is good for you.")
  (step "Gap: what gets you from \"sports drink\" to \"good for you\"?")
  (step "Hidden premise: every sports drink is good for you.")
  (answer "\"Every sports drink is good for you\" is a big claim that would need checking, so the argument is weak until it is."))
```

```example
(example
  (problem "\"The game was on TV, so Jo watched it.\" Find the hidden premise.")
  (step "Stated: the game was on TV. Conclusion: Jo watched it.")
  (step (choice (ask "What is the hidden premise?")
    (right "Jo watches every game that is on TV.")
    (wrong "The game was on TV." "That is stated. Find the step from \"on TV\" to \"Jo watched\".")))
  (answer "Jo watches every game that is on TV -- which may well not be true."))
```

---

## Practice

```check
(choice
  (ask "\"That phone is the newest model, so it must be the best.\" What is the hidden premise?")
  (right "The newest model is always the best.")
  (wrong "The phone is the newest model."
    "That is the stated premise. The hidden one joins \"newest\" to \"best\".")
  (wrong "The phone is expensive."
    "The argument says nothing about price. Look for the link between newest and best.")
  (hint "What joins \"newest\" to \"best\"?"))
```

---

```check
(choice
  (ask "\"Ravi is from a big city, so he must love noise.\" Why is this argument weak?")
  (right "Its hidden premise, that everyone from a big city loves noise, is false")
  (wrong "Its stated premise could be false"
    "Even if Ravi is from a big city, the argument fails, because the step it hides is not true of everyone.")
  (wrong "It has no conclusion"
    "It does: \"he must love noise\". The problem is the unstated link.")
  (hint "Say the hidden premise aloud. Is it true of everyone?"))
```

So: when an argument skips a step, say the hidden premise aloud and
ask whether it is true.
