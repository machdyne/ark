# Comparing with a half

```lesson
(objective "Tell whether a fraction is less than, equal to or greater than 1/2 by comparing its numerator with half its denominator.")
(standards "4.NF.A.2")
(minutes 20)
(keywords "benchmark fraction")
```

You can tell quickly whether a fraction is more or less than a half.

A **benchmark fraction** is a fraction you know well, such as $1/2$.
You compare other fractions with it. The whole numbers 0 and 1 are
used the same way.

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.NF.A.2: comparing with a benchmark fraction such as 1/2")
```

Move the point along the line in eighths. Is it before or after $1/2$?

```figure
(define k (slider 'k 0 8 3 "Eighths" 1))
(m4p2-line 30 290 110 1 8 'frac)
(line 160 82 160 124 'ink 2.5)
(math 160 66 "1/2" 18)
(nl-mark (/ k 8) 'warm)
(label 160 200 (cond ((< k 4) "less than 1/2") ((= k 4) "equal to 1/2") (else "greater than 1/2")) 'body 'bold)
```

```check
(choice
  (ask "Is" (math "3/8") "less than or greater than" (math "1/2") "?")
  (right "Less than 1/2" (true "3/8 < 1/2"))
  (wrong "Greater than 1/2" (false "3/8 > 1/2")
    "8 is a big number, but eighths are small. 3/8 is before the middle of the line, so it is less.")
  (hint "Set the slider to 3. Is the point before or after 1/2?"))
```

---

## Half the denominator

$1/2 = 4/8$, because 4 is half of 8. So compare the numerator with half
the denominator:

- numerator less than half: less than $1/2$;
- numerator equal to half: equal to $1/2$;
- numerator more than half: greater than $1/2$.

$5/8$: half of 8 is 4, and 5 is more than 4. So $5/8 > 1/2$.

```check
(choice (several)
  (ask "Which fractions are greater than" (math "1/2") "? Choose all.")
  (right "4/6" (true "4/6 > 1/2"))
  (right "7/12" (true "7/12 > 1/2"))
  (wrong "2/5" (false "2/5 > 1/2")
    "Half of 5 is 2 and a half. 2 is less than that, so 2/5 is less than 1/2.")
  (wrong "4/10" (false "4/10 > 1/2")
    "Half of 10 is 5. 4 is less than 5, so 4/10 is less than 1/2.")
  (hint "For each one, find half the denominator. Is the numerator more?"))
```

---

## Odd denominators

Half of 5 is 2 and a half. So $2/5$ is less than $1/2$, and $3/5$ is
more. No number of fifths is exactly $1/2$. The same is true of thirds:
$1/3 < 1/2 < 2/3$.

```check
(choice
  (ask "Is" (math "3/5") "less than, equal to or greater than" (math "1/2") "?")
  (right "Greater than 1/2" (true "3/5 > 1/2"))
  (wrong "Equal to 1/2" (false "3/5 = 1/2")
    "Half of 5 is 2 and a half, not 3. 3 is more than that, so 3/5 is a little more than 1/2.")
  (wrong "Less than 1/2" (false "3/5 < 1/2")
    "3 fifths is more than half of 5 fifths. 3/5 > 1/2.")
  (hint "Half of 5 is 2 and a half. Is 3 more or less?"))
```

---

## Exactly a half

When the numerator is exactly half the denominator, the fraction equals
$1/2$: $3/6$, $5/10$ and $6/12$ all equal $1/2$.

```check
(number
  (ask "?/10 = 1/2")
  (answer 5) (from "10 / 2") (true "5/10 = 1/2")
  (wrong-if 2 "2/10 is much less than a half. Half of 10 is 5.")
  (wrong-if 1 "1/10 is not 1/2: the parts are tenths. Half of 10 tenths is 5 tenths.")
  (hint "What is half of 10?"))
```

---

## Worked example

```example
(example
  (problem "Is 5/12 less than, equal to or greater than 1/2?")
  (step "Half of 12 is 6. So 1/2 = 6/12.")
  (step "5 is less than 6.")
  (step "5/12 has fewer twelfths than 6/12.")
  (answer "5/12 < 1/2."))
```

```example
(example
  (problem "Is 7/10 less than, equal to or greater than 1/2?")
  (step "Half of 10 is 5. So 1/2 = 5/10.")
  (step (choice (ask "Is 7 more or less than 5?")
    (right "More, so 7/10 > 1/2")
    (wrong "Less, so 7/10 < 1/2"
      "7 is more than 5. 7 tenths are more than 5 tenths, which is a half.")))
  (answer "7/10 > 1/2."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "4/8") "?" (math "1/2"))
  (right "=" (true "4/8 = 1/2"))
  (wrong ">" (false "4/8 > 1/2")
    "4/8 has bigger numbers, but its parts are small. 4 is exactly half of 8.")
  (wrong "<" (false "4/8 < 1/2")
    "4 is exactly half of 8, so 4/8 is exactly 1/2.")
  (hint "What is half of 8?"))
```

```check
(choice
  (ask "Which sign makes this true?" (math "2/3") "?" (math "1/2"))
  (right ">" (true "2/3 > 1/2"))
  (wrong "<" (false "2/3 < 1/2")
    "Half of 3 is 1 and a half. 2 is more than that, so 2/3 is more than 1/2.")
  (wrong "=" (false "2/3 = 1/2")
    "No number of thirds is exactly 1/2. 2/3 is more.")
  (hint "Half of 3 is 1 and a half."))
```

---

```check
(choice (several)
  (ask "Which fractions are less than" (math "1/2") "? Choose all.")
  (right "1/3" (true "1/3 < 1/2"))
  (right "5/12" (true "5/12 < 1/2"))
  (wrong "5/8" (false "5/8 < 1/2")
    "Half of 8 is 4. 5 is more than 4, so 5/8 is more than 1/2.")
  (wrong "3/6" (false "3/6 < 1/2")
    "Half of 6 is 3. So 3/6 is exactly 1/2, not less.")
  (hint "Compare each numerator with half its denominator."))
```

```check
(number
  (ask "?/12 = 1/2")
  (answer 6) (from "12 / 2") (true "6/12 = 1/2")
  (wrong-if 2 "That is 2/12, much less than a half. Half of 12 is 6.")
  (wrong-if 1 "1/12 is a small part. Half of 12 twelfths is 6 twelfths.")
  (hint "What is half of 12?"))
```

So: compare the numerator with half the denominator. That tells you
how the fraction compares with $1/2$.
