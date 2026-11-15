# A common denominator

```lesson
(objective "Compare two fractions by writing them as equivalent fractions with a common denominator, using a common multiple of the denominators.")
(standards "4.NF.A.2")
(minutes 25)
(keywords "common denominator")
```

You can compare 2 fractions by cutting both wholes into parts of the
same size.

$2/3$ and $3/4$ have parts of different sizes. 12 is a common multiple
of 3 and 4. So cut both bars into twelfths: $2/3 = 8/12$ and
$3/4 = 9/12$.

When 2 fractions have the same denominator, it is a
**common denominator**. Here it is 12. Now the parts match: 9 twelfths are more
than 8 twelfths.

```figure
(define on (toggle 'cut "Twelfths" #f))
(if on
    (begin (m4p2-bar 80 20 216 30 2 3 4 'warm) (m4p2-bar 80 76 216 30 3 4 3 'cool))
    (begin (frac-bar 0 3 2 'warm) (frac-bar 1 4 3 'cool)))
(math 40 41 (if on "8/12" "2/3") 22)
(math 40 97 (if on "9/12" "3/4") 22)
(if on (math 188 170 "8/12 < 9/12" 26))
```

```check
(choice
  (ask "Which sign makes this true?" (math "2/3") "?" (math "3/4"))
  (right "<" (true "2/3 < 3/4"))
  (wrong ">" (false "2/3 > 3/4")
    "Thirds are bigger than fourths, but 3/4 has more of its parts. In twelfths, 2/3 = 8/12 and 3/4 = 9/12.")
  (wrong "=" (false "2/3 = 3/4")
    "Both are 1 part short of a whole, but the parts differ. In twelfths: 8/12 and 9/12.")
  (hint "Toggle the figure to cut both into twelfths."))
```

---

## Finding a common denominator

Use a common multiple of the 2 denominators. Count by the greater
denominator until you reach a multiple of the other.

- $3/4$ and $5/6$: count by 6s: 6, 12. 12 is a multiple of 4.
- $1/2$ and $3/8$: 8 is already a multiple of 2. So use eighths.

```check
(choice
  (ask "Which denominator can you use to compare" (math "3/5") "and" (math "7/10") "?")
  (right "10" (true "3/5 = 6/10"))
  (wrong "15"
    "15 is 5 + 10. It is a multiple of 5, but not of 10. 10 is a multiple of both 5 and 10.")
  (wrong "5"
    "You cannot write 7/10 in fifths with whole numbers: 10 is not a factor of 5. Use 10.")
  (hint "Is 10 a multiple of 5?"))
```

---

## Then compare the numerators

With a common denominator, the parts are the same size. More parts is
greater. Compare $5/6$ and $3/4$: in twelfths, $5/6 = 10/12$ and
$3/4 = 9/12$. 10 is more than 9, so $5/6 > 3/4$.

```check
(fraction
  (ask "Write" (math "5/6") "in twelfths.")
  (answer 10 12) (true "5/6 = 10/12")
  (wrong-if (5 12) "You changed only the denominator. 6 × 2 = 12, so multiply the 5 by 2 as well.")
  (wrong-if (11 12) "11/12 adds 6 to the top and the bottom. Multiply both by 2 instead.")
  (hint "6 × 2 = 12."))
```

---

## When they are equal

Compare $3/4$ and $6/8$. In eighths, $3/4 = 6/8$. The numerators are
the same, so the fractions are equal.

```check
(choice
  (ask "Which sign makes this true?" (math "2/5") "?" (math "4/10"))
  (right "=" (true "2/5 = 4/10"))
  (wrong "<" (false "2/5 < 4/10")
    "4/10 has bigger numbers, but its parts are half the size. In tenths, 2/5 = 4/10.")
  (wrong ">" (false "2/5 > 4/10")
    "Fifths are bigger, but 4/10 has twice as many parts. In tenths, 2/5 = 4/10.")
  (hint "Write 2/5 in tenths."))
```

---

## Worked example

```example
(example
  (problem "Compare 2/5 and 3/10 of the same garden.")
  (step "10 is a multiple of 5, so use tenths.")
  (step "2/5 = (2 × 2)/(2 × 5) = 4/10.")
  (step "Compare 4/10 and 3/10: 4 tenths are more.")
  (answer "2/5 > 3/10."))
```

```example
(example
  (problem "Compare 3/4 and 5/8 of the same rope.")
  (step "8 is a multiple of 4, so use eighths.")
  (step "3/4 = (2 × 3)/(2 × 4) = 6/8.")
  (step (choice (ask "Compare 6/8 and 5/8.")
    (right "6/8 > 5/8, so 3/4 > 5/8")
    (wrong "6/8 < 5/8"
      "The parts are now the same size: eighths. 6 eighths are more than 5.")))
  (answer "3/4 > 5/8."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "5/12") "?" (math "1/3"))
  (right ">" (true "5/12 > 1/3"))
  (wrong "<" (false "5/12 < 1/3")
    "Thirds are bigger parts, but 1/3 is only 4 twelfths. 5 twelfths are more.")
  (wrong "=" (false "5/12 = 1/3")
    "1/3 = 4/12, not 5/12.")
  (hint "Write 1/3 in twelfths."))
```

```check
(number
  (ask "What common denominator can you use for" (math "1/2") "and" (math "2/3") "? Give the least one.")
  (answer 6) (from "2 * 3")
  (wrong-if 5 "5 is 2 + 3. It is not a multiple of 2 or of 3. Count by 3s: 3, 6.")
  (wrong-if 3 "3 is a multiple of 3, but not of 2. Count on: 6.")
  (hint "Count by 3s. Which is a multiple of 2?"))
```

---

```check
(choice
  (ask "Which sign makes this true?" (math "7/12") "?" (math "3/4"))
  (right "<" (true "7/12 < 3/4"))
  (wrong ">" (false "7/12 > 3/4")
    "7 is more than 3, but twelfths are small. In twelfths, 3/4 = 9/12, and 7/12 is less.")
  (wrong "=" (false "7/12 = 3/4")
    "In twelfths, 3/4 = 9/12, not 7/12.")
  (hint "Write 3/4 in twelfths."))
```

```check
(choice
  (ask "Ann says" (math "3/8 > 1/2") "because 3 is more than 1. Which shows she is wrong?")
  (right "1/2 = 4/8, and 3/8 < 4/8" (true "1/2 = 4/8") (true "3/8 < 4/8"))
  (wrong "8 is more than 2, so 3/8 is less"
    "A bigger denominator alone does not decide it. Use a common denominator: 1/2 = 4/8.")
  (wrong "She is right"
    "3 is more than 1, but eighths are much smaller than halves. 1/2 = 4/8, and 3/8 is less.")
  (hint "Write 1/2 in eighths."))
```

So: write both fractions with a common denominator. Then compare the
numerators.
