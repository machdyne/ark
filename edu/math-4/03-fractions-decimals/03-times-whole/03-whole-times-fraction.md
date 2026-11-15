# A whole number times a fraction

```lesson
(objective "Multiply a whole number by a fraction by counting unit fractions: 3 x 2/5 = 6 x 1/5 = 6/5.")
(standards "4.NF.B.4b")
(minutes 20)
```

You can multiply a whole number by a fraction by counting unit
fractions.

$2/5$ is $2 * (1/5)$. So 3 groups of $2/5$ are 3 groups of 2 fifths:
6 fifths in all.

$$ 3 * (2/5) = 6 * (1/5) = 6/5 $$

```figure
(m4p3-groups 20 30 86 28 3 2 5 14 'warm)
(m4p3-wholes 50 100 220 28 6 5 'warm)
(math 160 205 "3 * (2/5) = 6/5" 22)
(caption "6 fifths: 1 whole and 1 fifth")
```

```check
(number
  (ask "2 × 3/4 = ? × 1/4")
  (answer 6) (from "2 * 3") (true "2 * 3/4 = 6 * 1/4")
  (wrong-if 5 "You added 2 + 3. There are 2 groups of 3 fourths: 3 + 3.")
  (wrong-if 8 "8 is 2 × 4. Count the fourths, not the parts of the whole: 2 × 3.")
  (hint "Each 3/4 is 3 fourths. 2 groups of that."))
```

---

## Count the unit fractions

To find $4 * (3/10)$:

1. Each $3/10$ is 3 tenths.
2. 4 groups of 3 tenths are 12 tenths.
3. So $4 * (3/10) = 12/10$.

```check
(fraction
  (ask "Find" (math "5 * (2/6)") ". Write it as a fraction.")
  (answer 10 6) (equivalent) (true "5 * 2/6 = 10/6")
  (wrong-if (10 30) "You multiplied the denominator too. Each part is still a sixth: 10 sixths.")
  (wrong-if (7 6) "You added 5 + 2. 5 groups of 2 sixths are 10 sixths.")
  (hint "5 groups of 2 sixths."))
```

---

## Worked example

```example
(example
  (problem "Find 3 × 4/8.")
  (step "4/8 = 4 × 1/8.")
  (step "3 groups of 4 eighths = 12 eighths.")
  (answer "3 × 4/8 = 12 × 1/8 = 12/8."))
```

```example
(example
  (problem "Find 2 × 5/12.")
  (step "5/12 = 5 × 1/12.")
  (step (number (ask "2 groups of 5 twelfths is how many twelfths?")
    (answer 10) (from "2 * 5")
    (wrong-if 7 "That is 2 + 5. Make 2 groups of 5.")))
  (answer "2 × 5/12 = 10/12."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "4 * (2/3)") ".")
  (answer 8 3) (equivalent) (true "4 * 2/3 = 8/3")
  (wrong-if (8 12) "The parts are thirds. Do not multiply the 3.")
  (hint "4 groups of 2 thirds."))
```

```check
(fraction
  (ask "Find" (math "6 * (3/8)") ".")
  (answer 18 8) (equivalent) (true "6 * 3/8 = 18/8")
  (wrong-if (18 48) "Each part is still an eighth: 18 eighths.")
  (wrong-if (9 8) "You added 6 + 3. Make 6 groups of 3 eighths.")
  (hint "6 × 3 eighths."))
```

---

```check
(choice
  (ask "Which is equal to" (math "3 * (3/4)") "?")
  (right "9 × 1/4" (true "3 * 3/4 = 9 * 1/4"))
  (wrong "9 × 1/12" (false "3 * 3/4 = 9 * 1/12")
    "The parts stay fourths. 3 groups of 3 fourths are 9 fourths.")
  (wrong "6 × 1/4" (false "3 * 3/4 = 6 * 1/4")
    "6 is 3 + 3. There are 3 groups of 3 fourths: 9 fourths.")
  (hint "How many fourths in 3 groups of 3 fourths?"))
```

```check
(fraction
  (ask "Find" (math "7 * (1/10)") ".")
  (answer 7 10) (equivalent) (true "7 * 1/10 = 7/10")
  (wrong-if (7 70) "Each part is still a tenth.")
  (hint "7 tenths."))
```

So: to multiply a whole number by a fraction, count the unit fractions
in all the groups.
