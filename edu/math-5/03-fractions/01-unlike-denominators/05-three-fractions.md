# Three fractions

```lesson
(objective "Add and subtract three fractions with unlike denominators, such as 1/2 + 1/3 + 1/6 = 1, and write the answer in simplest form.")
(standards "5.NF.A.1")
(minutes 25)
```

You can add three fractions too. Find one common denominator for all
three, then add.

$$ 1/2 + 1/3 + 1/6 $$

6 is a multiple of 2, 3 and 6. So write all three in sixths:

$$ 3/6 + 2/6 + 1/6 = 6/6 = 1 $$

```figure
(frac-bar 0 2 1 'cool "1/2")
(frac-bar 1 3 1 'warm "1/3")
(frac-bar 2 6 1 'grey "1/6")
(frac-bar-at 80 188 216 30 6 6 'grey)
(frac-bar-at 80 188 216 30 6 5 'warm)
(frac-bar-at 80 188 216 30 6 3 'cool)
(math 40 209 "6/6" 20)
```

```check
(number
  (ask "Find" (math "1/4 + 1/2 + 1/4") ".")
  (answer 1) (from "1/4 + 1/2 + 1/4")
  (wrong-if 0.3 "Adding all the tops and bottoms gives 3/10. But 1/2 alone is more than 3/10. Write 1/2 as 2/4.")
  (hint "1/2 = 2/4.")
  (hint "1/4 + 2/4 + 1/4 = ? fourths."))
```

---

## A common denominator for three

Look for a multiple of all three denominators. Start with the biggest
denominator and count by it.

For $1/2$, $1/3$ and $1/4$: count by 4s: 4, 8, 12. 12 is a multiple of
2, 3 and 4.

```check
(number
  (ask "Find a common denominator for" (math "1/2") "," (math "1/5") "and" (math "1/10") "that is less than 20.")
  (answer 10) (from "2 * 5")
  (wrong-if 17 "17 = 2 + 5 + 10. It is not a multiple of any of them.")
  (wrong-if 100 "100 works, but it is not less than 20. 10 is already a multiple of 2 and of 5.")
  (hint "Count by 10s. Is 10 a multiple of 2 and of 5?"))
```

---

## Simplest form

A fraction is in simplest form when its numerator and denominator have
no common factor greater than 1.

$1/2 + 1/4 + 1/8 = 4/8 + 2/8 + 1/8 = 7/8$. 7 and 8 have no common
factor greater than 1, so $7/8$ is in simplest form.

$1/3 + 1/6 + 1/6 = 2/6 + 1/6 + 1/6 = 4/6$. Divide the top and bottom
by 2: $4/6 = 2/3$.

```check
(fraction
  (ask "Write" (math "6/12") "in simplest form.")
  (answer 1 2) (equivalent) (simplest) (true "6/12 = 1/2")
  (wrong-if (3 6) "3/6 is equal, but 3 and 6 still share the factor 3. Divide again: 1/2.")
  (hint "6 is a factor of 6 and of 12."))
```

---

## Adding and subtracting together

Work from left to right, all in one denominator.

$$ 3/4 + 1/2 - 1/8 = 6/8 + 4/8 - 1/8 = 9/8 $$

$9/8$ is in simplest form: 9 and 8 have no common factor greater than 1. As a mixed
number it is $1 1/8$.

```check
(fraction
  (ask "Find" (math "5/6 - 1/3 + 1/2") ". Write it in simplest form.")
  (answer 1 1) (equivalent) (simplest) (true "5/6 - 1/3 + 1/2 = 1")
  (wrong-if (0 1) "The 1/2 is added, not taken away. Only 1/3 is subtracted: 5/6 - 2/6 + 3/6 = 6/6.")
  (wrong-if (5 6) "1/3 = 2/6 and 1/2 = 3/6. So 5/6 - 2/6 + 3/6 = 6/6.")
  (hint "Use sixths: 5/6 - 2/6 + 3/6.")
  (hint "6/6 is 1 whole."))
```

---

## Worked example

```example
(example
  (problem "Find 1/2 + 1/3 + 1/4 in simplest form.")
  (step "Count by 4s: 4, 8, 12. 12 is a multiple of 2, 3 and 4.")
  (step "1/2 = 6/12, 1/3 = 4/12, 1/4 = 3/12.")
  (step "6/12 + 4/12 + 3/12 = 13/12. 13 and 12 have no common factor greater than 1.")
  (answer "1/2 + 1/3 + 1/4 = 13/12 = 1 1/12."))
```

```example
(example
  (problem "Find 9/10 - 1/2 - 1/5 in simplest form.")
  (step "Use tenths: 9/10 - 5/10 - 2/10 = 2/10.")
  (step (fraction (ask "Write 2/10 in simplest form.") (answer 1 5) (equivalent) (simplest) (true "2/10 = 1/5")
    (wrong-if (2 10) "2 and 10 share the factor 2. Divide both by 2.")))
  (answer "9/10 - 1/2 - 1/5 = 1/5."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "1/3 + 1/6 + 1/6") ". Write it in simplest form.")
  (answer 2 3) (equivalent) (simplest) (true "1/3 + 1/6 + 1/6 = 2/3")
  (wrong-if (3 15) "Do not add the denominators. Use sixths: 2/6 + 1/6 + 1/6.")
  (hint "1/3 = 2/6.")
  (hint "4/6 in simplest form?"))
```

```check
(fraction
  (ask "Find" (math "1/2 + 1/4 + 1/8") ". Write it in simplest form.")
  (answer 7 8) (equivalent) (simplest) (true "1/2 + 1/4 + 1/8 = 7/8")
  (wrong-if (3 14) "Adding the bottoms gives the wrong size of part. Use eighths: 4/8 + 2/8 + 1/8.")
  (wrong-if (3 8) "1/2 is 4 eighths and 1/4 is 2 eighths. 4 + 2 + 1 = 7.")
  (hint "Write each in eighths."))
```

---

```check
(fraction
  (ask "Find" (math "2/3 + 1/4 - 1/2") ". Write it in simplest form.")
  (answer 5 12) (equivalent) (simplest) (true "2/3 + 1/4 - 1/2 = 5/12")
  (wrong-if (2 5) "Add and subtract only numerators, in twelfths: 8/12 + 3/12 - 6/12.")
  (hint "Use 12.")
  (hint "8/12 + 3/12 - 6/12 = ?"))
```

```check
(choice
  (ask "Kim finds" (math "1/2 + 1/6 + 1/6 = 5/6") ". Is her answer in simplest form, and is it right?")
  (right "Right, and in simplest form" (true "1/2 + 1/6 + 1/6 = 5/6"))
  (wrong "Right, but not in simplest form"
    "5 and 6 have no common factor greater than 1. So 5/6 is in simplest form.")
  (wrong "Wrong: the answer is 3/14"
    "3/14 adds the bottoms. In sixths: 3/6 + 1/6 + 1/6 = 5/6. Kim is right.")
  (hint "1/2 = 3/6.")
  (hint "Do 5 and 6 share a factor?"))
```

With three fractions, find one common denominator for all of them,
then add and subtract, and simplify.
