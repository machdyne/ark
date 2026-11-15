# Features of a pattern

```lesson
(objective "Find features of a pattern that its rule does not state, such as terms that alternate odd and even.")
(standards "4.OA.C.5")
(minutes 20)
```

You can find things about a pattern that its rule does not say.

"Start at 1. Add 3." gives 1, 4, 7, 10, 13, 16. Look at the terms:
odd, even, odd, even ... The rule says nothing about odd and even. It
is a feature you find by looking.

```figure
(m4p2-terms 50 '(1 4 7 10 13 16) "+3")
(for-range 0 6
  (lambda (i) (text (+ 35 (* i 50)) 170 (if (even? i) "odd" "even") 'centre 'small 'bold)))
(caption "Start at 1. Add 3.")
```

```check
(choice
  (ask "Start at 1. Add 3. Is the 8th term odd or even?")
  (right "Even" (true "1 + 7 * 3 = 22"))
  (wrong "Odd"
    "The odd terms are the 1st, 3rd, 5th, 7th. The 8th is in an even place, like the 2nd, 4th and 6th. It is 22.")
  (hint "Which places hold the even terms: 2nd, 4th, 6th ...?"))
```

---

## All even, all odd

Some patterns stay odd or stay even:

- Start at 2. Add 4: 2, 6, 10, 14 ... all even.
- Start at 5. Add 2: 5, 7, 9, 11 ... all odd.

```check
(choice
  (ask "Which rule gives only odd terms?")
  (right "Start at 3. Add 2." (true "3 + 2 = 5"))
  (wrong "Start at 3. Add 3."
    "3 is odd, but 3 + 3 = 6 is even. Adding an odd number switches between odd and even.")
  (wrong "Start at 2. Add 2."
    "This starts at 2, which is even. Adding 2 keeps it even: 2, 4, 6 ...")
  (hint "Write the first 3 terms of each."))
```

---

## Last digits

Last digits can make a pattern too. "Start at 4. Add 5." gives 4, 9,
14, 19, 24, 29. The last digits go 4, 9, 4, 9 ...

"Start at 3. Add 10." gives 3, 13, 23, 33. Every last digit is 3.

```check
(number
  (ask "Start at 7. Add 10. What is the last digit of every term?")
  (answer 7)
  (wrong-if 0 "Adding 10 adds 1 ten and 0 ones. So the ones digit stays what it was at the start: 7.")
  (wrong-if 1 "1 is the tens digit of 17. The question asks about the last digit, the ones: 7, 17, 27 ...")
  (hint "Write 7, 17, 27, 37. Look at the ones."))
```

---

## Look for yourself

Choose a rule. Is each term odd or even?

```figure
(define a (slider 'start 0 10 6 "Start at" 1))
(define d (slider 'add 1 10 6 "Add" 1))
(define (terms i) (if (= i 6) '() (cons (+ a (* i d)) (terms (+ i 1)))))
(define l (terms 0))
(m4p2-terms 40 l (string-append "+" (fmt d 0)))
(for-range 0 6
  (lambda (i) (text (+ 35 (* i 50)) 160 (if (even? (list-ref l i)) "even" "odd") 'centre 'small 'bold)))
```

```check
(choice (several)
  (ask "Start at 6. Add 6. Which are true of every term? Choose all.")
  (right "It is even")
  (right "It is a multiple of 6")
  (right "It is a multiple of 3")
  (wrong "It ends in 6"
    "6 and 36 end in 6, but 12, 18 and 24 do not. So this is not true of every term.")
  (wrong "It is odd"
    "6 is even, and adding 6 keeps it even. Every term is even.")
  (hint "Set the sliders to 6 and 6. Look at 6, 12, 18, 24, 30, 36."))
```

---

## Worked example

```example
(example
  (problem "Find 2 features of: start at 5, add 5.")
  (step "Terms: 5, 10, 15, 20, 25, 30.")
  (step "Last digits: 5, 0, 5, 0 ... they take turns.")
  (step "Odd, even, odd, even ... they take turns too.")
  (answer "The terms end in 5 and 0 in turn, and alternate odd and even."))
```

```example
(example
  (problem "Find a feature of: start at 2, add 3.")
  (step "Terms: 2, 5, 8, 11, 14, 17.")
  (step (choice (ask "What do you see about odd and even?")
    (right "Even, odd, even, odd: they alternate")
    (wrong "They are all even"
      "2 and 8 are even, but 5 and 11 are odd. They take turns.")))
  (answer "The terms alternate even and odd, starting with even."))
```

---

## Practice

```check
(choice
  (ask "Start at 4. Add 4. Which is a feature of every term?")
  (right "It is a multiple of 4")
  (wrong "It is odd"
    "4 is even, and adding 4 keeps it even. 4, 8, 12, 16 are all even.")
  (wrong "It ends in 4"
    "4 and 24 end in 4, but 8, 12 and 16 do not.")
  (hint "Write 4, 8, 12, 16, 20."))
```

```check
(choice
  (ask "Start at 9. Add 2. Is the 50th term odd or even?")
  (right "Odd" (true "9 + 49 * 2 = 107"))
  (wrong "Even"
    "9 is odd. Adding 2, an even number, keeps every term odd. So the 50th is odd too.")
  (hint "Is 9 odd or even? What does adding 2 do?"))
```

---

```check
(number
  (ask "Start at 8. Add 5. The last digits take turns between 2 digits. One is 8. What is the other?")
  (answer 3)
  (wrong-if 5 "5 is the amount added. Write the terms: 8, 13, 18, 23. Look at the ones.")
  (wrong-if 13 "13 is the 2nd term. The question asks for its last digit.")
  (hint "8 + 5 = 13. What is its last digit?"))
```

```check
(choice
  (ask "Start at 10. Add 10. Which feature does the rule NOT say, but is true?")
  (right "Every term ends in 0")
  (wrong "Every term is 10 more than the one before"
    "The rule does say that: \"add 10\". A feature is something the rule does not state.")
  (wrong "The 1st term is 10"
    "The rule does say that: \"start at 10\". Look for something you find by looking at the terms.")
  (hint "Write 10, 20, 30, 40. What do they all have?"))
```

So: a pattern can have features its rule does not state. Odd and even
can take turns, and last digits can repeat.
