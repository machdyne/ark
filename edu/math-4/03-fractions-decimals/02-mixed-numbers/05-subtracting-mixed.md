# Subtracting mixed numbers

```lesson
(objective "Subtract mixed numbers with like denominators, regrouping 1 whole into parts when there are too few parts.")
(standards "4.NF.B.3c")
(minutes 25)
```

You can subtract mixed numbers by subtracting the wholes and the
parts.

$$ 4 5/6 - 1 2/6 $$

Wholes: $4 - 1 = 3$. Parts: $5/6 - 2/6 = 3/6$. So the difference is
$3 3/6$.

```check
(number
  (ask "Find" (math "5 7/8 - 2 3/8") ". Type it like 2 1/4.")
  (answer 3.5) (from "5 7/8 - 2 3/8")
  (wrong-if 3.25 "The parts are eighths: 7/8 - 3/8 = 4/8. Keep the 8.")
  (hint "Wholes: 5 - 2. Parts: 7/8 - 3/8."))
```

---

## Too few parts

$3 1/4 - 1 3/4$: you cannot take 3 fourths from 1 fourth. Regroup 1
whole into 4 fourths. Then $3 1/4 = 2 5/4$.

$$ 2 5/4 - 1 3/4 = 1 2/4 $$

```figure
(define go (toggle 'go "Regroup 1 whole" #f))
(m4p3-wholes 40 20 240 26 13 4 'warm)
(if go (begin (frame 36 84 248 68 'ink 2)
              (text 160 170 "framed: 4/4 + 1/4 = 5/4" 'centre 'small)))
(math 160 200 (if go "3 1/4 = 2 5/4" "3 1/4") 24)
```

```check
(number
  (ask "Find" (math "4 1/5 - 2 3/5") ". Type it like 2 1/4.")
  (answer 1.6) (from "4 1/5 - 2 3/5")
  (wrong-if 2.4 "You took 1/5 from 3/5 instead. Regroup: 4 1/5 = 3 6/5. Then 3 6/5 - 2 3/5 = 1 3/5.")
  (wrong-if 2.6 "You cannot take 3/5 from 1/5 without regrouping. 4 1/5 = 3 6/5.")
  (hint "Write 4 1/5 as 3 6/5."))
```

---

## Taking from a whole number

$5 - 2 3/8$: write 5 as $4 8/8$. Then:

$$ 4 8/8 - 2 3/8 = 2 5/8 $$

```check
(number
  (ask "Find" (math "3 - 1 1/4") ".")
  (answer 1.75) (from "3 - 1 1/4")
  (wrong-if 2.25 "3 has no parts to take 1/4 from. Write 3 as 2 4/4. Then 2 4/4 - 1 1/4 = 1 3/4.")
  (wrong-if 2.75 "You took away only the 1/4. Take the 1 whole too.")
  (hint "3 = 2 4/4."))
```

---

## Worked example

```example
(example
  (problem "Find 6 2/10 - 3 7/10.")
  (step "2/10 is less than 7/10: regroup.")
  (step "6 2/10 = 5 12/10.")
  (step "Wholes: 5 - 3 = 2. Parts: 12/10 - 7/10 = 5/10.")
  (answer "6 2/10 - 3 7/10 = 2 5/10."))
```

```example
(example
  (problem "Find 4 1/3 - 1 2/3.")
  (step "Regroup: 4 1/3 = 3 4/3.")
  (step (number (ask "3 4/3 - 1 2/3 = ? Type it like 2 1/4.")
    (answer 2.6666667) (within 0.001) (from "4 1/3 - 1 2/3")
    (wrong-if 3.3333333 "Take the parts: 4/3 - 2/3 = 2/3. Take the wholes: 3 - 1 = 2.")))
  (answer "4 1/3 - 1 2/3 = 2 2/3."))
```

---

## Practice

```check
(number
  (ask "Find" (math "7 5/12 - 4 1/12") ".")
  (answer 3.3333333) (within 0.001) (from "7 5/12 - 4 1/12")
  (wrong-if 11.5 "You added. Subtract: 7 - 4 = 3 and 5/12 - 1/12 = 4/12, so 3 4/12.")
  (hint "No regrouping: 5 twelfths is more than 1."))
```

```check
(number
  (ask "Find" (math "5 1/6 - 2 5/6") ".")
  (answer 2.3333333) (within 0.001) (from "5 1/6 - 2 5/6")
  (wrong-if 3.6666667 "You took 1/6 from 5/6. Regroup instead: 5 1/6 = 4 7/6.")
  (hint "5 1/6 = 4 7/6."))
```

---

```check
(number
  (ask "Find" (math "2 - 3/4") ".")
  (answer 1.25) (from "2 - 3/4")
  (wrong-if 2.75 "You added. Taking away leaves less than 2.")
  (wrong-if 1.75 "1 3/4 is what you get from 2 - 1/4. Write 2 as 1 4/4: 1 4/4 - 3/4 = 1 1/4.")
  (hint "2 = 1 4/4."))
```

```check
(choice
  (ask "To find" (math "3 2/8 - 1 5/8") ", what do you write" (math "3 2/8") "as?")
  (right "2 10/8" (true "3 2/8 = 2 10/8"))
  (wrong "3 10/8" (false "3 2/8 = 3 10/8")
    "You added 8 eighths but did not take away the whole. 3 10/8 is 1 more than 3 2/8.")
  (wrong "2 2/8" (false "3 2/8 = 2 2/8")
    "You took away 1 whole but did not add its 8 eighths.")
  (hint "Take 1 whole away from the 3, and add it as 8/8."))
```

So: subtract the wholes and the parts; when there are too few parts,
regroup 1 whole into parts first.
