# Leitner boxes

```lesson
(objective "Run a set of Leitner boxes, on paper or in learn's review.")
(minutes 20)
(keywords "Leitner box")
```

A row of boxes can do the spacing for you: each card waits in a box
until it is time to see it again.

In the 1970s, Sebastian Leitner described a way to use flashcards with
boxes. A **Leitner box** is one of a row of boxes for flashcards: you
look at the cards in each box less often than those in the box before.
A card you get right moves up to the next box, where it waits longer.
A card you miss goes back to the first box.

Move the slider to follow one card that you keep getting right.

```figure
(define b (slider 'box 1 5 1 "Box" 1))
(st-boxes 70 b)
(path '(306 160 7 160) 'ink 1.2)
(arrow 7 160 7 100 'ink 1.2)
(text 160 180 "A miss, from any box: back to box 1" 'small 'centre)
(caption "learn's 5 boxes and their gaps")
```

```sources
(source "Sebastian Leitner, So lernt man lernen (1972)")
(source "Zeitlos docs, learn.md: Review")
```

```check
(choice
  (ask "A card in box 2 is answered wrong. Where does it go?")
  (right "Back to box 1")
  (wrong "To box 3"
    "Cards move up only when you get them right. A wrong answer sends it back to the start.")
  (wrong "It stays in box 2"
    "In Leitner boxes, a missed card goes all the way back to box 1, so you see it soon.")
  (hint "Missed cards need to be seen soon."))
```

---

## learn's boxes

learn keeps every question you answer in 5 boxes. The gaps are 1, 3, 7,
16 and 35 days.

- Right the first time, with no hint: the question moves up a box.
- Missed, or right only after a hint: back to box 1, and it comes back
  the next day.
- A new question you get right the first time starts in box 2.

When questions are due, press R on learn's home screen. It reviews up
to 20 of them, the ones that have waited longest first.

```sources
(source "Zeitlos docs, learn.md: Review")
```

```check
(number
  (ask "A question is in box 3 and you get it right the first time, with no hint. After how many days does it come back?")
  (answer 16) (unit "days")
  (wrong-if 7 "7 days is box 3's gap. A right answer moves the question up to box 4.")
  (wrong-if 1 "1 day is for questions you miss. This one was right, so it moves up.")
  (hint "A right answer moves it up one box.")
  (hint "Box 4's gap is in the figure on the step before."))
```

---

## Boxes on paper

You can make Leitner boxes with envelopes or rubber bands. A simple
paper version uses 3 boxes:

| Box | Look at its cards |
|---|---|
| 1 | every day |
| 2 | every 3 days |
| 3 | once a week |

```example
(example
  (problem "You make 20 flashcards of new science words and start them all in box 1.")
  (step "Day 1: go through box 1. Say each answer, then check it.")
  (step "Right cards move to box 2. Missed cards stay in box 1.")
  (step "Each day, do box 1. When box 2 or 3 is due, do it too.")
  (step "A card you miss, from any box, goes back to box 1.")
  (answer "Hard cards come up often and easy ones rarely, so your time goes where it is needed."))
```

```check
(number
  (ask "You have 30 cards in box 1. On day 1 you get 18 of them right. How many cards are still in box 1?")
  (answer 12) (unit "cards") (from "30 - 18")
  (wrong-if 18 "18 cards were right, so they moved up to box 2. The ones left are the ones you missed.")
  (wrong-if 48 "Cards move out of box 1 when they are right. Take away the right ones.")
  (hint "The right cards move to box 2.")
  (hint "30 take away 18."))
```

---

## Practice

```check
(choice
  (ask "Why do Leitner boxes save time?")
  (right "You see the cards you know less often and the hard ones more often")
  (wrong "You stop studying the cards you got right once"
    "Right cards are not dropped. They come back after a longer gap, so you keep remembering them.")
  (wrong "You look at every card every day"
    "That is what the boxes avoid. Each box has its own gap.")
  (hint "Where do easy cards end up, and how often do you see them?"))
```

```check
(choice
  (ask "In learn, a question you answered right only after taking a hint goes to which box?")
  (right "Box 1, and it comes back the next day")
  (wrong "Up one box, because the answer was right"
    "A right answer after a hint does not count as known yet. It goes back to box 1.")
  (wrong "It stays in the box it was in"
    "learn sends it to box 1, so you get to recall it on your own soon.")
  (hint "Did you recall it on your own?"))
```

---

## This week

Make a set of Leitner boxes from 3 envelopes, and put 10 to 20
flashcards in box 1. Run them for a week. In learn, press R whenever
review is due.

So: Leitner boxes space your practice for you, sending hard cards back
and letting easy ones wait.
