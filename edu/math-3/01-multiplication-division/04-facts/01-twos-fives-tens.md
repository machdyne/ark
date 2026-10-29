# Twos, fives and tens

```lesson
(objective "Know the multiplication facts of 2, 5 and 10 and their multiples.")
(standards "3.OA.C.7")
(minutes 20)
(keywords "multiple (of a number)")
```

You can learn the facts of 2, 5 and 10 and spot their answers fast.

Skip count by 5: 5, 10, 15, 20 and so on. These numbers are
**multiples** of 5. Each is 5 times a whole number: 5 × 3 = 15.

Pick a number to see its multiples.

```figure
(define i (choice 'k '("2" "5" "10") "Multiples of"))
(define k (if (= i 0) 2 (if (= i 1) 5 10)))
(number-line 20 300 110 0 40 1 10)
(for-range 1 (+ (quotient 40 k) 1) (lambda (j) (circle (nl-x (* j k)) (- (nl-y) 9) 3 'ink)))
(label 160 170 (string-append "Multiples of " (fmt k 0) ": " (fmt k 0) ", " (fmt (* 2 k) 0) ", " (fmt (* 3 k) 0) ", " (fmt (* 4 k) 0) " ...") 'small)
```

```check
(choice
  (ask "Which number is a multiple of 5?")
  (right "35" (true "5 * 7 = 35"))
  (wrong "52"
    "52 is not on the 5s count: 45, 50, 55. Multiples of 5 end in 0 or 5.")
  (wrong "53"
    "53 has a 5 in it, but that does not make it a multiple. The 5s count goes 50, 55. Multiples of 5 end in 0 or 5.")
  (hint "Count by 5s: 5, 10, 15 ... Which number do you say?"))
```

---

## Twos

2 × a number is double the number. 2 × 7 = 7 + 7 = 14.

Multiples of 2 are all even. They end in 0, 2, 4, 6 or 8.

| 2 × 1 = 2 | 2 × 2 = 4 | 2 × 3 = 6 | 2 × 4 = 8 | 2 × 5 = 10 |
| 2 × 6 = 12 | 2 × 7 = 14 | 2 × 8 = 16 | 2 × 9 = 18 | 2 × 10 = 20 |

```check
(number
  (ask "2 × 8 = ?")
  (answer 16) (from "2 * 8")
  (wrong-if 10 "10 is 2 + 8. 2 × 8 is double 8: 8 + 8.")
  (wrong-if 18 "18 is 2 × 9. Double 8 is 8 + 8 = 16.")
  (hint "Double 8."))
```

---

## Fives

Multiples of 5 end in 0 or 5. An even number of fives ends in 0. An odd
number of fives ends in 5. 5 × 4 = 20, but 5 × 3 = 15.

Fives are also half of tens. 5 × 8 is half of 10 × 8 = 80, so it is 40.

```check
(number
  (ask "5 × 7 = ?")
  (answer 35) (from "5 * 7")
  (wrong-if 12 "12 is 5 + 7. Count by 5s, 7 times: 5, 10, 15, 20, 25, 30, 35.")
  (wrong-if 30 "30 is 5 × 6. One more 5 makes 35.")
  (hint "7 is odd, so the answer ends in 5.")
  (hint "Half of 70."))
```

---

## Tens

10 × 6 is 6 tens, which is 60. To multiply a number by 10, write a 0
after it. Multiples of 10 always end in 0.

```check
(number
  (ask "10 × 9 = ?")
  (answer 90) (from "10 * 9")
  (wrong-if 19 "19 is 10 + 9. 10 × 9 is 9 tens, which is 90.")
  (wrong-if 109 "Write the 9, then a 0: 90. 10 × 9 is 9 tens.")
  (hint "9 tens."))
```

---

## Worked example

```example
(example
  (problem "Is 45 a multiple of 2, of 5 and of 10?")
  (step "45 is odd, so it is not a multiple of 2.")
  (step "45 ends in 5, so it is a multiple of 5: 5 × 9 = 45.")
  (step "45 does not end in 0, so it is not a multiple of 10.")
  (answer "45 is a multiple of 5 only."))
```

```example
(example
  (problem "Is 30 a multiple of 2, of 5 and of 10?")
  (step "30 is even, so it is a multiple of 2: 2 × 15 = 30.")
  (step "30 ends in 0, so it is a multiple of 5: 5 × 6 = 30.")
  (step (choice (ask "Is 30 a multiple of 10?")
    (right "Yes: 10 × 3 = 30")
    (wrong "No" "30 ends in 0. It is 3 tens: 10 × 3 = 30.")))
  (answer "30 is a multiple of 2, of 5 and of 10."))
```

---

## Practice

```check
(number
  (ask "5 × 6 = ?")
  (answer 30) (from "5 * 6")
  (wrong-if 11 "11 is 5 + 6. 5 × 6 is 6 fives: 5, 10, 15, 20, 25, 30.")
  (hint "6 is even, so the answer ends in 0."))
```

```check
(number
  (ask "2 × 9 = ?")
  (answer 18) (from "2 * 9")
  (wrong-if 11 "11 is 2 + 9. 2 × 9 is double 9: 9 + 9.")
  (hint "Double 9."))
```

```check
(number
  (ask "10 × 4 = ?")
  (answer 40) (from "10 * 4")
  (wrong-if 14 "14 is 10 + 4. 10 × 4 is 4 tens: 40.")
  (hint "4 tens."))
```

---

```check
(choice (several)
  (ask "Which numbers are multiples of 10? Choose all.")
  (right "70")
  (right "20")
  (wrong "15"
    "15 is a multiple of 5, but not of 10. Multiples of 10 end in 0.")
  (wrong "101"
    "101 has a 0 in it, but it ends in 1. Multiples of 10 end in 0.")
  (hint "Multiples of 10 end in 0."))
```

```check
(number
  (ask "5 × 9 = ?")
  (answer 45) (from "5 * 9")
  (wrong-if 14 "14 is 5 + 9. Count by 5s, 9 times: 5, 10, 15 ... 45.")
  (hint "9 is odd, so the answer ends in 5.")
  (hint "Half of 90."))
```

So: 2s are doubles and even, 5s end in 0 or 5, and 10s end in 0.
