# All the factors

```lesson
(objective "List all the factors of a number from 1 to 100 by testing 1, 2, 3 ... in order and stopping when the pairs meet.")
(standards "4.OA.B.4")
(minutes 25)
```

You can list all the factors of a number without missing one.

Test 1, 2, 3 ... in order. Does the number share into that many equal
groups, with no remainder? Then you have found a factor pair. Here is
36:

| Test | 36 ÷ test | Pair |
| 1 | 36 | 1 and 36 |
| 2 | 18 | 2 and 18 |
| 3 | 12 | 3 and 12 |
| 4 | 9 | 4 and 9 |
| 5 | 7 R 1 | none |
| 6 | 6 | 6 and 6 |

```check
(number
  (ask "36 ÷ 4 = ?")
  (answer 9) (from "36 / 4")
  (wrong-if 32 "32 is 36 - 4. Dividing asks how many 4s make 36.")
  (wrong-if 8 "4 × 8 = 32, which is 4 short of 36. One more 4 makes 36.")
  (hint "Count by 4s up to 36. How many 4s?"))
```

---

## When to stop

6 is paired with itself: the pairs have met. Every factor after 6,
such as 9, is a partner you already have.

So stop when the number you test is already in a pair, or pairs with
itself. The factors of 36 are 1, 2, 3, 4, 6, 9, 12, 18 and 36.

```check
(choice
  (ask "Pairs of 24 so far: 1 and 24, 2 and 12, 3 and 8, 4 and 6. 5 leaves a remainder. What next?")
  (right "Stop: 6 is already the partner of 4")
  (wrong "Test every number up to 24"
    "You can, but you do not need to. After 6, each factor is a partner you already have: 8, 12 and 24.")
  (wrong "Test 7, then stop at 12, half of 24"
    "Half of 24 is a partner you already have. You can stop sooner: the next test, 6, is the partner of 4.")
  (hint "Is the next number to test already in a pair?"))
```

---

## The pairs meet in the middle

Write the factors in order, from least to greatest. Each small factor
pairs with a big one. The pairs close in on the middle.

```figure
(define f '(1 2 3 4 6 8 12 24))
(for-range 0 4
  (lambda (i)
    (let ((a (+ 30 (* i 37))) (b (+ 30 (* (- 7 i) 37))))
      (arc (/ (+ a b) 2) 140 (/ (- b a) 2) 0 180 'ink 1.5))))
(for-range 0 8 (lambda (i) (text (+ 30 (* i 37)) 162 (fmt (list-ref f i) 0) 'centre 'body 'bold)))
(caption "The factors of 24, joined in pairs")
```

```check
(number
  (ask "How many factors does 24 have?")
  (answer 8)
  (wrong-if 4 "24 has 4 factor pairs. Each pair has 2 factors: 8 factors in all.")
  (wrong-if 7 "Count every number in the list: 1, 2, 3, 4, 6, 8, 12, 24.")
  (hint "Count the numbers under the arcs."))
```

---

## 1 and the number itself

Every whole number has 1 as a factor: $1 * 36 = 36$. Every whole number
is also a factor of itself. So for a number from 1 to 100, the list of
factors starts with 1 and ends with the number.

```check
(choice
  (ask "Which number is a factor of every whole number?")
  (right "1")
  (wrong "2"
    "2 is a factor of even numbers only. 7 cannot be shared into 2 equal groups with no remainder. 1 × 7 = 7, so 1 works.")
  (wrong "10"
    "10 is a factor of 30, but not of 7. Every number is 1 times itself, so 1 is a factor of every number.")
  (hint "Every number is one group of itself."))
```

---

## Worked example

```example
(example
  (problem "List all the factors of 48.")
  (step "Test 1, 2, 3, 4: 1 and 48, 2 and 24, 3 and 16, 4 and 12.")
  (step "5 leaves a remainder: 48 ÷ 5 = 9 R 3.")
  (step "6 works: 6 and 8. 7 leaves a remainder: 48 ÷ 7 = 6 R 6.")
  (step "The next test is 8, already the partner of 6. Stop.")
  (answer "1, 2, 3, 4, 6, 8, 12, 16, 24, 48."))
```

```example
(example
  (problem "List all the factors of 28.")
  (step "1 and 28, 2 and 14. 3 leaves a remainder: 28 ÷ 3 = 9 R 1.")
  (step "4 works: 4 and 7. 5 and 6 leave remainders.")
  (step (choice (ask "The next test is 7. What do you do?")
    (right "Stop: 7 is already the partner of 4")
    (wrong "Keep testing up to 28"
      "7 is already in the pair 4 and 7. Every factor after it is a partner you have.")))
  (answer "1, 2, 4, 7, 14, 28."))
```

---

## Practice

```check
(number
  (ask "How many factors does 30 have?")
  (answer 8)
  (wrong-if 4 "That is the number of factor pairs. Each pair gives 2 factors: 1, 2, 3, 5, 6, 10, 15, 30.")
  (wrong-if 6 "Check 5: 5 × 6 = 30. The factors are 1, 2, 3, 5, 6, 10, 15 and 30.")
  (hint "Test 1, 2, 3, 4, 5 in order. Stop at 6, the partner of 5."))
```

```check
(choice (several)
  (ask "Which are factors of 42? Choose all.")
  (right "7" (true "7 * 6 = 42"))
  (right "14" (true "14 * 3 = 42"))
  (right "21" (true "21 * 2 = 42"))
  (wrong "4" (true "42 = 4 * 10 + 2")
    "42 ÷ 4 = 10 R 2. 42 is even, but that only shows that 2 is a factor.")
  (wrong "8" (true "42 = 8 * 5 + 2")
    "8 × 5 = 40 and 8 × 6 = 48. Neither is 42, so 8 is not a factor.")
  (hint "Test each one: does it make 42 with no remainder?"))
```

---

```check
(number
  (ask "Mo lists the factors of 18: 1, 2, 3, 6, 18. He missed one. Which?")
  (answer 9) (from "18 / 2")
  (wrong-if 4 "18 ÷ 4 = 4 R 2, so 4 is not a factor. Look for the partner of 2.")
  (wrong-if 12 "12 is not a factor of 18: 12 × 2 = 24. Look for the partner of 2.")
  (hint "Each factor has a partner. What is the partner of 2?"))
```

```check
(number
  (ask "What is the greatest factor of 50 that is less than 50?")
  (answer 25) (from "50 / 2")
  (wrong-if 10 "10 is a factor of 50, but there is a greater one. The partner of 2 is 25.")
  (wrong-if 49 "49 is less than 50, but 50 ÷ 49 leaves a remainder. Pair 50 with its smallest factors.")
  (hint "The partner of the smallest factor after 1 is the biggest one before 50."))
```

So: test 1, 2, 3 ... in order, write each pair, and stop when the pairs
meet.
