# Post hoc and hasty generalization

```lesson
(objective "Spot post hoc reasoning and a hasty generalization.")
(minutes 20)
(keywords "post hoc" "hasty generalization")
```

You can spot 2 ways people jump to a conclusion from too little.

**Post hoc** (short for the Latin "after this, therefore because of
this") assumes that because B came after A, A caused B.

> "I wore my green socks, and we won the match. The socks bring luck."

Winning came after the socks, but that does not show the socks did
anything. Lots of things happen before every match.

```sources
(source "Internet Encyclopedia of Philosophy, \"Fallacies\"")
```

```check
(choice
  (ask "\"I washed my car, and the next day it rained. Washing my car makes it rain.\" What is the mistake?")
  (right "Rain came after the wash, but nothing shows the wash caused it")
  (wrong "It did not rain the next day"
    "Suppose it did rain. The mistake is assuming that coming after means being caused by.")
  (wrong "There is no mistake: one thing came before the other"
    "Coming before is not causing. The wash and the rain just happened in that order.")
  (hint "Does \"after\" mean \"because of\"?"))
```

---

## Hasty generalization

A **hasty generalization** draws a rule about a whole group from too
few cases, or from cases that are not typical.

> "I met 2 people from Brookvale and both were rude. People from
> Brookvale are rude."

2 people cannot tell you about a whole town. Brookvale is made up for
this lesson.

```check
(choice
  (ask "Why is the claim about Brookvale a hasty generalization?")
  (right "2 people are far too few to judge a whole town")
  (wrong "Rude people do not live in towns"
    "That is not the point. Any rule about a whole town needs far more than 2 cases.")
  (wrong "It attacks the people of Brookvale"
    "It is unkind, but the reasoning error is jumping from 2 cases to a rule about everyone.")
  (hint "How many cases is the rule built on?"))
```

---

## Worked example

```example
(example
  (problem "\"I started drinking green tea, and a week later my cold was gone. Green tea cures colds.\" Name the fallacy.")
  (step "The cold went after the tea.")
  (step "But colds often go away in about a week anyway.")
  (answer "Post hoc: getting better after the tea does not show the tea did it."))
```

```example
(example
  (problem "\"The first 2 songs on this album are slow, so the whole album is slow.\" Name the fallacy.")
  (step "The claim is about the whole album.")
  (step (choice (ask "What is it based on?")
    (right "Only 2 songs")
    (wrong "Every song on the album" "Only the first 2 were heard. The rest might be fast.")))
  (answer "A hasty generalization."))
```

---

## Practice

```check
(choice
  (ask "\"A new coach came, and the team lost the next game. The new coach is making the team worse.\" Name the fallacy.")
  (right "Post hoc")
  (wrong "Hasty generalization"
    "This is about one thing following another, not about a rule for a group. The loss came after the coach; that does not show the coach caused it.")
  (wrong "Appeal to popularity"
    "No one appeals to what many people think. The mistake is assuming that \"after\" means \"because\".")
  (hint "Is the mistake about order in time?"))
```

---

```check
(choice
  (ask "\"My first try at baking bread failed, so I'm just bad at baking.\" Name the fallacy.")
  (right "Hasty generalization")
  (wrong "Post hoc"
    "Nothing here is said to cause something just by coming first. A rule about yourself is built on 1 try.")
  (hint "How many tries is the rule built on?"))
```

---

```check
(choice
  (ask "Which would be the best way to find out whether a lucky charm helps a team win?")
  (right "Compare many games played with the charm and many without")
  (wrong "Remember the games it won with the charm"
    "Remembering only the wins leaves out the losses with the charm and the wins without it. You need both kinds of games.")
  (wrong "Ask the players if they feel luckier"
    "Feeling luckier is not winning more. Count results over many games, with and without.")
  (hint "Think about many games, both ways."))
```

So: "after" is not "because", and a few cases are not a rule.
