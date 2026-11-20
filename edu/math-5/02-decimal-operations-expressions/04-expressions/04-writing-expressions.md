# Writing expressions

```lesson
(objective "Write an expression for a calculation given in words, such as \"add 8 and 7, then multiply by 2\" as 2 x (8 + 7).")
(standards "5.OA.A.2")
(minutes 20)
```

You can write an expression that records a calculation given in words.

"Add 8 and 7, then multiply by 2." The sum comes first, so put it in
parentheses. Then multiply it by 2:

$$ 2 * (8 + 7) $$

Without the parentheses, $2 * 8 + 7$ would multiply first. That is a
different calculation.

```check
(choice
  (ask "Which expression records \"add 5 and 3, then multiply by 4\"?")
  (right "4 × (5 + 3)" (true "4 * (5 + 3) = 32"))
  (wrong "4 × 5 + 3" (true "4 * 5 + 3 = 23")
    "Without parentheses you multiply first: 4 × 5, then add 3. The words say to add first, so put 5 + 3 in parentheses.")
  (wrong "5 + 3 × 4" (true "5 + 3 * 4 = 17")
    "Here 3 × 4 comes first. The words add 5 and 3 first: (5 + 3) × 4 or 4 × (5 + 3).")
  (hint "What do the words do first? Put that in parentheses."))
```

---

## Words for operations

- "add", "sum", "plus", "more than": +
- "subtract", "difference", "minus", "less than", "take away": -
- "multiply", "product", "times", "twice": ×
- "divide", "quotient", "split equally": ÷

"Twice" means 2 times. "3 less than 10" is $10 - 3$, not $3 - 10$: you
start with 10 and take 3 away.

```check
(choice
  (ask "Which expression records \"subtract 6 from 20, then divide by 2\"?")
  (right "(20 - 6) ÷ 2" (true "(20 - 6) ÷ 2 = 7"))
  (wrong "(6 - 20) ÷ 2"
    "\"Subtract 6 from 20\" starts with 20 and takes 6 away: 20 - 6.")
  (wrong "20 - 6 ÷ 2" (true "20 - 6 ÷ 2 = 17")
    "Without parentheses you divide first: 6 ÷ 2. The words subtract first, so write (20 - 6).")
  (hint "Subtract 6 from 20 means 20 - 6."))
```

---

## When parentheses are not needed

"Multiply 4 by 6, then add 3" is $4 * 6 + 3$. Multiplying comes first
anyway, so no parentheses are needed. You may still write
$(4 * 6) + 3$: it has the same value.

```check
(choice
  (ask "Which records \"multiply 7 by 3, then subtract 1\"? Choose all that are right.")
  (several)
  (right "7 × 3 - 1" (true "7 * 3 - 1 = 20"))
  (right "(7 × 3) - 1" (true "(7 * 3) - 1 = 20"))
  (wrong "7 × (3 - 1)" (true "7 * (3 - 1) = 14")
    "This subtracts first: 3 - 1. The words multiply first.")
  (hint "Multiplying comes before subtracting even without parentheses."))
```

---

## Worked example

```example
(example
  (problem "Write an expression: add 9 and 6, then divide by 3. Then find its value.")
  (step "The sum comes first: (9 + 6).")
  (step "Then divide by 3: (9 + 6) ÷ 3.")
  (step "Value: 15 ÷ 3 = 5.")
  (answer "(9 + 6) ÷ 3 = 5"))
```

```example
(example
  (problem "Write an expression: twice the difference of 10 and 4.")
  (step "The difference of 10 and 4 is (10 - 4).")
  (step "Twice it is 2 × (10 - 4).")
  (step (number (ask "What is its value?") (answer 12) (from "2 * (10 - 4)")
    (wrong-if 16 "16 is 2 × 10 - 4. The difference comes first: 10 - 4 = 6, then 2 × 6.")))
  (answer "2 × (10 - 4) = 12"))
```

---

## Practice

```check
(choice
  (ask "Which expression records \"add 12 and 8, then subtract 5\"?")
  (right "12 + 8 - 5" (true "12 + 8 - 5 = 15"))
  (wrong "12 + (8 × 5)"
    "\"Subtract 5\" means - 5, not × 5.")
  (wrong "5 - (12 + 8)"
    "\"Subtract 5\" takes 5 away from the sum: (12 + 8) - 5, not 5 minus the sum.")
  (hint "Adding then subtracting goes left to right."))
```

```check
(number
  (ask "Write an expression for \"multiply the sum of 3 and 7 by 5\" and find its value.")
  (answer 50) (from "(3 + 7) * 5")
  (wrong-if 38 "38 is 3 + 7 × 5. The sum comes first: (3 + 7) × 5 = 10 × 5.")
  (hint "The sum of 3 and 7 is (3 + 7)."))
```

---

```check
(choice
  (ask "Which expression records \"divide 24 by the sum of 2 and 4\"?")
  (right "24 ÷ (2 + 4)" (true "24 ÷ (2 + 4) = 4"))
  (wrong "24 ÷ 2 + 4" (true "24 ÷ 2 + 4 = 16")
    "This divides 24 by 2 only. The words divide by the whole sum, so write (2 + 4).")
  (wrong "(2 + 4) ÷ 24"
    "\"Divide 24 by\" means 24 comes first: 24 ÷ (2 + 4).")
  (hint "24 is divided by what?"))
```

```check
(choice
  (ask "Which words match (15 - 9) × 2?")
  (right "Subtract 9 from 15, then multiply by 2")
  (wrong "Subtract 9 × 2 from 15"
    "That would be 15 - 9 × 2. The parentheses say to subtract first.")
  (wrong "Subtract 15 from 9, then double it"
    "The expression starts with 15 and takes 9 away: subtract 9 from 15.")
  (hint "What is in the parentheses?"))
```

So: write what is done first in parentheses, then the operations that follow, in the order the words give.
