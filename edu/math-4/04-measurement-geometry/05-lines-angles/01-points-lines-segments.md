# Points, lines and segments

```lesson
(objective "Draw and name points, lines and line segments, and tell a line from a line segment by its endpoints.")
(standards "4.G.A.1")
(minutes 20)
(keywords "line segment" "endpoint")
```

You can tell a line from a part of a line, and name each one with letters.

In geometry, a **point** is an exact place. You draw it as a dot and name it with a capital letter.

```figure
(dot 80 120)
(label 80 105 "A" 'body 'bold)
(dot 230 90)
(label 230 75 "B" 'body 'bold)
(caption "Point A and point B")
```

```check
(choice
  (ask "How do you name a point?")
  (right "with a capital letter, like A")
  (wrong "with a number, like 3" "Numbers are for counting and measuring. A point is named with a capital letter.")
  (wrong "it has no name" "You give each point a name, a capital letter, so you can talk about it.")
  (hint "Look at the figure."))
```

---

## A line

A **line** is straight and goes on without end in both directions. You draw arrows at both ends to show it never stops.

You name a line with 2 points on it: line AB.

```figure
(arrow 160 120 300 70 'ink 2)
(arrow 160 120 20 170 'ink 2)
(dot 90 145)
(label 90 135 "A" 'body 'bold)
(dot 230 95)
(label 230 85 "B" 'body 'bold)
(caption "Line AB")
```

```check
(choice
  (ask "Why does a line have an arrow at each end?")
  (right "It goes on without end both ways.")
  (wrong "It points the way to walk." "The arrows do not show a way to go. They show the line never stops, in both directions.")
  (wrong "It shows where the line stops." "A line never stops. The arrows show it keeps going.")
  (hint "Can you measure how long a line is?"))
```

---

## A line segment

A **line segment** is part of a line between 2 points. It has a length you can measure.

Each end point of a segment is an **endpoint**. You name a segment by its endpoints: segment CD.

```figure
(line 60 150 260 80 'ink 2)
(dot 60 150)
(label 60 172 "C" 'body 'bold)
(dot 260 80)
(label 260 70 "D" 'body 'bold)
(caption "Segment CD: 2 endpoints")
```

```check
(number
  (ask "How many endpoints does a line segment have?")
  (answer 2) (from "2")
  (wrong-if 0 "That is a line. A line segment stops at both ends: 2 endpoints.")
  (wrong-if 1 "A segment stops at both ends, so it has 2 endpoints.")
  (hint "Count the dots at the ends of segment CD."))
```

---

## Line or segment?

Look at the ends. Arrows at both ends: a line. Dots at both ends: a line segment.

```figure
(define k (choice 'k '("first" "second") "Show"))
(if (= k 0)
    (begin (arrow 160 120 290 120 'ink 2) (arrow 160 120 30 120 'ink 2)
           (dot 100 120) (label 100 108 "E" 'body 'bold) (dot 220 120) (label 220 108 "F" 'body 'bold))
    (begin (line 60 120 260 120 'ink 2)
           (dot 60 120) (label 60 108 "E" 'body 'bold) (dot 260 120) (label 260 108 "F" 'body 'bold)))
```

```check
(choice
  (ask "Choose the first figure. Is it a line or a line segment?")
  (right "a line")
  (wrong "a line segment" "It has arrows at both ends, so it goes on without end. That is a line.")
  (hint "Look at the ends."))
```

---

## A worked example

```example
(example
  (problem "Draw segment PQ.")
  (step "Draw a dot. Name it P.")
  (step "Draw another dot. Name it Q.")
  (step (choice (ask "What do you draw between them?")
          (right "a straight part from P to Q, with no arrows")
          (wrong "a straight part with arrows past P and Q" "Arrows make a line that never ends. A segment stops at its endpoints.")))
  (answer "Segment PQ: a straight part with endpoints P and Q."))
```

---

## Practice

```check
(choice
  (ask "Which can you measure the length of?")
  (right "a line segment")
  (wrong "a line" "A line goes on without end, so it has no length to measure.")
  (hint "Which one stops?"))
```

```check
(choice
  (ask "A side of a triangle starts at one corner and stops at another. What is it?")
  (right "a line segment")
  (wrong "a line" "The side stops at 2 corners. Those are its endpoints, so it is a segment.")
  (wrong "a point" "A point is one exact place. A side is straight and has length.")
  (hint "Does the side go on for ever?"))
```

A line has no endpoints and goes on for ever; a line segment has 2 endpoints.
