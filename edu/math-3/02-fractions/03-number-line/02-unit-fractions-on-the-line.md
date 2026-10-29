# Unit fractions on the line

```lesson
(objective "Place a unit fraction 1/b on a number line.")
(standards "3.NF.A.2a")
(minutes 20)
```

You can put a unit fraction like $1/4$ on a number line.

Cut the interval from 0 to 1 into 4 equal parts. The first part goes
from 0 to the next mark. Its length is $1/4$ of the whole, so that
mark is the point $1/4$.

```figure
(fr-line 40 280 120 1 4 'whole)
(rect 40 152 60 10 'warm)
(frame 40 152 60 10 'ink 1)
(fr-point 1 4 'warm)
(caption "1 part from 0: the point 1/4.")
```

```check
(choice
  (ask "Where is" (math "1/4") "on this number line?")
  (right "At the end of the first part, 1 part from 0")
  (wrong "At the 4th mark from 0"
    "The 4 says the whole has 4 parts. The 1 says go 1 part from 0. So 1/4 is the first mark after 0.")
  (wrong "At 0"
    "0 is where you start. 1/4 is 1 part away from 0.")
  (hint "The numerator says how many parts to go from 0."))
```

---

## Any unit fraction

Choose a denominator. The unit fraction is always 1 part from 0. With
more parts, the parts get shorter, so the point is closer to 0.

```figure
(define c (choice 'b '("2" "3" "4" "6" "8") "Denominator"))
(define b (list-ref '(2 3 4 6 8) c))
(fr-line 40 280 120 1 b 'whole)
(rect 40 152 (/ 240 b) 10 'warm)
(frame 40 152 (/ 240 b) 10 'ink 1)
(fr-point 1 b 'warm)
(caption (string-append (fmt b 0) " equal parts: 1 part from 0 is " (fr-s 1 b) "."))
```

```check
(choice
  (ask "Which point is closer to 0:" (math "1/2") "or" (math "1/8") "?")
  (right "1/8")
  (wrong "1/2"
    "8 is bigger than 2, but it is the number of parts. Eighths are shorter parts, so 1/8 is closer to 0.")
  (hint "Choose 2, then 8, in the figure. Watch the point."))
```

---

## Counting marks is a trap

Do not count the mark at 0 as the first part. 0 is where you start.
The point $1/3$ is at the end of 1 whole part.

```figure
(fr-line 40 280 110 1 3 'whole)
(nl-mark (/ 1 3) 'ink "A")
(nl-mark (/ 2 3) 'ink "B")
(nl-mark 1 'ink "C")
(caption "The interval from 0 to 1 in 3 equal parts.")
```

```check
(choice
  (ask "Which point is" (math "1/3") "?")
  (right "A")
  (wrong "B"
    "B is 2 parts from 0, so it is 2/3. Start at 0 and go just 1 part.")
  (wrong "C"
    "C is 3 parts from 0: it is at 1. The point 1/3 is just 1 part from 0.")
  (hint "Start at 0. Jump 1 part."))
```

---

## Worked example

```example
(example
(problem "Put 1/6 on a number line.")
(step "Draw the interval from 0 to 1.")
(step "The denominator is 6: cut it into 6 equal parts.")
(step "Go 1 part from 0 and mark the point.")
(answer "The point 1 part from 0 is 1/6."))
```

```example
(example
(problem "Put 1/2 on a number line.")
(step "Draw the interval from 0 to 1.")
(step (choice (ask "How many equal parts do you cut it into?")
  (right "2")
  (wrong "1"
    "1 is the numerator: how many parts to go. The denominator, 2, says how many parts to cut.")))
(step "Go 1 part from 0 and mark the point.")
(answer "1/2 is halfway from 0 to 1."))
```

---

## Practice

```figure
(fr-line 40 280 110 1 8 'whole)
(nl-mark (/ 1 8) 'ink "P")
(caption "The interval from 0 to 1 in equal parts.")
```

```check
(fraction
  (ask "What unit fraction is at point P?")
  (answer 1 8) (true "1/8 * 8 = 1")
  (wrong-if (1 9) "9 is the number of tick marks. The interval has 8 equal parts: count the spaces.")
  (wrong-if (1 7) "There are 7 marks inside the interval, but 8 spaces. The denominator counts the spaces.")
  (hint "Count the spaces from 0 to 1.")
  (hint "P is 1 part from 0."))
```

---

```check
(choice
  (ask "Max puts" (math "1/3") "at the 3rd mark after 0. Is he right?")
  (right "No: 1/3 is at the 1st mark after 0")
  (wrong "Yes: the denominator is 3"
    "The denominator says to cut the interval into 3 parts. The numerator, 1, says to go just 1 part from 0.")
  (hint "What does the numerator 1 tell you?"))
```

So: to place $1/6$, cut 0 to 1 into 6 equal parts and go 1 part from
0. Every unit fraction works the same way.
