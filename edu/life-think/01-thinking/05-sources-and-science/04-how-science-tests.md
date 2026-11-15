# How science tests ideas

```lesson
(objective "Describe how science moves from observation to hypothesis to a fair test.")
(minutes 20)
(keywords "observation" "hypothesis" "fair test" "control group")
```

You can follow how science checks an idea instead of just believing it.

Science often starts with an **observation**: something noticed, by looking,
measuring or counting. "The tomato plants by the wall grow taller than
the ones by the path."

Then comes a **hypothesis**: a possible explanation that can be tested.
"They grow taller because they get more sun."

A hypothesis must be testable: there must be some result that would
show it is wrong.

```sources
(source "Understanding Science, University of California Museum of Paleontology")
```

```check
(choice
  (ask "Which is a hypothesis that can be tested?")
  (right "\"Bread goes moldy faster in a warm place than a cold one.\"")
  (wrong "\"My bread went moldy.\""
    "That is an observation: something you noticed. A hypothesis is an explanation or prediction you can test.")
  (wrong "\"Mold is disgusting.\""
    "That is a feeling, not something a test could show right or wrong.")
  (hint "Which one could a test show to be wrong?"))
```

---

## A fair test

A **fair test** changes only one thing at a time and keeps everything
else the same. To test the sun idea, grow some plants in sun and some
in shade, with the same soil, seeds and water.

The plants that do not get the thing being tested form the
**control group**. You compare the others with them. Choosing which plant goes
in which group at random helps keep the groups alike.

```check
(choice
  (ask "To test whether a fertilizer helps beans grow, which is the control group?")
  (right "Beans grown the same way but with no fertilizer")
  (wrong "Beans given twice as much fertilizer"
    "Those still get the fertilizer. A control group gets none, so you can compare.")
  (wrong "Beans grown in a different soil with no fertilizer"
    "Changing the soil too means 2 things differ. Only the fertilizer should change.")
  (hint "Which group lacks just the thing being tested?"))
```

---

## Worked example

```example
(example
  (problem "Lin notices her phone battery seems to run down faster outside in the cold. Plan a fair test.")
  (step "Hypothesis: the battery runs down faster in the cold.")
  (step "Use 2 phones of the same model, fully charged, doing the same task.")
  (step "Keep one in the cold and one indoors (the control). Change nothing else.")
  (answer "Compare how much charge each has left after the same time."))
```

---

## Practice

```check
(choice
  (ask "Ty tests whether music helps him study. He studies with music for math and without music for history. What is wrong?")
  (right "He changed 2 things: the music and the subject")
  (wrong "Nothing: he tried both ways"
    "He did, but the subjects differ too. Any difference might come from the subject, not the music.")
  (wrong "He should only test with music"
    "Without a comparison you cannot tell whether music made a difference.")
  (hint "How many things changed between the 2 tries?"))
```

---

```check
(choice
  (ask "\"Plants grow best when you love them.\" Why is this hard to test as stated?")
  (right "It does not say what result would show it wrong")
  (wrong "Plants cannot be tested"
    "Plants are tested all the time. The problem is that \"love\" here is not something you can measure or control.")
  (wrong "It must be true, so no test is needed"
    "Every claim in science must face a test. This one first needs to say what would count against it.")
  (hint "What would you measure?"))
```

So: observe, make a testable hypothesis, and run a fair test against a
control group.
