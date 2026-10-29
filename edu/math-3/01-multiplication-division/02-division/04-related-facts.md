# Related facts

```lesson
(objective "Write the multiplication and division facts that use the same three numbers.")
(standards "3.OA.B.6")
(minutes 20)
(keywords "related facts")
```

You can turn one multiplication fact into 4 facts.

Look at the array. It has 3 rows of 5 dots, so 3 × 5 = 15. It also has
5 columns of 3 dots, so 5 × 3 = 15.

```figure
(dot-array 90 50 3 5 35 'ink)
(label 160 170 "3 × 5 = 15     5 × 3 = 15" 'body)
(label 160 196 "15 ÷ 3 = 5     15 ÷ 5 = ?" 'body)
```

The same array shows division too. Share 15 dots into 3 rows: 5 in
each. Share them into 5 columns: 3 in each.

```check
(number
  (ask "The array has 15 dots in 5 columns. 15 ÷ 5 = ?")
  (answer 3) (from "15 / 5")
  (wrong-if 10 "10 is 15 - 5. Each column holds an equal share of 15. Count the dots in one column.")
  (hint "Count the dots in one column."))
```

---

## A family of 4 facts

Facts that use the same 3 numbers are **related facts**. For 3, 5 and
15 there are 4 of them:

- 3 × 5 = 15
- 5 × 3 = 15
- 15 ÷ 3 = 5
- 15 ÷ 5 = 3

In every one, 15 is the biggest number. It is the product in the
multiplication facts and the dividend in the division facts.

```check
(choice
  (ask "Which fact is NOT related to 4 × 7 = 28?")
  (right "28 ÷ 2 = 14")
  (wrong "28 ÷ 7 = 4"
    "This one uses 4, 7 and 28, so it is related. Look for a fact that uses a different number.")
  (wrong "7 × 4 = 28"
    "This one uses 4, 7 and 28, the same 3 numbers. It is related.")
  (wrong "28 ÷ 4 = 7"
    "This one uses 4, 7 and 28. It is related.")
  (hint "Related facts use the same 3 numbers: 4, 7 and 28."))
```

---

## Where the total goes

In a division fact, the total comes first. In a multiplication fact,
the total comes after the = sign. In 6 × 8 = 48 and 48 ÷ 6 = 8, the
total is 48.

```check
(choice
  (ask "Which is a true division fact for 7, 8 and 56?")
  (right "56 ÷ 7 = 8" (true "56 / 7 = 8"))
  (wrong "7 ÷ 56 = 8"
    "The total comes first in a division. 56 is the total, so write 56 ÷ 7.")
  (wrong "56 ÷ 8 = 6" (false "56 / 8 = 6")
    "6 is not one of the 3 numbers. 56 ÷ 8 is 7, because 8 × 7 = 56.")
  (hint "Start with 56, the total."))
```

---

## Worked example

```example
(example
  (problem "Write the related facts for 2, 9 and 18.")
  (step "18 is the biggest. It is the product: 2 × 9 = 18 and 9 × 2 = 18.")
  (step "18 is the dividend in the division facts.")
  (step "18 ÷ 2 = 9 and 18 ÷ 9 = 2.")
  (answer "2 × 9 = 18, 9 × 2 = 18, 18 ÷ 2 = 9, 18 ÷ 9 = 2"))
```

```example
(example
  (problem "Write the related facts for 5, 6 and 30.")
  (step "Multiplication: 5 × 6 = 30 and 6 × 5 = 30.")
  (step "Division: 30 ÷ 5 = 6.")
  (step (number (ask "30 ÷ 6 = ?") (answer 5) (from "30 / 6")
    (wrong-if 24 "24 is 30 - 6. Use the related fact 6 × 5 = 30: so 30 ÷ 6 = 5.")))
  (answer "5 × 6 = 30, 6 × 5 = 30, 30 ÷ 5 = 6, 30 ÷ 6 = 5"))
```

---

## Practice

```check
(number
  (ask "8 × 3 = 24. Use it to find 24 ÷ 8.")
  (answer 3) (from "24 / 8")
  (wrong-if 16 "16 is 24 - 8. 8 × 3 = 24 tells you that 8 groups of 3 make 24. So 24 ÷ 8 = 3.")
  (hint "8 times what makes 24?"))
```

```check
(number
  (ask "36 ÷ 4 = 9. Which number goes in 4 × ? = 36?")
  (answer 9) (from "36 / 4")
  (wrong-if 32 "32 is 36 - 4. Use the related fact: 36 ÷ 4 = 9, so 4 × 9 = 36.")
  (hint "The same 3 numbers: 4, 9 and 36."))
```

---

```check
(choice (several)
  (ask "Which facts are related to 7 × 6 = 42? Choose all.")
  (right "42 ÷ 6 = 7")
  (right "6 × 7 = 42")
  (right "42 ÷ 7 = 6")
  (wrong "42 - 6 = 36"
    "This one subtracts. Related facts for 7 × 6 = 42 multiply or divide with 6, 7 and 42.")
  (hint "Look for facts that use 6, 7 and 42 with × or ÷."))
```

So: related facts use the same 3 numbers, so one multiplication fact gives you 2 division facts.
