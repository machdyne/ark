# False dilemma and slippery slope

```lesson
(objective "Spot a false dilemma and a slippery slope in a short exchange.")
(minutes 20)
(keywords "false dilemma" "slippery slope")
```

You can spot an argument that hides the other choices, and one that
jumps to a far-off disaster.

A **false dilemma** offers only 2 choices when there are more.

> "Either you join the football team or you don't care about sport."

You could care about sport and swim, run, or watch games. The real
choices are many; the argument shows only 2.

```sources
(source "Internet Encyclopedia of Philosophy, \"Fallacies\"")
```

```check
(choice
  (ask "\"We either buy the most expensive tent or we'll be cold all night.\" Why is this a false dilemma?")
  (right "There are other choices, like a cheaper warm tent or more blankets")
  (wrong "Expensive tents are not warmer"
    "That may or may not be so. The fallacy is that only 2 choices are offered when there are more.")
  (wrong "It is not a fallacy: it gives a reason"
    "It does give a reason, but the reason rests on there being only 2 options, which is false.")
  (hint "Are there only 2 choices?"))
```

---

## Not every either-or is false

Some choices really are only 2: a light switch is on or off; a whole
number is even or odd. A false dilemma is when other choices exist but
are left out. Ask: "Is there a third way?"

```check
(choice
  (ask "Which is a FALSE dilemma?")
  (right "\"You either love this band or you have no taste in music.\"")
  (wrong "\"The door is either locked or not locked.\""
    "A door really is locked or not: there is no third state. That is a true either-or.")
  (hint "Where is a third possibility left out?"))
```

---

## Slippery slope

A **slippery slope** claims one small step will lead, step by step, to
something extreme, without good reason to think each step will follow.

> "If we let the class have 5 minutes of music, next they'll want music
> all lesson, then no lessons at all, and the school will close."

Each step is far from sure. Some chains like this do happen; the
fallacy is to assume the whole chain without evidence for each link.

```check
(choice
  (ask "What is the weakness of a slippery slope argument?")
  (right "It assumes each step will follow without giving reasons that it will")
  (wrong "Small steps never lead to big changes"
    "Sometimes they do. The problem is claiming they will, with no support for each step.")
  (wrong "It talks about the future"
    "Arguments about the future can be good. This one jumps to the end without showing the links.")
  (hint "Look at the links between the steps."))
```

---

## Worked example

```example
(example
  (problem "\"If I let my brother borrow my bike once, he'll take it every day, break it, and I'll never ride again.\" Name the fallacy.")
  (step "One loan is the small first step.")
  (step "Every day, broken, never ride again: each step is assumed, not shown.")
  (answer "A slippery slope."))
```

```example
(example
  (problem "\"You're either with our team on this or you're against us.\" Name the fallacy.")
  (step "Only 2 options are offered.")
  (step (choice (ask "Is there a third option?")
    (right "Yes: being unsure, or agreeing with part of it")
    (wrong "No: you must pick a side" "You could agree with part, or not have decided yet. Those are real options left out.")))
  (answer "A false dilemma."))
```

---

## Practice

```check
(choice
  (ask "\"If we let people bring snacks to the cinema, soon they'll bring whole meals, then cookers, and the place will burn down.\" Name the fallacy.")
  (right "Slippery slope")
  (wrong "False dilemma"
    "This does not offer only 2 choices. It claims a chain of steps will run on to disaster.")
  (wrong "Straw man"
    "No one's view is twisted here. The speaker jumps from snacks to a fire through steps with no support.")
  (hint "Is it a chain of steps?"))
```

---

```check
(choice
  (ask "\"Either we paint the hall blue or it will look awful.\" Name the fallacy.")
  (right "False dilemma")
  (wrong "Slippery slope"
    "There is no chain of steps. There are only 2 choices given, when many colors would be fine.")
  (wrong "Ad hominem"
    "No person is attacked. The problem is leaving out the other colors.")
  (hint "How many choices are offered?"))
```

So: ask "Is there a third way?" for a false dilemma, and "Why would
each step follow?" for a slippery slope.
