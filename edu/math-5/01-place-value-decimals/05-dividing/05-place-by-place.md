# Dividing place by place

```lesson
(objective "Divide by a two-digit number place by place, estimating each digit of the quotient and changing a guess that is too big or too small.")
(standards "5.NBT.B.6")
(minutes 30)
```

You can divide by a two-digit number one place at a time.

Find 1,596 ÷ 38.

1. Thousands and hundreds: 15 hundreds is less than 38, so the quotient
   has no hundreds.
2. Tens: 159 tens ÷ 38. Estimate with 40: 160 ÷ 40 = 4. Try 4 tens:
   $38 * 40 = 1520$. Left: $1596 - 1520 = 76$.
3. Ones: 76 ÷ 38 = 2. $38 * 2 = 76$. Left: 0.

The quotient is 4 tens and 2 ones: 42.

```figure
(define k (slider 'k 0 2 2 "Places" 1))
(m5p1-quot 160 30 1596 38 '(40 2) k)
(label 160 180 (list-ref '("Start with the greatest place" "4 tens" "4 tens and 2 ones = 42") k) 'body 'bold)
```

```check
(number
  (ask "Find 3,348 ÷ 62. How many tens are in the quotient? (334 tens ÷ 62.)")
  (answer 5)
  (true "62 * 50 <= 3348") (true "62 * 60 > 3348")
  (wrong-if 6 "62 × 60 = 3,720, which is more than 3,348. Too big: try 5.")
  (wrong-if 4 "62 × 40 = 2,480 leaves 868, more than 10 groups of 62. Try 5.")
  (hint "Estimate with 60: 300 ÷ 60 = 5.")
  (hint "62 × 50 = 3,100. Is that at most 3,348?"))
```

---

## A guess that is too big

Your estimate is a guess. Check it by multiplying.

2,064 ÷ 43: 206 tens ÷ 43. Estimate with 40: 200 ÷ 40 = 5. But
$43 * 5 = 215$, and 215 > 206. The guess is too big: try 4.

$43 * 4 = 172$. 206 - 172 = 34 tens left. Then 344 ÷ 43 = 8. So the
quotient is 48.

```check
(choice
  (ask "For 5,986 ÷ 73, Kim guesses 9 tens. 73 × 90 = 6,570. What should she do?")
  (right "Try 8 tens: 6,570 is more than 5,986." (true "73 * 90 > 5986"))
  (wrong "Keep 9 tens and subtract." (false "73 * 90 < 5986")
    "You cannot take away 6,570 from 5,986: it is too much. The guess is too big.")
  (wrong "Try 10 tens." (false "73 * 100 < 5986")
    "A bigger guess takes away even more. When the product is too big, go down.")
  (hint "Compare 6,570 with 5,986."))
```

---

## A guess that is too small

If what is left is as big as the divisor or bigger, the guess is too
small.

2,214 ÷ 27: 221 tens ÷ 27. Estimate with 30: about 7. $27 * 7 = 189$.
221 - 189 = 32, and 32 > 27. Another 27 fits: try 8. $27 * 8 = 216$,
and 5 tens are left. Then 54 ÷ 27 = 2. The quotient is 82.

```check
(number
  (ask "Find 2,668 ÷ 29. Estimate the tens with 30.")
  (answer 92) (from "2668 ÷ 29") (true "29 * 92 = 2668")
  (wrong-if 82 "With 8 tens, 266 - 232 = 34 tens are left, more than 29. The tens digit is 9.")
  (hint "266 tens ÷ 29. 29 × 8 = 232 leaves 34, more than 29.")
  (hint "29 × 90 = 2,610. 2,668 - 2,610 = 58. 58 ÷ 29 = 2."))
```

---

## Worked example

```example
(example
  (problem "Find 1,152 ÷ 18.")
  (step "115 tens ÷ 18. Estimate with 20: about 5. 18 × 5 = 90 leaves 25, more than 18. Try 6: 18 × 6 = 108, 7 left.")
  (step "So 6 tens: 1,152 - 1,080 = 72.")
  (step "72 ÷ 18 = 4.")
  (answer "1,152 ÷ 18 = 64"))
```

```example
(example
  (problem "Find 4,371 ÷ 47.")
  (step "437 tens ÷ 47. Estimate with 50: about 8. 47 × 8 = 376 leaves 61, more than 47. Try 9: 47 × 9 = 423, 14 left.")
  (step "9 tens: 4,371 - 4,230 = 141.")
  (step (number (ask "141 ÷ 47 = ?") (answer 3) (from "141 ÷ 47") (true "47 * 3 = 141")
    (wrong-if 2 "47 × 2 = 94 leaves 47, which is another group. Try 3.")))
  (answer "4,371 ÷ 47 = 93"))
```

---

## Practice

```check
(number
  (ask "Find 3,348 ÷ 62.")
  (answer 54) (from "3348 ÷ 62") (true "62 * 54 = 3348")
  (wrong-if 64 "62 × 60 = 3,720 is more than 3,348. The tens digit is 5.")
  (hint "62 × 50 = 3,100. 3,348 - 3,100 = 248.")
  (hint "248 ÷ 62 = 4."))
```

```check
(number
  (ask "Find 3,182 ÷ 43.")
  (answer 74) (from "3182 ÷ 43") (true "43 * 74 = 3182")
  (wrong-if 84 "43 × 80 = 3,440, more than 3,182. The tens digit is 7.")
  (hint "43 × 70 = 3,010. 3,182 - 3,010 = 172.")
  (hint "172 ÷ 43 = 4."))
```

---

```check
(number
  (ask "Find 2,820 ÷ 94.")
  (answer 30) (from "2820 ÷ 94") (true "94 * 30 = 2820")
  (wrong-if 3 "94 × 3 = 282. 282 tens is 2,820, so the quotient is 3 tens: 30.")
  (hint "282 tens ÷ 94. Estimate with 90: about 3."))
```

```check
(choice
  (ask "After you subtract, 52 is left and the divisor is 48. What does that tell you?")
  (right "The last guess was too small." (true "52 >= 48"))
  (wrong "The last guess was too big." (false "52 < 48")
    "A guess is too big when its product is more than you have. Here there is enough left for another 48.")
  (wrong "52 is the remainder." (false "52 < 48")
    "A remainder must be less than the divisor. 52 still holds one more 48.")
  (hint "Is 52 less than 48?"))
```

So: estimate each digit from the greatest place, multiply to check it,
and go down or up when the guess is too big or too small.
