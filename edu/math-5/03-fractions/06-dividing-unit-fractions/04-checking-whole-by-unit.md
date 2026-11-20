# Checking whole ÷ unit fraction

```lesson
(objective "Check a quotient such as 4 ÷ (1/5) = 20 by multiplying: 20 x (1/5) = 4, and see why it is greater than 4.")
(standards "5.NF.B.7b")
(minutes 20)
```

Check a quotient by multiplying it by the divisor.

$4 ÷ (1/5) = 20$ says: 20 fifths make 4. Check it:

$$ 20 * (1/5) = 20/5 = 4 $$

It checks.

```figure
(m5p3-line 30 290 150 4 5 'whole)
(m5p3-hops 20 5 'cool)
(text 160 80 "20 jumps of 1/5 reach 4" 'centre 'body 'bold)
```

```check
(choice
  (ask "Which multiplication checks" (math "3 ÷ (1/4) = 12") "?")
  (right "12 x (1/4) = 3" (true "12 * (1/4) = 3"))
  (wrong "3 x (1/4) = 3/4"
    "Multiply the quotient, 12, by the divisor, 1/4. You should get back 3.")
  (wrong "12 x 4 = 48"
    "The divisor is 1/4, not 4. 12 x (1/4) = 3.")
  (hint "Quotient times divisor."))
```

---

## Why the quotient is greater

The divisor $1/5$ is less than 1. So each piece is small, and it takes
many of them to make 4: more than 4 of them.

Compare: $4 ÷ 1 = 4$, and $4 ÷ (1/5) = 20$. The smaller the divisor,
the more pieces fit.

```check
(choice
  (ask "Which is greatest?")
  (right "2 ÷ (1/10)" (true "2 ÷ (1/10) = 20"))
  (wrong "2 ÷ (1/2)"
    "Halves are big pieces: only 4 fit in 2. Tenths are smaller, so 20 fit.")
  (wrong "2 ÷ 1"
    "2 ÷ 1 = 2. Dividing by a unit fraction gives more.")
  (hint "Which pieces are smallest?"))
```

---

## Catching a mistake

Ana writes $6 ÷ (1/2) = 3$. Check: $3 * (1/2) = 3/2$, not 6. So 3 is
wrong. She found half of 6 instead.

The right quotient: $6 ÷ (1/2) = 12$, since $12 * (1/2) = 6$.

```check
(number
  (ask "Find" (math "8 ÷ (1/3)") ". Check it by multiplying.")
  (answer 24) (from "8 ÷ (1/3)")
  (wrong-if 2.6666666667 "Check: (8/3) x (1/3) = 8/9, not 8. Count thirds in 8 instead.")
  (hint "3 thirds in each whole.")
  (hint "Check: 24 x (1/3) = 8."))
```

---

## Worked example

```example
(example
  (problem "Find 5 ÷ (1/6) and check it.")
  (step "6 sixths in each whole: 5 x 6 = 30.")
  (step "Check: 30 x (1/6) = 30/6 = 5.")
  (step "30 is more than 5, as it should be: the sixths are small.")
  (answer "5 ÷ (1/6) = 30."))
```

```example
(example
  (problem "Check 7 ÷ (1/4) = 28.")
  (step "Multiply the quotient by the divisor: 28 x (1/4).")
  (step (number (ask "28 x (1/4) = ?") (answer 7) (from "28 * (1/4)")
    (wrong-if 112 "The divisor is 1/4: 28 x (1/4) = 28/4.")))
  (answer "28 x (1/4) = 7, so it checks."))
```

---

## Practice

```check
(number
  (ask "Check" (math "9 ÷ (1/2) = 18") ": what is" (math "18 * (1/2)") "?")
  (answer 9) (from "18 * (1/2)")
  (wrong-if 36 "18 x (1/2) is half of 18, not 18 x 2.")
  (hint "Half of 18."))
```

```check
(choice
  (ask "Tom says" (math "4 ÷ (1/3) = 4/3") ". Check it. Is he right?")
  (right "No: (4/3) x (1/3) = 4/9, not 4. It is 12" (true "12 * (1/3) = 4"))
  (wrong "Yes: dividing makes things smaller"
    "Not when the divisor is less than 1. 12 thirds fit in 4.")
  (wrong "Yes: 4/3 = 4 ÷ 3"
    "4 ÷ 3 is a different division. The divisor here is 1/3, not 3.")
  (hint "Multiply 4/3 by 1/3. Do you get 4?"))
```

---

```check
(number
  (ask "Find" (math "10 ÷ (1/5)") ".")
  (answer 50) (from "10 ÷ (1/5)")
  (wrong-if 2 "That is 10 ÷ 5. Count fifths in 10: 5 in each whole.")
  (hint "Check your answer: times 1/5 should give 10."))
```

```check
(choice
  (ask "Without working it out: is" (math "3 ÷ (1/8)") "more or less than 3?")
  (right "More than 3" (true "3 ÷ (1/8) > 3"))
  (wrong "Less than 3"
    "The divisor 1/8 is less than 1, so many eighths fit in 3: 24.")
  (wrong "Equal to 3"
    "Only dividing by 1 gives 3.")
  (hint "Is 1/8 more or less than 1?"))
```

Check $n ÷ (1/b)$ by multiplying the quotient by $1/b$. Since $1/b$
is less than 1, the quotient is greater than $n$ when $n$ is greater
than 0.
