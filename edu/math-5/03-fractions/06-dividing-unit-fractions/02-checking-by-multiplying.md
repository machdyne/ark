# Checking by multiplying

```lesson
(objective "Check a quotient such as (1/3) ÷ 4 = 1/12 by multiplying: (1/12) x 4 = 1/3.")
(standards "5.NF.B.7a")
(minutes 20)
```

Multiplying and dividing are inverse operations. So you can check a
quotient by multiplying.

$(1/3) ÷ 4 = 1/12$ says: 4 shares of $1/12$ make $1/3$. Check it:

$$ (1/12) * 4 = 4/12 = 1/3 $$

It works, so $1/12$ is right.

```figure
(frac-bar 0 3 1 'cool "1/3")
(frac-bar 1 12 4 'warm "4/12")
(caption "4 shares of 1/12 fill the 1/3 exactly.")
```

```check
(choice
  (ask "Which multiplication checks" (math "(1/2) ÷ 5 = 1/10") "?")
  (right "(1/10) x 5 = 1/2" (true "(1/10) * 5 = 1/2"))
  (wrong "(1/2) x 5 = 5/2"
    "Multiply the quotient by the divisor, not the dividend. The quotient is 1/10.")
  (wrong "(1/10) x 2 = 1/5"
    "Multiply by the divisor, 5: the number of shares.")
  (hint "Quotient times divisor should give the dividend."))
```

---

## Catching a mistake

Lin writes $(1/4) ÷ 2 = 2/4$. Check: $(2/4) * 2 = 4/4 = 1$. But she
started with $1/4$, not 1. So $2/4$ is wrong.

The right quotient is $1/8$: $(1/8) * 2 = 2/8 = 1/4$.

```check
(choice
  (ask "Sam says" (math "(1/3) ÷ 2 = 1/5") ". Check by multiplying. Is he right?")
  (right "No: (1/5) x 2 = 2/5, not 1/3" (false "(1/5) * 2 = 1/3"))
  (wrong "Yes: 3 + 2 = 5"
    "Adding the numbers is not dividing. Check: (1/5) x 2 = 2/5, which is not 1/3. The quotient is 1/6.")
  (wrong "Yes, since 1/5 is less than 1/3"
    "Being smaller is not enough. 2 shares of the quotient must make exactly 1/3. 1/6 does: 2/6 = 1/3.")
  (hint "Work out (1/5) x 2."))
```

---

## Worked example

```example
(example
  (problem "Find (1/5) ÷ 3 and check it.")
  (step "Cut every fifth into 3: 15 parts. (1/5) ÷ 3 = 1/15.")
  (step "Check: (1/15) x 3 = 3/15.")
  (step "3/15 = 1/5. It checks.")
  (answer "(1/5) ÷ 3 = 1/15."))
```

```example
(example
  (problem "Find (1/6) ÷ 4 and check it.")
  (step "Cut every sixth into 4: 24 parts. (1/6) ÷ 4 = 1/24.")
  (step (fraction (ask "Check: (1/24) x 4 = ?") (answer 4 24) (equivalent) (true "(1/24) * 4 = 1/6")
    (wrong-if (1 96) "Multiply the numerator by 4: 4/24.")))
  (answer "(1/6) ÷ 4 = 1/24, since (1/24) x 4 = 4/24 = 1/6."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "(1/2) ÷ 4") ". Then check it in your head.")
  (answer 1 8) (equivalent) (true "(1/2) ÷ 4 = 1/8")
  (wrong-if (2 1) "Check: 2 x 4 = 8, not 1/2. Sharing 1/2 by 4 gives a small part: 1/8.")
  (hint "Cut each half into 4."))
```

```check
(fraction
  (ask "Check" (math "(1/7) ÷ 3 = 1/21") ": what is" (math "(1/21) * 3") "?")
  (answer 3 21) (equivalent) (true "(1/21) * 3 = 1/7")
  (wrong-if (1 63) "Multiply only the numerator by 3: 3/21.")
  (hint "3 x 1 = 3."))
```

---

```check
(choice
  (ask "Which quotient is right?")
  (right "(1/4) ÷ 3 = 1/12" (true "(1/12) * 3 = 1/4"))
  (wrong "(1/4) ÷ 3 = 3/4"
    "Check: (3/4) x 3 = 9/4, not 1/4.")
  (wrong "(1/4) ÷ 3 = 1/7"
    "Check: (1/7) x 3 = 3/7, not 1/4.")
  (hint "Multiply each answer by 3. Which gives 1/4?"))
```

```check
(fraction
  (ask "Find" (math "(1/10) ÷ 2") ".")
  (answer 1 20) (equivalent) (true "(1/10) ÷ 2 = 1/20")
  (wrong-if (1 5) "Check: (1/5) x 2 = 2/5, not 1/10.")
  (hint "Check your answer: times 2 should give 1/10."))
```

Check a quotient by multiplying it by the divisor: you should get the
number you divided.
