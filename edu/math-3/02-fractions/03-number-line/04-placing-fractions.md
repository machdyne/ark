# Placing fractions

```lesson
(objective "Place a/b on a number line by marking a lengths of 1/b from 0.")
(standards "3.NF.A.2b")
(minutes 20)
```

You can put any fraction on a number line by marking parts from 0.

To place $3/4$: cut 0 to 1 into 4 equal parts. Then mark off 3 of
those parts from 0. The end of the 3rd part is the point $3/4$.

```figure
(define c (choice 'b '("2" "3" "4" "6" "8") "Denominator"))
(define b (list-ref '(2 3 4 6 8) c))
(define a (min b (slider 'a 1 b 1 "Numerator" 1)))
(fr-line 40 280 110 1 b 'whole)
(frac-bar-at 40 150 (* a (/ 240 b)) 12 a a 'warm)
(fr-point a b 'warm)
(caption (string-append (fmt a 0) (if (= a 1) " part of " " parts of ") (fr-s 1 b) " from 0: the point " (fr-s a b)))
```

```check
(number
  (ask "To place" (math "5/6") ", how many parts of" (math "1/6") "do you mark off from 0?")
  (answer 5)
  (wrong-if 6 "6 parts would reach 1. The numerator, 5, says how many sixths to mark off.")
  (wrong-if 1 "1 part reaches 1/6. For 5/6 you mark off 5 parts.")
  (hint "The numerator counts the parts from 0."))
```

---

## Start at 0

Always mark the parts from 0, not from 1 or from the last mark. A
fraction on the line is a distance from 0.

```figure
(fr-line 40 280 120 1 3 'whole)
(nl-mark (/ 1 3) 'ink "A")
(nl-mark (/ 2 3) 'ink "B")
(caption "The interval from 0 to 1 in thirds.")
```

```check
(choice
  (ask "Which point is" (math "2/3") "?")
  (right "B")
  (wrong "A"
    "A is 1 part from 0, so it is 1/3. Counting 2 parts back from 1 lands on A. But fractions count from 0.")
  (hint "Start at 0. Mark off 2 thirds."))
```

---

## Same denominator, in order

On a line cut into eighths, $1/8$, $2/8$, $3/8$ ... are in order from
0. The bigger the numerator, the farther the point is from 0.

```figure
(fr-line 40 280 120 1 8 'whole)
(fr-point 3 8 'warm)
(nl-mark (/ 6 8) 'cool)
(caption "3/8 and another point on the line.")
```

```check
(fraction
  (ask "The plain point on the line is a number of eighths from 0. Which fraction is it?")
  (answer 6 8) (true "6 * 1/8 = 6/8")
  (wrong-if (7 8) "That counts the mark at 0 as one. Count the parts from 0: 6.")
  (wrong-if (3 8) "3/8 is the shaded point with its label. The plain point is farther from 0.")
  (hint "Count the parts from 0 to the plain point."))
```

---

## Worked example

```example
(example
(problem "Place 2/4 on a number line.")
(step "Draw the interval from 0 to 1 and cut it into 4 equal parts.")
(step "Mark off 2 of those parts from 0.")
(step "The end of the 2nd part is the point.")
(answer "2/4 is 2 parts of 1/4 from 0: halfway to 1."))
```

```example
(example
(problem "Place 5/8 on a number line.")
(step "Draw the interval from 0 to 1 and cut it into 8 equal parts.")
(step (choice (ask "How many parts do you mark off from 0?")
  (right "5")
  (wrong "8"
    "8 parts reach 1. The numerator, 5, says how many to mark off.")
  (wrong "3"
    "3 parts are left between 5/8 and 1. Mark off from 0: 5 parts.")))
(answer "5/8 is the end of the 5th part from 0."))
```

---

## Practice

```figure
(fr-line 40 280 120 1 6 'whole)
(nl-mark (/ 2 6) 'ink "A")
(nl-mark (/ 4 6) 'ink "B")
(nl-mark (/ 5 6) 'ink "C")
(caption "The interval from 0 to 1 in sixths.")
```

```check
(choice
  (ask "Which point is" (math "4/6") "?")
  (right "B")
  (wrong "A"
    "A is 2 parts from 0, so it is 2/6. 4/6 is 4 parts from 0.")
  (wrong "C"
    "C is 5 parts from 0, so it is 5/6. Count 4 parts from 0: 4/6 is 1 part before C.")
  (hint "Count the parts from 0."))
```

---

```check
(choice
  (ask "Eva puts" (math "3/8") "on a line cut into 8 equal parts. Where should it go?")
  (right "At the end of the 3rd part from 0")
  (wrong "At the 3rd mark, counting 0 as the 1st"
    "Counting 0 as a mark lands on 2/8. Start at 0 and count 3 parts.")
  (wrong "3 parts back from 1"
    "3 parts back from 1 is 5/8. Fractions count from 0.")
  (hint "A fraction on the line is a distance from 0."))
```

So: to place $3/4$, mark off 3 parts of $1/4$ from 0; the end of the
last part is the point.
