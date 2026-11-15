# Multiplying patterns

```lesson
(objective "Make a pattern whose rule multiplies, such as \"start at 1, multiply by 3\", and describe how its terms grow.")
(standards "4.OA.C.5")
(minutes 20)
```

You can make a pattern whose rule multiplies, and see how fast it grows.

"Start at 1. Multiply by 3." gives 1, 3, 9, 27, 81. Each term is 3
times the term before it: $3 * 9 = 27$.

```figure
(m4p2-terms 70 '(1 3 9 27 81) "x 3")
(caption "Start at 1. Multiply by 3.")
```

```check
(number
  (ask "Start at 1. Multiply by 3. What is the 6th term?")
  (answer 243) (from "81 * 3")
  (wrong-if 84 "84 is 81 + 3. This rule multiplies: 81 × 3.")
  (wrong-if 18 "18 is 6 × 3. Each term is 3 times the one before: 81 × 3.")
  (hint "The 5th term is 81. Multiply it by 3.")
  (hint "81 × 3 = 240 + 3"))
```

---

## Faster and faster

Compare "start at 1, add 3" with "start at 1, multiply by 3". Both use
3, but the multiplying pattern grows much faster.

```figure
(define a '(1 4 7 10 13))
(define m '(1 3 9 27 81))
(text 20 20 "add 3" 'left 'small 'bold)
(text 20 120 "multiply by 3" 'left 'small 'bold)
(for-range 0 5
  (lambda (i)
    (let ((x (+ 40 (* i 56))))
      (rect x (- 100 (* 0.9 (list-ref a i))) 20 (* 0.9 (list-ref a i)) 'cool)
      (text (+ x 10) (- 96 (* 0.9 (list-ref a i))) (fmt (list-ref a i) 0) 'centre 'small)
      (rect x (- 214 (* 0.9 (list-ref m i))) 20 (* 0.9 (list-ref m i)) 'warm)
      (text (+ x 10) (- 210 (* 0.9 (list-ref m i))) (fmt (list-ref m i) 0) 'centre 'small))))
(line 30 100 300 100 'ink 1)
(line 30 214 300 214 'ink 1)
(caption "The first 5 terms of each, to the same scale")
```

```check
(choice
  (ask "Start at 1. What is the 5th term if you multiply by 3, and if you add 3?")
  (right "81 and 13" (true "1 * 3 * 3 * 3 * 3 = 81") (true "1 + 4 * 3 = 13"))
  (wrong "13 and 81"
    "That is the other way around. Multiplying grows faster: the multiplying pattern reaches 81.")
  (wrong "15 and 13"
    "15 is 5 × 3. The multiplying pattern multiplies the term before: 1, 3, 9, 27, 81.")
  (hint "Look at the 5th bar of each pattern."))
```

---

## The jumps grow

In an adding pattern, every jump is the same. In "start at 1, multiply
by 3", the jumps are 2, 6, 18, 54. Each jump is 3 times the one before.

```check
(number
  (ask "Start at 1. Multiply by 3. How much greater is the 4th term than the 3rd?")
  (answer 18) (from "27 - 9")
  (wrong-if 3 "The rule multiplies by 3, but the jump is the difference: 27 - 9.")
  (wrong-if 6 "6 is the jump from 3 to 9. From the 3rd term, 9, to the 4th, 27, is 18.")
  (hint "The 3rd term is 9 and the 4th is 27."))
```

---

## Doubling

"Start at 1. Multiply by 2." doubles each time: 1, 2, 4, 8, 16, 32,
64. After the 1st term, every term is even. Each one is 2 times a whole
number.

```check
(choice
  (ask "Start at 3. Multiply by 2. Why is every term after the 1st even?")
  (right "Each one is 2 times a whole number")
  (wrong "3 is odd, so the terms are even"
    "The start does not make them even. 3 × 2 = 6, 6 × 2 = 12: each is 2 times a number, so each is even.")
  (wrong "They are not: they alternate"
    "Write them: 3, 6, 12, 24, 48. After 3, every term is a multiple of 2.")
  (hint "Write the first 4 terms."))
```

---

## Worked example

```example
(example
  (problem "Write the first 5 terms of: start at 5, multiply by 2.")
  (step "The 1st term is 5.")
  (step "5 × 2 = 10, 10 × 2 = 20.")
  (step "20 × 2 = 40, 40 × 2 = 80.")
  (answer "5, 10, 20, 40, 80."))
```

```example
(example
  (problem "Write the first 4 terms of: start at 2, multiply by 5.")
  (step "The 1st term is 2.")
  (step "2 × 5 = 10, 10 × 5 = 50.")
  (step (number (ask "What is the 4th term?")
    (answer 250) (from "50 * 5")
    (wrong-if 55 "55 is 50 + 5. This rule multiplies: 50 × 5.")))
  (answer "2, 10, 50, 250."))
```

---

## Practice

```check
(number
  (ask "Start at 3. Multiply by 2. What is the 6th term?")
  (answer 96) (from "3 * 2 * 2 * 2 * 2 * 2")
  (wrong-if 13 "13 is 3 + 5 × 2. This rule multiplies each term by 2: 3, 6, 12, 24, 48 ...")
  (wrong-if 48 "48 is the 5th term. Double it once more.")
  (hint "Write 3, 6, 12, 24, 48, then double once more."))
```

```check
(choice
  (ask "Which list is a multiplying pattern?")
  (right "4, 8, 16, 32")
  (wrong "4, 8, 12, 16"
    "That adds 4 each time: the jumps are all 4. In a multiplying pattern the jumps grow.")
  (wrong "4, 6, 8, 10"
    "That adds 2 each time. Each term is not a fixed number of times the one before.")
  (hint "Is each term the same number of times the one before?"))
```

---

```check
(number
  (ask "Start at 1. Multiply by 10. What is the 4th term?")
  (answer 1000) (from "1 * 10 * 10 * 10")
  (wrong-if 40 "40 is 4 × 10. Each term is 10 times the one before: 1, 10, 100, ...")
  (wrong-if 31 "31 is 1 + 3 × 10, an adding pattern. This rule multiplies: 1, 10, 100, 1,000.")
  (hint "1, 10, 100, ..."))
```

```check
(choice
  (ask "A pattern starts at 2 and multiplies by 3. Is any term even?")
  (right "All of them: each is 2 times a whole number")
  (wrong "None: 3 is odd"
    "3 is odd, but every term is 2 × 3 × 3 × ...: 2 times a whole number. So each is even.")
  (wrong "They alternate"
    "Write them: 2, 6, 18, 54. Each is 3 times an even number, so each is even.")
  (hint "Write 2, 6, 18, 54."))
```

So: a multiplying rule makes each term a fixed number of times the one
before. Its jumps grow bigger and bigger.
