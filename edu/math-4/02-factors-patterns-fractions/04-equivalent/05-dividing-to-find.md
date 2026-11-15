# Dividing to find

```lesson
(objective "Make an equivalent fraction with smaller numbers by dividing the numerator and the denominator by a common factor, and tell when a fraction is in simplest form.")
(standards "4.NF.A.1")
(minutes 25)
(keywords "simplest form")
```

You can make an equivalent fraction with smaller numbers by dividing.

Take $8/12$. 4 is a common factor of 8 and 12. Divide both by 4:
$8 ÷ 4 = 2$ and $12 ÷ 4 = 3$. So $8/12 = 2/3$.

This is cutting, done backwards. Join every 4 twelfths into 1 third.

```figure
(define on (toggle 'join "Join" #f))
(if on
    (frac-bar-at 60 60 240 40 3 2 'warm)
    (m4p2-bar 60 60 240 40 2 3 4 'warm))
(math 180 160 (if on "2/3" "8/12") 28)
```

```check
(fraction
  (ask "Divide the numerator and the denominator of" (math "6/10") "by 2. What fraction do you get?")
  (answer 3 5) (true "6/10 = 3/5")
  (wrong-if (3 10) "You divided only the numerator. Divide the 10 by 2 as well.")
  (wrong-if (4 8) "4/8 takes 2 away from the top and the bottom. Divide instead: 6 ÷ 2 and 10 ÷ 2.")
  (hint "6 ÷ 2 = ? and 10 ÷ 2 = ?"))
```

---

## Use a common factor

Divide by a common factor of the numerator and the denominator. Then
both answers are whole numbers.

For $6/9$, 2 does not work: 9 ÷ 2 = 4 R 1. But 3 is a common factor:
$6/9 = 2/3$.

```check
(choice
  (ask "Which number can you divide the top and the bottom of" (math "4/10") "by?")
  (right "2" (true "4/10 = 2/5"))
  (wrong "4"
    "4 is a factor of 4, but 10 ÷ 4 = 2 R 2. It must be a factor of both.")
  (wrong "5"
    "5 is a factor of 10, but 4 ÷ 5 is less than 1. It must be a factor of both.")
  (hint "Find a common factor of 4 and 10, other than 1."))
```

---

## Simplest form

A fraction is in **simplest form** when its numerator and denominator
have no common factor except 1. $2/3$ is in simplest form. $8/12$ is
not: 2 and 4 are common factors of 8 and 12.

```check
(choice (several)
  (ask "Which fractions are in simplest form? Choose all.")
  (right "3/4")
  (right "5/12")
  (wrong "6/8"
    "6 and 8 are both even, so 2 is a common factor. 6/8 = 3/4.")
  (wrong "5/10"
    "5 is a factor of 5 and of 10. 5/10 = 1/2.")
  (hint "For each one, look for a common factor greater than 1."))
```

---

## Step by step, or all at once

You can divide more than once: $8/12 = 4/6 = 2/3$, dividing by 2 each
time. Or divide at once by 4, the greatest number that is a factor of
both 8 and 12. Both ways end at $2/3$. Stop when the only common factor is 1.

```check
(fraction
  (ask "Write" (math "6/12") "in simplest form.")
  (answer 1 2) (equivalent) (simplest) (true "6/12 = 1/2")
  (wrong-if (3 12) "You divided only the numerator. Divide both 6 and 12 by the same number.")
  (wrong-if (1 6) "1/6 divides the top by 6 but leaves the bottom as 12 ÷ 2. Divide both by the same number: 6.")
  (hint "6 is a factor of 6 and of 12.")
  (hint "6 ÷ 6 = 1 and 12 ÷ 6 = 2."))
```

---

## Worked example

```example
(example
  (problem "Write 9/12 in simplest form.")
  (step "Common factors of 9 and 12: 1 and 3.")
  (step "Divide both by 3: 9 ÷ 3 = 3 and 12 ÷ 3 = 4.")
  (step "3 and 4 have no common factor except 1.")
  (answer "9/12 = 3/4."))
```

```example
(example
  (problem "Write 4/8 in simplest form.")
  (step "4 is a factor of 4 and of 8.")
  (step (fraction (ask "Divide both by 4. What do you get?")
    (answer 1 2)
    (wrong-if (2 4) "2/4 is dividing by 2. Divide by 4: 4 ÷ 4 = 1 and 8 ÷ 4 = 2.")))
  (answer "4/8 = 1/2."))
```

---

## Practice

```check
(fraction
  (ask "Write" (math "8/10") "in simplest form.")
  (answer 4 5) (equivalent) (simplest) (true "8/10 = 4/5")
  (wrong-if (8 5) "Divide the numerator too: 8 ÷ 2 = 4.")
  (wrong-if (6 8) "6/8 takes 2 away from each number. Divide both by 2 instead.")
  (hint "2 is a common factor of 8 and 10."))
```

```check
(fraction
  (ask "Write" (math "10/12") "in simplest form.")
  (answer 5 6) (equivalent) (simplest) (true "10/12 = 5/6")
  (wrong-if (5 12) "You divided only the numerator. 12 ÷ 2 = 6.")
  (wrong-if (8 10) "8/10 takes 2 away from each number. Divide both by 2 instead.")
  (hint "10 and 12 are both even."))
```

---

```check
(choice
  (ask "Is" (math "7/12") "in simplest form?")
  (right "Yes: 7 and 12 have no common factor except 1")
  (wrong "No: 12 can be divided by 2"
    "12 can, but 7 cannot: 7 ÷ 2 = 3 R 1. A common factor must divide both.")
  (wrong "No: 7 and 12 are too far apart"
    "How far apart they are does not matter. 7 is prime and is not a factor of 12, so only 1 is common.")
  (hint "List the factors of 7."))
```

```check
(fraction
  (ask "Write" (math "3/6") "in simplest form.")
  (answer 1 2) (equivalent) (simplest) (true "3/6 = 1/2")
  (wrong-if (1 6) "Divide the denominator too: 6 ÷ 3 = 2.")
  (wrong-if (1 3) "1/3 divides the top by 3 and the bottom by 2. Use the same number for both: 3.")
  (hint "3 is a factor of 3 and of 6."))
```

So: divide the numerator and the denominator by a common factor. Stop
at simplest form.
