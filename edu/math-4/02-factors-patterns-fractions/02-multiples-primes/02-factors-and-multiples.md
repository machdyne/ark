# Factors and multiples

```lesson
(objective "Explain that a whole number is a multiple of each of its factors: 24 is a multiple of 1, 2, 3, 4, 6, 8, 12 and 24.")
(standards "4.OA.B.4")
(minutes 20)
```

You can see that a number is a multiple of each of its factors.

$3 * 8 = 24$ says 2 things at once:

- 3 and 8 are factors of 24;
- 24 is a multiple of 3, and a multiple of 8.

The array has 3 rows of 8. It is 8 counted 3 times, and 3 counted 8
times.

```figure
(dot-array 62 70 3 8 28 'warm)
(math 160 190 "3 * 8 = 24" 22)
(caption "3 rows of 8 dots")
```

```check
(choice
  (ask "6 × 7 = 42. Which is true?")
  (right "42 is a multiple of 7" (true "42 = 7 * 6"))
  (wrong "7 is a multiple of 42"
    "The multiple is the product, 42. 7 is a factor of 42, not a multiple of it.")
  (wrong "42 is a factor of 6"
    "42 is the product. 6 is a factor of 42, and 42 is a multiple of 6.")
  (hint "In 6 × 7 = 42, which number is the product?"))
```

---

## Every factor

The factors of 24 are 1, 2, 3, 4, 6, 8, 12 and 24. So 24 is a multiple
of each of them. Choose a factor: its jumps land exactly on 24.

```figure
(define c (choice 'k '("2" "3" "4" "6" "8" "12") "Jumps of"))
(define k (list-ref '(2 3 4 6 8 12) c))
(number-line 30 290 150 0 24 1 4)
(for-range 0 (/ 24 k) (lambda (i) (nl-jump (* i k) (* (+ i 1) k) 'ink)))
(nl-mark 24 'warm)
(caption (string-append (fmt (/ 24 k) 0) " jumps of " (fmt k 0) " land on 24"))
```

```check
(number
  (ask "24 is a multiple of 6. How many jumps of 6 reach 24 from 0?")
  (answer 4) (from "24 / 6")
  (wrong-if 6 "Each jump is 6 long. Count the jumps: 6, 12, 18, 24.")
  (wrong-if 18 "18 is 24 - 6. Count how many 6s make 24.")
  (hint "Choose 6 in the figure and count the jumps."))
```

---

## Not a factor, not a multiple

5 is not a factor of 24. Jumps of 5 go 5, 10, 15, 20, 25. They pass 24
without landing on it. So 24 is not a multiple of 5.

```figure
(number-line 30 290 150 0 25 1 5)
(for-range 0 5 (lambda (i) (nl-jump (* i 5) (* (+ i 1) 5) 'ink)))
(nl-mark 24 'warm "24")
(caption "Jumps of 5 miss 24")
```

```check
(choice
  (ask "Is 27 a multiple of 4?")
  (right "No: jumps of 4 land on 24, then 28" (true "27 = 4 * 6 + 3"))
  (wrong "Yes: 27 is more than 4"
    "Being more than 4 is not enough. Jumps of 4 go 24, 28: they miss 27.")
  (wrong "Yes: 27 = 4 + 23"
    "A multiple is 4 times a whole number, not 4 plus a number. 4 × 6 = 24 and 4 × 7 = 28.")
  (hint "Count by 4s: 20, 24, 28. Is 27 there?"))
```

---

## Factor of, multiple of

The 2 words point in opposite ways:

- 9 is a *factor* of 36: it divides 36 with no remainder.
- 36 is a *multiple* of 9: it is 9 times a whole number.

For whole numbers greater than 0, the factor is never greater than the
multiple.

```check
(choice (several)
  (ask "Which are true? Choose all.")
  (right "9 is a factor of 36" (true "36 = 9 * 4"))
  (right "36 is a multiple of 9" (true "36 = 9 * 4"))
  (wrong "36 is a factor of 9"
    "36 is greater than 9, so it cannot divide 9 into whole groups. 36 is a multiple of 9.")
  (wrong "9 is a multiple of 36"
    "The multiples of 36 are 36, 72, 108 ... 9 is a factor of 36, not a multiple.")
  (hint "The factor is the smaller one here."))
```

---

## Worked example

```example
(example
  (problem "18 is a multiple of which numbers?")
  (step "18 is a multiple of each of its factors.")
  (step "Factor pairs of 18: 1 and 18, 2 and 9, 3 and 6.")
  (step "So the factors are 1, 2, 3, 6, 9 and 18.")
  (answer "18 is a multiple of 1, 2, 3, 6, 9 and 18."))
```

```example
(example
  (problem "20 is a multiple of which numbers?")
  (step "Factor pairs of 20: 1 and 20, 2 and 10, 4 and 5.")
  (step (choice (ask "So 20 is a multiple of which numbers?")
    (right "1, 2, 4, 5, 10 and 20")
    (wrong "2, 4, 6, 8 and 10"
      "Those are the first multiples of 2. You want the numbers that 20 is a multiple of: its factors.")))
  (answer "1, 2, 4, 5, 10 and 20."))
```

---

## Practice

```check
(choice (several)
  (ask "30 is a multiple of which numbers? Choose all.")
  (right "5" (true "30 = 5 * 6"))
  (right "15" (true "30 = 15 * 2"))
  (right "3" (true "30 = 3 * 10"))
  (wrong "60" (true "60 = 30 * 2")
    "60 is a multiple of 30, not the other way. 30 is a multiple of its factors.")
  (wrong "4" (true "30 = 4 * 7 + 2")
    "4 × 7 = 28 and 4 × 8 = 32. 30 is between them, so it is not a multiple of 4.")
  (hint "30 is a multiple of each of its factors. Which are factors of 30?"))
```

```check
(number
  (ask "45 is a multiple of 9. 9 × ? = 45")
  (answer 5) (from "45 / 9")
  (wrong-if 36 "36 is 45 - 9. Which number times 9 makes 45?")
  (wrong-if 4 "9 × 4 = 36. One more 9 makes 45.")
  (hint "Count by 9s: 9, 18, 27, 36, 45."))
```

---

```check
(choice
  (ask "7 is a factor of a number. What must be true of the number?")
  (right "It is a multiple of 7")
  (wrong "It is less than 7"
    "The number is 7 times a whole number. 7 is a factor of 7, 14, 21, 70 ...: all 7 or more.")
  (wrong "It ends in 7"
    "14 has 7 as a factor and ends in 4. A multiple of 7 can end in any digit.")
  (hint "If 7 is a factor of a number, the number is 7 times a whole number."))
```

```check
(number
  (ask "How many numbers is 16 a multiple of? (Count 1 and 16.)")
  (answer 5)
  (wrong-if 3 "16 has 3 factor pairs: 1 and 16, 2 and 8, 4 and 4. That is 5 different factors, as 4 is only one number.")
  (wrong-if 6 "4 and 4 is one number, 4, used twice. The factors are 1, 2, 4, 8 and 16.")
  (hint "16 is a multiple of each of its factors. List them."))
```

So: a number is a multiple of each of its factors. $3 * 8 = 24$ makes
24 a multiple of 3 and of 8.
