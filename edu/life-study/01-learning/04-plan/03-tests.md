# Getting ready for a test

```lesson
(objective "Prepare for a test with a plan that starts early and uses practice tests.")
(minutes 20)
```

The best way to get ready for a test is to start early and test
yourself many times before the real one.

Practice tests do 2 jobs. They are retrieval practice, so they make
memories stronger. And they show you what you do not know yet, which
is hard to judge by feeling alone. Then you know where to spend your
time.

```sources
(source "Brown, Roediger and McDaniel, Make It Stick (Harvard University Press, 2014), chapters 2 and 5")
```

```check
(choice
  (ask "What are the 2 jobs of a practice test?")
  (right "It strengthens memory, and it shows what you do not know yet")
  (wrong "It shows your grade, and it saves study time"
    "A practice test is not graded. It is practice that strengthens memory and points out gaps.")
  (wrong "It only shows what you do not know"
    "That is one job. The other is that answering questions is retrieval practice, which strengthens memory.")
  (hint "One job is from the testing effect lesson. The other is about the illusion of knowing."))
```

---

## Make it like the real test

A practice test helps most when it asks what the real test will ask:

- questions of all the kinds, mixed, not in blocks;
- no notes or book open;
- the same kind of answers: written out if the test wants them written
  out.

Afterward, check every answer and work on the ones you missed.

```check
(choice
  (ask "Your test will have mixed fraction and decimal problems. Which practice test is best?")
  (right "Mixed fraction and decimal problems, with no notes")
  (wrong "All the fraction problems first, then all the decimal ones"
    "That is blocked. On the real test, they are mixed, so you also need to practice telling them apart.")
  (wrong "Mixed problems, with your notes open beside you"
    "With notes open, you can look things up instead of recalling them. The real test has no notes.")
  (hint "Make it like the real test."))
```

---

## Plan back from the test day

```example
(example
  (problem "Your science test is in 10 days. It covers 3 topics.")
  (step "Day 1: list the topics and make questions or flashcards for each.")
  (step "Days 2, 4 and 6: a short self-test on all 3 topics, mixed. Work on what you missed.")
  (step "Day 8: a full practice test, like the real one. Check it and fix your gaps.")
  (step "Day 9: a short self-test on the things you missed, then your usual bedtime.")
  (answer "Spaced self-tests, mixed topics, a practice test, and sleep before day 10."))
```

```check
(number
  (ask "In that plan, how many days of study are there before the test on day 10?")
  (answer 6) (unit "days")
  (true "1 + 3 + 1 + 1 = 6")
  (wrong-if 10 "Not every day has study on it: the plan has gaps. Count the days named in the plan.")
  (wrong-if 9 "Count only the days the plan names: day 1; days 2, 4 and 6; day 8; day 9.")
  (hint "List the days: 1, 2, 4, 6, 8, 9.")
  (hint "Count them."))
```

---

## Practice

```check
(choice
  (ask "Lily's test is in 2 weeks. When should she start?")
  (right "This week, with short sessions spread out over the 2 weeks")
  (wrong "The night before, so it is fresh"
    "That is cramming. It is fresh the next morning, but she gets less practice and less sleep, and it fades fast.")
  (wrong "Only after she feels ready"
    "Feeling ready is not a good guide. Practice tests will show her what she knows, so she should start them early.")
  (hint "Think about spacing, and about the illusion of knowing."))
```

```check
(choice
  (ask "After a practice test, what should you do with the answers?")
  (right "Check every one, and work on the ones you missed")
  (wrong "Look only at your score"
    "The score is not the useful part. The questions you missed tell you exactly what to study.")
  (wrong "Throw the test away, since it did not count"
    "It counted for your learning. The mistakes on it show you what to work on.")
  (hint "Feedback."))
```

---

## This week

For your next test, write a plan back from the test day: when you make
questions, when you test yourself, and when you take a practice test.

So: start early, test yourself often in mixed practice tests, check
every answer, and sleep before the day.
