# Subtracting mixed numbers

```lesson
(objective "Subtract mixed numbers with unlike denominators, regrouping 1 whole when there are too few parts, such as 3 1/4 - 1 2/3 = 1 7/12.")
(standards "5.NF.A.1")
(minutes 25)
```

To subtract mixed numbers, write the parts with a common denominator.
Then subtract the wholes and subtract the parts.

$$ 4 5/6 - 1 1/2 $$

- Parts: $5/6 - 1/2 = 5/6 - 3/6 = 2/6$.
- Wholes: $4 - 1 = 3$.

So the difference is $3 2/6$, which is $3 1/3$.

```check
(fraction
  (ask "Find" (math "5 3/4 - 2 1/2") ".")
  (answer 13 4) (equivalent) (true "5 3/4 - 2 1/2 = 13/4")
  (wrong-if (7 2) "1/2 is 2 fourths, not 1. Parts: 3/4 - 2/4 = 1/4. So 3 1/4.")
  (hint "1/2 = 2/4.")
  (hint "Wholes: 5 - 2. Parts: 3/4 - 2/4."))
```

---

## Too few parts

$$ 3 1/4 - 1 2/3 $$

In twelfths: $3 3/12 - 1 8/12$. But 3 twelfths is less than 8 twelfths.

Regroup 1 of the 3 wholes as $12/12$:

$$ 3 3/12 = 2 + 12/12 + 3/12 = 2 15/12 $$

Now subtract: $2 15/12 - 1 8/12 = 1 7/12$.

```figure
(define go (toggle 'go "Regroup a whole" #f))
(frac-bar-at 20 30 80 26 1 1 'cool)
(frac-bar-at 120 30 80 26 1 1 'cool)
(if go (m5p3-thin 220 30 80 26 12 12 'cool) (frac-bar-at 220 30 80 26 1 1 'cool))
(m5p3-thin 20 80 80 26 12 3 'cool)
(text 160 140 (if go "2 wholes and 15/12" "3 wholes and 3/12") 'centre 'body 'bold)
(text 160 170 "Take away 1 8/12:" 'centre 'body)
(text 160 195 (if go "now there are enough twelfths" "only 3 twelfths: too few") 'centre 'small)
```

```check
(fraction
  (ask "Regroup 1 whole of" (math "4 1/5") ". It becomes 3 wholes and how many fifths? Type the fraction.")
  (answer 6 5) (true "4 1/5 = 3 + 6/5")
  (wrong-if (11 5) "1 whole is 5 fifths, not 10. 5/5 + 1/5 = 6/5.")
  (wrong-if (1 5) "You took a whole from the 4. That whole must be added to the parts: 5/5 + 1/5.")
  (hint "1 whole = 5/5.")
  (hint "5/5 + 1/5 = ?"))
```

---

## A common mistake

Some people subtract the smaller part from the bigger one, whichever
comes first:

$3 1/4 - 1 2/3$: "$2/3 - 1/4$ is $5/12$, so $2 5/12$." That is wrong.
You must take $2/3$ away from $1/4$, and $1/4$ is the smaller.
Regroup instead.

```check
(choice
  (ask "Find" (math "5 1/6 - 2 1/2") ".")
  (right "2 2/3" (true "5 1/6 - 2 1/2 = 2 2/3"))
  (wrong "3 1/3"
    "That takes 1/6 from 3/6, the wrong way round. 1/6 is less than 3/6, so regroup: 4 7/6 - 2 3/6 = 2 4/6.")
  (wrong "3 2/3"
    "When you regroup a whole as 6/6, the 5 wholes become 4. So 4 7/6 - 2 3/6 = 2 4/6.")
  (hint "1/2 = 3/6. Is 1/6 enough to take 3/6 away?")
  (hint "5 1/6 = 4 7/6."))
```

---

## Worked example

```example
(example
  (problem "Find 6 1/3 - 2 3/4.")
  (step "In twelfths: 6 4/12 - 2 9/12. 4 twelfths are too few.")
  (step "Regroup: 6 4/12 = 5 16/12.")
  (step "5 16/12 - 2 9/12 = 3 7/12.")
  (answer "6 1/3 - 2 3/4 = 3 7/12."))
```

```example
(example
  (problem "Find 4 1/2 - 1 4/5.")
  (step "In tenths: 4 5/10 - 1 8/10. Regroup: 3 15/10 - 1 8/10.")
  (step (fraction (ask "3 15/10 - 1 8/10 = ? Type it like 2 1/4.") (answer 27 10) (equivalent) (true "3 15/10 - 1 8/10 = 27/10")
    (wrong-if (37 10) "You regrouped a whole, so 3 wholes are left, not 4. 3 - 1 = 2.")))
  (answer "4 1/2 - 1 4/5 = 2 7/10."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "3 2/3 - 1 1/4") ".")
  (answer 29 12) (equivalent) (true "3 2/3 - 1 1/4 = 29/12")
  (wrong-if (17 12) "That subtracts 2 wholes, not 1. Wholes: 3 - 1 = 2. Parts: 8/12 - 3/12 = 5/12.")
  (hint "2/3 = 8/12 and 1/4 = 3/12."))
```

```check
(fraction
  (ask "Find" (math "5 1/4 - 2 5/8") ". Type it like 2 1/4.")
  (answer 21 8) (equivalent) (true "5 1/4 - 2 5/8 = 21/8")
  (wrong-if (27 8) "That takes 2/8 from 5/8, the wrong way round. Regroup: 4 10/8 - 2 5/8.")
  (hint "1/4 = 2/8. Are 2 eighths enough?")
  (hint "5 2/8 = 4 10/8."))
```

---

```check
(fraction
  (ask "Find" (math "4 - 1 2/5") ".")
  (answer 13 5) (equivalent) (true "4 - 1 2/5 = 13/5")
  (wrong-if (17 5) "4 has no fifths to take 2/5 from. Regroup: 4 = 3 5/5, so 3 5/5 - 1 2/5.")
  (hint "4 = 3 5/5."))
```

```check
(choice
  (ask "To find" (math "7 1/6 - 3 3/4") ", which first step is right?")
  (right "Write 7 2/12 - 3 9/12, then regroup to 6 14/12" (true "7 1/6 = 6 14/12"))
  (wrong "Find 3/4 - 1/6, since it is the bigger minus the smaller"
    "You must take 3/4 away from 1/6, not the other way. Regroup a whole to get enough twelfths.")
  (wrong "Write 7 2/12 = 7 14/12"
    "Adding 12/12 adds a whole. Take it from the 7: 6 14/12.")
  (hint "1/6 = 2/12 and 3/4 = 9/12."))
```

When the first number has too few parts, regroup 1 whole as parts,
then subtract.
