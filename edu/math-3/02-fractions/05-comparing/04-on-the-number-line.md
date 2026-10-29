# On the number line

```lesson
(objective "Compare two fractions by where they are on a number line.")
(standards "3.NF.A.3d")
(minutes 20)
```

On a number line, the fraction farther to the right is greater.

Numbers grow as you go right from 0. So a point farther from 0 is a
greater fraction. Move the sliders.

```figure
(define a (slider 'a 0 8 3 "Point A" 1))
(define c (slider 'c 0 8 6 "Point B" 1))
(fr-line 40 280 120 1 8 'frac)
(nl-mark (/ a 8) 'warm "A")
(nl-mark (/ c 8) 'cool "B")
(math 160 200 (string-append (fr-s a 8) (cond ((> a c) " > ") ((< a c) " < ") (else " = ")) (fr-s c 8)) 24)
(caption "A number line from 0 to 1 in eighths.")
```

```check
(choice
  (ask "On a number line, which is greater:" (math "5/8") "or" (math "2/8") "?")
  (right "5/8: it is farther to the right" (true "5/8 > 2/8"))
  (wrong "2/8: it is closer to 0" (false "2/8 > 5/8")
    "Closer to 0 means smaller. Numbers grow as you go right, so 5/8 is greater.")
  (hint "Which point is farther from 0?"))
```

---

## Two lines, same length

To compare fractions with different denominators, use 2 lines with
the same length from 0 to 1. One above the other, the point farther
right is greater.

```figure
(fr-line 40 280 70 1 3 'whole)
(fr-point 2 3 'warm)
(fr-line 40 280 160 1 6 'whole)
(fr-point 2 6 'cool)
(caption "Lines in thirds and sixths, the same length from 0 to 1.")
```

```check
(choice
  (ask "Which is greater:" (math "2/3") "or" (math "2/6") "?")
  (right "2/3" (true "2/3 > 2/6"))
  (wrong "2/6" (false "2/6 > 2/3")
    "6 is bigger than 3, but look at the lines. 2/6 is closer to 0, so it is the smaller fraction.")
  (hint "Which point is farther to the right?"))
```

---

## Worked example

```example
(example
(problem "Use a number line to compare 3/4 and 1/4.")
(step "Draw a line from 0 to 1 in fourths.")
(step "1/4 is 1 part from 0. 3/4 is 3 parts from 0.")
(step "3/4 is farther right.")
(answer "3/4 > 1/4."))
```

```example
(example
(problem "Use 2 number lines to compare 1/2 and 1/8.")
(step "Draw a line in halves and, under it, a line of the same length in eighths.")
(step "Mark 1/2 and 1/8.")
(step (choice (ask "Which point is farther right?")
  (right "1/2")
  (wrong "1/8"
    "1/8 is the first mark on the line in eighths, very close to 0. 1/2 is halfway to 1.")))
(answer "1/2 > 1/8."))
```

---

## Practice

```figure
(fr-line 40 280 120 1 6 'whole)
(nl-mark (/ 1 6) 'warm "P")
(nl-mark (/ 4 6) 'cool "Q")
(caption "A number line from 0 to 1 in equal parts.")
```

```check
(choice
  (ask "Which is true about the fractions at P and Q?")
  (right "P < Q" (true "1/6 < 4/6"))
  (wrong "P > Q" (false "1/6 > 4/6")
    "P is closer to 0 than Q. Points closer to 0 are smaller, so P < Q.")
  (wrong "P = Q" (false "1/6 = 4/6")
    "P and Q are at different places, so they are not equal.")
  (hint "Which point is farther right?"))
```

```check
(fraction
  (ask "Write the fraction at point Q.")
  (answer 4 6) (equivalent) (true "4 * 1/6 = 4/6")
  (wrong-if (4 7) "7 is the number of tick marks. There are 6 parts from 0 to 1.")
  (wrong-if (5 6) "That counts the mark at 0. Count the parts from 0 to Q: 4.")
  (hint "Count the parts from 0 to 1, then from 0 to Q."))
```

---

```check
(choice
  (ask "Ty marks" (math "3/8") "and" (math "3/4") "on 2 lines that have different lengths from 0 to 1. Can he compare them by which point is farther right?")
  (right "No: the lines must be the same length from 0 to 1")
  (wrong "Yes: farther right is always greater"
    "That works only when 0 to 1 is the same length on both lines. Otherwise the wholes are different.")
  (hint "Think about comparing parts of different wholes."))
```

So: on number lines with the same 0 to 1, the fraction farther to the
right is greater.
