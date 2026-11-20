# Adding with unlike denominators

```lesson
(objective "Add two fractions with unlike denominators by writing equivalent fractions with a common denominator, such as 2/3 + 5/4 = 8/12 + 15/12 = 23/12.")
(standards "5.NF.A.1")
(minutes 25)
```

You can add any two fractions. Write them with a common denominator,
then add the numerators.

Find $1/3 + 1/2$. A common denominator is 6.

$$ 1/3 + 1/2 = 2/6 + 3/6 = 5/6 $$

```figure
(frac-bar 0 3 1 'cool "1/3")
(frac-bar 1 2 1 'warm "1/2")
(m5p3-sum 80 132 216 30 6 2 3)
(math 40 153 "5/6" 22)
(caption "In sixths: 2/6 + 3/6 = 5/6")
```

```check
(fraction
  (ask "Find" (math "1/4 + 2/3") ".")
  (answer 11 12) (equivalent) (true "1/4 + 2/3 = 11/12")
  (wrong-if (3 7) "Adding the tops and the bottoms changes the size of the parts. Use twelfths: 3/12 + 8/12.")
  (wrong-if (3 12) "Write both in twelfths first: 1/4 = 3/12 and 2/3 = 8/12.")
  (hint "Use the denominator 12.")
  (hint "1/4 = 3/12 and 2/3 = 8/12."))
```

---

## Sums greater than 1

$$ 2/3 + 5/4 $$

The product $3 * 4 = 12$ is a common denominator.

- $2/3 = 8/12$, because $2 * 4 = 8$ and $3 * 4 = 12$.
- $5/4 = 15/12$, because $5 * 3 = 15$ and $4 * 3 = 12$.

So $2/3 + 5/4 = 8/12 + 15/12 = 23/12$, which is $1 11/12$.

```check
(fraction
  (ask "Find" (math "3/4 + 1/2") ". You may write it as a fraction or a mixed number.")
  (answer 5 4) (equivalent) (true "3/4 + 1/2 = 5/4")
  (wrong-if (4 6) "Do not add the denominators. Write 1/2 as 2/4, then 3/4 + 2/4.")
  (wrong-if (4 4) "1/2 is 2 fourths, not 1. So 3/4 + 2/4 = 5/4.")
  (hint "1/2 = 2/4.")
  (hint "3/4 + 2/4 = ?"))
```

---

## On a number line

A sum is one jump after another. Here $1/2 + 1/3$: a jump of $3/6$,
then a jump of $2/6$. The line is cut into sixths, so both jumps fit
its marks.

```figure
(m5p3-line 30 290 130 1 6 'frac)
(nl-jump 0 0.5 'cool "1/2 = 3/6")
(nl-jump 0.5 (/ 5 6) 'warm "1/3 = 2/6")
(nl-mark (/ 5 6) 'warm)
(caption "1/2 + 1/3 = 5/6")
```

```check
(choice
  (ask "On a number line cut into sixths, where does" (math "1/2 + 1/6") "land?")
  (right "At 4/6" (true "1/2 + 1/6 = 4/6"))
  (wrong "At 2/8"
    "That adds the denominators. On the line, 1/2 is 3/6. One more sixth is 4/6.")
  (wrong "At 2/6"
    "1/2 is at 3/6, not 1/6. Start there and jump 1 sixth.")
  (hint "Where is 1/2 on a line cut into sixths?"))
```

---

## Worked example

```example
(example
  (problem "Find 2/5 + 1/3.")
  (step "Common denominator: 5 x 3 = 15.")
  (step "2/5 = 6/15 and 1/3 = 5/15.")
  (step "6/15 + 5/15 = 11/15.")
  (answer "2/5 + 1/3 = 11/15."))
```

```example
(example
  (problem "Find 5/6 + 3/4.")
  (step "12 is a multiple of 6 and of 4.")
  (step "5/6 = 10/12 and 3/4 = 9/12.")
  (step (fraction (ask "10/12 + 9/12 = ?") (answer 19 12) (equivalent) (true "10/12 + 9/12 = 19/12")
    (wrong-if (19 24) "The parts are twelfths. Keep the 12 and add the numerators.")))
  (answer "5/6 + 3/4 = 19/12 = 1 7/12."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "1/2 + 2/5") ".")
  (answer 9 10) (equivalent) (true "1/2 + 2/5 = 9/10")
  (wrong-if (3 7) "Halves and fifths are different sizes. Use tenths: 5/10 + 4/10.")
  (hint "Use the denominator 10."))
```

```check
(fraction
  (ask "Find" (math "3/8 + 1/4") ".")
  (answer 5 8) (equivalent) (true "3/8 + 1/4 = 5/8")
  (wrong-if (4 12) "Do not add the denominators. 1/4 = 2/8.")
  (wrong-if (4 8) "1/4 is 2 eighths, not 1. So 3/8 + 2/8 = 5/8.")
  (hint "8 is a multiple of 4."))
```

---

```check
(fraction
  (ask "Find" (math "2/3 + 4/5") ". You may write it as a fraction or a mixed number.")
  (answer 22 15) (equivalent) (true "2/3 + 4/5 = 22/15")
  (wrong-if (6 8) "Adding tops and bottoms gives 6/8, which is less than 1. But 4/5 alone is almost 1. Use fifteenths.")
  (wrong-if (6 15) "Write both in fifteenths first: 2/3 = 10/15 and 4/5 = 12/15.")
  (hint "Use 15.")
  (hint "10/15 + 12/15 = ?"))
```

```check
(fraction
  (ask "Find" (math "7/10 + 1/2") ".")
  (answer 12 10) (equivalent) (true "7/10 + 1/2 = 12/10")
  (wrong-if (8 12) "Do not add the denominators. 1/2 = 5/10.")
  (wrong-if (8 10) "1/2 is 5 tenths, not 1. 7/10 + 5/10 = 12/10.")
  (hint "1/2 = 5/10."))
```

To add with unlike denominators, write equivalent fractions with a
common denominator, then add the numerators.
