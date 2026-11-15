# Factor pairs

```lesson
(objective "Find factor pairs of a whole number with arrays, such as 1 x 12, 2 x 6 and 3 x 4 for 12.")
(standards "4.OA.B.4")
(minutes 20)
(keywords "factor pair")
```

You can find the factor pairs of a number with arrays.

Here are 12 dots in 3 rows of 4. So $3 * 4 = 12$, and 3 and 4 are
factors of 12.

A **factor pair** of a number is 2 whole numbers whose product is that
number. 3 and 4 are a factor pair of 12.

```figure
(dot-array 100 60 3 4 40 'warm)
(math 160 190 "3 * 4 = 12" 24)
(caption "3 rows of 4 dots")
```

```check
(choice
  (ask "Which is a factor pair of 12?")
  (right "2 and 6" (true "2 * 6 = 12"))
  (wrong "5 and 7" (false "5 * 7 = 12")
    "5 + 7 = 12, but a factor pair multiplies. 5 × 7 = 35, not 12.")
  (wrong "4 and 8" (false "4 * 8 = 12")
    "4 × 8 = 32. A factor pair of 12 has a product of 12.")
  (hint "Multiply each pair. Which product is 12?"))
```

---

## More arrays of 12

The same 12 dots can make other arrays. Choose the number of rows.
Each array that uses all 12 dots, with full rows, gives a factor pair.

```figure
(define c (choice 'rows '("1" "2" "3" "4" "6" "12") "Rows"))
(define r (list-ref '(1 2 3 4 6 12) c))
(define k (/ 12 r))
(define g (if (> r 6) 15 (if (> k 6) 22 30)))
(dot-array (- 160 (/ (* (- k 1) g) 2)) (- 100 (/ (* (- r 1) g) 2)) r k g 'warm)
(math 160 212 (string-append (fmt r 0) " * " (fmt k 0) " = 12") 22)
```

```check
(number
  (ask "You put 12 dots in 2 equal rows. How many dots are in each row?")
  (answer 6) (from "12 / 2")
  (wrong-if 10 "10 is 12 - 2. You share 12 into 2 equal rows: 12 ÷ 2 = 6.")
  (wrong-if 24 "24 is 12 × 2. The 12 dots are shared into 2 rows, so you divide.")
  (hint "Choose 2 rows in the figure.")
  (hint "12 ÷ 2 = ?"))
```

---

## The same pair, turned

An array of 4 rows of 3 is the array of 3 rows of 4, turned. By the
commutative property, $4 * 3 = 3 * 4$. So 3 and 4 is one factor pair,
not two.

The factor pairs of 12 are:

- 1 and 12
- 2 and 6
- 3 and 4

```check
(number
  (ask "How many factor pairs does 12 have?")
  (answer 3)
  (wrong-if 6 "You may have counted 3 × 4 and 4 × 3 as two pairs. They are the same pair, turned. 12 has 3 pairs.")
  (wrong-if 2 "Do not forget 1 and 12: 1 × 12 = 12. One row of 12 is an array too.")
  (hint "List them: 1 and 12, 2 and ..., 3 and ..."))
```

---

## When there is no array

Try 12 dots in rows of 5. You get 2 full rows and 2 dots left over:
12 ÷ 5 = 2 R 2. There is a remainder, so 5 is not a factor of 12.

```figure
(dot-array 80 60 2 5 40 'warm)
(dot-array 80 140 1 2 40 'cool)
(text 180 146 "2 left over" 'small)
(caption "12 dots in rows of 5")
```

```check
(choice
  (ask "Can you make a factor pair of 12 with 5 in it?")
  (right "No: 12 dots do not make full rows of 5" (true "12 = 5 * 2 + 2"))
  (wrong "Yes: 5 and 7"
    "5 + 7 = 12, but a factor pair is about multiplying. 5 × 2 = 10 and 5 × 3 = 15, so no whole number works.")
  (wrong "Yes: 5 and 2"
    "5 × 2 = 10, not 12. The array has 2 dots left over.")
  (hint "Count by 5s: 5, 10, 15. Do you say 12?"))
```

---

## Worked example

```example
(example
  (problem "Find all the factor pairs of 18.")
  (step "1 row of 18: 1 × 18 = 18. So 1 and 18.")
  (step "2 rows of 9: 2 × 9 = 18. So 2 and 9.")
  (step "3 rows of 6: 3 × 6 = 18. So 3 and 6.")
  (step "4 and 5 leave a remainder: 18 ÷ 4 = 4 R 2 and 18 ÷ 5 = 3 R 3.")
  (step "The next try is 6, but 6 is already in a pair. So you are done.")
  (answer "1 and 18, 2 and 9, 3 and 6."))
```

```example
(example
  (problem "Find all the factor pairs of 10.")
  (step "1 × 10 = 10, so 1 and 10.")
  (step (number (ask "2 × ? = 10")
    (answer 5) (from "10 / 2")
    (wrong-if 8 "8 is 10 - 2. Which number times 2 makes 10?")))
  (step "3 and 4 leave remainders. 5 is next, and it is already paired with 2.")
  (answer "1 and 10, 2 and 5."))
```

---

## Practice

```check
(number
  (ask "4 and ? are a factor pair of 20. What is the missing factor?")
  (answer 5) (from "20 / 4")
  (wrong-if 16 "16 is 20 - 4. A factor pair multiplies: 4 × ? = 20.")
  (wrong-if 80 "80 is 4 × 20. You need 4 × ? = 20, so divide: 20 ÷ 4.")
  (hint "Count by 4s up to 20. How many 4s?"))
```

```check
(choice (several)
  (ask "Which are factor pairs of 16? Choose all.")
  (right "1 and 16" (true "1 * 16 = 16"))
  (right "2 and 8" (true "2 * 8 = 16"))
  (right "4 and 4" (true "4 * 4 = 16"))
  (wrong "8 and 8" (false "8 * 8 = 16")
    "8 + 8 = 16, but 8 × 8 = 64. A factor pair has a product of 16.")
  (wrong "3 and 5" (false "3 * 5 = 16")
    "3 × 5 = 15, one less than 16. 16 dots do not make full rows of 3.")
  (hint "Multiply each pair. Keep those whose product is 16."))
```

---

```check
(number
  (ask "How many factor pairs does 7 have?")
  (answer 1)
  (wrong-if 2 "1 × 7 and 7 × 1 are the same pair, turned. 7 dots make only 1 row of 7.")
  (wrong-if 0 "1 and 7 is a factor pair: 1 × 7 = 7. One row of 7 dots is an array.")
  (hint "Try 7 dots in 2 rows, then 3 rows. Is anything left over?"))
```

```check
(number
  (ask "6 × ? = 30")
  (answer 5) (from "30 / 6")
  (wrong-if 24 "24 is 30 - 6. Which number times 6 makes 30?")
  (wrong-if 6 "6 × 6 = 36, which is too many. Try one less.")
  (hint "Count by 6s: 6, 12, 18 ... up to 30."))
```

So: a factor pair is 2 whole numbers whose product is the number.
Each array of the number shows one.
