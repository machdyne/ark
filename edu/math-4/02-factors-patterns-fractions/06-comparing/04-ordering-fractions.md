# Ordering fractions

```lesson
(objective "Put three or four fractions with different denominators in order from least to greatest.")
(standards "4.NF.A.2")
(minutes 25)
```

You can put 3 or 4 fractions in order from least to greatest.

Start with benchmarks. For $3/4$, $1/3$ and $1/2$: $1/3$ is less than
a half, and $3/4$ is more. So the order is $1/3$, $1/2$, $3/4$.

```figure
(number-line 30 290 120 0 1 1)
(for-each
  (lambda (f)
    (nl-mark (/ (car f) (cadr f)) 'warm)
    (math (nl-x (/ (car f) (cadr f))) 90 (m4p2-s (car f) (cadr f)) 18))
  '((1 3) (1 2) (3 4)))
(caption "Least on the left, greatest on the right")
```

```check
(choice
  (ask "Which list is in order from least to greatest?")
  (right "2/8, 1/2, 5/6" (true "2/8 < 1/2") (true "1/2 < 5/6"))
  (wrong "1/2, 2/8, 5/6"
    "2/8 is less than a half: half of 8 is 4, and 2 is less. So 2/8 comes before 1/2.")
  (wrong "5/6, 2/8, 1/2"
    "That starts with the greatest. 5/6 is close to 1, so it goes last.")
  (hint "Is each one less than 1/2, equal to it, or more?"))
```

---

## Sort by benchmarks

Put each fraction in a group: close to 0, close to $1/2$, or close to 1.
Then order inside each group. Choose a set.

```figure
(define c (choice 'set '("A" "B" "C") "Set"))
(define s (list-ref '(((1 6) (5 8) (9 10) (2 5)) ((3 4) (1 12) (1 2) (5 12)) ((2 3) (1 5) (7 8) (3 6))) c))
(number-line 30 290 120 0 1 1)
(line 160 104 160 136 'ink 2)
(let loop ((l s) (i 0))
  (if (pair? l)
      (let ((x (nl-x (/ (car (car l)) (cadr (car l))))))
        (nl-mark (/ (car (car l)) (cadr (car l))) 'warm)
        (math x (if (even? i) 88 166) (m4p2-s (car (car l)) (cadr (car l))) 16)
        (loop (cdr l) (+ i 1)))))
(caption "The thick mark is 1/2")
```

```check
(choice
  (ask "Which is the least of" (math "5/8") "," (math "1/6") "," (math "9/10") "and" (math "2/5") "?")
  (right "1/6" (true "1/6 < 2/5") (true "1/6 < 5/8") (true "1/6 < 9/10"))
  (wrong "2/5"
    "2/5 is less than a half, but 1/6 is closer to 0. A sixth is just 1 small part.")
  (wrong "9/10"
    "9/10 has the biggest numbers, but it is close to 1. It is the greatest.")
  (hint "Choose set A. Which point is farthest left?"))
```

---

## A common denominator for all

When benchmarks do not decide, write all of them with one common
denominator. For $2/3$, $3/4$, $5/6$ and $7/12$, use twelfths:

| Fraction | 2/3 | 3/4 | 5/6 | 7/12 |
| In twelfths | 8/12 | 9/12 | 10/12 | 7/12 |

So the order is $7/12$, $2/3$, $3/4$, $5/6$.

```check
(choice
  (ask "Which is the greatest of" (math "1/2") "," (math "5/12") "and" (math "2/3") "?")
  (right "2/3" (true "2/3 > 1/2") (true "2/3 > 5/12"))
  (wrong "5/12"
    "5/12 has the biggest numbers, but it is less than a half. In twelfths: 6/12, 5/12, 8/12.")
  (wrong "1/2"
    "In twelfths, 1/2 = 6/12 and 2/3 = 8/12. 2/3 is greater.")
  (hint "Write each one in twelfths."))
```

---

## Worked example

```example
(example
  (problem "Order 3/5, 1/10 and 1/2 from least to greatest.")
  (step "1/10 is close to 0.")
  (step "Half of 5 is 2 and a half, so 3/5 is more than 1/2.")
  (step "So 1/10 < 1/2 < 3/5.")
  (answer "1/10, 1/2, 3/5."))
```

```example
(example
  (problem "Order 3/4, 5/8 and 1/2 from least to greatest.")
  (step "Use eighths: 3/4 = 6/8 and 1/2 = 4/8.")
  (step "Compare 6/8, 5/8 and 4/8.")
  (step (choice (ask "What is the order?")
    (right "1/2, 5/8, 3/4")
    (wrong "5/8, 1/2, 3/4"
      "1/2 = 4/8, which is less than 5/8. So 1/2 comes first.")))
  (answer "1/2, 5/8, 3/4."))
```

---

## Practice

```check
(choice
  (ask "Which list is in order from least to greatest?")
  (right "1/4, 1/3, 1/2")
  (wrong "1/2, 1/3, 1/4"
    "That is from greatest to least. With the same numerator, the bigger denominator has smaller parts.")
  (wrong "1/3, 1/4, 1/2"
    "1/4 is less than 1/3: fourths are smaller than thirds.")
  (hint "Same numerator. Which parts are smallest?"))
```

```check
(choice
  (ask "Which list is in order from least to greatest?")
  (right "3/10, 1/2, 4/5, 11/12")
  (wrong "1/2, 3/10, 4/5, 11/12"
    "3/10 is less than a half: half of 10 is 5. So 3/10 comes first.")
  (wrong "3/10, 1/2, 11/12, 4/5"
    "11/12 is missing 1/12 and 4/5 is missing 1/5. 11/12 is closer to 1, so it is last.")
  (hint "Use 1/2 first, then compare the 2 fractions close to 1."))
```

---

```check
(choice
  (ask "Which is the least of" (math "2/3") "," (math "3/5") "and" (math "5/6") "?")
  (right "3/5" (true "3/5 < 2/3") (true "3/5 < 5/6"))
  (wrong "2/3"
    "2/3 is missing 1/3, and 3/5 is missing 2/5. 2/5 is more than 1/3, so 3/5 is less.")
  (wrong "5/6"
    "5/6 is missing only 1/6. It is the greatest.")
  (hint "What is each one missing to make 1?"))
```

```check
(choice
  (ask "Which list is in order from least to greatest?")
  (right "1/6, 2/6, 2/3, 5/6")
  (wrong "1/6, 2/3, 2/6, 5/6"
    "2/3 = 4/6, which is more than 2/6. So 2/6 comes before 2/3.")
  (wrong "2/6, 1/6, 2/3, 5/6"
    "1/6 is less than 2/6: fewer parts of the same size.")
  (hint "Write 2/3 in sixths."))
```

So: sort fractions by benchmarks first. Then order the close ones
another way.
