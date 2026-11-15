# Your study plan

```lesson
(objective "Make a study plan for a week that uses retrieval, spacing, mixing and sleep.")
(minutes 25)
```

A good study plan uses 4 ideas from this course: test yourself, spread
it out, mix it up, and sleep enough.

```cards
(card "Test yourself" "Recall first, then check: flashcards, a blank page, questions")
(card "Spread it out" "Short sessions on different days, not one long one")
(card "Mix it up" "Mix kinds of problems you must tell apart")
(card "Sleep" "9 to 12 hours a day at ages 6 to 12; 8 to 10 at 13 to 18")
```

```sources
(source "Dunlosky and others, Improving Students' Learning With Effective Learning Techniques, Psychological Science in the Public Interest 14(1), 2013")
(source "Paruthi and others, Recommended Amount of Sleep for Pediatric Populations, Journal of Clinical Sleep Medicine 12(6), 2016")
```

```check
(choice
  (ask "Which plan for learning 30 new words uses all 4 ideas?")
  (right "Flashcards in mixed order, 10 minutes a day on 5 days, and usual bedtimes")
  (wrong "Reading the list for an hour on Sunday night, staying up late"
    "That is rereading, massed, and costs sleep. It uses none of the 4 ideas.")
  (wrong "Flashcards for an hour on Sunday, always in the same order"
    "It uses testing, but it is massed and not mixed. Spread it over days and shuffle the cards.")
  (hint "Look for testing, days apart, mixing and sleep."))
```

---

## A week, planned

Here is one learner's plan for a week with a math quiz on Friday and
new Spanish words to learn.

| Day | Plan |
|---|---|
| Mon | 10 min Spanish flashcards; learn review (R) |
| Tue | 15 min mixed math problems from old homework |
| Wed | 10 min Spanish flashcards; learn review (R) |
| Thu | 15 min math practice quiz, mixed; check it; usual bedtime |
| Fri | Quiz; 10 min Spanish flashcards |
| Sat | Free |
| Sun | Blank page: all I remember from this week; check |

```check
(number
  (ask "How many minutes of Spanish flashcards are in this plan in the week?")
  (answer 30) (unit "minutes") (from "10 + 10 + 10")
  (wrong-if 10 "That is one day. Spanish flashcards are on Monday, Wednesday and Friday.")
  (wrong-if 60 "That adds the math too. Count only the Spanish flashcards.")
  (hint "Find every day with Spanish flashcards.")
  (hint "3 days of 10 minutes."))
```

---

## learn in your plan

learn already does some of this for you:

- Review (R on the home screen) brings questions back after gaps that
  grow: spacing.
- It mixes questions from your courses: interleaving.
- Every question asks before it tells: retrieval.

Your part: press R when review is due, try before you take a hint, and
read the feedback when you miss.

```check
(choice
  (ask "What is your part, when you use learn's review?")
  (right "Do the review when it is due, and try each question before taking a hint")
  (wrong "Nothing: learn does all of it for you"
    "learn plans the spacing and mixing, but only you can do the recalling. Try before you take a hint.")
  (wrong "Do all the reviews at once, once a month"
    "That would be massed practice. Review works because the questions come back when they are due.")
  (hint "learn can space and mix, but who does the recalling?"))
```

---

## Mixed review of the course

```check
(choice
  (ask "Which method did the 2013 review rate low?")
  (right "Highlighting")
  (wrong "Testing yourself"
    "Testing yourself was rated high, one of the 2 most useful methods.")
  (wrong "Spacing out your practice"
    "Spacing was rated high, with testing yourself.")
  (hint "One of these feels useful but does not make you recall anything."))
```

```check
(choice
  (ask "What did the 2007 experiment with solid shapes find, a week after practice?")
  (right "Students who practiced the problems mixed did much better")
  (wrong "Students who practiced in blocks did better"
    "Blocked practice did better during practice, but the mixed group did much better a week later.")
  (wrong "There was no difference"
    "Same problems, different order, and a big difference: mixed won on the later test.")
  (hint "Interleaving."))
```

```check
(choice
  (ask "What does research say about learning styles?")
  (right "There is no good evidence that teaching to your style helps")
  (wrong "Matching teaching to your style helps a lot"
    "The 2008 review found very few proper tests, and several went against the idea.")
  (wrong "Everyone is a seeing learner"
    "People have different preferences. But teaching to them has not been shown to help.")
  (hint "Think of the 2008 review."))
```

---

## This week

Write your own plan for next week, using the table above as a model.
Put in testing, spacing, mixing and your bedtimes. Stick it where you
will see it.

So: test yourself, spread it out, mix it up and sleep enough, and let
learn's review do the spacing and mixing for what you learn here.
