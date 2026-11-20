# Subtracting with unlike denominators

```lesson
(objective "Subtract two fractions with unlike denominators, such as 5/6 - 1/4 = 10/12 - 3/12 = 7/12.")
(standards "5.NF.A.1")
(minutes 25)
```

You subtract the same way you add: first write both fractions with a
common denominator, then subtract the numerators.

$$ 5/6 - 1/4 $$

12 is a multiple of 6 and of 4. $5/6 = 10/12$ and $1/4 = 3/12$.

$$ 10/12 - 3/12 = 7/12 $$

```figure
(frac-bar 0 6 5 'cool "5/6")
(frac-bar 1 4 1 'warm "1/4")
(m5p3-sum 80 132 216 30 12 7 3)
(math 40 153 "10/12" 20)
(text 244 182 "take away 3/12" 'centre 'small)
(text 122 182 "7/12 left" 'centre 'small 'bold)
(caption "Of the 10 twelfths, the last 3 are taken away.")
```

```check
(fraction
  (ask "Find" (math "1/2 - 1/3") ".")
  (answer 1 6) (equivalent) (true "1/2 - 1/3 = 1/6")
  (wrong-if (0 1) "1/2 and 1/3 are not the same size, so the difference is not 0. Use sixths: 3/6 - 2/6.")
  (hint "1/2 = 3/6 and 1/3 = 2/6."))
```

---

## Do not subtract the denominators

A common mistake: $3/4 - 1/2 = 2/2$. But $2/2$ is 1 whole, more than
$3/4$! Taking away cannot give more than you started with.

Write $1/2$ as $2/4$: $3/4 - 2/4 = 1/4$.

```check
(choice
  (ask "Ana says" (math "5/8 - 1/4 = 4/4") ". Is she right?")
  (right "No: 4/4 is 1, more than 5/8. The answer is 3/8" (true "5/8 - 1/4 = 3/8"))
  (wrong "Yes: 5 - 1 = 4 and 8 - 4 = 4"
    "The denominator names the size of the parts. You do not subtract it. Write 1/4 as 2/8, then 5/8 - 2/8.")
  (wrong "No: the answer is 4/8"
    "1/4 is 2 eighths, not 1. So 5/8 - 2/8 = 3/8.")
  (hint "Can taking away from 5/8 give more than 5/8?"))
```

---

## On a number line

Start at $5/6$ and jump back $1/4$. On a line cut into twelfths, $5/6$
is at $10/12$, and $1/4$ is 3 twelfths. You land on $7/12$.

```figure
(m5p3-line 30 290 120 1 12 'none)
(math 30 150 "0" 16)
(math 290 150 "1" 16)
(nl-mark (/ 10 12) 'cool)
(math (nl-x (/ 10 12)) 152 "10/12" 16)
(nl-jump (/ 10 12) (/ 7 12) 'warm)
(nl-mark (/ 7 12) 'warm)
(math (nl-x (/ 7 12)) 152 "7/12" 16)
(caption "5/6 - 1/4 = 10/12 - 3/12 = 7/12")
```

```check
(fraction
  (ask "Find" (math "2/3 - 1/6") ".")
  (answer 3 6) (equivalent) (true "2/3 - 1/6 = 3/6")
  (wrong-if (1 3) "Subtracting the tops and the bottoms gives 1/3, but the parts are different sizes. 2/3 = 4/6, so 4/6 - 1/6.")
  (wrong-if (1 6) "2/3 is 4 sixths, not 2. So 4/6 - 1/6 = 3/6.")
  (hint "2/3 = 4/6."))
```

---

## Worked example

```example
(example
  (problem "Find 4/5 - 1/2.")
  (step "Common denominator: 5 x 2 = 10.")
  (step "4/5 = 8/10 and 1/2 = 5/10.")
  (step "8/10 - 5/10 = 3/10.")
  (answer "4/5 - 1/2 = 3/10."))
```

```example
(example
  (problem "Find 7/4 - 2/3.")
  (step "Common denominator: 4 x 3 = 12.")
  (step "7/4 = 21/12 and 2/3 = 8/12.")
  (step (fraction (ask "21/12 - 8/12 = ?") (answer 13 12) (equivalent) (true "21/12 - 8/12 = 13/12")
    (wrong-if (13 24) "The parts are twelfths. Keep the denominator 12 and subtract only the numerators.")))
  (answer "7/4 - 2/3 = 13/12 = 1 1/12."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "3/4 - 1/3") ".")
  (answer 5 12) (equivalent) (true "3/4 - 1/3 = 5/12")
  (wrong-if (2 1) "Subtracting the denominators gives 4 - 3 = 1. That is not a size of part. Use twelfths: 9/12 - 4/12.")
  (wrong-if (2 12) "Write both in twelfths first: 3/4 = 9/12 and 1/3 = 4/12.")
  (hint "Use 12.")
  (hint "9/12 - 4/12 = ?"))
```

```check
(fraction
  (ask "Find" (math "9/10 - 2/5") ".")
  (answer 5 10) (equivalent) (true "9/10 - 2/5 = 5/10")
  (wrong-if (7 5) "7/5 is more than 1, but you started with less than 1. 2/5 = 4/10, so 9/10 - 4/10.")
  (wrong-if (7 10) "2/5 is 4 tenths, not 2. So 9/10 - 4/10 = 5/10.")
  (hint "2/5 = 4/10."))
```

---

```check
(fraction
  (ask "Find" (math "5/6 - 3/8") ".")
  (answer 11 24) (equivalent) (true "5/6 - 3/8 = 11/24")
  (wrong-if (2 24) "Write both in 24ths first: 5/6 = 20/24 and 3/8 = 9/24.")
  (hint "Count by 8s: 8, 16, 24. 24 is a multiple of 6 too.")
  (hint "20/24 - 9/24 = ?"))
```

```check
(choice
  (ask "Which is the same as" (math "1 - 3/8") "?")
  (right "8/8 - 3/8" (true "1 - 3/8 = 8/8 - 3/8"))
  (wrong "1/8 - 3/8"
    "1 whole is 8 eighths, not 1 eighth.")
  (wrong "1/1 - 3/1"
    "1 = 1/1, but 3/8 is not 3/1. Write 1 in eighths: 8/8.")
  (hint "How many eighths make 1 whole?"))
```

To subtract with unlike denominators, write equivalent fractions with a
common denominator, then subtract the numerators.
