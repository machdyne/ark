# Spread it out

```lesson
(objective "Explain why practice spread over days beats the same practice all at once.")
(minutes 20)
(keywords "spaced practice" "massed practice")
```

The same amount of study helps you remember more when you spread it
over several days than when you do it all at once.

Doing all your practice on a topic in one long go is
**massed practice**. Cramming the night before a test is massed practice.

Splitting the same practice into shorter sessions, with time between
them, is **spaced practice**.

In the figure, each square is a day, and a shaded day has study on it.
Both plans have the same total time.

```figure
(st-days 52 50 9 '(8) "All at once: 1 session of 60 minutes")
(st-days 52 120 9 '(0 2 5 8) "Spread out: 4 sessions of 15 minutes")
(st-day-numbers 52 160 9)
(text 160 180 "day" 'small 'centre)
(caption "The same 60 minutes, planned 2 ways")
```

```check
(choice
  (ask "Which plan is spaced practice?")
  (right "20 minutes on Monday, Wednesday and Friday")
  (wrong "60 minutes on Friday night"
    "That is all the practice in one go: massed practice, like cramming.")
  (wrong "60 minutes on Friday, in a quiet room"
    "A quiet room is nice, but all the practice is still in one session. Spacing is about time between sessions.")
  (hint "Spaced practice has time between sessions."))
```

---

## What the research found

In 2006, a team of researchers put together the results of hundreds of
experiments on spacing. They found that spaced practice beat massed
practice for remembering over time, again and again.

A 2013 review of 10 ways of studying rated spaced practice as one of
the 2 most useful, with testing yourself.

```sources
(source "Cepeda, Pashler, Vul, Wixted and Rohrer, Distributed Practice in Verbal Recall Tasks, Psychological Bulletin 132(3), 2006")
(source "Dunlosky and others, Improving Students' Learning With Effective Learning Techniques, Psychological Science in the Public Interest 14(1), 2013: distributed practice")
```

```check
(choice
  (ask "What did the 2006 review of spacing experiments find?")
  (right "Spaced practice helped people remember more over time than massed practice")
  (wrong "Massed practice was better, because it is all in one go"
    "It was the other way around. Spreading the same practice out helped people remember more.")
  (wrong "It made no difference how practice was spread"
    "Across many experiments, spacing made a clear difference: spaced practice won.")
  (hint "The review was about spacing. Which way did it point?"))
```

---

## Why cramming feels like it works

Cramming can get you through a test the next morning. Everything is
fresh. But what you learn in one go also fades fast. A week later,
much of it is gone.

With spaced practice, some of it fades between sessions. Getting it
back takes effort. Researchers think that this effort is one reason
spacing works: it is a desirable difficulty.

```sources
(source "Brown, Roediger and McDaniel, Make It Stick (Harvard University Press, 2014), chapter 3")
```

```check
(choice
  (ask "Tom crammed for a quiz and did well. Why might cramming still be a poor plan?")
  (right "What he crammed will fade fast, and he may need it later")
  (wrong "It is not a poor plan: he did well on the quiz"
    "Cramming can work for the next morning. But school builds on itself, and what was crammed fades quickly.")
  (wrong "Cramming never works, even for the next day"
    "It can work for a test right after. The trouble is how fast it fades afterward.")
  (hint "Think about a week after the quiz, not the quiz itself."))
```

---

## How learn does it

learn spreads out your review for you. Questions come back after gaps
of 1, 3, 7, 16 or 35 days. The gap grows each time you get a question
right the first time, without a hint.

```example
(example
  (problem "You have 60 minutes to study for a test next week. Plan it with spacing.")
  (step "Split the time into 4 sessions of 15 minutes.")
  (step "Put them on different days: Monday, Wednesday, Friday and Sunday.")
  (step "In each session, test yourself first, then check and study what you missed.")
  (answer "4 sessions of 15 minutes over a week, each one starting with a self-test."))
```

```check
(number
  (ask "You have 90 minutes of study for a test. You split them into 3 equal sessions on different days. How many minutes is each session?")
  (answer 30) (unit "minutes") (from "90 / 3")
  (wrong-if 90 "That is all the time in one session. Split it into 3 equal parts.")
  (wrong-if 270 "That multiplies by 3. Splitting into 3 sessions means dividing.")
  (hint "Share 90 minutes equally among 3 days.")
  (hint "90 divided by 3."))
```

---

## Practice

```check
(choice
  (ask "Which of these is massed practice?")
  (right "Practicing all 30 spelling words for 2 hours on Sunday")
  (wrong "Practicing the 30 words for 20 minutes on 6 different days"
    "That spreads the same 2 hours over 6 days, so it is spaced practice.")
  (wrong "Testing yourself on the 30 words once a day"
    "Once a day, with gaps between, is spaced practice.")
  (hint "Massed practice is all in one go."))
```

```check
(choice
  (ask "Why does a little forgetting between sessions help?")
  (right "Bringing back what has faded takes effort, and that effort seems to make it last")
  (wrong "It does not help: forgetting is always bad"
    "Some forgetting between sessions means you work to recall, and researchers think that effort helps the memory last.")
  (wrong "Forgetting makes room for new things"
    "That is not the reason researchers give. They point to the effort of recalling what has faded.")
  (hint "Think about desirable difficulties."))
```

---

## This week

Pick a test or task you have coming up. Instead of one long session,
plan 3 short ones on different days, and put them on a calendar.

So: the same study time, spread over days, helps you remember more and
for longer.
