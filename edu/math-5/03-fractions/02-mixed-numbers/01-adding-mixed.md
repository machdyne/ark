# Adding mixed numbers

```lesson
(objective "Add mixed numbers with unlike denominators by adding the wholes and the parts, and regroup when the parts make more than 1, such as 2 3/4 + 1 1/3 = 4 1/12.")
(standards "5.NF.A.1")
(minutes 25)
```

You can add mixed numbers with unlike denominators: add the wholes,
then add the parts with a common denominator.

$$ 2 1/2 + 1 1/3 $$

- Wholes: $2 + 1 = 3$.
- Parts: $1/2 + 1/3 = 3/6 + 2/6 = 5/6$.

So the sum is $3 5/6$.

```figure
(frac-bar-at 14 30 68 26 1 1 'cool)
(frac-bar-at 90 30 68 26 1 1 'cool)
(frac-bar-at 166 30 68 26 2 1 'cool)
(frac-bar-at 14 80 68 26 1 1 'cool)
(frac-bar-at 166 80 68 26 3 1 'cool)
(math 280 50 "2 1/2" 20)
(math 280 100 "1 1/3" 20)
(frac-bar-at 14 150 68 26 1 1 'cool)
(frac-bar-at 90 150 68 26 1 1 'cool)
(frac-bar-at 166 150 68 26 1 1 'cool)
(m5p3-thin 242 150 68 26 6 5 'cool)
(text 160 210 "3 wholes and 5/6" 'centre 'body)
```

```check
(fraction
  (ask "Find" (math "1 1/4 + 2 1/2") ".")
  (answer 15 4) (equivalent) (true "1 1/4 + 2 1/2 = 15/4")
  (wrong-if (13 4) "That is 3 1/4: the 1/2 is left out. Parts: 1/4 + 2/4 = 3/4. So 3 3/4.")
  (wrong-if (7 2) "That is 3 2/4. But 1/2 is 2 fourths, not 1. Parts: 1/4 + 2/4 = 3/4. So 3 3/4.")
  (hint "Wholes: 1 + 2. Parts: 1/4 + 1/2.")
  (hint "1/2 = 2/4."))
```

---

## When the parts make more than 1

$$ 2 3/4 + 1 1/3 $$

- Wholes: $2 + 1 = 3$.
- Parts: $3/4 + 1/3 = 9/12 + 4/12 = 13/12$.

$13/12$ is more than 1: $13/12 = 1 1/12$. Regroup: move the 1 whole to
the wholes.

$$ 3 + 1 1/12 = 4 1/12 $$

```check
(fraction
  (ask "Find" (math "1 2/3 + 2 1/2") ". Type it like 3 1/4.")
  (answer 25 6) (equivalent) (true "1 2/3 + 2 1/2 = 25/6")
  (wrong-if (19 6) "The parts make 7/6, which is more than 1. 7/6 = 1 1/6, so add 1 more whole: 4 1/6.")
  (wrong-if (18 5) "Do not add the denominators. Parts: 2/3 + 1/2 = 4/6 + 3/6 = 7/6.")
  (hint "Parts: 2/3 + 1/2 = 4/6 + 3/6.")
  (hint "7/6 = 1 1/6. Add that whole to 3."))
```

---

## Worked example

```example
(example
  (problem "Find 3 5/6 + 2 3/4.")
  (step "Wholes: 3 + 2 = 5.")
  (step "Parts: 5/6 + 3/4 = 10/12 + 9/12 = 19/12.")
  (step "19/12 = 1 7/12. Regroup: 5 + 1 7/12 = 6 7/12.")
  (answer "3 5/6 + 2 3/4 = 6 7/12."))
```

```example
(example
  (problem "Find 4 4/5 + 1 1/2.")
  (step "Wholes: 4 + 1 = 5. Parts: 4/5 + 1/2 = 8/10 + 5/10 = 13/10 = 1 3/10.")
  (step (fraction (ask "5 + 1 3/10 = ? Type it like 3 1/4.") (answer 63 10) (equivalent) (true "5 + 1 3/10 = 63/10")
    (wrong-if (53 10) "Do not lose the whole from 13/10. 5 + 1 = 6, so 6 3/10.")))
  (answer "4 4/5 + 1 1/2 = 6 3/10."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "3 1/6 + 1 1/3") ".")
  (answer 9 2) (equivalent) (true "3 1/6 + 1 1/3 = 9/2")
  (wrong-if (13 3) "1/3 is 2 sixths. Parts: 1/6 + 2/6 = 3/6. So 4 3/6, which is 4 1/2.")
  (wrong-if (38 9) "Do not add the denominators. 1/3 = 2/6.")
  (hint "1/3 = 2/6."))
```

```check
(fraction
  (ask "Find" (math "2 3/4 + 3 5/8") ". Type it like 3 1/4.")
  (answer 51 8) (equivalent) (true "2 3/4 + 3 5/8 = 51/8")
  (wrong-if (43 8) "The parts make 11/8, more than 1. 11/8 = 1 3/8. Add the whole: 6 3/8.")
  (hint "3/4 = 6/8.")
  (hint "6/8 + 5/8 = 11/8 = 1 3/8."))
```

---

```check
(fraction
  (ask "Find" (math "1 2/5 + 1 1/2") ".")
  (answer 29 10) (equivalent) (true "1 2/5 + 1 1/2 = 29/10")
  (wrong-if (17 7) "Adding the tops and the bottoms gives sevenths. Use tenths: 4/10 + 5/10 = 9/10.")
  (hint "Use the denominator 10."))
```

```check
(choice
  (ask "Raj finds" (math "2 2/3 + 1 1/2 = 3 7/6") ". What should he do next?")
  (right "Regroup 6/6 as 1 whole: 4 1/6" (true "3 7/6 = 4 1/6"))
  (wrong "Nothing: 3 7/6 is done"
    "3 7/6 has the right value, but 7/6 is more than 1. Move the whole to the wholes: 4 1/6.")
  (wrong "Write 3 7/12"
    "7/6 is sixths, not twelfths. 7/6 = 1 1/6, so the sum is 4 1/6.")
  (hint "Is 7/6 more than 1?"))
```

So: add the wholes, add the parts with a common denominator, and
regroup when the parts make 1 or more.
