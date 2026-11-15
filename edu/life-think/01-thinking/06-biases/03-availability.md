# Availability

```lesson
(objective "Notice how events that are easy to remember seem more common than they are.")
(minutes 15)
(keywords "availability heuristic")
```

You can tell when something seems common just because it is easy to
picture.

A heuristic is a quick rule of thumb. The **availability heuristic**
is judging how common or likely something is by how easily examples
come to mind.

It often works: things you meet often are easy to recall. But things
can be easy to recall for other reasons: they were vivid, recent,
frightening, or in the news. Then they seem more common than they are.

```sources
(source "Tversky, A. and Kahneman, D. (1974), \"Judgment under Uncertainty: Heuristics and Biases\", Science 185, section on availability")
(source "Kahneman, D. (2011), Thinking, Fast and Slow")
```

```check
(choice
  (ask "After seeing a dramatic film about a shark attack, Mo feels swimming in the sea is very dangerous. What is going on?")
  (right "The vivid film makes shark attacks easy to picture, so they seem more likely")
  (wrong "The film gave Mo new facts about how often attacks happen"
    "A film shows one dramatic story, not how often attacks happen. It makes the idea easy to recall, not more likely.")
  (wrong "Mo is using a base rate"
    "A base rate would be how often attacks happen among all swims. Mo is going by how easily one comes to mind.")
  (hint "Why does the danger come to mind so easily?"))
```

---

## News and rare events

News reports what is new and unusual. A rare, dramatic accident can be
reported for days, while common, quiet risks are not news at all. So
the news can make rare events easy to recall, and the availability
heuristic then makes them seem common.

To check, look for the base rate: how often does it happen, out of how
many?

```check
(choice
  (ask "A made-up town's paper reports 3 stories about a rare kind of dog bite this month. What is the best question to ask?")
  (right "How many such bites happen in a year, out of how many people?")
  (wrong "Should everyone avoid dogs now?"
    "That jumps from a few vivid stories to a big conclusion. First find out how often bites happen.")
  (wrong "Why did the paper not report more?"
    "The issue is not too few stories. Stories make an event easy to recall; you need the actual rate.")
  (hint "Think base rate."))
```

---

## Worked example

```example
(example
  (problem "Jay thinks more words in English start with the letter K than have K as the third letter, because he can quickly think of many words that start with K. Why might he be misled?")
  (step "Words are easy to search for by their first letter, hard by their third.")
  (step "So K-first words come to mind more easily, whatever their real number.")
  (answer "Ease of recall is not the same as how common something is. (Tversky and Kahneman used questions like this one.)"))
```

---

## Practice

```check
(choice
  (ask "Which is the availability heuristic at work?")
  (right "Thinking burglaries are common because a neighbor's house was burgled last week")
  (wrong "Thinking a coin is due to land heads after 5 tails"
    "That is the gambler's fallacy: expecting chance to even out. Availability is about what comes to mind easily.")
  (wrong "Guessing a price close to a number you just heard"
    "That is anchoring. Availability is judging how common something is by how easily it comes to mind.")
  (hint "Which judgment rests on a recent, vivid example?"))
```

---

```check
(choice
  (ask "What is the best defense against the availability heuristic?")
  (right "Look up how often the thing really happens")
  (wrong "Trust your first feeling about how common it is"
    "The first feeling is exactly what the heuristic produces. Check it against real numbers.")
  (wrong "Avoid the news completely"
    "The news has real value. The fix is to check the base rate, not to stop learning about the world.")
  (hint "Feelings or numbers?"))
```

So: easy to remember is not the same as common; check how often it
really happens.
