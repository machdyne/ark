# Correlation and causation

```lesson
(objective "Tell correlation from causation, and find a possible third cause.")
(minutes 20)
(keywords "correlation" "causation" "confounding factor")
```

You can tell when 2 things go together, and whether one causes the
other.

A **correlation** is when 2 things tend to change together. On hot
days, a beach cafe sells more ice cream; on hot days, more people get
sunburned. So ice cream sales and sunburns are correlated: on days
with more of one, there tends to be more of the other.

The graph shows made-up days: each point is 1 day.

```figure
(graph 50 20 250 170 0 10 0 10)
(graph-axes 2 2)
(plot-point 1 2 'ink)
(plot-point 2 1.5 'ink)
(plot-point 3 3 'ink)
(plot-point 4 4.5 'ink)
(plot-point 5 4 'ink)
(plot-point 6 6 'ink)
(plot-point 7 6.5 'ink)
(plot-point 8 8 'ink)
(plot-point 9 8.5 'ink)
(text 175 226 "ice creams sold (hundreds)" 'centre 'small)
(text 14 14 "sunburns (made-up numbers)" 'left 'small)
```

```check
(choice
  (ask "In the graph, what happens to sunburns on days with more ice cream sold?")
  (right "They tend to be higher")
  (wrong "They tend to be lower"
    "Look at the points: as you go right, to more ice cream, they go up.")
  (wrong "There is no pattern"
    "The points rise from left to right fairly steadily. That pattern is a correlation.")
  (hint "Follow the points from left to right."))
```

---

## Correlation is not causation

**Causation** means one thing makes the other happen. Ice cream does
not cause sunburn. Both are caused by a third thing: hot, sunny days.

A hidden third thing that drives both is a **confounding factor**.
When 2 things are correlated, there are several possible stories:

- A causes B.
- B causes A.
- A third thing causes both.
- It is chance.

```sources
(source "Freedman, D., Pisani, R. and Purves, R., Statistics (4th ed., 2007)")
```

```check
(choice
  (ask "What is the confounding factor for ice cream sales and sunburns?")
  (right "Hot, sunny weather")
  (wrong "Ice cream"
    "Ice cream is one of the 2 correlated things. The confounding factor is a third thing that drives both.")
  (wrong "Sunscreen"
    "Sunscreen would lower sunburns, not raise ice cream sales. Look for what raises both.")
  (hint "What makes people buy ice cream and also get sunburned?"))
```

---

## Worked example

```example
(example
  (problem "In a made-up city, areas with more fire engines at a fire have more damage. Do fire engines cause damage?")
  (step "Bigger fires get more fire engines sent to them.")
  (step "Bigger fires also do more damage.")
  (answer "No: the size of the fire is a confounding factor that drives both."))
```

```example
(example
  (problem "Suppose children with bigger feet are better at reading. Do big feet cause good reading?")
  (step "Think about what makes feet bigger and reading better.")
  (step (choice (ask "What is the confounding factor?")
    (right "Age: older children have bigger feet and read better")
    (wrong "Shoe size" "Shoe size is just foot size. You need a third thing that drives both feet and reading.")))
  (answer "Age drives both: no causation from feet to reading."))
```

---

## Practice

```check
(choice
  (ask "Suppose towns with more libraries have more crime. What is the most likely explanation?")
  (right "Bigger towns have more of both libraries and crime")
  (wrong "Libraries cause crime"
    "A correlation alone cannot show causation. Town size is a likely third factor behind both.")
  (wrong "Crime causes libraries to be built"
    "Possible in a story, but there is a simpler explanation: bigger towns have more of everything.")
  (hint "What do towns with many libraries also have more of?"))
```

---

```check
(choice
  (ask "Which kind of test could best show that a new fertilizer makes plants grow taller?")
  (right "Give it to some plants picked at random and not to others, keeping everything else the same")
  (wrong "Find gardens that already use it and see if their plants are tall"
    "Gardeners who use it may also water more or have better soil. A correlation there cannot tell you the fertilizer is the cause.")
  (hint "How do you rule out third factors?"))
```

So: a correlation shows 2 things go together; to claim causation, rule
out a third cause and chance.
