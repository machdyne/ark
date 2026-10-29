# Same point

```lesson
(objective "Show that equivalent fractions are at the same point on a number line.")
(standards "3.NF.A.3a")
(minutes 20)
```

Equivalent fractions are at the same point on a number line.

Here are 2 number lines from 0 to 1, one above the other. The top one
is in halves. The bottom one is in fourths. $1/2$ and $2/4$ are at the
same point: the same distance from 0.

```figure
(fr-line 40 280 70 1 2 'whole)
(fr-point 1 2 'warm)
(fr-line 40 280 160 1 4 'frac)
(nl-mark (/ 2 4) 'warm)
(line 160 76 160 154 'ink 1)
(caption "1/2 and 2/4 are the same distance from 0.")
```

```check
(choice
  (ask "Why are" (math "1/2") "and" (math "2/4") "equivalent?")
  (right "They are the same distance from 0")
  (wrong "They both have a 2 in them"
    "Sharing a digit does not make fractions equal. They are equivalent because they are at the same point.")
  (wrong "2/4 has more parts, so it is bigger"
    "2/4 has more parts, but each fourth is half as long as a half. Both points are the same distance from 0.")
  (hint "Look at the line that joins the two points."))
```

---

## Find the same point

Choose 2 lines by the size of their parts: thirds and sixths, fourths
and eighths, or halves and sixths. Points that line up are
equivalent fractions.

```figure
(define c (choice 'lines '("1/3 1/6" "1/4 1/8" "1/2 1/6")))
(define t (list-ref '(3 4 2) c))
(define u (list-ref '(6 8 6) c))
(fr-line 40 280 60 1 t 'frac)
(fr-line 40 280 160 1 u 'frac)
(for-range 1 t (lambda (i) (line (+ 40 (* (/ 240 t) i)) 100 (+ 40 (* (/ 240 t) i)) 150 'cool 1)))
(caption "Points joined by a line are equivalent.")
```

```check
(fraction
  (ask "On a line in sixths, which fraction is at the same point as" (math "2/3") "? Write it in sixths.")
  (answer 4 6) (true "2/3 = 4/6")
  (wrong-if (2 6) "2/6 is closer to 0. It is at the same point as 1/3, not 2/3.")
  (wrong-if (3 6) "3/6 is at the same point as 1/2. Choose thirds and sixths in the figure.")
  (hint "Choose thirds and sixths in the figure. Follow the line down from 2/3."))
```

---

## Worked example

```example
(example
(problem "Show on number lines that 3/4 = 6/8.")
(step "Draw a line from 0 to 1 in fourths. Mark 3/4.")
(step "Under it, draw a line of the same length in eighths. Mark 6/8.")
(step "The 2 points line up: they are the same distance from 0.")
(answer "3/4 and 6/8 are at the same point, so 3/4 = 6/8."))
```

```example
(example
(problem "Show on number lines whether 1/3 and 1/2 are equivalent.")
(step "Draw a line from 0 to 1 in thirds and mark 1/3.")
(step "Under it, draw a line of the same length in halves and mark 1/2.")
(step (choice (ask "Do the points line up?")
  (right "No: 1/2 is farther from 0")
  (wrong "Yes: both are unit fractions"
    "Both are unit fractions, but the parts are different sizes. 1/2 is farther from 0 than 1/3.")))
(answer "1/3 and 1/2 are not equivalent."))
```

---

## Practice

```figure
(fr-line 40 280 70 1 4 'whole)
(nl-mark (/ 1 4) 'warm "A")
(fr-line 40 280 170 1 8 'whole)
(nl-mark (/ 2 8) 'cool "B")
(nl-mark (/ 4 8) 'cool "C")
(caption "Two lines from 0 to 1: fourths above, eighths below.")
```

```check
(choice
  (ask "Which point on the bottom line is equivalent to point A?")
  (right "B")
  (wrong "C"
    "C is at 4/8, the same as 1/2. A is at 1/4, which lines up with B.")
  (hint "Which point is the same distance from 0 as A?"))
```

---

```check
(choice
  (ask "Two number lines from 0 to 1 are drawn with different lengths. Can you use them to show that 1/2 = 2/4?")
  (right "No: the lines must use the same length for 0 to 1")
  (wrong "Yes: always"
    "If 0 to 1 is longer on one line, its points are farther out. The wholes must be the same length.")
  (hint "Think about strips of different lengths."))
```

```check
(fraction
  (ask "Write a fraction in eighths at the same point as" (math "1/2") ".")
  (answer 4 8) (true "1/2 = 4/8")
  (wrong-if (2 8) "2/8 is only 1/4 of the way. Halfway along a line in eighths is 4 parts.")
  (wrong-if (1 8) "1/8 is the first mark. Halfway is 4 of the 8 parts.")
  (hint "8 eighths make the whole. Half of 8 is ..."))
```

So: equivalent fractions, like $1/2$ and $2/4$, are at the same point
on a number line.
