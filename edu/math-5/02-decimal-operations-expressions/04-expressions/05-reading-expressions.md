# Reading expressions

```lesson
(objective "Describe an expression in words without evaluating it, such as 3 x (18,932 + 921) is 3 times as large as 18,932 + 921.")
(standards "5.OA.A.2")
(minutes 20)
```

You can tell what an expression means without working out its value.

Look at $3 * (18932 + 921)$. You do not need the sum to see what it
says. It is 3 times the sum of 18,932 and 921.

So $3 * (18932 + 921)$ is 3 times as large as $18932 + 921$.

```figure
(m5p2-tape 15 60 96 30 1 "18,932 + 921" "")
(m5p2-tape 15 150 288 30 3 "18,932 + 921" "3 × (18,932 + 921)")
(caption "3 copies of the same sum")
```

```check
(choice
  (ask "How does 5 × (4,672 + 389) compare with 4,672 + 389?")
  (right "It is 5 times as large" (true "5 * (4672 + 389) = 5 * 5061"))
  (wrong "It is 5 more"
    "5 + (4,672 + 389) would be 5 more. Here the sum is multiplied by 5: 5 times as large.")
  (wrong "You cannot tell without adding"
    "You can: the expression is the sum times 5, whatever the sum is.")
  (hint "What is done to the sum in parentheses?"))
```

---

## Describing in words

Read the parentheses as one quantity, then say what is done with it.

- $(26 + 14) ÷ 2$ is half of the sum of 26 and 14.
- $7 * (90 - 35)$ is 7 times the difference of 90 and 35.
- $(612 + 88) + 100$ is 100 more than the sum of 612 and 88.

```check
(choice
  (ask "Which words describe (850 - 125) ÷ 5?")
  (right "One fifth of the difference of 850 and 125")
  (wrong "5 times the difference of 850 and 125"
    "The difference is divided by 5, not multiplied. That makes it a fifth as large.")
  (wrong "850 minus one fifth of 125"
    "That would be 850 - 125 ÷ 5. The parentheses hold the whole difference.")
  (hint "Is the difference multiplied or divided?"))
```

---

## Two expressions, one link

$4 * (2 + 9)$ and $2 + 9$: the first is 4 times the second. You can
also say the second is one fourth of the first.

```check
(number
  (ask "8,000 + 245 = 8,245. What is 2 × (8,000 + 245)? Use the sum you are given.")
  (answer 16490) (from "2 * 8245")
  (wrong-if 16245 "That doubles only the 8,000. The whole sum is doubled: 2 × 8,245.")
  (wrong-if 8247 "That adds 2. The expression multiplies the sum by 2.")
  (hint "It is 2 times 8,245."))
```

---

## Worked example

```example
(example
  (problem "Describe 6 × (1,250 + 375) in words, and compare it with 1,250 + 375.")
  (step "The parentheses hold the sum of 1,250 and 375.")
  (step "That sum is multiplied by 6.")
  (answer "6 times the sum of 1,250 and 375: 6 times as large as 1,250 + 375."))
```

```example
(example
  (problem "Compare (3,600 - 480) ÷ 4 with 3,600 - 480.")
  (step "The parentheses hold the difference of 3,600 and 480.")
  (step (choice (ask "The difference is then divided by 4. So the expression is:")
    (right "One fourth of 3,600 - 480")
    (wrong "4 times 3,600 - 480" "Dividing by 4 gives a fourth of the difference, not 4 times it.")))
  (answer "(3,600 - 480) ÷ 4 is one fourth of 3,600 - 480."))
```

---

## Practice

```check
(choice
  (ask "Which expression is 10 times as large as 523 + 77?")
  (right "10 × (523 + 77)")
  (wrong "10 × 523 + 77"
    "This multiplies only 523 by 10, then adds 77. Put the whole sum in parentheses.")
  (wrong "(523 + 77) + 10"
    "This is 10 more, not 10 times as large.")
  (hint "The whole sum must be multiplied."))
```

```check
(choice
  (ask "Which words describe 12 + (40 × 3)?")
  (right "12 more than the product of 40 and 3")
  (wrong "12 times the product of 40 and 3"
    "12 is added, not multiplied: 12 more than the product.")
  (wrong "The sum of 12 and 40, times 3"
    "That would be (12 + 40) × 3. The parentheses hold 40 × 3.")
  (hint "What is in the parentheses? What is done with it?"))
```

---

```check
(number
  (ask "952 - 152 = 800. What is (952 - 152) ÷ 4? Use the difference you are given.")
  (answer 200) (from "800 ÷ 4")
  (wrong-if 3200 "That multiplies. The difference is divided by 4: one fourth of 800.")
  (hint "One fourth of 800."))
```

```check
(choice
  (ask "Lin says 9 × (37 + 64) is 9 more than 37 + 64. Is she right?")
  (right "No: it is 9 times as large" (true "9 * (37 + 64) = 9 * 101"))
  (wrong "Yes: 9 is added to the sum"
    "The sign before the parentheses is ×, not +. The sum is multiplied by 9.")
  (wrong "No: it is 9 less"
    "Nothing is taken away. The sum is multiplied by 9: 9 times as large.")
  (hint "Look at the sign next to the 9."))
```

So: read what is in the parentheses as one quantity, then say what is done with it: times as large, a fraction of it, or more or less.
