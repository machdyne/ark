# Multiply the numerator

```lesson
(objective "Use n x a/b = (n x a)/b to multiply, and write a product greater than 1 as a mixed number.")
(standards "4.NF.B.4b")
(minutes 20)
```

You can multiply a whole number by a fraction in one step.

Counting unit fractions always does the same thing: it multiplies the
numerator by the whole number. The denominator stays.

$$ n * (a/b) = (n * a)/b $$

$$ 4 * (2/3) = (4 * 2)/3 = 8/3 $$

```check
(fraction
  (ask "Find" (math "5 * (3/4)") ".")
  (answer 15 4) (equivalent) (true "5 * 3/4 = 15/4")
  (wrong-if (15 20) "Multiply only the numerator. The parts are still fourths.")
  (wrong-if (8 4) "You added 5 + 3. Multiply: 5 × 3 = 15.")
  (hint "5 × 3 = ? Keep the 4."))
```

---

## Why the denominator stays

The denominator names the size of each part. Making more groups gives
more parts, but no part gets smaller. So only the numerator changes.

```check
(choice
  (ask "Jo says" (math "2 * (3/5) = 6/10") ". What is wrong?")
  (right "She multiplied the denominator: the parts are still fifths" (true "2 * 3/5 = 6/5"))
  (wrong "Nothing is wrong"
    "6/10 = 3/5, so she found only 1 group. 2 groups of 3 fifths are 6 fifths.")
  (wrong "She should add: 5/5"
    "2 × 3/5 means 2 groups of 3/5. Adding 2 + 3 does not make groups.")
  (hint "Is 2 groups of 3/5 more than 3/5?"))
```

---

## Products greater than 1

Write a product greater than 1 as a mixed number. Divide the numerator
by the denominator.

$4 * (2/3) = 8/3$. 8 ÷ 3 = 2 R 2. So $8/3 = 2 2/3$.

```figure
(m4p3-wholes 50 30 220 30 8 3 'warm)
(math 160 175 "4 * (2/3) = 8/3 = 2 2/3" 22)
```

```check
(number
  (ask "Find" (math "3 * (3/4)") "as a mixed number. Type it like 2 1/4.")
  (answer 2.25) (from "3 * 3/4")
  (wrong-if 9 "9 is the numerator. 9/4 = 2 1/4.")
  (wrong-if 2 "Do not lose the 1/4 left over: 9 ÷ 4 = 2 R 1.")
  (hint "3 × 3/4 = 9/4. 9 ÷ 4 = ? R ?"))
```

---

## Worked example

```example
(example
  (problem "Find 6 × 2/5 and write it as a mixed number.")
  (step "6 × 2 = 12, so 6 × 2/5 = 12/5.")
  (step "12 ÷ 5 = 2 R 2.")
  (answer "6 × 2/5 = 12/5 = 2 2/5."))
```

```example
(example
  (problem "Find 5 × 5/6 and write it as a mixed number.")
  (step "5 × 5 = 25, so 5 × 5/6 = 25/6.")
  (step (number (ask "25/6 as a mixed number? Type it like 2 1/4.")
    (answer 4.1666667) (within 0.001) (from "5 * 5/6")
    (wrong-if 5 "5 wholes need 30 sixths. 25 ÷ 6 = 4 R 1.")))
  (answer "5 × 5/6 = 25/6 = 4 1/6."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "7 * (2/10)") ".")
  (answer 14 10) (equivalent) (true "7 * 2/10 = 14/10")
  (wrong-if (14 70) "Only the numerator is multiplied.")
  (hint "7 × 2 = ? Keep the 10."))
```

```check
(number
  (ask "Find" (math "4 * (3/8)") "as a mixed number.")
  (answer 1.5) (from "4 * 3/8")
  (wrong-if 12 "12 is the numerator: 12/8. Take out the whole: 1 4/8.")
  (hint "4 × 3/8 = 12/8."))
```

---

```check
(number
  (ask "Find" (math "3 * (5/12)") ". Type a fraction or a mixed number.")
  (answer 1.25) (within 0.001) (from "3 * 5/12")
  (wrong-if 0.4166667 "That is just 5/12. Make 3 groups: 15/12.")
  (hint "3 × 5 = 15. 15/12 = 1 3/12."))
```

```check
(choice
  (ask "Which is" (math "8 * (3/4)") "?")
  (right "6" (true "8 * 3/4 = 6"))
  (wrong "24" (false "8 * 3/4 = 24")
    "24 is the numerator: 24/4. 24 ÷ 4 = 6 wholes.")
  (wrong "24/32" (false "8 * 3/4 = 24/32")
    "Do not multiply the denominator. 8 × 3/4 = 24/4.")
  (hint "8 × 3 = 24 fourths. How many wholes is that?"))
```

So: $n * (a/b) = (n * a)/b$; divide to write it as a mixed number.
