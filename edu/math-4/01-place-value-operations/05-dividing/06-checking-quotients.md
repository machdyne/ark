# Checking quotients

```lesson
(objective "Check a quotient by multiplying it by the divisor and adding the remainder.")
(standards "4.NBT.B.6")
(minutes 20)
```

You can check a division by multiplying back.

Multiplying is the inverse operation of dividing. To check
17 ÷ 5 = 3 R 2, multiply the quotient by the divisor, then add the
remainder:

5 × 3 + 2 = 15 + 2 = 17

You get back the dividend, 17, so the answer is right.

```figure
(define t (toggle 't "Show the check"))
(frame 20 40 280 50 'ink 1.5)
(label 160 72 "17 ÷ 5 = 3 R 2" 'big 'bold)
(if t (begin
  (arrow 160 96 160 122 'ink 1.5)
  (frame 20 128 280 50 'ink 1.5)
  (label 160 160 "5 × 3 + 2 = 17" 'big 'bold)
  (caption "divisor × quotient + remainder = dividend")))
```

```check
(number
  (ask "Check 2,147 ÷ 3 = 715 R 2. What is 3 × 715 + 2?")
  (answer 2147) (from "3 * 715 + 2")
  (wrong-if 2145 "That is only 3 × 715. Add the remainder too: 2,145 + 2.")
  (wrong-if 717 "Multiply first: 3 × 715 = 2,145. Then add the 2.")
  (hint "3 × 715 = 2,145.")
  (hint "Add the remainder."))
```

---

## Two things to check

A right answer passes 2 checks:

1. Divisor × quotient + remainder = the dividend.
2. The remainder is less than the divisor.

Kai says 458 ÷ 6 = 75 R 8. Check 1 passes: 6 × 75 + 8 = 458. But 8 is
not less than 6, so check 2 fails. The right answer is 76 R 2.

```check
(choice
  (ask "Which answer to 625 ÷ 8 passes both checks?")
  (right "78 R 1" (true "8 * 78 + 1 = 625"))
  (wrong "77 R 9" (true "8 * 77 + 9 = 625")
    "8 × 77 + 9 does make 625, but 9 is not less than 8. There is room for 1 more group.")
  (wrong "78 R 5" (false "8 * 78 + 5 = 625")
    "8 × 78 = 624, and 624 + 5 = 629, not 625. The remainder is 625 - 624 = 1.")
  (hint "Multiply back each answer. Is the remainder less than 8?"))
```

---

## Find the mistake

Ana says 936 ÷ 4 = 214. Check: 4 × 214 = 856. That is not 936, so she
made a mistake.

She shared 9 hundreds ÷ 4 = 2 with 1 hundred left, then forgot to
regroup it.

```check
(number
  (ask "What is 936 ÷ 4 really?")
  (answer 234) (from "936 / 4") (true "4 * 234 = 936")
  (wrong-if 214 "Multiply back: 4 × 214 = 856, not 936. Regroup the 1 hundred left: 13 tens ÷ 4 = 3.")
  (wrong-if 2134 "Each place of the quotient is 1 digit. 13 tens ÷ 4 = 3 tens, 1 left. Then 16 ones ÷ 4 = 4.")
  (hint "9 hundreds ÷ 4 = 2, 1 left. 13 tens ÷ 4 = ?")
  (hint "Check your answer: 4 × it should be 936."))
```

---

## Worked example

```example
(example
  (problem "Check 3,854 ÷ 5 = 770 R 4.")
  (step "Multiply: 5 × 770 = 3,850.")
  (step "Add the remainder: 3,850 + 4 = 3,854. That is the dividend.")
  (step "4 is less than 5.")
  (answer "Both checks pass: 770 R 4 is right."))
```

```example
(example
  (problem "Check 842 ÷ 3 = 280 R 2.")
  (step "Multiply: 3 × 280 = 840.")
  (step (number (ask "Add the remainder. What do you get?") (answer 842) (from "3 * 280 + 2")
    (wrong-if 840 "Do not forget the remainder: 840 + 2.")))
  (step "842 is the dividend, and 2 is less than 3.")
  (answer "Both checks pass: 280 R 2 is right."))
```

---

## Practice

```check
(number
  (ask "Check 5,013 ÷ 9 = 557. What is 9 × 557?")
  (answer 5013) (from "9 * 557")
  (wrong-if 4513 "9 × 557 = 4,500 + 450 + 63. Add all 3 partial products: 5,013.")
  (hint "9 × 500 = 4,500, 9 × 50 = 450, 9 × 7 = 63."))
```

```check
(choice
  (ask "Ben says 1,000 ÷ 7 = 142 R 6. Is he right?")
  (right "Yes: 7 × 142 + 6 = 1,000, and 6 is less than 7." (true "7 * 142 + 6 = 1000"))
  (wrong "No: a remainder of 6 is too big." (true "6 < 7")
    "The remainder only has to be less than the divisor. 6 is less than 7.")
  (wrong "No: 7 × 142 = 1,000." (false "7 * 142 = 1000")
    "7 × 142 = 994. Add the remainder: 994 + 6 = 1,000.")
  (hint "Multiply back: 7 × 142, then add 6."))
```

---

```check
(number
  (ask "Lee says 7,206 ÷ 4 = 1,801 R 2. Check it: what is 4 × 1,801 + 2?")
  (answer 7206) (from "4 * 1801 + 2")
  (wrong-if 7204 "That is only 4 × 1,801. Add the remainder: 7,204 + 2.")
  (hint "4 × 1,801 = 7,204."))
```

```check
(choice
  (ask "Which answer to 2,590 ÷ 6 is right?")
  (right "431 R 4" (true "6 * 431 + 4 = 2590"))
  (wrong "431" (false "6 * 431 = 2590")
    "6 × 431 = 2,586, which is 4 less than 2,590. There is a remainder of 4.")
  (wrong "430 R 10" (true "6 * 430 + 10 = 2590")
    "6 × 430 + 10 does make 2,590, but 10 is more than 6. 1 more group fits.")
  (hint "Multiply back each answer. Check the remainder too."))
```

So: divisor × quotient + remainder gives the dividend.
