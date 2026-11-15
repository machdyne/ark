# On the number line

```lesson
(objective "Show equivalent fractions as the same point on number lines cut into different numbers of parts, including fractions greater than 1.")
(standards "4.NF.A.1")
(minutes 20)
```

You can show equivalent fractions as the same point on 2 number lines.

Two lines run from 0 to 1, with the same length. The top one is in
thirds. The bottom one is in sixths. $2/3$ and $4/6$ are at the same
point.

```figure
(m4p2-line 40 280 60 1 3 'frac)
(nl-mark (/ 2 3) 'warm)
(m4p2-line 40 280 170 1 6 'frac)
(nl-mark (/ 4 6) 'warm)
(line 200 66 200 164 'ink 1)
```

```check
(fraction
  (ask "On the sixths line, which fraction is at the same point as" (math "1/3") "?")
  (answer 2 6) (true "1/3 = 2/6")
  (wrong-if (1 6) "1/6 is half of 1/3. Each third is 2 sixths, so 1/3 lines up with 2/6.")
  (wrong-if (3 6) "3/6 is at the same point as 1/2, not 1/3.")
  (hint "Each third is cut into 2 sixths."))
```

---

## Choose 2 lines

Each interval of the bottom line is a smaller part. The points that
line up are equivalent fractions.

```figure
(define c (choice 'lines '("5, 10" "4, 12" "2, 10" "3, 12") "Parts"))
(define t (list-ref '(5 4 2 3) c))
(define u (list-ref '(10 12 10 12) c))
(m4p2-line 30 290 60 1 t 'frac)
(m4p2-line 30 290 170 1 u 'whole)
(for-range 1 t (lambda (i) (line (+ 30 (* (/ 260 t) i)) 94 (+ 30 (* (/ 260 t) i)) 162 'cool 1)))
(caption "Points joined by a line are equivalent")
```

```check
(fraction
  (ask "On a line in twelfths, which fraction is at the same point as" (math "3/4") "?")
  (answer 9 12) (true "3/4 = 9/12")
  (wrong-if (3 12) "3/12 is at the same point as 1/4. Each fourth is 3 twelfths, so 3 fourths are 9.")
  (wrong-if (11 12) "11/12 adds 8 to the top as 12 adds 8 to 4. Multiply instead: 3 × 3 = 9.")
  (hint "Choose 4 and 12 in the figure. Follow the line down from 3/4."))
```

---

## Past 1

The same works past 1. These lines go from 0 to 2, in halves and in
fourths. $3/2$ and $6/4$ are at the same point, a whole and a half
from 0.

```figure
(m4p2-line 30 290 60 2 2 'frac)
(nl-mark (/ 3 2) 'warm)
(m4p2-line 30 290 170 2 4 'frac)
(nl-mark (/ 6 4) 'warm)
(line 225 66 225 164 'ink 1)
```

```check
(fraction
  (ask "Which fraction in eighths is at the same point as" (math "5/4") "?")
  (answer 10 8) (true "5/4 = 10/8")
  (wrong-if (5 8) "5/8 is less than 1. 5/4 is more than 1. Multiply the top by 2 as well: 10/8.")
  (wrong-if (9 8) "9/8 adds 4 to the top and the bottom. Multiply both by 2 instead.")
  (hint "Each fourth is 2 eighths. 5 × 2 = ?"))
```

---

## Whole numbers

A whole number is a point on the line too. 1 is at the same point as
$2/2$, $5/5$ and $12/12$. 2 is at the same point as $4/2$ and $10/5$.

```check
(number
  (ask "2 = ?/5")
  (answer 10) (from "2 * 5") (true "2 = 10/5")
  (wrong-if 2 "2/5 is less than 1. Each whole is 5 fifths, so 2 wholes are 10 fifths.")
  (wrong-if 7 "7 is 2 + 5. Each whole is 5 fifths: 2 × 5.")
  (hint "How many fifths make 1? Then 2?"))
```

---

## Worked example

```example
(example
  (problem "Show on number lines that 6/5 = 12/10.")
  (step "Draw a line from 0 to 2 in fifths. Mark 6/5, 1 fifth past 1.")
  (step "Under it, draw a line of the same length in tenths. Mark 12/10.")
  (step "Each fifth is 2 tenths, so the points line up.")
  (answer "6/5 and 12/10 are at the same point, so 6/5 = 12/10."))
```

```example
(example
  (problem "Which fraction in sixths is at the same point as 4/3?")
  (step "Each third is 2 sixths.")
  (step (fraction (ask "So 4 thirds are how many sixths?")
    (answer 8 6)
    (wrong-if (4 6) "4/6 is less than 1, but 4/3 is more than 1. 4 thirds are 4 × 2 = 8 sixths.")))
  (answer "4/3 = 8/6."))
```

---

## Practice

```figure
(m4p2-line 30 290 70 1 5 'frac)
(nl-mark (/ 2 5) 'warm "A")
(m4p2-line 30 290 170 1 10 'whole)
(nl-mark (/ 2 10) 'cool "B")
(nl-mark (/ 4 10) 'cool "C")
(nl-mark (/ 5 10) 'cool "D")
(caption "Fifths above, tenths below")
```

```check
(choice
  (ask "Which point on the tenths line is at the same place as point A?")
  (right "C" (true "2/5 = 4/10"))
  (wrong "B"
    "B is at 2/10. A is at 2/5, and each fifth is 2 tenths. So A lines up with 4/10, point C.")
  (wrong "D"
    "D is at 5/10, which is a half. A is at 2/5, a little less than a half.")
  (hint "A is at 2/5. How many tenths is that?"))
```

---

```check
(fraction
  (ask "Which fraction in fourths is at the same point as" (math "3/2") "?")
  (answer 6 4) (true "3/2 = 6/4")
  (wrong-if (3 4) "3/4 is less than 1, but 3/2 is more than 1. Multiply the top by 2 as well.")
  (hint "Each half is 2 fourths."))
```

```check
(choice
  (ask "Two number lines are drawn with different lengths for 0 to 1. Can they show that" (math "1/5 = 2/10") "?")
  (right "No: 0 to 1 must be the same length on both")
  (wrong "Yes: the marks still line up"
    "If 0 to 1 is longer on one line, all its points are farther out. The points will not line up.")
  (hint "Equivalent fractions are the same amount of the same whole."))
```

So: equivalent fractions are at the same point on number lines of the
same length. This is true past 1 too.
