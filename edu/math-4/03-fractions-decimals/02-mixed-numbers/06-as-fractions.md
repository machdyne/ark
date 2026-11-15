# Mixed numbers as fractions

```lesson
(objective "Add and subtract mixed numbers with like denominators by first writing each one as a fraction greater than 1.")
(standards "4.NF.B.3c")
(minutes 20)
```

You can add or subtract mixed numbers by writing them as fractions
first.

$$ 1 3/4 + 2 2/4 = 7/4 + 10/4 = 17/4 = 4 1/4 $$

Write each mixed number as fourths. Add the numerators. Then take out
the wholes.

```check
(fraction
  (ask "Write" (math "2 2/4") "as a fraction in fourths.")
  (answer 10 4) (true "2 2/4 = 10/4")
  (wrong-if (4 4) "You added 2 + 2. Each whole is 4 fourths: 2 × 4 + 2.")
  (hint "2 wholes = 8 fourths."))
```

---

## Subtracting this way

$3 1/5 - 1 3/5$: you need not regroup.

$$ 16/5 - 8/5 = 8/5 = 1 3/5 $$

```figure
(m4p3-line 20 300 110 4 5 'whole)
(nl-mark (/ 16 5) 'cool)
(nl-jump (/ 16 5) (/ 8 5) 'warm "take away 8/5")
(nl-mark (/ 8 5) 'warm)
(math (nl-x (/ 16 5)) 160 "16/5" 15)
(math (nl-x (/ 8 5)) 160 "8/5" 15)
(caption "From 16/5, jump back 8 fifths to 8/5.")
```

```check
(fraction
  (ask "Find" (math "11/6 - 4/6") ". Write it as a fraction.")
  (answer 7 6) (equivalent) (true "11/6 - 4/6 = 7/6")
  (wrong-if (15 6) "You added. Subtract the numerators: 11 - 4.")
  (hint "11 - 4 sixths."))
```

---

## Worked example

```example
(example
  (problem "Find 2 3/8 + 1 6/8.")
  (step "2 3/8 = 19/8 and 1 6/8 = 14/8.")
  (step "19/8 + 14/8 = 33/8.")
  (step "33 ÷ 8 = 4 R 1.")
  (answer "2 3/8 + 1 6/8 = 33/8 = 4 1/8."))
```

```example
(example
  (problem "Find 4 1/3 - 2 2/3.")
  (step "4 1/3 = 13/3 and 2 2/3 = 8/3.")
  (step (fraction (ask "13/3 - 8/3 = ? Write it as a fraction.")
    (answer 5 3) (equivalent) (true "13/3 - 8/3 = 5/3")
    (wrong-if (21 3) "You added. Subtract: 13 - 8.")))
  (answer "4 1/3 - 2 2/3 = 5/3 = 1 2/3."))
```

---

## Practice

```check
(number
  (ask "Find" (math "1 1/2 + 2 1/2") ".")
  (answer 4) (from "1 1/2 + 2 1/2")
  (wrong-if 3 "1/2 + 1/2 = 1 whole. 3/2 + 5/2 = 8/2 = 4.")
  (hint "3/2 + 5/2 = ?"))
```

```check
(number
  (ask "Find" (math "3 2/10 - 1 5/10") ". Type it like 2 1/4.")
  (answer 1.7) (from "3 2/10 - 1 5/10")
  (wrong-if 2.3 "You took 2/10 from 5/10. Write them as fractions: 32/10 - 15/10 = 17/10.")
  (hint "32/10 - 15/10"))
```

---

```check
(fraction
  (ask "Find" (math "1 5/12 + 1 9/12") ". Write it as a fraction greater than 1 or a mixed number.")
  (answer 38 12) (equivalent) (true "1 5/12 + 1 9/12 = 38/12")
  (wrong-if (14 12) "You added only the parts. 1 5/12 = 17/12 and 1 9/12 = 21/12.")
  (hint "17/12 + 21/12"))
```

```check
(choice
  (ask "Which first step is right for" (math "2 1/6 - 1 5/6") "?")
  (right "13/6 - 11/6" (true "2 1/6 = 13/6") (true "1 5/6 = 11/6"))
  (wrong "3/6 - 6/6"
    "2 1/6 is not 3/6. Each whole is 6 sixths: 2 × 6 + 1 = 13.")
  (wrong "21/6 - 15/6"
    "That puts the digits side by side. 2 1/6 = 13/6.")
  (hint "Multiply the wholes by 6, then add the numerator."))
```

So: you can write mixed numbers as fractions, add or subtract the
numerators, and then take out the wholes.
