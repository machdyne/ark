# Straw man and ad hominem

```lesson
(objective "Spot a straw man and an ad hominem in a short exchange.")
(minutes 20)
(keywords "fallacy" "straw man" "ad hominem")
```

You can spot 2 common ways an argument dodges what the other person
really said.

A **fallacy** is a mistake in reasoning: an argument that seems to
work but does not. People use fallacies by accident as often as on
purpose. Naming one helps you see the gap.

This unit teaches 12 of them, 2 or 3 a lesson.

```sources
(source "Internet Encyclopedia of Philosophy, \"Fallacies\"")
```

```check
(choice
  (ask "What is a fallacy?")
  (right "A mistake in reasoning that can seem convincing")
  (wrong "Any claim that is false"
    "A false claim is just false. A fallacy is a flaw in how a conclusion is reached, even when some claims in it are true.")
  (wrong "A rude remark"
    "Rudeness is not a mistake in reasoning. A polite argument can contain a fallacy, and a rude one can be valid.")
  (hint "It is about reasoning, not facts or manners."))
```

---

## Straw man

A **straw man** twists the other person's view into a weaker one, then
attacks that instead. A straw figure is easy to knock down.

> Ali: I think the school should add one more vegetable option at lunch.

> Bea: So you want to ban pizza and make everyone eat salad? That's silly.

Ali never said to ban pizza. Bea attacks a view nobody holds.

```check
(choice
  (ask "Why is Bea's reply a straw man?")
  (right "She answers a stronger, sillier claim that Ali did not make")
  (wrong "She disagrees with Ali"
    "Disagreeing is fine. The fallacy is changing Ali's view into one that is easier to attack.")
  (wrong "She mentions pizza"
    "Talking about pizza is not the problem. Claiming Ali wants to ban it is.")
  (hint "Compare what Ali said with what Bea attacks."))
```

---

## Ad hominem

An **ad hominem** (Latin for "to the person") attacks the person
making an argument instead of the argument.

> Cal: The bus timetable has an error: the 9:10 bus does not run on Sundays.

> Dev: You failed math at school, so why should anyone listen to you?

Whether Cal failed math says nothing about the timetable. Check the
timetable.

Not every remark about a person is a fallacy. If a claim rests only on
someone's word, it is fair to ask whether they were there or are paid
to say it.

```check
(choice
  (ask "What should Dev have done instead?")
  (right "Checked whether the 9:10 bus runs on Sundays")
  (wrong "Found a better reason to doubt Cal"
    "Doubting Cal is still aiming at the person. The claim about the bus can be checked on its own.")
  (wrong "Agreed with Cal to be polite"
    "You do not have to agree. You have to answer the claim, not the person.")
  (hint "The claim is about a bus, not about Cal."))
```

---

## Worked example

```example
(example
  (problem "Eli: \"The park should have more bins; there is litter by the pond.\" Fay: \"Eli just wants the town to waste money on bins everywhere.\" Name the fallacy.")
  (step "Eli asked for more bins in one park, because of litter.")
  (step "Fay attacks \"bins everywhere\" and \"waste money\": a bigger, weaker claim.")
  (answer "A straw man: Fay attacks a view Eli did not hold."))
```

```example
(example
  (problem "Gus: \"This recipe needs less salt.\" Hal: \"You can't even cook, so you're wrong.\" Name the fallacy.")
  (step "Hal does not talk about the salt at all.")
  (step (choice (ask "What does Hal attack?")
    (right "Gus himself" )
    (wrong "Gus's argument about salt" "Hal says nothing about the salt. He talks about Gus's cooking.")))
  (answer "An ad hominem: Hal attacks the person, not the claim."))
```

---

## Practice

```check
(choice
  (ask "Ivy: \"We could start the meeting 10 minutes later.\" Jon: \"So you think time doesn't matter and we should never start on time?\" Name the fallacy.")
  (right "Straw man")
  (wrong "Ad hominem"
    "Jon does not attack Ivy as a person. He turns her small suggestion into an extreme view she never held.")
  (hint "Did Ivy say time does not matter?"))
```

---

```check
(choice
  (ask "Kim: \"This shop overcharged me.\" Lee: \"You're always complaining, so it can't be true.\" Name the fallacy.")
  (right "Ad hominem")
  (wrong "Straw man"
    "Lee does not twist Kim's claim into another one. He attacks Kim's character instead of checking the bill.")
  (hint "Who or what does Lee attack?"))
```

---

```check
(choice
  (ask "Which reply answers the argument instead of committing a fallacy? Max: \"The library should open on Sundays.\"")
  (right "\"Who would staff it, and is there money for that?\"")
  (wrong "\"You never even read books.\""
    "This attacks Max, not his idea: an ad hominem. Whether Max reads says nothing about Sunday opening.")
  (wrong "\"So you want it open all night, every night?\""
    "Max said Sundays, not every night. This is a straw man.")
  (hint "Which reply talks about Sunday opening itself?"))
```

So: a straw man attacks a twisted view, an ad hominem attacks the
person; answer the real claim instead.
