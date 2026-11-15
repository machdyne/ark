# Number patterns

```lesson
(objective "Make the first terms of a number pattern from a rule, such as \"start at 3, add 4\".")
(standards "4.OA.C.5")
(minutes 20)
(keywords "term (of a pattern)")
```

You can make a number pattern from its rule.

A rule says how a pattern starts and how it goes on. "Start at 3. Add
4." gives 3, 7, 11, 15, 19 ...

Each number in a pattern is a **term**. The 1st term is 3. The 2nd
term is 3 + 4 = 7.

```figure
(m4p2-terms 70 '(3 7 11 15 19 23) "+4")
(caption "Start at 3. Add 4.")
```

```check
(number
  (ask "Start at 3. Add 4. What is the 7th term?")
  (answer 27) (from "3 + 6 * 4")
  (wrong-if 31 "31 is the 8th term. The 6th term is 23, so the 7th is 23 + 4.")
  (wrong-if 28 "28 is 7 × 4. But the pattern starts at 3, not at 4. The 7th term is 23 + 4.")
  (hint "The 6th term is 23. Add 4 once more."))
```

---

## Make your own

Choose a start and an amount to add. The figure shows the first 6
terms.

```figure
(define a (slider 'start 0 10 3 "Start at" 1))
(define d (slider 'add 1 9 4 "Add" 1))
(define (terms i) (if (= i 6) '() (cons (+ a (* i d)) (terms (+ i 1)))))
(m4p2-terms 70 (terms 0) (string-append "+" (fmt d 0)))
```

```check
(number
  (ask "Start at 5. Add 6. What is the 4th term?")
  (answer 23) (from "5 + 3 * 6")
  (wrong-if 29 "29 is the 5th term. Count: 5 is the 1st, 11 the 2nd, 17 the 3rd, 23 the 4th.")
  (wrong-if 24 "24 is 4 × 6, but the pattern starts at 5. Write the terms: 5, 11, 17, 23.")
  (hint "Set the sliders to 5 and 6 and read the 4th box."))
```

---

## Patterns that go down

A rule can subtract. "Start at 50. Subtract 7." gives 50, 43, 36, 29 ...
Each term is 7 less than the one before.

```figure
(m4p2-terms 70 '(50 43 36 29 22) "-7")
(caption "Start at 50. Subtract 7.")
```

```check
(number
  (ask "Start at 50. Subtract 7. What is the 6th term?")
  (answer 15) (from "50 - 5 * 7")
  (wrong-if 8 "8 is the 7th term. The 5th term is 22, so the 6th is 22 - 7.")
  (wrong-if 22 "22 is the 5th term. Subtract 7 once more for the 6th.")
  (hint "The 5th term is 22. Subtract 7 once more."))
```

---

## Find the rule

You can also go the other way. In 4, 9, 14, 19, the 1st term is 4.
Each term is 5 more than the one before. So the rule is "Start at 4.
Add 5."

```check
(choice
  (ask "What is the rule of 6, 14, 22, 30 ...?")
  (right "Start at 6. Add 8." (true "14 - 6 = 8"))
  (wrong "Start at 6. Add 6."
    "6 is the 1st term, but the terms grow by 14 - 6 = 8 each time, not 6.")
  (wrong "Start at 0. Add 8."
    "The terms do grow by 8. But the 1st term is 6, so the pattern starts at 6.")
  (hint "Find the 1st term, then how much each term grows."))
```

---

## Worked example

```example
(example
  (problem "Write the first 5 terms of: start at 2, add 9.")
  (step "The 1st term is 2.")
  (step "Add 9 each time: 2 + 9 = 11, 11 + 9 = 20.")
  (step "20 + 9 = 29, 29 + 9 = 38.")
  (answer "2, 11, 20, 29, 38."))
```

```example
(example
  (problem "Write the first 5 terms of: start at 40, subtract 6.")
  (step "The 1st term is 40.")
  (step "Subtract 6 each time: 34, 28, 22.")
  (step (number (ask "What is the 5th term?")
    (answer 16) (from "40 - 4 * 6")
    (wrong-if 10 "10 is the 6th term. The 4th is 22, so the 5th is 22 - 6.")))
  (answer "40, 34, 28, 22, 16."))
```

---

## Practice

```check
(number
  (ask "Start at 7. Add 7. What is the 10th term?")
  (answer 70) (from "7 + 9 * 7")
  (wrong-if 63 "63 is the 9th term: 7, 14, 21 ... 63. One more 7 makes the 10th.")
  (wrong-if 77 "77 is the 11th term. These are the multiples of 7, so the 10th is 7 × 10.")
  (hint "This pattern is counting by 7s. The 10th term is 7 × 10."))
```

```check
(choice
  (ask "Which list follows the rule \"start at 1, add 3\"?")
  (right "1, 4, 7, 10, 13")
  (wrong "3, 6, 9, 12, 15"
    "That starts at 3. The rule says start at 1, then add 3: 1, 4, 7 ...")
  (wrong "1, 3, 5, 7, 9"
    "That adds 2 each time. The rule adds 3: 1, 4, 7 ...")
  (hint "Write 1 first. Then add 3 each time."))
```

---

```check
(number
  (ask "Start at 100. Subtract 15. What is the 4th term?")
  (answer 55) (from "100 - 3 * 15")
  (wrong-if 40 "40 is the 5th term. The 1st term is 100 itself: 100, 85, 70, 55.")
  (wrong-if 60 "100 - 15 = 85, 85 - 15 = 70, 70 - 15 = 55. Check each step.")
  (hint "Write the terms: 100, 85, ..."))
```

```check
(number
  (ask "A pattern goes 12, 20, 28, 36 ... How much does the rule add each time?")
  (answer 8) (from "20 - 12")
  (wrong-if 12 "12 is the 1st term, where the pattern starts. Each term is 8 more than the one before.")
  (wrong-if 4 "Find the difference of 2 terms next to each other: 20 - 12.")
  (hint "20 - 12 = ?"))
```

So: a rule gives the 1st term and how to get each next term. Follow it
to make the pattern.
