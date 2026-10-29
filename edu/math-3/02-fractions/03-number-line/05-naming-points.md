# Naming points

```lesson
(objective "Name the fraction at a point on a number line.")
(standards "3.NF.A.2b")
(minutes 20)
```

You can name the fraction at a point on a number line.

Do it in 2 steps:

1. Count the equal parts from 0 to 1. That is the denominator.
2. Count the parts from 0 to the point. That is the numerator.

```figure
(fr-line 40 280 120 1 4 'whole)
(nl-mark (/ 3 4) 'warm "P")
(caption "The interval from 0 to 1 in equal parts.")
```

```check
(fraction
  (ask "What fraction is at point P?")
  (answer 3 4) (equivalent) (true "3 * 1/4 = 3/4")
  (wrong-if (3 5) "5 is the number of tick marks from 0 to 1. The denominator counts the parts, the spaces between them: 4.")
  (wrong-if (4 4) "That counts the mark at 0 as 1. Count the parts from 0 to P: 3.")
  (hint "First count the spaces from 0 to 1.")
  (hint "4 parts from 0 to 1. How many parts from 0 to P?"))
```

---

## Spaces, not marks

The most common mistake is to count tick marks. A line from 0 to 1
in sixths has 7 marks, but only 6 parts. Always count the spaces.

Try it: move the slider, say the fraction, then tick the box to check.

```figure
(define k (slider 'k 1 5 2 "Point" 1))
(define show (toggle 'show "Show the fraction"))
(fr-line 40 280 120 1 6 'whole)
(if show (fr-point k 6 'warm) (nl-mark (/ k 6) 'warm "?"))
(caption "The interval from 0 to 1 in sixths: 7 marks, 6 parts.")
```

```check
(fraction
  (ask "On a line from 0 to 1 in sixths, a point is 5 parts from 0. What fraction is it?")
  (answer 5 6) (true "5 * 1/6 = 5/6")
  (wrong-if (5 7) "7 is the number of tick marks. The denominator counts the 6 parts.")
  (wrong-if (6 6) "6/6 is at 1. The point is 5 parts from 0.")
  (hint "The denominator is the number of parts from 0 to 1."))
```

---

## Worked example

```example
(example
(problem "A number line from 0 to 1 has 9 tick marks, the same distance apart. Point Q is at the 4th mark after 0. Name Q.")
(step "9 marks make 8 spaces, so the parts are eighths.")
(step "Q is 4 parts from 0.")
(answer "Q is at 4/8."))
```

```example
(example
(problem "A number line from 0 to 1 has 4 tick marks, the same distance apart. Point R is at the 1st mark after 0. Name R.")
(step (choice (ask "How many equal parts are there from 0 to 1?")
  (right "3")
  (wrong "4"
    "4 is the number of marks. The parts are the spaces between them: 3.")))
(step "R is 1 part from 0.")
(answer "R is at 1/3."))
```

---

## Practice

```figure
(fr-line 40 280 120 1 8 'whole)
(nl-mark (/ 5 8) 'warm "M")
(caption "The interval from 0 to 1 in equal parts.")
```

```check
(fraction
  (ask "What fraction is at point M?")
  (answer 5 8) (equivalent) (true "5 * 1/8 = 5/8")
  (wrong-if (5 9) "9 is the number of tick marks. Count the spaces from 0 to 1: 8.")
  (wrong-if (6 8) "That counts the mark at 0. Count the parts from 0 to M: 5.")
  (wrong-if (3 8) "3/8 is the part from M to 1. Count from 0.")
  (hint "Count the spaces from 0 to 1, then from 0 to M."))
```

---

```figure
(fr-line 40 280 120 1 3 'whole)
(nl-mark (/ 1 3) 'warm "A")
(nl-mark (/ 2 3) 'cool "B")
(caption "The interval from 0 to 1 in equal parts.")
```

```check
(fraction
  (ask "What fraction is at point B?")
  (answer 2 3) (equivalent) (true "2 * 1/3 = 2/3")
  (wrong-if (2 4) "4 is the number of tick marks. There are only 3 parts from 0 to 1.")
  (wrong-if (3 3) "3/3 is at 1. B is 2 parts from 0.")
  (hint "How many spaces are there from 0 to 1?"))
```

```check
(fraction
  (ask "What fraction is at point A?")
  (answer 1 3) (equivalent) (true "1 * 1/3 = 1/3")
  (wrong-if (1 4) "4 is the number of tick marks. There are 3 parts from 0 to 1.")
  (wrong-if (2 3) "That counts the mark at 0. A is just 1 part from 0.")
  (hint "A is 1 part from 0."))
```

So: to name a point, count the parts from 0 to 1 for the denominator
and the parts from 0 to the point for the numerator.
