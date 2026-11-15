# Adding tenths and hundredths

```lesson
(objective "Add a fraction in tenths and one in hundredths by first writing the tenths as hundredths: 3/10 + 4/100 = 34/100.")
(standards "4.NF.C.5")
(minutes 20)
```

You can add tenths and hundredths by writing the tenths as hundredths
first.

In $3/10 + 4/100$ the parts are different sizes. Write $3/10$ as
$30/100$ first:

$$ 3/10 + 4/100 = 30/100 + 4/100 = 34/100 $$

```figure
(m4p3-hund 90 15 14 30 'warm)
(rect 132 15 14 56 'cool)
(grid 132 15 1 4 14)
(math 160 195 "30/100 + 4/100 = 34/100" 18)
(caption "3 columns and 4 more small squares")
```

---

## Not straight across

```check
(choice
  (ask "Why is" (math "3/10 + 4/100") "not" (math "7/110") "?")
  (right "Tenths and hundredths are parts of different sizes")
  (wrong "Because 3 + 4 is not 7"
    "3 + 4 is 7, but you can only add the numerators when the parts are the same size.")
  (wrong "It is 7/110"
    "Adding the denominators is never right. 7/110 is less than 3/10, but the sum must be more.")
  (hint "Is a tenth the same size as a hundredth?"))
```

---

## Like denominators first

1. Write the tenths as hundredths.
2. Add the numerators.
3. Keep the denominator 100.

```check
(fraction
  (ask "Find" (math "5/10 + 12/100") ". Write it in hundredths.")
  (answer 62 100) (true "5/10 + 12/100 = 62/100")
  (wrong-if (17 100) "5/10 is 50/100, not 5/100. Then 50 + 12 = 62.")
  (wrong-if (17 110) "Write 5/10 as 50/100 first. Then add the numerators.")
  (hint "5/10 = 50/100."))
```

---

## Worked example

```example
(example
  (problem "Find 6/10 + 25/100.")
  (step "6/10 = 60/100.")
  (step "60/100 + 25/100 = 85/100.")
  (answer "6/10 + 25/100 = 85/100."))
```

```example
(example
  (problem "Find 2/10 + 7/100.")
  (step "2/10 = 20/100.")
  (step (fraction (ask "20/100 + 7/100 = ? Write it in hundredths.")
    (answer 27 100) (true "20/100 + 7/100 = 27/100")
    (wrong-if (9 100) "2/10 is 20 hundredths, not 2.")))
  (answer "2/10 + 7/100 = 27/100."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "4/10 + 3/100") ". Write it in hundredths.")
  (answer 43 100) (true "4/10 + 3/100 = 43/100")
  (wrong-if (7 100) "4/10 is 40/100. 40 + 3 = 43.")
  (hint "4/10 = 40/100."))
```

```check
(fraction
  (ask "Find" (math "33/100 + 1/10") ". Write it in hundredths.")
  (answer 43 100) (true "33/100 + 1/10 = 43/100")
  (wrong-if (34 100) "1/10 is 10 hundredths, not 1. 33 + 10 = 43.")
  (hint "1/10 = 10/100."))
```

---

```check
(fraction
  (ask "Find" (math "7/10 + 9/100") ". Write it in hundredths.")
  (answer 79 100) (true "7/10 + 9/100 = 79/100")
  (wrong-if (16 100) "7/10 is 70/100. 70 + 9 = 79.")
  (wrong-if (16 110) "Write the tenths as hundredths first, then add the numerators.")
  (hint "7/10 = 70/100."))
```

```check
(choice
  (ask "Which sum equals" (math "58/100") "?")
  (right "5/10 + 8/100" (true "5/10 + 8/100 = 58/100"))
  (wrong "5/100 + 8/100" (false "5/100 + 8/100 = 58/100")
    "Both are hundredths: 5 + 8 = 13 hundredths.")
  (wrong "5/10 + 8/10" (false "5/10 + 8/10 = 58/100")
    "Both are tenths: 13/10, more than 1.")
  (hint "58 hundredths = 50 hundredths and 8 more."))
```

So: to add tenths and hundredths, write the tenths as hundredths, then
add the numerators.
