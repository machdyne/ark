# Confirmation bias

```lesson
(objective "Notice confirmation bias, and test an idea by looking for what would show it wrong.")
(minutes 20)
(keywords "cognitive bias" "confirmation bias")
```

You can catch yourself looking only for what agrees with you.

A **cognitive bias** is a pattern of thinking that pulls everyone's
judgment the same way, often without our noticing. It is not a lack of
intelligence: clever people have the same biases. This unit covers 4.

**Confirmation bias** is the habit of looking for, noticing and
remembering what fits what we already believe, and passing over what
does not.

```sources
(source "Kahneman, D. (2011), Thinking, Fast and Slow")
```

```check
(choice
  (ask "Kit thinks her new running shoes make her faster. She remembers her fast runs in them and forgets the slow ones. What is this?")
  (right "Confirmation bias")
  (wrong "Post hoc"
    "Post hoc is concluding that A caused B because B came after A. Here the problem is which runs Kit notices and remembers.")
  (wrong "Good evidence that the shoes work"
    "Counting only the fast runs is not evidence. She would need to compare all her runs, with and without the shoes.")
  (hint "Which runs does she pay attention to?"))
```

---

## The 2-4-6 game

In a famous experiment by the psychologist Peter Wason, people were
told that 2, 4, 6 fits a secret rule. They could test other sets of 3
numbers and were told if each fitted.

Many people guessed a rule like "even numbers going up by 2" and
tested only sets that fitted it, such as 8, 10, 12. Every test fitted,
so they felt sure. But the rule was
just "any 3 numbers in increasing order". Their tests could only agree
with their guess, never show it wrong.

```sources
(source "Wason, P. C. (1960), \"On the failure to eliminate hypotheses in a conceptual task\", Quarterly Journal of Experimental Psychology 12")
```

```check
(choice
  (ask "You guess the rule is \"even numbers going up by 2\". Which test would tell you the most?")
  (right "1, 2, 3: if it fits, your guess is wrong")
  (wrong "10, 12, 14"
    "This fits your guess, so a yes tells you nothing new. A test that could show you wrong teaches more.")
  (wrong "100, 102, 104"
    "Bigger numbers, same pattern: it can only agree with your guess.")
  (hint "Try a set your rule says should NOT fit."))
```

---

## The habit: try to prove yourself wrong

Against confirmation bias, ask: "What would I expect to see if I were
wrong?" Then look for it. Look up the best case for the other view.
Count the misses as well as the hits.

```check
(choice
  (ask "Ash believes a made-up cafe always gets his order wrong. What is the best way to check?")
  (right "Write down every order for a month, right and wrong, and count")
  (wrong "Think back to the times it went wrong"
    "Memory picks out the times that fit the belief. Counting every order includes the ones that went right.")
  (wrong "Ask friends who also dislike the cafe"
    "They may share the same bias. A full count is a fairer test.")
  (hint "Count the hits and the misses."))
```

---

## Worked example

```example
(example
  (problem "Bo thinks his team always loses when he watches. How can he test it fairly?")
  (step "List every game this season: watched or not, won or lost.")
  (step "Compare the share of losses in watched games with unwatched ones.")
  (answer "If the shares are about the same, his watching makes no difference."))
```

---

## Practice

```check
(choice
  (ask "Which question best fights confirmation bias?")
  (right "\"What would change my mind?\"")
  (wrong "\"What else supports my view?\""
    "Looking for more support is exactly what confirmation bias does. Ask what would count against you.")
  (wrong "\"Who agrees with me?\""
    "Agreement feels good but can come from shared bias. Seek out the best case against your view.")
  (hint "Which question looks for the other side?"))
```

---

```check
(choice
  (ask "Which is a cognitive bias?")
  (right "Remembering the times you were right and forgetting the times you were wrong")
  (wrong "Not knowing the capital of a country"
    "That is a gap in knowledge, not a pattern that pulls judgment one way.")
  (wrong "Making an adding mistake when tired"
    "A slip from tiredness is not a steady pattern of judgment that everyone shares.")
  (hint "A bias is a pattern that pulls judgment one way."))
```

So: we all notice what agrees with us; ask what would show you wrong,
and look for it.
