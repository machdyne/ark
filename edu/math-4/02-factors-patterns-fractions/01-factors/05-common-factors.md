# Common factors

```lesson
(objective "Find the factors that two numbers from 1 to 100 have in common.")
(standards "4.OA.B.4")
(minutes 20)
(keywords "common factor")
```

You can find the factors that 2 numbers share.

A **common factor** of 2 numbers is a number that is a factor of both.
List the factors of each number. The numbers in both lists are the
common factors.

```figure
(define (row y n fs)
  (text 24 (+ y 5) n 'left 'body 'bold)
  (for-range 0 6
    (lambda (i)
      (let ((x (+ 90 (* i 40))) (f (list-ref fs i)))
        (text x (+ y 5) (fmt f 0) 'centre 'body)
        (if (memv f '(1 2 3 6)) (ring x y 14 'ink 1.5))))))
(row 70 "12:" '(1 2 3 4 6 12))
(row 140 "18:" '(1 2 3 6 9 18))
(caption "Ringed: the common factors of 12 and 18")
```

```check
(number
  (ask "The common factors of 12 and 18 are 1, 2, 3 and 6. Which is the greatest?")
  (answer 6)
  (wrong-if 18 "18 is a factor of 18, but not of 12: 12 ÷ 18 is less than 1. It is not common.")
  (wrong-if 12 "12 is a factor of 12, but 18 ÷ 12 = 1 R 6. So 12 is not common.")
  (hint "Look at the ringed numbers."))
```

---

## Finding them

1. List all the factors of the first number.
2. List all the factors of the second number.
3. Keep the numbers that are in both lists.

1 is always a common factor, because 1 is a factor of every number.

```check
(number
  (ask "How many common factors do 8 and 12 have?")
  (answer 3)
  (wrong-if 2 "Do not forget 1. The common factors are 1, 2 and 4.")
  (wrong-if 9 "That counts every factor in both lists. Keep only those in both: 1, 2 and 4.")
  (hint "Factors of 8: 1, 2, 4, 8. Factors of 12: 1, 2, 3, 4, 6, 12."))
```

---

## Sharing two things

You have 12 pencils and 18 erasers. Can 4 children share both equally,
with none left over? 4 is a factor of 12, but 18 ÷ 4 = 4 R 2. So no.

A number of children works only if it is a common factor of 12 and 18.

```check
(choice
  (ask "Which number of children can share 12 pencils and 18 erasers equally, with none left?")
  (right "3" (true "12 / 3 = 4") (true "18 / 3 = 6"))
  (wrong "4" (true "18 = 4 * 4 + 2")
    "4 children can share the 12 pencils. But 18 ÷ 4 = 4 R 2, so 2 erasers are left.")
  (wrong "9" (true "12 = 9 * 1 + 3")
    "9 children can share the 18 erasers. But 12 ÷ 9 = 1 R 3, so 3 pencils are left.")
  (hint "The number must be a factor of 12 and a factor of 18."))
```

---

## Only 1 in common

Some pairs of numbers have just one common factor: 1.

- Factors of 8: 1, 2, 4, 8
- Factors of 15: 1, 3, 5, 15

The only number in both lists is 1.

```check
(choice
  (ask "Which pair of numbers has only 1 as a common factor?")
  (right "9 and 10")
  (wrong "6 and 9"
    "3 is a factor of 6 and of 9. So they have 1 and 3 in common.")
  (wrong "10 and 15"
    "5 is a factor of 10 and of 15. So they have 1 and 5 in common.")
  (hint "For each pair, look for a factor of both that is greater than 1."))
```

---

## Worked example

```example
(example
  (problem "Find the common factors of 24 and 36.")
  (step "Factors of 24: 1, 2, 3, 4, 6, 8, 12, 24.")
  (step "Factors of 36: 1, 2, 3, 4, 6, 9, 12, 18, 36.")
  (step "Keep those in both lists.")
  (answer "1, 2, 3, 4, 6 and 12."))
```

```example
(example
  (problem "Find the common factors of 20 and 30.")
  (step "Factors of 20: 1, 2, 4, 5, 10, 20.")
  (step "Factors of 30: 1, 2, 3, 5, 6, 10, 15, 30.")
  (step (choice (ask "Which numbers are in both lists?")
    (right "1, 2, 5 and 10")
    (wrong "1, 2, 4, 5 and 10"
      "4 is a factor of 20, but 30 ÷ 4 = 7 R 2. So 4 is not common.")))
  (answer "1, 2, 5 and 10."))
```

---

## Practice

```check
(choice (several)
  (ask "Which are common factors of 16 and 24? Choose all.")
  (right "2" (true "16 / 2 = 8") (true "24 / 2 = 12"))
  (right "8" (true "16 / 8 = 2") (true "24 / 8 = 3"))
  (wrong "6" (true "16 = 6 * 2 + 4")
    "6 is a factor of 24, but 16 ÷ 6 = 2 R 4. It must be a factor of both.")
  (wrong "16" (true "24 = 16 * 1 + 8")
    "16 is a factor of 16, but 24 ÷ 16 = 1 R 8. It must be a factor of both.")
  (hint "Test each number on 16, then on 24."))
```

```check
(number
  (ask "What is the greatest number that is a factor of both 14 and 21?")
  (answer 7)
  (wrong-if 21 "21 is a factor of 21, but not of 14. 14 is less than 21.")
  (wrong-if 3 "3 is a factor of 21, but 14 ÷ 3 = 4 R 2. Try 7.")
  (hint "Factors of 14: 1, 2, 7, 14. Which of them divides 21?"))
```

---

```check
(number
  (ask "Sam has 15 red beads and 25 blue beads. He makes bracelets that are all alike, and he uses every bead. At most how many bracelets can he make?")
  (answer 5)
  (wrong-if 15 "15 bracelets would share the red beads, but 25 ÷ 15 = 1 R 10. The number must divide both.")
  (wrong-if 3 "3 bracelets share the red beads, but 25 ÷ 3 = 8 R 1. Find a factor of both.")
  (hint "Find the common factors of 15 and 25. Choose the greatest."))
```

```check
(choice
  (ask "Is 1 a common factor of 37 and 50?")
  (right "Yes: 1 is a factor of every number")
  (wrong "No: 37 and 50 have nothing in common"
    "37 = 1 × 37 and 50 = 1 × 50. 1 is a factor of every whole number, so it is always common.")
  (hint "What is 1 × 37?"))
```

So: the common factors of 2 numbers are in both lists of factors. 1 is
always one of them.
