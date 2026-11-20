# Finding common denominators

```lesson
(objective "Find a common denominator for two fractions from a common multiple of their denominators, such as the product or a smaller common multiple.")
(standards "5.NF.A.1")
(minutes 20)
```

To add $1/4$ and $1/6$, you need parts of one size. A common
denominator is a common multiple of 4 and 6.

List the multiples of each denominator. Look for numbers in both lists.

```figure
(text 20 50 "Multiples of 4:" 'left 'body)
(text 20 120 "Multiples of 6:" 'left 'body)
(for-range 1 7 (lambda (i)
  (let ((x (+ 20 (* i 42))) (m4 (* 4 i)) (m6 (* 6 i)))
    (text x 80 (fmt m4 0) 'centre 'body 'bold)
    (text x 150 (fmt m6 0) 'centre 'body 'bold)
    (if (= 0 (modulo m4 6)) (ring x 75 15 'ink 1.5))
    (if (and (= 0 (modulo m6 4)) (<= m6 24)) (ring x 145 15 'ink 1.5)))))
(caption "12 and 24 are in both lists.")
```

```check
(number
  (ask "Multiples of 3: 3, 6, 9, 12, 15 ... Multiples of 4: 4, 8, 12, 16 ... Which number less than 20 is in both lists?")
  (answer 12) (from "3 * 4")
  (wrong-if 7 "7 is 3 + 4, not a multiple of both. 7 is not in either list.")
  (wrong-if 6 "6 is a multiple of 3, but not of 4.")
  (hint "Count by 3s and by 4s.")
  (hint "Which number do you say both times?"))
```

---

## The product always works

Multiply the denominators. The product is a multiple of each one, so it
is always a common denominator.

For $1/4$ and $1/6$: $4 * 6 = 24$. So 24 works.

But 12 works too, and it is smaller. Smaller numbers are easier to work
with. Either one gives the right answer.

```check
(number
  (ask "Multiply the denominators to find a common denominator for" (math "1/5") "and" (math "1/2") ".")
  (answer 10) (from "5 * 2")
  (wrong-if 7 "Adding the denominators does not give a multiple of both. Multiply them: 5 x 2.")
  (hint "5 x 2 = ?"))
```

---

## Write the equivalent fractions

Now write each fraction with the common denominator. Multiply the top
and the bottom by the same number.

For 12: $4 * 3 = 12$, so $1/4 = (1 * 3)/(4 * 3) = 3/12$. And
$6 * 2 = 12$, so $1/6 = 2/12$.

```figure
(frac-bar 0 4 1 'cool "1/4")
(frac-bar 1 12 3 'cool "3/12")
(frac-bar 2 6 1 'warm "1/6")
(frac-bar 3 12 2 'warm "2/12")
```

```check
(fraction
  (ask "Write" (math "5/6") "with the denominator 12.")
  (answer 10 12) (true "5/6 = 10/12")
  (wrong-if (5 12) "The bottom was multiplied by 2, so multiply the top by 2 too: 5 x 2 = 10.")
  (wrong-if (11 12) "Adding 6 to the top and the bottom changes the size. Multiply both by 2.")
  (hint "6 x 2 = 12.")
  (hint "So multiply 5 by 2 too."))
```

---

## When one denominator is a multiple of the other

For $1/3$ and $5/9$: 9 is a multiple of 3. So 9 is a common
denominator. Change only $1/3$:

$$ 1/3 = 3/9 $$

The product $3 * 9 = 27$ works too, but 9 is easier.

```check
(choice
  (ask "Which is the easiest common denominator for" (math "1/2") "and" (math "3/8") "?")
  (right "8")
  (wrong "16"
    "16 = 2 x 8 works, but 8 is already a multiple of 2. You only need to change 1/2.")
  (wrong "10"
    "10 = 2 + 8. 10 is not a multiple of 8, so eighths cannot be written as tenths with whole numbers on top.")
  (hint "Is 8 a multiple of 2?"))
```

---

## Worked example

```example
(example
  (problem "Write 3/4 and 1/6 with a common denominator.")
  (step "Multiples of 6: 6, 12. 12 is also a multiple of 4.")
  (step "3/4 = 9/12, because 4 x 3 = 12 and 3 x 3 = 9.")
  (step "1/6 = 2/12, because 6 x 2 = 12 and 1 x 2 = 2.")
  (answer "3/4 = 9/12 and 1/6 = 2/12."))
```

```example
(example
  (problem "Write 2/3 and 1/5 with a common denominator.")
  (step "No smaller common multiple: use the product, 3 x 5 = 15.")
  (step "1/5 = 3/15.")
  (step (fraction (ask "2/3 = ?/15") (answer 10 15) (true "2/3 = 10/15")
    (wrong-if (2 15) "The bottom was multiplied by 5. Multiply the top by 5 too.")))
  (answer "2/3 = 10/15 and 1/5 = 3/15."))
```

---

## Practice

```check
(text
  (ask "Find a common denominator for" (math "1/6") "and" (math "3/8") "that is less than 48.")
  (accept "24")
  (wrong-if "48" "48 = 6 x 8 works, but the question asks for one less than 48. Look for a smaller common multiple.")
  (wrong-if "14" "14 = 6 + 8. It is not a multiple of 6 or of 8.")
  (hint "Count by 8s: 8, 16, 24 ...")
  (hint "Which of those is a multiple of 6?"))
```

```check
(fraction
  (ask "Write" (math "3/5") "in tenths.")
  (answer 6 10) (true "3/5 = 6/10")
  (wrong-if (3 10) "The bottom is multiplied by 2. Multiply the top by 2 as well.")
  (hint "5 x 2 = 10."))
```

---

```check
(choice
  (ask "Which of these is NOT a common denominator for" (math "1/4") "and" (math "1/10") "?")
  (right "14" (false "14 = 4 * 10"))
  (wrong "20"
    "20 is 4 x 5 and 10 x 2, so it is a common multiple. It works.")
  (wrong "40"
    "40 is the product 4 x 10. The product always works.")
  (hint "A common denominator must be a multiple of 4 and of 10."))
```

```check
(fraction
  (ask "Write" (math "7/12") "with the denominator 24.")
  (answer 14 24) (true "7/12 = 14/24")
  (wrong-if (7 24) "Multiply the top by 2 as well as the bottom.")
  (hint "12 x 2 = 24."))
```

A common denominator is a common multiple of the denominators: the
product always works, and a smaller one is often easier.
