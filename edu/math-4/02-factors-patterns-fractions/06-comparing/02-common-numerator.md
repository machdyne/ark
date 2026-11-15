# A common numerator

```lesson
(objective "Compare two fractions by writing them as equivalent fractions with a common numerator.")
(standards "4.NF.A.2")
(minutes 20)
(keywords "common numerator")
```

You can compare 2 fractions by giving them the same number of parts.

Compare $2/5$ and $4/12$. Multiply the top and the bottom of $2/5$ by
2: $2/5 = 4/10$. Now both have 4 parts. When 2 fractions have the same
numerator, it is a **common numerator**.

With a common numerator, the bigger parts win. Tenths are bigger than
twelfths, so $4/10 > 4/12$. That means $2/5 > 4/12$.

```figure
(frac-bar 0 10 4 'warm "4/10")
(frac-bar 1 12 4 'cool "4/12")
(math 188 170 "4/10 > 4/12" 26)
(caption "Bars of the same length, 4 parts each")
```

```check
(choice
  (ask "Both fractions have 4 parts. Why is" (math "4/10") "greater than" (math "4/12") "?")
  (right "A tenth is bigger than a twelfth" (true "1/10 > 1/12"))
  (wrong "12 is more than 10, so twelfths are bigger"
    "More parts in the whole means each part is smaller. A tenth is bigger than a twelfth.")
  (wrong "It is not: they are equal"
    "Both have 4 parts, but the parts differ in size. 4 tenths reach farther on the bar.")
  (hint "Which is bigger: 1 tenth or 1 twelfth of the same bar?"))
```

---

## When to use it

A common numerator is quick when one numerator is a multiple of the
other. For $3/4$ and $6/10$, 6 is a multiple of 3. So write $3/4$ with
6 on top: $3/4 = 6/8$.

```check
(fraction
  (ask "Write" (math "3/4") "with the numerator 6.")
  (answer 6 8) (true "3/4 = 6/8")
  (wrong-if (6 4) "You changed only the numerator. 3 × 2 = 6, so multiply the 4 by 2 as well.")
  (wrong-if (6 7) "6/7 adds 3 to the top and the bottom. Multiply both by 2 instead.")
  (hint "3 × 2 = 6. Do the same to the 4."))
```

---

## Then compare the denominators

With a common numerator, the fraction with the smaller denominator has
bigger parts, so it is greater. $6/8$ and $6/10$: eighths are bigger, so
$6/8 > 6/10$. So $3/4 > 6/10$.

```check
(choice
  (ask "Which sign makes this true?" (math "3/4") "?" (math "6/10"))
  (right ">" (true "3/4 > 6/10"))
  (wrong "<" (false "3/4 < 6/10")
    "6/10 has bigger numbers, but 3/4 = 6/8. Eighths are bigger than tenths, so 6/8 is more.")
  (wrong "=" (false "3/4 = 6/10")
    "3/4 = 6/8. 6/8 and 6/10 have the same number of parts, but of different sizes.")
  (hint "Write 3/4 with 6 on top."))
```

---

## Check with a model

Choose a pair. Each pair has a common numerator. The bars show which is
greater.

```figure
(define c (choice 'pair '("6/8 6/10" "2/3 2/5" "4/6 4/12") "Pair"))
(define p (list-ref '((6 8 6 10) (2 3 2 5) (4 6 4 12)) c))
(frac-bar 0 (cadr p) (car p) 'warm (m4p2-s (car p) (cadr p)))
(frac-bar 1 (cadddr p) (caddr p) 'cool (m4p2-s (caddr p) (cadddr p)))
(caption "Bigger parts reach farther")
```

```check
(choice
  (ask "Which is greater:" (math "2/3") "or" (math "2/5") "?")
  (right "2/3" (true "2/3 > 2/5"))
  (wrong "2/5"
    "5 is more than 3, but fifths are smaller than thirds. 2 thirds reach farther.")
  (wrong "They are equal"
    "Both have 2 parts, but the parts are different sizes.")
  (hint "Choose the pair 2/3 2/5."))
```

---

## Worked example

```example
(example
  (problem "Compare 1/2 and 3/8 of the same rope with a common numerator.")
  (step "3 is a multiple of 1. Multiply 1/2 by 3 on top and bottom: 1/2 = 3/6.")
  (step "Compare 3/6 and 3/8: both are 3 parts.")
  (step "Sixths are bigger than eighths.")
  (answer "3/6 > 3/8, so 1/2 > 3/8."))
```

```example
(example
  (problem "Compare 2/6 and 4/10 of the same garden with a common numerator.")
  (step "4 is a multiple of 2. 2/6 = (2 × 2)/(2 × 6) = 4/12.")
  (step (choice (ask "Compare 4/12 and 4/10.")
    (right "4/12 < 4/10: twelfths are smaller")
    (wrong "4/12 > 4/10: 12 is more"
      "More parts in the whole means smaller parts. Twelfths are smaller than tenths.")))
  (answer "2/6 < 4/10."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "2/3") "?" (math "4/8"))
  (right ">" (true "2/3 > 4/8"))
  (wrong "<" (false "2/3 < 4/8")
    "2/3 = 4/6. 4 sixths and 4 eighths: sixths are bigger, so 2/3 is greater.")
  (wrong "=" (false "2/3 = 4/8")
    "2/3 = 4/6, not 4/8. Same number of parts, different sizes.")
  (hint "Write 2/3 with 4 on top."))
```

```check
(fraction
  (ask "Write" (math "1/4") "with the numerator 3.")
  (answer 3 12) (true "1/4 = 3/12")
  (wrong-if (3 4) "You changed only the numerator. Multiply the 4 by 3 as well.")
  (wrong-if (3 6) "3/6 adds 2 to the top and the bottom. Multiply both by 3 instead.")
  (hint "1 × 3 = 3. Do the same to the 4."))
```

---

```check
(choice
  (ask "Which is greater:" (math "3/5") "or" (math "6/12") "?")
  (right "3/5" (true "3/5 > 6/12"))
  (wrong "6/12"
    "6/12 has bigger numbers, but 3/5 = 6/10. Tenths are bigger than twelfths.")
  (wrong "They are equal"
    "3/5 = 6/10, and 6/10 is more than 6/12.")
  (hint "Write 3/5 with 6 on top."))
```

```check
(choice
  (ask "With a common numerator, which fraction is greater?")
  (right "The one with the smaller denominator")
  (wrong "The one with the bigger denominator"
    "A bigger denominator means more parts in the whole, so each part is smaller.")
  (wrong "They are always equal"
    "They have the same number of parts, but the parts can differ in size.")
  (hint "Think of 1/3 and 1/8 of the same bar."))
```

So: write both fractions with a common numerator. Then the smaller
denominator gives the greater fraction.
