# Common multiples

```lesson
(objective "Find multiples that two one-digit numbers have in common, such as 12 and 24 for 4 and 6.")
(standards "4.OA.B.4")
(minutes 20)
(keywords "common multiple")
```

You can find the multiples that 2 numbers share.

A **common multiple** of 2 numbers is a number that is a multiple of
both. Jumps of 4 and jumps of 6 both land on 12, 24 and 36. So 12, 24
and 36 are common multiples of 4 and 6.

```figure
(number-line 24 296 70 0 36 1 4)
(for-range 0 9 (lambda (i) (nl-jump (* i 4) (* (+ i 1) 4) 'ink)))
(text 24 40 "4s" 'left 'small 'bold)
(number-line 24 296 170 0 36 1 6)
(for-range 0 6 (lambda (i) (nl-jump (* i 6) (* (+ i 1) 6) 'ink)))
(text 24 140 "6s" 'left 'small 'bold)
(for-each (lambda (v) (line (nl-x v) 76 (nl-x v) 150 'cool 1.5)) '(12 24 36))
(caption "Both land on 12, 24 and 36")
```

```check
(number
  (ask "What is the least number that is a multiple of both 4 and 6?")
  (answer 12) (from "4 * 3")
  (wrong-if 10 "10 is 4 + 6. But 10 is not a multiple of 4 or of 6.")
  (wrong-if 24 "24 is a common multiple, but a smaller one comes first. Look at the lines in the figure.")
  (hint "Find the first place where both kinds of jumps land."))
```

---

## Finding them

1. Count by the greater number: 6, 12, 18, 24 ...
2. Test each one: is it a multiple of the smaller number?

For 4 and 6: 6 is not a multiple of 4, but 12 is. 18 is not; 24 is.

```check
(number
  (ask "What is the least number that is a multiple of both 3 and 5?")
  (answer 15) (from "3 * 5")
  (wrong-if 8 "8 is 3 + 5. A common multiple must be in the 3s count and the 5s count.")
  (wrong-if 5 "5 is a multiple of 5, but not of 3. Count by 5s: 5, 10, 15. Which is a multiple of 3?")
  (hint "Count by 5s: 5, 10, 15. Test each for 3."))
```

---

## They keep going

Once you find 12, every multiple of 12 is a common multiple of 4 and 6
too: 12, 24, 36, 48, 60 ... There is no greatest one.

```check
(choice
  (ask "Which is a common multiple of 4 and 6?")
  (right "48" (true "48 = 4 * 12") (true "48 = 6 * 8"))
  (wrong "20" (true "20 = 6 * 3 + 2")
    "20 is a multiple of 4, but 20 ÷ 6 = 3 R 2. A common multiple must be a multiple of both.")
  (wrong "30" (true "30 = 4 * 7 + 2")
    "30 is a multiple of 6, but 30 ÷ 4 = 7 R 2. A common multiple must be a multiple of both.")
  (wrong "10" (true "10 = 4 + 6")
    "10 is 4 + 6. But 10 is not in the 4s count or the 6s count.")
  (hint "Common multiples of 4 and 6 are multiples of 12."))
```

---

## Multiply to find one

The product of the 2 numbers is always a common multiple. $4 * 6 = 24$
is a multiple of 4 and of 6. But it may not be the least one: 12 is
less than 24.

```check
(choice
  (ask "What is the least number that is a multiple of both 2 and 8?")
  (right "8, which is less than 2 × 8 = 16" (true "8 = 2 * 4"))
  (wrong "16, because 2 × 8 = 16"
    "16 is a common multiple, but 8 is less. 8 is a multiple of 8, and 8 = 2 × 4.")
  (wrong "They have no common multiple"
    "Any 2 numbers have common multiples. Their product, 16, is always one.")
  (hint "Is 8 itself a multiple of 2?"))
```

---

## Worked example

```example
(example
  (problem "Find the common multiples of 6 and 8 up to 50.")
  (step "Count by 8s: 8, 16, 24, 32, 40, 48.")
  (step "Test each for 6: 24 = 6 × 4 and 48 = 6 × 8. The others leave a remainder.")
  (step "Check: 48 is 2 × 24, so it fits the pattern.")
  (answer "24 and 48."))
```

```example
(example
  (problem "Find the least number that is a multiple of both 2 and 7.")
  (step "Count by 7s: 7, 14, 21 ...")
  (step "7 is odd, so it is not a multiple of 2.")
  (step (number (ask "What is the next multiple of 7? Is it even?")
    (answer 14) (from "7 * 2")
    (wrong-if 21 "21 comes after 14. 14 is the next one, and 14 is even.")))
  (answer "14."))
```

---

## Practice

```check
(number
  (ask "A light blinks every 4 seconds. Another blinks every 6 seconds. They blink together now. In how many seconds do they next blink together?")
  (answer 12) (from "4 * 3") (unit "seconds")
  (wrong-if 24 "They do blink together at 24 seconds. But they meet before that, at 12.")
  (wrong-if 10 "At 10 seconds, neither light blinks: 10 is not a multiple of 4 or of 6.")
  (hint "Find the least number that is a multiple of both 4 and 6."))
```

```check
(choice (several)
  (ask "Which are common multiples of 3 and 4? Choose all.")
  (right "12" (true "12 = 3 * 4"))
  (right "36" (true "36 = 3 * 12") (true "36 = 4 * 9"))
  (wrong "7" (true "7 = 3 + 4")
    "7 is 3 + 4. It is not a multiple of 3 or of 4.")
  (wrong "16" (true "16 = 3 * 5 + 1")
    "16 is a multiple of 4, but 16 ÷ 3 = 5 R 1. It must be a multiple of both.")
  (hint "Test each one: does it divide by 3? By 4?"))
```

---

```check
(number
  (ask "What is the least number that is a multiple of both 5 and 10?")
  (answer 10)
  (wrong-if 50 "50 is a common multiple, but 10 is less. 10 is a multiple of 10, and 10 = 5 × 2.")
  (wrong-if 15 "15 is a multiple of 5, but not of 10. 10 itself works for both.")
  (hint "Is 10 a multiple of 5?"))
```

```check
(number
  (ask "Hot dogs come in packs of 8. Buns come in packs of 6. You want the same number of each. What is the least number of hot dogs you can buy?")
  (answer 24) (from "8 * 3")
  (wrong-if 48 "48 works too, but 24 is less: 3 packs of 8 and 4 packs of 6.")
  (wrong-if 14 "14 is 8 + 6. You need a number in both the 8s count and the 6s count.")
  (hint "Count by 8s and test each for 6."))
```

So: a common multiple of 2 numbers is a multiple of both. Count by the
greater number to find the least one.
