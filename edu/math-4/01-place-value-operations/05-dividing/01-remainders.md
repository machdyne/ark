# Remainders

```lesson
(objective "Divide when a total does not share out equally, and name what is left over as the remainder.")
(standards "4.NBT.B.6")
(minutes 20)
(keywords "remainder")
```

You can divide even when the groups do not come out even.

Put 17 counters in groups of 5. You make 3 groups, which use 15
counters. 2 counters are left over, too few for another group.

What is left over is the **remainder**. You write 17 ÷ 5 = 3 R 2, and
say "3 remainder 2".

Move the slider to try other numbers of counters.

```figure
(define n (slider 'n 10 29 17 "Counters" 1))
(define q (floor (/ n 5)))
(define r (- n (* 5 q)))
(for-range 0 q
  (lambda (i) (frame 14 (+ 14 (* i 30)) 120 26 'ink 1) (dot-array 30 (+ 27 (* i 30)) 1 5 22 'ink)))
(for-range 0 r (lambda (i) (ring (+ 190 (* 22 i)) 27 7 'ink 2)))
(if (> r 0) (label 223 60 "left over" 'small))
(label 160 205 (string-append (fmt n 0) " ÷ 5 = " (fmt q 0) " R " (fmt r 0)) 'big 'bold)
```

```check
(number
  (ask "23 ÷ 4 = 5 R ?")
  (answer 3) (from "23 - 4 * 5") (true "23 = 4 * 5 + 3")
  (wrong-if 5 "5 is the number of groups. The remainder is what is left: 5 groups of 4 use 20, and 23 - 20 = 3.")
  (wrong-if 20 "20 is what the 5 groups use. The remainder is what is left over: 23 - 20.")
  (hint "5 groups of 4 use 20 counters.")
  (hint "How many of the 23 are left?"))
```

---

## Less than the divisor

The remainder is always less than the divisor. If it were not, you
could make one more group.

29 ÷ 6 is not 3 R 11. 11 is more than 6, so there is room for another
group of 6. 29 ÷ 6 = 4 R 5.

```check
(choice
  (ask "Max says 38 ÷ 7 = 4 R 10. What is wrong?")
  (right "10 is more than 7, so he can make 1 more group: 5 R 3." (true "38 = 7 * 5 + 3"))
  (wrong "Nothing: 7 × 4 + 10 = 38." (true "7 * 4 + 10 = 38")
    "The numbers add up, but 10 left over is enough for another group of 7. The remainder must be less than 7.")
  (wrong "The remainder can never be more than 1."
    "A remainder can be any number less than the divisor. Here it can be 0 to 6.")
  (hint "Is 10 enough for another group of 7?"))
```

---

## Use a fact

To divide 38 ÷ 7, find the biggest product of 7 that is not more than
38. 7 × 5 = 35 and 7 × 6 = 42, so it is 35.

- The quotient is 5.
- The remainder is 38 - 35 = 3.

So 38 ÷ 7 = 5 R 3.

```check
(number
  (ask "50 ÷ 8 = ? R 2. What is the quotient?")
  (answer 6) (from "(50 - 2) / 8") (true "50 = 8 * 6 + 2")
  (wrong-if 7 "8 × 7 = 56, which is more than 50. The biggest product of 8 that fits is 8 × 6 = 48.")
  (wrong-if 48 "48 is 8 × 6, what the groups use. The quotient is the number of groups: 6.")
  (hint "Which product of 8 is just below 50?"))
```

```check
(number
  (ask "What is the remainder of 50 ÷ 8?")
  (answer 2) (from "50 - 8 * 6")
  (wrong-if 6 "6 is the quotient. The remainder is 50 - 48.")
  (hint "8 × 6 = 48. How many are left?"))
```

---

## A remainder of 0

Sometimes nothing is left over. 24 ÷ 6 = 4, with a remainder of 0.
The groups come out even.

```check
(number
  (ask "What is the remainder of 63 ÷ 9?")
  (answer 0) (from "63 - 9 * 7")
  (wrong-if 7 "7 is the quotient: 9 × 7 = 63. Nothing is left over.")
  (wrong-if 9 "9 is the divisor. 9 × 7 = 63 exactly, so nothing is left over.")
  (hint "9 × 7 = ?"))
```

---

## Worked example

```example
(example
  (problem "Divide 45 ÷ 6.")
  (step "6 × 7 = 42 and 6 × 8 = 48. 48 is too big.")
  (step "So the quotient is 7.")
  (step "45 - 42 = 3 is left over.")
  (answer "45 ÷ 6 = 7 R 3"))
```

```example
(example
  (problem "Divide 31 ÷ 4.")
  (step "4 × 7 = 28 and 4 × 8 = 32. 32 is too big.")
  (step "So the quotient is 7.")
  (step (number (ask "What is the remainder?") (answer 3) (from "31 - 4 * 7")
    (wrong-if 1 "4 × 8 = 32 is more than 31, so you cannot make 8 groups. 31 - 28 = 3.")))
  (answer "31 ÷ 4 = 7 R 3"))
```

---

## Practice

```check
(number
  (ask "26 ÷ 3 = 8 R ?")
  (answer 2) (from "26 - 3 * 8") (true "26 = 3 * 8 + 2")
  (wrong-if 8 "8 is the quotient. 3 × 8 = 24, and 26 - 24 is left.")
  (hint "3 × 8 = 24."))
```

```check
(number
  (ask "59 ÷ 7 = ? R 3. What is the quotient?")
  (answer 8) (from "(59 - 3) / 7") (true "59 = 7 * 8 + 3")
  (wrong-if 9 "7 × 9 = 63 is more than 59. The biggest product of 7 that fits is 7 × 8 = 56.")
  (hint "Which product of 7 is just below 59?"))
```

---

```check
(choice
  (ask "Which is right?")
  (right "44 ÷ 5 = 8 R 4" (true "44 = 5 * 8 + 4"))
  (wrong "44 ÷ 5 = 7 R 9" (true "44 = 5 * 7 + 9")
    "9 left over is enough for another group of 5. The remainder must be less than 5.")
  (wrong "44 ÷ 5 = 9 R 1"
    "5 × 9 = 45 is more than 44. You cannot make 9 groups.")
  (hint "Which product of 5 is just below 44?"))
```

```check
(number
  (ask "What is the remainder of 70 ÷ 9?")
  (answer 7) (from "70 - 9 * 7") (true "70 = 9 * 7 + 7")
  (wrong-if 1 "9 × 8 = 72 is more than 70. So the quotient is 7: 9 × 7 = 63, and 70 - 63 = 7.")
  (hint "9 × 7 = 63 and 9 × 8 = 72."))
```

So: the remainder is what is left over, and it is less than the divisor.
