# A fraction is a division

```lesson
(objective "Write a division as a fraction and a fraction as a division, a/b = a ÷ b, such as 3 ÷ 4 = 3/4 and 12/3 = 12 ÷ 3 = 4.")
(standards "5.NF.B.3")
(minutes 20)
```

Sharing 3 pancakes among 4 people is the division $3 ÷ 4$. Each person
gets $3/4$. So

$$ 3 ÷ 4 = 3/4 $$

Every fraction is a division: the numerator divided by the denominator.

$$ a/b = a ÷ b $$

```figure
(number-line 30 290 120 0 1 0.25 1)
(nl-mark 0.75 'warm)
(math (nl-x 0.75) 90 "3 ÷ 4 = 3/4" 18)
(caption "3 ÷ 4 lands at 3/4 on the number line.")
```

```check
(fraction
  (ask "Write" (math "5 ÷ 6") "as a fraction.")
  (answer 5 6) (true "5 ÷ 6 = 5/6")
  (wrong-if (6 5) "The number being divided goes on top: 5 ÷ 6 = 5/6. 6/5 would be 6 ÷ 5.")
  (hint "The first number is the numerator."))
```

---

## A fraction as a division

Read the fraction bar as "divided by".

- $2/9 = 2 ÷ 9$
- $12/3 = 12 ÷ 3 = 4$
- $20/5 = 20 ÷ 5 = 4$

When the denominator divides the numerator with no remainder, the
fraction is a whole number.

```check
(number
  (ask "What whole number is" (math "18/6") "?")
  (answer 3) (from "18 ÷ 6")
  (wrong-if 12 "18/6 means 18 ÷ 6, not 18 - 6.")
  (wrong-if 108 "18/6 means 18 divided by 6, not 18 times 6.")
  (hint "18/6 = 18 ÷ 6."))
```

---

## The order matters

$3 ÷ 4$ and $4 ÷ 3$ are not the same.

- $3 ÷ 4 = 3/4$: less than 1.
- $4 ÷ 3 = 4/3$: more than 1.

The dividend, the number being divided, is the numerator. The divisor
is the denominator.

```check
(choice
  (ask "Which is equal to" (math "7 ÷ 2") "?")
  (right "7/2" (true "7 ÷ 2 = 7/2"))
  (wrong "2/7"
    "2/7 is 2 ÷ 7. The dividend, 7, goes on top: 7/2.")
  (wrong "7 - 2"
    "The fraction bar means divide, not subtract.")
  (hint "The dividend goes on top."))
```

---

## Worked example

```example
(example
  (problem "Write 9 ÷ 4 as a fraction, and 30/6 as a division.")
  (step "9 ÷ 4: the dividend 9 is the numerator. 9 ÷ 4 = 9/4.")
  (step "30/6: the numerator divided by the denominator. 30/6 = 30 ÷ 6.")
  (step "30 ÷ 6 = 5.")
  (answer "9 ÷ 4 = 9/4, and 30/6 = 30 ÷ 6 = 5."))
```

```example
(example
  (problem "Write 2 ÷ 5 as a fraction.")
  (step "The dividend 2 is the numerator, the divisor 5 the denominator.")
  (step (fraction (ask "2 ÷ 5 = ?") (answer 2 5) (true "2 ÷ 5 = 2/5")
    (wrong-if (5 2) "5/2 is 5 ÷ 2. Put the dividend, 2, on top.")))
  (answer "2 ÷ 5 = 2/5."))
```

---

## Practice

```check
(fraction
  (ask "Write" (math "11 ÷ 12") "as a fraction.")
  (answer 11 12) (true "11 ÷ 12 = 11/12")
  (wrong-if (12 11) "That is 12 ÷ 11. The dividend, 11, goes on top.")
  (hint "Numerator first."))
```

```check
(number
  (ask "What whole number is" (math "56/8") "?")
  (answer 7) (from "56 ÷ 8")
  (wrong-if 48 "The fraction bar means divide. 56 ÷ 8 = 7.")
  (hint "8 x ? = 56"))
```

---

```check
(choice
  (ask "Which is NOT equal to the others?")
  (right "6/24" (false "6/24 = 4"))
  (wrong "24/6"
    "24/6 = 24 ÷ 6 = 4. It is equal to the others.")
  (wrong "24 ÷ 6"
    "24 ÷ 6 = 4, the same as 24/6.")
  (wrong "4"
    "24 ÷ 6 = 4, so 4 is equal to 24/6.")
  (hint "Work out each one. Which is less than 1?"))
```

```check
(fraction
  (ask "A 5-meter board is cut into 8 equal pieces. How long is each piece, in meters? Write a fraction.")
  (answer 5 8) (equivalent) (true "5 ÷ 8 = 5/8")
  (wrong-if (8 5) "Each piece is shorter than 1 meter, since there are more pieces than meters. 5 ÷ 8 = 5/8.")
  (hint "The length is 5 ÷ 8."))
```

A fraction $a/b$ is the same as $a ÷ b$: the numerator divided by the
denominator.
