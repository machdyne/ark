# Mixed numbers as fractions

```lesson
(objective "Add and subtract mixed numbers with unlike denominators by first writing each one as a fraction greater than 1.")
(standards "5.NF.A.1")
(minutes 25)
```

There is a second way to add and subtract mixed numbers: write each
one as a fraction greater than 1 first. Then there is nothing to
regroup.

Remember: $2 1/3$ is 2 wholes and 1 third. Each whole is $3/3$, so

$$ 2 1/3 = 3/3 + 3/3 + 1/3 = 7/3 $$

```figure
(frac-bar-at 30 60 80 30 3 3 'cool)
(frac-bar-at 120 60 80 30 3 3 'cool)
(frac-bar-at 210 60 80 30 3 1 'cool)
(math 160 140 "2 1/3 = 7/3" 24)
(caption "7 thirds are shaded.")
```

```check
(fraction
  (ask "Write" (math "3 2/5") "as a fraction greater than 1.")
  (answer 17 5) (true "3 2/5 = 17/5")
  (wrong-if (6 5) "That multiplies 3 by the numerator, 2. Each whole is 5 fifths, so 3 wholes are 3 x 5 = 15 fifths. 15 + 2 = 17.")
  (wrong-if (32 5) "Do not put the 3 and the 2 side by side. 3 x 5 = 15, then 15 + 2 = 17.")
  (hint "Each whole is 5/5.")
  (hint "3 x 5 + 2 = ?"))
```

---

## Adding this way

$$ 2 1/3 + 1 3/4 = 7/3 + 7/4 $$

A common denominator is 12:

$$ 7/3 + 7/4 = 28/12 + 21/12 = 49/12 $$

$49 ÷ 12 = 4 R 1$, so $49/12 = 4 1/12$.

```check
(fraction
  (ask "Find" (math "1 1/2 + 1 2/3") "by writing each as a fraction first.")
  (answer 19 6) (equivalent) (true "3/2 + 5/3 = 19/6")
  (wrong-if (8 5) "Do not add the tops and the bottoms. Use sixths: 9/6 + 10/6.")
  (hint "1 1/2 = 3/2 and 1 2/3 = 5/3.")
  (hint "3/2 = 9/6 and 5/3 = 10/6."))
```

---

## Subtracting this way

$$ 3 1/4 - 1 2/3 = 13/4 - 5/3 $$

$$ 13/4 - 5/3 = 39/12 - 20/12 = 19/12 = 1 7/12 $$

You do not need to regroup: $39/12$ is already more than $20/12$.

```check
(fraction
  (ask "Find" (math "2 1/2 - 1 3/4") "by writing each as a fraction first.")
  (answer 3 4) (equivalent) (true "5/2 - 7/4 = 3/4")
  (wrong-if (5 4) "That takes 2/4 from 3/4, the wrong way round. As fractions: 10/4 - 7/4 = 3/4.")
  (hint "2 1/2 = 5/2 = 10/4.")
  (hint "1 3/4 = 7/4."))
```

---

## Worked example

```example
(example
  (problem "Find 1 5/6 + 2 1/4.")
  (step "As fractions: 11/6 + 9/4.")
  (step "In twelfths: 22/12 + 27/12 = 49/12.")
  (step "49 ÷ 12 = 4 R 1, so 49/12 = 4 1/12.")
  (answer "1 5/6 + 2 1/4 = 4 1/12."))
```

```example
(example
  (problem "Find 4 1/3 - 2 1/2.")
  (step "As fractions: 13/3 - 5/2.")
  (step (fraction (ask "In sixths: 26/6 - 15/6 = ?") (answer 11 6) (equivalent) (true "26/6 - 15/6 = 11/6")
    (wrong-if (11 12) "The parts are sixths. Keep the denominator 6 and subtract only the numerators.")))
  (answer "4 1/3 - 2 1/2 = 11/6 = 1 5/6."))
```

---

## Practice

```check
(fraction
  (ask "Write" (math "4 3/8") "as a fraction greater than 1.")
  (answer 35 8) (true "4 3/8 = 35/8")
  (wrong-if (7 8) "4 wholes are 32 eighths, not 4. 32 + 3 = 35.")
  (hint "4 x 8 + 3 = ?"))
```

```check
(fraction
  (ask "Find" (math "2 1/5 + 1 1/2") ". Write it any way you like.")
  (answer 37 10) (equivalent) (true "2 1/5 + 1 1/2 = 37/10")
  (wrong-if (23 7) "Do not add the denominators. In tenths: 22/10 + 15/10.")
  (hint "11/5 + 3/2.")
  (hint "22/10 + 15/10 = ?"))
```

---

```check
(fraction
  (ask "Find" (math "3 1/6 - 1 2/3") ".")
  (answer 3 2) (equivalent) (true "3 1/6 - 1 2/3 = 3/2")
  (wrong-if (5 2) "That takes 1/6 from 4/6, the wrong way round. As fractions: 19/6 - 10/6 = 9/6.")
  (hint "19/6 - 5/3.")
  (hint "5/3 = 10/6."))
```

```check
(choice
  (ask "Which way gives the right answer for" (math "2 3/4 + 1 2/3") "?")
  (right "Both: wholes and parts, or fractions greater than 1" (true "11/4 + 5/3 = 4 5/12"))
  (wrong "Only adding the wholes and the parts"
    "Writing each as a fraction greater than 1 also works: 11/4 + 5/3 = 33/12 + 20/12 = 53/12 = 4 5/12.")
  (wrong "Only fractions greater than 1"
    "Wholes and parts also works: 3 + 9/12 + 8/12 = 3 + 17/12 = 4 5/12.")
  (hint "Try both ways. Do you get the same answer?"))
```

Writing mixed numbers as fractions greater than 1 means you never need
to regroup in the middle.
