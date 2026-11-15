# Samples and margins of error

```lesson
(objective "Judge a survey by its sample, and read its margin of error.")
(minutes 25)
(keywords "sample" "population (of a survey)" "random sample" "biased sample" "margin of error")
```

You can tell whether a survey's result is worth trusting.

A survey wants to know about a whole group: all the students in a
school, or all the people in a town. That whole group is the
**population**. Asking everyone is usually too slow, so the survey
asks some of them: a **sample**.

```check
(choice
  (ask "A made-up town asks 300 of its 20,000 people which park they use most. What is the sample?")
  (right "The 300 people asked")
  (wrong "The 20,000 people of the town"
    "That is the population: the whole group the survey wants to learn about. The sample is the part actually asked.")
  (wrong "The parks"
    "The parks are what the question is about. The sample is the people asked.")
  (hint "Who actually answered?"))
```

---

## Random or biased

A sample is only useful if it is like the population. In a
**random sample**, every member of the population has the same chance of being
picked, like names drawn from a hat.

A **biased sample** leans one way. Asking about sport only at a
big game, or asking about bus times only people at a bus stop,
gives answers that do not stand for everyone.

```sources
(source "Freedman, D., Pisani, R. and Purves, R., Statistics (4th ed., 2007)")
```

```check
(choice
  (ask "A school wants to know how students get to school. Which sample is best?")
  (right "50 students picked at random from the whole school list")
  (wrong "The first 50 students to arrive at the gate"
    "Early arrivals may be the ones who come by car or live close. The sample would lean one way.")
  (wrong "50 students in the cycling club"
    "Club members are likely to cycle. That sample is biased toward bikes.")
  (hint "Which way gives every student the same chance?"))
```

---

## Margin of error

Even a random sample will not match the population exactly, just by
chance. A survey's **margin of error** says how far off it might
easily be.

Suppose a survey finds 52% like a new park plan, with a margin of error
of 3 percentage points. The true share is likely between 49% and 55%.
Since that range includes values under 50%, the survey cannot tell
whether most people like the plan.

A bigger random sample gives a smaller margin of error. A bigger
biased sample does not fix the bias.

```check
(number
  (ask "A survey finds 40%, with a margin of error of 4 percentage points. What is the lowest value the true share is likely to be, in percent?")
  (answer 36) (unit "%") (from "40 - 4")
  (wrong-if 38.4 "The margin is in percentage points, not a percent of 40. Subtract 4 from 40.")
  (hint "Subtract the margin."))
```

---

## Worked example

```example
(example
  (problem "Suppose 2 made-up surveys ask whether people want a later bus. Survey A: 1000 people chosen at random, 58%, margin 3 points. Survey B: 5000 people who answered an online poll on the bus company's page, 80%. Which tells you more about all riders?")
  (step "Survey A is random, so it stands for all riders: 55% to 61%.")
  (step "Survey B is bigger but chooses itself: people who visit that page and care enough to answer.")
  (answer "Survey A: a random sample beats a bigger biased one."))
```

```example
(example
  (problem "A survey says 47% with a margin of error of 2 points. What range is the true value likely in?")
  (step "Low end: 47 - 2.")
  (step (number (ask "High end, in percent?") (answer 49) (unit "%") (from "47 + 2")
    (wrong-if 48 "Add the full margin: 47 + 2 = 49.")))
  (answer "From 45% to 49%."))
```

---

## Practice

```check
(choice
  (ask "A website asks its visitors to vote on the best sports team. 10,000 vote. Is that a random sample of all sports fans?")
  (right "No: the voters chose themselves and visit that site")
  (wrong "Yes: 10,000 is a very large number"
    "Size does not fix how the sample was chosen. People who visit that site and choose to vote may differ from other fans.")
  (hint "Did every fan have the same chance of being asked?"))
```

---

```check
(choice
  (ask "Survey 1: 51% for plan X, margin 3 points. Survey 2: 49% for plan X, margin 3 points. What can you say?")
  (right "The surveys agree: both ranges overlap, and neither shows a clear majority")
  (wrong "Opinion has changed from for to against"
    "Both results are within each other's margins. The difference of 2 points can come from chance alone.")
  (wrong "One of the surveys must be wrong"
    "Random samples differ a little by chance. Both are consistent with a true value near 50%.")
  (hint "Write each as a range."))
```

So: ask who was asked, how they were picked, and how big the margin of
error is.
