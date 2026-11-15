# Circular reasoning and red herring

```lesson
(objective "Spot circular reasoning and a red herring.")
(minutes 20)
(keywords "circular reasoning" "red herring")
```

You can spot an argument that goes in a circle, and one that changes
the subject.

**Circular reasoning** uses the conclusion as one of its own premises.
It goes round and round without adding any support.

> "This website is trustworthy because it says it tells the truth."

The only reason to trust the website is the website itself. If you
doubt it, the argument gives you nothing new.

```sources
(source "Internet Encyclopedia of Philosophy, \"Fallacies\"")
```

```check
(choice
  (ask "\"Max is the best player because nobody plays better than Max.\" What is wrong?")
  (right "The reason just says the conclusion again in other words")
  (wrong "Max might not be the best player"
    "Maybe he is. The flaw is that the reason repeats the conclusion instead of supporting it.")
  (wrong "It has no reason at all"
    "There is a reason, but it is the conclusion in other words. That is why it is circular.")
  (hint "Do the reason and the conclusion say the same thing?"))
```

---

## Red herring

A **red herring** brings in a different topic to pull attention away
from the question.

> Nia: Did you finish the dishes?

> Ola: Do you know how hard I worked at school today?

Ola's day may have been hard, but the question was about the dishes.
The name comes from an old story of a strong-smelling fish dragged
across a trail to throw dogs off the scent.

```check
(choice
  (ask "Why is Ola's reply a red herring?")
  (right "It changes the subject instead of answering about the dishes")
  (wrong "Ola is lying about school"
    "Ola may be telling the truth. The flaw is that school is not the question.")
  (wrong "Ola attacks Nia as a person"
    "Ola does not attack Nia. Ola talks about something else.")
  (hint "What was the question?"))
```

---

## Worked example

```example
(example
  (problem "Reporter: \"Will the town pool open this summer?\" Mayor: \"Our town has the best parks in the region.\" Name the fallacy.")
  (step "The question is about the pool.")
  (step "The answer is about parks: a different topic.")
  (answer "A red herring. (The town and its mayor are made up.)"))
```

```example
(example
  (problem "\"You can trust my advice, because I'm someone whose advice can be trusted.\" Name the fallacy.")
  (step "Conclusion: you can trust my advice.")
  (step (choice (ask "What is the reason?")
    (right "The same claim in other words")
    (wrong "A new fact about the speaker" "\"Someone whose advice can be trusted\" adds nothing new: it restates the conclusion.")))
  (answer "Circular reasoning."))
```

---

## Practice

```check
(choice
  (ask "Pat: \"Your dog keeps barking at night.\" Quinn: \"Well, your car is really loud in the morning!\" Name the fallacy.")
  (right "Red herring")
  (wrong "Circular reasoning"
    "Quinn does not repeat a conclusion as a reason. Quinn changes the subject from the dog to the car.")
  (wrong "Straw man"
    "Quinn does not twist Pat's complaint. Quinn steers away from it to a different topic.")
  (hint "Is Quinn answering about the dog?"))
```

---

```check
(choice
  (ask "\"This brand is the most popular because more people choose it than any other.\" Name the fallacy.")
  (right "Circular reasoning")
  (wrong "Appeal to popularity"
    "An appeal to popularity says something is good or true because it is popular. This only says it is popular because it is popular: a circle.")
  (wrong "Red herring"
    "The subject does not change. The reason restates the claim.")
  (hint "Is \"most popular\" the same as \"more people choose it\"?"))
```

So: a circle restates its own conclusion, and a red herring changes the
subject; ask for real support on the real question.
