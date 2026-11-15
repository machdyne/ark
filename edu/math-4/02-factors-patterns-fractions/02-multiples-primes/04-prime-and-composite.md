# Prime and composite

```lesson
(objective "Tell whether a number from 1 to 100 is prime or composite by its factor pairs, and say why 1 is neither.")
(standards "4.OA.B.4")
(minutes 25)
(keywords "prime number" "composite number")
```

You can sort whole numbers by how many factors they have.

7 dots make only one array: 1 row of 7. So 7 has only 2 factors, 1
and 7.

A **prime number** is a whole number greater than 1 that has exactly 2
factors: 1 and itself. 7 is a prime number.

```figure
(dot-array 52 70 1 7 36 'warm)
(text 160 40 "1 row of 7" 'centre 'small)
(dot-array 52 150 2 3 36 'warm)
(dot-array 250 168 1 1 36 'cool)
(text 250 200 "1 left over" 'centre 'small)
(caption "7 dots in 2 rows do not fit")
```

```check
(choice
  (ask "Which is a prime number?")
  (right "5" (true "5 = 1 * 5"))
  (wrong "9" (true "9 = 3 * 3")
    "9 is odd, but odd is not the same as prime. 3 × 3 = 9, so 9 has the factors 1, 3 and 9.")
  (wrong "15" (true "15 = 3 * 5")
    "15 is odd, but 3 × 5 = 15. It has 4 factors: 1, 3, 5 and 15.")
  (hint "Which number has only 1 and itself as factors?"))
```

---

## Composite numbers

12 dots make 3 arrays: 1 by 12, 2 by 6 and 3 by 4. So 12 has more
than 2 factors.

A **composite number** is a whole number greater than 1 that has more
than 2 factors. 12 is a composite number.

Choose a number to see all its arrays.

```figure
(define c (choice 'n '("6" "7" "9" "11" "12" "13") "Number"))
(define n (list-ref '(6 7 9 11 12 13) c))
(define (pairs i acc)
  (if (> (* i i) n) (reverse acc)
      (pairs (+ i 1) (if (= 0 (modulo n i)) (cons i acc) acc))))
(define ps (pairs 1 '()))
(define y 24)
(for-each
  (lambda (r)
    (let ((k (/ n r)))
      (dot-array (- 160 (* 9 (- k 1))) y r k 18 'warm)
      (set! y (+ y (* 18 r) 18))))
  ps)
(label 160 214 (if (= (length ps) 1) "1 array: prime" (string-append (fmt (length ps) 0) " arrays: composite")) 'body 'bold)
```

```check
(choice (several)
  (ask "Which are composite numbers? Choose all.")
  (right "9" (true "9 = 3 * 3"))
  (right "12" (true "12 = 3 * 4"))
  (wrong "11"
    "11 dots make only 1 row of 11. Its only factors are 1 and 11, so 11 is prime.")
  (wrong "13"
    "13 has only the factors 1 and 13. It is prime, not composite.")
  (hint "Choose each number in the figure. How many arrays?"))
```

---

## 1 is neither

1 has only one factor: 1. A prime number has exactly 2 factors, so 1
is not prime. A composite number has more than 2, so 1 is not
composite either.

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.OA.B.4: whether a whole number from 1 to 100 is prime or composite")
```

```check
(choice
  (ask "Why is 1 not a prime number?")
  (right "It has only one factor, and a prime has exactly 2")
  (wrong "It is too small to have factors"
    "1 does have a factor: 1 × 1 = 1. But it has only that one, and a prime needs exactly 2.")
  (wrong "It is a composite number"
    "A composite number has more than 2 factors. 1 has just one, so it is not composite either.")
  (hint "Count the factors of 1."))
```

---

## Quick tests

- 2 is the only even prime number. Every other even number has 2 as a
  factor, so it has more than 2 factors.
- Every number greater than 5 that ends in 5 has 5 as a factor. So it
  is composite.
- Odd numbers can be composite too: $21 = 3 * 7$.

```check
(choice
  (ask "Is 2 a prime number?")
  (right "Yes: its only factors are 1 and 2")
  (wrong "No: it is even"
    "Most even numbers are composite, because 2 is a factor of them. But 2 itself has only 1 and 2 as factors.")
  (wrong "No: it is too small"
    "Any whole number greater than 1 can be prime. 2 has exactly 2 factors: 1 and 2.")
  (hint "List the factors of 2."))
```

---

## Worked example

```example
(example
  (problem "Is 51 prime or composite?")
  (step "51 is odd, so 2 is not a factor.")
  (step "Test 3: 51 ÷ 3 = 17, with no remainder.")
  (step "So 51 = 3 × 17. It has the factors 1, 3, 17 and 51.")
  (answer "51 is composite."))
```

```example
(example
  (problem "Is 29 prime or composite?")
  (step "29 is odd, and it does not end in 0 or 5.")
  (step "Test 3 and 4: 29 ÷ 3 = 9 R 2 and 29 ÷ 4 = 7 R 1.")
  (step "6 × 6 = 36 is more than 29. A pair with 6 or more would need a partner under 6, and none worked.")
  (step (choice (ask "So is 29 prime or composite?")
    (right "Prime: its only factors are 1 and 29")
    (wrong "Composite: it is odd"
      "Odd does not mean composite. No number from 2 to 5 divides 29, so 1 and 29 are its only factors.")))
  (answer "29 is prime."))
```

---

## Practice

```check
(text
  (ask "Is 57 prime or composite? Type prime or composite.")
  (accept "composite")
  (wrong-if "prime" "57 looks prime, but test 3: 57 ÷ 3 = 19. So 57 = 3 × 19, and it has 4 factors.")
  (hint "Test 2, then 3.")
  (hint "57 ÷ 3 = ?"))
```

```check
(choice
  (ask "Which number is prime?")
  (right "41")
  (wrong "39" (true "39 = 3 * 13")
    "39 = 3 × 13, so it has the factors 1, 3, 13 and 39. It is composite.")
  (wrong "49" (true "49 = 7 * 7")
    "49 = 7 × 7, so 7 is a factor. It has 3 factors: 1, 7 and 49.")
  (wrong "51" (true "51 = 3 * 17")
    "51 = 3 × 17. It is composite.")
  (hint "Test each one with 3 and with 7."))
```

---

```check
(number
  (ask "How many factors does every prime number have?")
  (answer 2)
  (wrong-if 1 "Only the number 1 has 1 factor, and 1 is not prime. A prime has 1 and itself.")
  (hint "A prime number has 1 and ... as factors."))
```

```check
(choice
  (ask "Tom says every odd number is prime. Which number shows he is wrong?")
  (right "25" (true "25 = 5 * 5"))
  (wrong "23"
    "23 is odd and prime: its only factors are 1 and 23. It does not show Tom is wrong.")
  (wrong "2"
    "2 is even, so it says nothing about odd numbers. You need an odd number that is composite.")
  (hint "Find an odd number with a factor other than 1 and itself."))
```

So: a prime number has exactly 2 factors. A composite number has more
than 2. 1 has only one factor, so it is neither.
