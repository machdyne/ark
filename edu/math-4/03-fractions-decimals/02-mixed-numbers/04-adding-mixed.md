# Adding mixed numbers

```lesson
(objective "Add mixed numbers with like denominators by adding the wholes and the parts, and regroup when the parts make a whole.")
(standards "4.NF.B.3c")
(minutes 25)
```

You can add mixed numbers by adding the wholes and adding the parts.

$$ 2 1/5 + 1 3/5 $$

Add the wholes: $2 + 1 = 3$. Add the parts: $1/5 + 3/5 = 4/5$. So the
sum is $3 4/5$.

```figure
(m4p3-wholes 20 20 130 26 11 5 'warm)
(m4p3-wholes 170 20 130 26 8 5 'cool)
(math 85 150 "2 1/5" 20)
(math 235 150 "1 3/5" 20)
(math 160 200 "2 1/5 + 1 3/5 = 3 4/5" 22)
```

```check
(number
  (ask "Find" (math "1 2/8 + 3 5/8") ". Type it like 2 1/4.")
  (answer 4.875) (from "1 2/8 + 3 5/8")
  (wrong-if 4.4375 "The parts are eighths: 2/8 + 5/8 = 7/8. Keep the 8.")
  (hint "Wholes: 1 + 3. Parts: 2/8 + 5/8."))
```

---

## When the parts make a whole

$1 3/4 + 2 2/4$: the wholes make 3. The parts make $5/4$. But $5/4$ is
more than 1: $5/4 = 1 1/4$. Regroup: move the 1 whole to the wholes.

$$ 3 + 5/4 = 3 + 1 + 1/4 = 4 1/4 $$

```figure
(define go (toggle 'go "Regroup" #f))
(m4p3-wholes 40 20 240 22 (if go 17 12) 4 'warm)
(if (not go) (m4p3-wholes 40 110 240 22 5 4 'cool))
(if go (math 160 205 "4 + 1/4 = 4 1/4" 22)
    (text 160 205 "3 wholes and 5 fourths" 'centre 'body))
```

```check
(number
  (ask "Find" (math "2 3/5 + 1 4/5") ". Type it like 2 1/4.")
  (answer 4.4) (from "2 3/5 + 1 4/5")
  (wrong-if 3.4 "The parts make 7/5, which is more than 1. 7/5 = 1 2/5, so add 1 more whole: 4 2/5.")
  (hint "3/5 + 4/5 = 7/5. How many wholes is that?"))
```

---

## Worked example

```example
(example
  (problem "Find 3 5/6 + 2 3/6.")
  (step "Wholes: 3 + 2 = 5.")
  (step "Parts: 5/6 + 3/6 = 8/6 = 1 2/6.")
  (step "Regroup: 5 + 1 2/6 = 6 2/6.")
  (answer "3 5/6 + 2 3/6 = 6 2/6."))
```

```example
(example
  (problem "Find 1 7/10 + 1 6/10.")
  (step "Wholes: 1 + 1 = 2. Parts: 7/10 + 6/10 = 13/10 = 1 3/10.")
  (step (number (ask "2 + 1 3/10 = ? Type it like 2 1/4.")
    (answer 3.3) (from "2 + 1 3/10")
    (wrong-if 2.3 "Do not lose the whole from 13/10. 2 + 1 = 3.")))
  (answer "1 7/10 + 1 6/10 = 3 3/10."))
```

---

## Practice

```check
(number
  (ask "Find" (math "4 1/3 + 2 1/3") ".")
  (answer 6.6666667) (within 0.001) (from "4 1/3 + 2 1/3")
  (wrong-if 6.3333333 "1/3 + 1/3 = 2/3, not 1/3.")
  (hint "Wholes: 4 + 2. Parts: 1/3 + 1/3."))
```

```check
(number
  (ask "Find" (math "3 3/4 + 1 3/4") ".")
  (answer 5.5) (from "3 3/4 + 1 3/4")
  (wrong-if 4.5 "3/4 + 3/4 = 6/4 = 1 2/4. Add the 1 whole: 4 + 1 = 5.")
  (wrong-if 4.75 "The parts are fourths: 3/4 + 3/4 = 6/4. Keep the 4.")
  (hint "3/4 + 3/4 = 6/4. Take out a whole."))
```

---

```check
(number
  (ask "Find" (math "2 7/12 + 5/12") ".")
  (answer 3) (from "2 7/12 + 5/12")
  (wrong-if 2 "7/12 + 5/12 = 12/12, which is 1 whole. 2 + 1 = 3.")
  (hint "7 + 5 = 12 twelfths."))
```

```check
(choice
  (ask "Sam finds" (math "1 5/8 + 1 4/8 = 2 9/8") ". What should he do next?")
  (right "Regroup 8/8 as 1 whole: 3 1/8" (true "2 9/8 = 3 1/8"))
  (wrong "Nothing: 2 9/8 is done"
    "2 9/8 is equal to the sum, but 9/8 is more than 1. Move the whole: 3 1/8.")
  (wrong "Write 2 9/16"
    "Never add the denominators. The parts are eighths.")
  (hint "Is 9/8 more than 1?"))
```

So: add the wholes, add the parts, and regroup when the parts make 1
whole or more.
