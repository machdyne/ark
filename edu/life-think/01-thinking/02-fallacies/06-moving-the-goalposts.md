# Moving the goalposts

```lesson
(objective "Spot moving the goalposts, and name any of the 12 fallacies in a mixed set.")
(minutes 25)
(keywords "moving the goalposts" "fallacy fallacy")
```

You can spot someone changing what counts as proof, and then name all
12 fallacies of this unit.

**Moving the goalposts** means asking for new or harder proof each
time the last demand is met, so that no answer is ever enough.

> Rae: Lunch here is too expensive.

> Sid: It's the same price as the cafe next door. Look at the menu.

> Rae: Well, it's too expensive compared with making your own.

Rae first compared with other places. When that was met, she changed
the test. She may still have a point, but the target moved.

```sources
(source "Internet Encyclopedia of Philosophy, \"Fallacies\"")
```

```check
(choice
  (ask "Tia: \"Prove you read the book.\" Uma tells her the plot. Tia: \"Anyone could find that online. Tell me what page 87 says.\" What is Tia doing?")
  (right "Moving the goalposts: each time Uma meets the test, Tia sets a new one")
  (wrong "Asking for fair proof"
    "Asking once for proof is fair. Changing the test each time it is passed means nothing will ever count.")
  (wrong "Using a red herring"
    "Tia does not change the subject: it is still the book. She changes what counts as proof.")
  (hint "Did the test change after it was met?"))
```

---

## The 12 fallacies

| Fallacy | In short |
|---|---|
| straw man | attacks a twisted view |
| ad hominem | attacks the person |
| false dilemma | only 2 choices shown |
| slippery slope | small step, unproven chain |
| appeal to popularity | many believe it |
| appeal to authority | the wrong expert |
| post hoc | after, so because |
| hasty generalization | rule from too few |
| circular reasoning | conclusion as premise |
| red herring | changes the subject |
| moving the goalposts | changes the test |

That is 11. The 12th is a mistake people make about fallacies
themselves: it comes next.

```check
(choice
  (ask "\"Either we cancel the trip or someone will get hurt.\" Which fallacy?")
  (right "False dilemma")
  (wrong "Slippery slope"
    "There is no chain of steps here: just 2 choices, when you could also go with care or change the plan.")
  (hint "How many choices are offered?"))
```

---

## A fallacy does not make the conclusion false

Spotting a fallacy shows the *argument* is weak. It does not show the
*conclusion* is false. Someone can argue badly for something true.
Thinking "your argument has a fallacy, so you are wrong" is itself a
mistake, sometimes called the **fallacy fallacy**.

```check
(choice
  (ask "Vic says: \"This film is great; everyone loves it.\" That is an appeal to popularity. What follows?")
  (right "Vic's reason is weak, but the film might still be great")
  (wrong "The film must be bad"
    "A weak argument does not prove the opposite. The film's quality is still open.")
  (hint "Does a bad reason make the claim false?"))
```

---

## Worked example

```example
(example
  (problem "Wes: \"Show me one study that says sleep helps memory.\" Xia shows one. Wes: \"One isn't enough. Show me ten.\" Xia shows ten. Wes: \"Those were all in other countries.\" Name the fallacy.")
  (step "Wes set a test: one study. It was met.")
  (step "Then ten. It was met. Then a new test again.")
  (answer "Moving the goalposts."))
```

---

## Practice

```check
(choice
  (ask "\"My grandad smoked and lived to 95, so smoking can't be that bad.\" Which fallacy?")
  (right "Hasty generalization")
  (wrong "Post hoc"
    "The claim is not that one thing caused another by coming first. A rule about everyone is drawn from 1 person.")
  (wrong "Appeal to authority"
    "The grandad is not cited as an expert. His one case is used as if it showed a rule.")
  (hint "How many cases?"))
```

---

```check
(choice
  (ask "\"You only say the rules are unfair because you lost.\" Which fallacy?")
  (right "Ad hominem")
  (wrong "Red herring"
    "The subject is still the rules. The reply attacks the speaker's motive instead of whether the rules are fair.")
  (wrong "Circular reasoning"
    "Nothing is restated as its own reason. The speaker's motive is attacked instead of the claim.")
  (hint "What is attacked: the rules, or the person?"))
```

---

```check
(choice
  (ask "\"This town has the friendliest people, because the people here are friendlier than anywhere else.\" Which fallacy?")
  (right "Circular reasoning")
  (wrong "Appeal to popularity"
    "No one says \"many believe it\". The reason just restates the claim.")
  (wrong "Hasty generalization"
    "No cases are given at all. The reason is the conclusion said again.")
  (hint "Is the reason the conclusion again?"))
```

---

```check
(choice
  (ask "Yan: \"We should recycle more at school.\" Zed: \"So you want us to dig through the bins all day?\" Which fallacy?")
  (right "Straw man")
  (wrong "Slippery slope"
    "Zed does not claim a chain of steps. He replaces Yan's view with a silly one and attacks that.")
  (wrong "False dilemma"
    "No 2 options are set up. Zed twists Yan's suggestion.")
  (hint "Did Yan say anything about digging through bins?"))
```

So: name the fallacy to see the weak step, then judge the claim on its
own evidence.
