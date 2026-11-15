# Multiples

```lesson
(objective "Tell whether a number from 1 to 100 is a multiple of a given one-digit number.")
(standards "4.OA.B.4")
(minutes 20)
```

You can tell whether a number is a multiple of a one-digit number.

A multiple of 4 is 4 times a whole number: 4, 8, 12, 16 ... You get
them by counting by 4s. On a number line, they are equal jumps of 4
from 0.

```figure
(define c (choice 'k '("3" "4" "6" "7") "Jumps of"))
(define k (list-ref '(3 4 6 7) c))
(number-line 20 300 150 0 42 1 6)
(for-range 0 (quotient 42 k)
  (lambda (i) (nl-jump (* i k) (* (+ i 1) k) 'ink)))
(for-range 1 (+ (quotient 42 k) 1)
  (lambda (i) (circle (nl-x (* i k)) (nl-y) 3.5 'ink)))
(caption (string-append "Multiples of " (fmt k 0) " up to 42"))
```

```check
(number
  (ask "Count by 7s: 7, 14, 21, 28 ... What comes next?")
  (answer 35) (from "7 * 5")
  (wrong-if 29 "29 is 28 + 1. Counting by 7s, each jump is 7: 28 + 7.")
  (wrong-if 36 "36 is 28 + 8. Each jump is 7, so add 7 to 28.")
  (hint "Choose 7 in the figure.")
  (hint "28 + 7 = ?"))
```

---

## Is it a multiple?

Is 54 a multiple of 6? Divide: 54 ÷ 6 = 9, with no remainder. So
$54 = 6 * 9$, and 54 is a multiple of 6.

A number is a multiple of 6 when it is divisible by 6. If there is a
remainder, it is not.

```check
(choice
  (ask "Is 60 a multiple of 8?")
  (right "No: 60 ÷ 8 = 7 R 4" (true "60 = 8 * 7 + 4"))
  (wrong "Yes: 60 is even"
    "Being even makes 60 a multiple of 2. For 8, divide: 8 × 7 = 56 and 8 × 8 = 64. 60 is between them.")
  (wrong "Yes: 60 ends in 0"
    "Ending in 0 makes 60 a multiple of 10 and of 5. For 8, divide: there is a remainder of 4.")
  (hint "8 × 7 = 56. 8 × 8 = 64. Is 60 one of them?"))
```

---

## On the hundred chart

Choose a number. Its multiples up to 100 are ringed. From 9 to 81,
the multiples of 9 run in a slant: each is one row down and one column
left.

```figure
(define c (choice 'k '("3" "4" "6" "7" "8" "9") "Multiples of"))
(define k (list-ref '(3 4 6 7 8 9) c))
(m4p2-hundred 50 6 22 (lambda (n) (if (= 0 (modulo n k)) 'ring #f)))
```

```check
(choice (several)
  (ask "Which numbers are multiples of 3? Choose all.")
  (right "51" (true "51 = 3 * 17"))
  (right "81" (true "81 = 3 * 27"))
  (wrong "43" (true "43 = 3 * 14 + 1")
    "43 ends in 3, but the last digit does not tell you about 3. 3 × 14 = 42, so 43 has a remainder of 1.")
  (wrong "70" (true "70 = 3 * 23 + 1")
    "3 × 23 = 69, and 70 is 1 more. So 70 is not a multiple of 3.")
  (hint "Choose 3 in the figure and look for each number."))
```

---

## The last digit, again

For 2, 5 and 10, the last digit tells you:

- multiples of 2 end in 0, 2, 4, 6 or 8;
- multiples of 5 end in 0 or 5;
- multiples of 10 end in 0.

For 3, 4, 6, 7, 8 and 9, divide.

```check
(number
  (ask "What is the greatest multiple of 7 that is 100 or less?")
  (answer 98) (from "7 * 14")
  (wrong-if 100 "100 ÷ 7 = 14 R 2, so 100 is not a multiple of 7. Go back 2.")
  (wrong-if 70 "70 is a multiple of 7, but there are greater ones: 77, 84, 91, 98.")
  (hint "7 × 10 = 70. Keep adding 7 until the next one would pass 100."))
```

---

## Worked example

```example
(example
  (problem "Is 84 a multiple of 7?")
  (step "7 × 10 = 70. 84 - 70 = 14.")
  (step "14 is 7 × 2. So 84 = 7 × 12.")
  (step "There is no remainder.")
  (answer "Yes: 84 is a multiple of 7."))
```

```example
(example
  (problem "Is 75 a multiple of 4?")
  (step "4 × 10 = 40. 75 - 40 = 35.")
  (step "4 × 8 = 32. 35 - 32 = 3 left over.")
  (step (choice (ask "So is 75 a multiple of 4?")
    (right "No: there is a remainder of 3")
    (wrong "Yes: 75 is more than 4"
      "Being more than 4 is not enough. 75 ÷ 4 = 18 R 3, so 75 is not a multiple of 4.")))
  (answer "No: 75 ÷ 4 = 18 R 3."))
```

---

## Practice

```check
(number
  (ask "What is the least multiple of 6 that is greater than 50?")
  (answer 54) (from "6 * 9")
  (wrong-if 56 "56 is a multiple of 7 and 8. 6 × 9 = 54, which is greater than 50.")
  (wrong-if 48 "48 is a multiple of 6, but it is less than 50. The next one is 54.")
  (hint "6 × 8 = 48. What is the next multiple of 6?"))
```

```check
(choice (several)
  (ask "Which numbers are multiples of 8? Choose all.")
  (right "32" (true "32 = 8 * 4"))
  (right "72" (true "72 = 8 * 9"))
  (wrong "28" (true "28 = 8 * 3 + 4")
    "28 has an 8 in it, but 8 × 3 = 24 and 8 × 4 = 32. 28 is between them.")
  (wrong "18" (true "18 = 8 * 2 + 2")
    "18 ends in 8, but that does not make it a multiple of 8. 18 ÷ 8 = 2 R 2.")
  (hint "Count by 8s: 8, 16, 24, 32 ..."))
```

---

```check
(number
  (ask "How many multiples of 9 are there from 1 to 100?")
  (answer 11) (from "99 / 9")
  (wrong-if 10 "9 × 10 = 90, but 9 × 11 = 99 is also 100 or less. So there are 11.")
  (wrong-if 12 "9 × 12 = 108, which is more than 100. Stop at 9 × 11 = 99.")
  (hint "Find the greatest multiple of 9 up to 100. 9 times what is it?"))
```

```check
(choice
  (ask "Is 96 a multiple of 6?")
  (right "Yes: 96 = 6 × 16" (true "96 = 6 * 16"))
  (wrong "No: 96 is not in the 6s facts"
    "The facts stop at 6 × 10 = 60. Keep counting: 60 + 36 = 96, and 36 = 6 × 6. So 96 = 6 × 16.")
  (wrong "No: 96 ends in 6, and that is not a rule"
    "The last digit does not tell you about 6, so divide. 96 ÷ 6 = 16 with no remainder.")
  (hint "6 × 10 = 60. How many more 6s make 96?"))
```

So: a number is a multiple of another when it divides by it with no
remainder.
