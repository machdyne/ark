# Sums of unit fractions

```lesson
(objective "Write a fraction as a sum of unit fractions, such as 3/8 = 1/8 + 1/8 + 1/8.")
(standards "4.NF.B.3b")
(minutes 20)
```

You can write any fraction as a sum of unit fractions.

A unit fraction has the numerator 1, like $1/8$. The fraction $3/8$ is
3 parts, and each part is $1/8$. So:

$$ 3/8 = 1/8 + 1/8 + 1/8 $$

```figure
(frac-bar 0 8 3 'warm "3/8")
(frac-bar-at 80 110 72 30 3 3 'warm)
(math 40 131 "=" 22)
(for-range 0 3 (lambda (i) (math (+ 92 (* i 24)) 172 "1/8" 13)))
(caption "3 parts of 1/8 each")
```

```check
(number
  (ask "How many times do you add" (math "1/8") "to make" (math "5/8") "?")
  (answer 5) (true "1/8 + 1/8 + 1/8 + 1/8 + 1/8 = 5/8")
  (wrong-if 8 "8 eighths make 1 whole. 5/8 has only 5 parts of 1/8.")
  (hint "The numerator says how many eighths."))
```

---

## The numerator counts the parts

In $4/5$, the denominator 5 says each part is $1/5$. The numerator 4
says how many parts there are. So $4/5$ is $1/5$ added 4 times.

$$ 4/5 = 1/5 + 1/5 + 1/5 + 1/5 $$

```figure
(define n (slider 'n 1 6 4 "Parts" 1))
(frac-bar-at 40 60 240 40 6 n 'warm)
(define (sum k) (if (= k 1) "1/6" (string-append "1/6 + " (sum (- k 1)))))
(math 160 160 (string-append (m4p3-s n 6) " = " (sum n)) (if (> n 4) 14 18))
(caption "Each shaded part is 1/6.")
```

```check
(choice
  (ask "Which sum equals" (math "4/6") "?")
  (right "1/6 + 1/6 + 1/6 + 1/6" (true "1/6 + 1/6 + 1/6 + 1/6 = 4/6"))
  (wrong "1/4 + 1/4 + 1/4 + 1/4 + 1/4 + 1/4" (false "1/4 + 1/4 + 1/4 + 1/4 + 1/4 + 1/4 = 4/6")
    "You swapped the numbers. The parts are sixths, so add 1/6. Add it 4 times.")
  (wrong "1/6 + 1/6 + 1/6 + 1/6 + 1/6 + 1/6" (false "1/6 + 1/6 + 1/6 + 1/6 + 1/6 + 1/6 = 4/6")
    "6 sixths is the whole bar. 4/6 is only 4 of those parts.")
  (hint "Each part is 1/6. How many parts?"))
```

---

## From a sum to a fraction

You can also go the other way. Count the unit fractions:

$$ 1/10 + 1/10 + 1/10 = 3/10 $$

```check
(fraction
  (ask "Write as one fraction:" (math "1/12 + 1/12 + 1/12 + 1/12 + 1/12"))
  (answer 5 12) (equivalent) (true "1/12 + 1/12 + 1/12 + 1/12 + 1/12 = 5/12")
  (wrong-if (5 60) "You added the 12s too. Each part is 1/12, and there are 5 of them: 5/12.")
  (wrong-if (1 12) "There are 5 twelfths, not 1. Count every 1/12.")
  (hint "Count how many times 1/12 is written."))
```

---

## Worked example

```example
(example
  (problem "Write 3/4 as a sum of unit fractions.")
  (step "The denominator is 4, so each part is 1/4.")
  (step "The numerator is 3, so there are 3 parts.")
  (answer "3/4 = 1/4 + 1/4 + 1/4."))
```

```example
(example
  (problem "Write 2/3 as a sum of unit fractions.")
  (step "Each part is 1/3.")
  (step (number (ask "How many times do you write 1/3?")
    (answer 2)
    (wrong-if 3 "3 thirds is the whole. 2/3 has 2 parts.")))
  (answer "2/3 = 1/3 + 1/3."))
```

---

## Practice

```check
(number
  (ask "7/10 = 1/10 + 1/10 + ... How many times is" (math "1/10") "added?")
  (answer 7) (true "7 * 1/10 = 7/10")
  (wrong-if 10 "10 tenths would be the whole. 7/10 is 7 tenths.")
  (hint "Look at the numerator."))
```

```check
(fraction
  (ask "Write as one fraction:" (math "1/2 + 1/2"))
  (answer 2 2) (equivalent) (true "1/2 + 1/2 = 2/2")
  (wrong-if (2 4) "The parts are halves. 2 halves are 2/2, which is 1 whole.")
  (hint "Count the halves."))
```

---

```check
(choice
  (ask "Which fraction is" (math "1/5 + 1/5 + 1/5") "?")
  (right "3/5" (true "1/5 + 1/5 + 1/5 = 3/5"))
  (wrong "3/15" (false "1/5 + 1/5 + 1/5 = 3/15")
    "You added the denominators: 5 + 5 + 5. The parts are fifths, so keep the 5.")
  (wrong "1/15" (false "1/5 + 1/5 + 1/5 = 1/15")
    "Adding makes more, not less. 3 fifths is more than 1 fifth.")
  (hint "Count the fifths."))
```

```check
(number
  (ask "How many unit fractions are in the sum for" (math "6/8") "?")
  (answer 6) (true "6 * 1/8 = 6/8")
  (wrong-if 8 "8 eighths make the whole. 6/8 has 6 parts.")
  (wrong-if 3 "6/8 = 3/4, and 3/4 has 3 parts of 1/4. But in eighths, there are 6 parts of 1/8.")
  (hint "Each part is 1/8. How many parts?"))
```

So: a fraction is its unit fraction added as many times as the
numerator says.
