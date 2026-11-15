# Mixed number to fraction

```lesson
(objective "Write a mixed number as a fraction greater than 1, such as 2 1/4 = 9/4.")
(standards "4.NF.B.3b")
(minutes 20)
```

You can write a mixed number as a fraction greater than 1.

Take $2 1/4$. Each whole is $4/4$. So:

$$ 2 1/4 = 4/4 + 4/4 + 1/4 = 9/4 $$

Count the fourths: 4 + 4 + 1 = 9. A fraction whose numerator is
greater than its denominator, like $9/4$, is greater than 1.

```figure
(m4p3-wholes 60 30 220 32 9 4 'warm)
(math 30 47 "4/4" 16)
(math 30 87 "4/4" 16)
(math 30 127 "1/4" 16)
(math 160 200 "2 1/4 = 9/4" 22)
(caption "9 fourths in all")
```

```check
(fraction
  (ask "Write" (math "1 1/3") "as a fraction in thirds.")
  (answer 4 3) (true "1 1/3 = 4/3")
  (wrong-if (2 3) "1 1/3 is more than 1, so it is more than 3/3. 3 + 1 = 4 thirds.")
  (wrong-if (1 3) "Do not forget the whole. 1 whole is 3/3.")
  (hint "1 = 3/3. Add 1/3 more."))
```

---

## A short way

Each whole has as many parts as the denominator. So multiply the
wholes by the denominator. Then add the numerator.

For $3 2/5$: $3 * 5 = 15$ fifths, and $15 + 2 = 17$. So
$3 2/5 = 17/5$.

Move the slider to see more.

```figure
(define w (slider 'w 1 3 2 "Wholes" 1))
(m4p3-wholes 60 20 220 30 (+ (* w 5) 2) 5 'warm)
(math 160 205 (string-append (fmt w 0) " 2/5 = " (m4p3-s (+ (* w 5) 2) 5)) 22)
```

```check
(fraction
  (ask "Write" (math "2 3/5") "as a fraction in fifths.")
  (answer 13 5) (true "2 3/5 = 13/5")
  (wrong-if (5 5) "You added 2 + 3. But each whole is 5 fifths: 2 × 5 + 3.")
  (wrong-if (6 5) "You multiplied 2 × 3. Multiply the wholes by the denominator: 2 × 5 = 10. Then add 3.")
  (hint "2 wholes = 10 fifths."))
```

---

## Worked example

```example
(example
  (problem "Write 3 1/2 as a fraction.")
  (step "Each whole is 2 halves: 3 × 2 = 6 halves.")
  (step "Add the 1 half: 6 + 1 = 7.")
  (answer "3 1/2 = 7/2."))
```

```example
(example
  (problem "Write 1 5/8 as a fraction.")
  (step "1 whole is 8 eighths.")
  (step (fraction (ask "8/8 + 5/8 = ?")
    (answer 13 8) (true "8/8 + 5/8 = 13/8")
    (wrong-if (13 16) "Keep the denominator 8.")))
  (answer "1 5/8 = 13/8."))
```

---

## Practice

```check
(fraction
  (ask "Write" (math "4 1/2") "as a fraction in halves.")
  (answer 9 2) (true "4 1/2 = 9/2")
  (wrong-if (5 2) "4 + 1 = 5 counts each whole as 1 half. Each whole is 2 halves: 4 × 2 + 1.")
  (hint "4 wholes = 8 halves."))
```

```check
(fraction
  (ask "Write" (math "2 5/6") "as a fraction in sixths.")
  (answer 17 6) (true "2 5/6 = 17/6")
  (wrong-if (7 6) "You added 2 + 5. Each whole is 6 sixths: 2 × 6 + 5.")
  (hint "2 × 6 = 12. Then add 5."))
```

---

```check
(fraction
  (ask "Write" (math "1 9/10") "as a fraction in tenths.")
  (answer 19 10) (true "1 9/10 = 19/10")
  (wrong-if (10 10) "You added 1 + 9. But 1 whole is 10 tenths: 10 + 9.")
  (hint "1 = 10/10."))
```

```check
(choice
  (ask "Which is equal to" (math "3 3/4") "?")
  (right "15/4" (true "3 3/4 = 15/4"))
  (wrong "33/4" (false "3 3/4 = 33/4")
    "33/4 puts the digits side by side. Each whole is 4/4: 3 × 4 + 3 = 15.")
  (wrong "9/4" (false "3 3/4 = 9/4")
    "9 is 3 × 3. Multiply the wholes by the denominator 4.")
  (wrong "6/4" (false "3 3/4 = 6/4")
    "6/4 is only 1 2/4. Each whole is 4 fourths.")
  (hint "3 wholes = 12 fourths."))
```

So: to write a mixed number as a fraction, turn the wholes into parts
and add the parts of the fraction.
