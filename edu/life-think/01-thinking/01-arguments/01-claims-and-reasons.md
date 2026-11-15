# Claims and reasons

```lesson
(objective "Tell a claim from a reason, and an argument from a mere statement.")
(minutes 15)
(keywords "claim" "reason" "argument")
```

You can tell when someone backs up what they say, and when they only
tell you what to think.

A **claim** is a sentence that says something is so. It can be true or
false. "The bus is late" is a claim. "Is the bus late?" is not: it is a
question. "Run!" is not a claim either: it is an order.

```check
(choice
  (ask "Which of these is a claim?")
  (right "Our team scored 3 goals last night.")
  (wrong "Did our team win last night?"
    "A question asks; it does not say that anything is so. A claim can be true or false, and a question cannot.")
  (wrong "Go and watch the game!"
    "An order tells someone to do something. It is not true or false, so it is not a claim.")
  (hint "Which sentence could be true or false?"))
```

---

## Reasons

A **reason** is a claim given to support another claim: to make it
more likely to be true. "You should take a coat, because it is cold
outside." The reason is "it is cold outside". It supports "you should
take a coat".

Words like *because* and *since* often come just before a reason.

```check
(choice
  (ask "\"The shop must be shut, since the lights are off.\" What is the reason?")
  (right "The lights are off.")
  (wrong "The shop must be shut."
    "That is what the speaker wants you to accept. The reason is what is given to support it: the lights being off.")
  (hint "Look at what comes after \"since\"."))
```

---

## Arguments

An **argument** is one or more reasons given to support a claim. An
argument is not a quarrel here: it can be calm and polite.

"This film is great" is a claim alone. "This film is great, because
the story keeps surprising you" is an argument: a claim with a reason.

```check
(choice
  (ask "Which of these is an argument?")
  (right "You should water the plant, because its leaves are drooping.")
  (wrong "This plant is a fern."
    "That is one claim with nothing given to support it. An argument needs at least one reason for a claim.")
  (wrong "I really, really like ferns!"
    "Saying a thing strongly is not giving a reason for it. An argument offers support, not just feeling.")
  (hint "Look for a claim with a reason for it."))
```

---

## Worked example

```example
(example
  (problem "Mia says: \"We should leave at 8, since the road works slow the traffic.\" Is this an argument? If so, find the claim and the reason.")
  (step "Look for a reason word: \"since\".")
  (step "After it comes the reason: the road works slow the traffic.")
  (step "The rest is the claim it supports: we should leave at 8.")
  (answer "Yes, it is an argument: the reason \"the road works slow the traffic\" supports \"we should leave at 8\"."))
```

```example
(example
  (problem "Ben says: \"The cafe is busy because it has the cheapest coffee in town.\" Find the reason.")
  (step "The reason word is \"because\".")
  (step (choice (ask "So what is the reason?")
    (right "It has the cheapest coffee in town.")
    (wrong "The cafe is busy." "That is the claim being explained. The reason comes after \"because\".")))
  (answer "The reason is that it has the cheapest coffee in town."))
```

---

## Practice

```check
(choice
  (ask "Which sentence is NOT a claim?")
  (right "Please pass the salt.")
  (wrong "Salt is made of sodium and chlorine."
    "This says something is so, and it could be checked. That makes it a claim, even if you do not know whether it is true.")
  (wrong "The soup needs more salt."
    "This is a claim. It is a judgment, but it still says something is so, and people can agree or disagree.")
  (hint "A request is not true or false."))
```

---

```check
(choice
  (ask "\"I always win at this game!\" shouts Leo. Is that an argument?")
  (right "No: it is a claim with no reason given")
  (wrong "Yes: he seems very sure"
    "Being sure is not the same as giving a reason. Leo offers nothing to support his claim.")
  (hint "Is any reason given?"))
```

---

```check
(choice
  (ask "\"The park will be muddy, because it rained all night.\" Which part is the reason?")
  (right "It rained all night.")
  (wrong "The park will be muddy."
    "That is the claim. The rain is given to support it, so the rain is the reason.")
  (hint "Which part is used to support the other?"))
```

So: a claim says something is so, a reason supports a claim, and an
argument is reasons given for a claim.
