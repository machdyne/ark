# One whole

```lesson
(objective "Write 1 as a fraction whose numerator and denominator are the same, such as 4/4.")
(standards "3.NF.A.3c")
(minutes 15)
```

You can write 1 whole as a fraction: $4/4 = 1$.

When every part of a whole is shaded, the whole is shaded. A bar in 4
equal parts with all 4 shaded shows $4/4$. That is 1 whole.

```figure
(define c (choice 'b '("2" "3" "4" "6" "8") "Parts"))
(define b (list-ref '(2 3 4 6 8) c))
(frac-bar-at 40 40 240 44 b b 'warm)
(fr-line 40 280 140 1 b 'whole)
(fr-point b b 'warm)
(math 160 200 (string-append (fr-s b b) " = 1") 24)
```

```check
(fraction
  (ask "A bar is cut into 6 equal parts. All 6 are shaded. Write the fraction that is shaded.")
  (answer 6 6) (true "6/6 = 1")
  (wrong-if (1 6) "1/6 is just 1 part. All 6 parts are shaded.")
  (wrong-if (6 1) "The denominator counts the equal parts in the whole: 6. The 6 shaded parts go on top.")
  (hint "Count the shaded parts and all the parts."))
```

---

## Same top and bottom

When the numerator and the denominator are the same, the fraction is
1 whole. $2/2$, $3/3$, $6/6$ and $8/8$ all equal 1.

On a number line, they are all at the point 1.

```check
(choice
  (ask "Which fraction is equal to 1?")
  (right "8/8" (true "8/8 = 1"))
  (wrong "1/8" (false "1/8 = 1")
    "1/8 is just 1 of 8 parts. You need all 8 parts to make 1 whole.")
  (wrong "8/1" (false "8/1 = 1")
    "8/1 means 8 wholes, each not cut. 1 whole is 8 parts out of 8.")
  (hint "Which fraction has all of its parts?"))
```

---

## Worked example

```example
(example
(problem "Write 1 whole as a fraction in thirds.")
(step "Thirds: the whole is cut into 3 equal parts. The denominator is 3.")
(step "The whole is all 3 parts. The numerator is 3.")
(answer "1 = 3/3."))
```

```example
(example
(problem "Write 1 whole as a fraction in eighths.")
(step "Eighths: the denominator is 8.")
(step (choice (ask "How many eighths make the whole?")
  (right "8")
  (wrong "1"
    "1 eighth is just 1 part. The whole is all 8 parts.")))
(answer "1 = 8/8."))
```

---

## Practice

```check
(fraction
  (ask "Write 1 as a fraction with denominator 4.")
  (answer 4 4) (true "4/4 = 1")
  (wrong-if (1 4) "1/4 is 1 part. 1 whole is all 4 fourths.")
  (hint "How many fourths fill the whole?"))
```

```check
(choice
  (ask "Is" (math "6/6") "less than 1, equal to 1, or greater than 1?")
  (right "Equal to 1" (true "6/6 = 1"))
  (wrong "Greater than 1" (false "6/6 > 1")
    "6/6 has big numbers, but it is 6 of 6 parts: exactly 1 whole.")
  (wrong "Less than 1" (false "6/6 < 1")
    "6/6 is all 6 sixths. Nothing is missing, so it is the whole.")
  (hint "6 parts out of 6."))
```

---

```check
(fraction
  (ask "Jo eats a whole pizza cut into 8 equal slices. Write the fraction of the pizza she eats, in eighths.")
  (answer 8 8) (true "8/8 = 1")
  (wrong-if (1 8) "1/8 is 1 slice. Jo eats all 8 slices.")
  (hint "A whole pizza is all of its slices."))
```

So: a fraction with the same numerator and denominator, like $4/4$, is
1 whole.
