# Estimating products

```lesson
(objective "Estimate a product by rounding the bigger factor, and use the estimate to check an answer.")
(standards "4.NBT.B.5")
(minutes 20)
```

You can find about how big a product is, fast, before you multiply.

To estimate 6 × 487, round 487 to its greatest place, the hundreds.
487 rounds to 500. Then 6 × 500 = 3,000.

So 6 × 487 is about 3,000.

```figure
(m4p1-nl 30 290 90 400 500 10 50)
(nl-mark 487 'ink "487")
(arrow (nl-x 487) 118 (nl-x 500) 118 'ink 1.5)
(label 160 165 "6 × 487 is about 6 × 500" 'body)
(label 160 195 "6 × 500 = 3,000" 'big 'bold)
```

```check
(number
  (ask "Estimate 7 × 312 by rounding 312 to the nearest hundred.")
  (answer 2100) (from "7 * 300")
  (wrong-if 2800 "312 rounds to 300, not 400: its tens digit is 1. So 7 × 300.")
  (wrong-if 210 "7 × 3 = 21, and 300 is 3 hundreds. So 21 hundreds: 2,100.")
  (hint "312 rounds to 300.")
  (hint "7 × 300 = 21 hundreds."))
```

---

## Four digits

Round a 4-digit factor to the nearest thousand.

4 × 6,815: 6,815 rounds to 7,000. So 4 × 6,815 is about 4 × 7,000 =
28,000.

```check
(number
  (ask "Estimate 3 × 2,894 by rounding 2,894 to the nearest thousand.")
  (answer 9000) (from "3 * 3000")
  (wrong-if 6000 "2,894 rounds to 3,000: its hundreds digit is 8. So 3 × 3,000.")
  (wrong-if 900 "3 × 3 = 9, and 3,000 is 3 thousands. So 9 thousands: 9,000.")
  (hint "Look at the hundreds digit of 2,894."))
```

---

## Check an answer

An estimate tells you if an answer is about the right size.

Sam says 8 × 396 = 2,368. Estimate: 396 rounds to 400, and 8 × 400 =
3,200. Sam's answer is far from 3,200, so it must be wrong.

```check
(choice
  (ask "Kim says 5 × 719 = 3,595. Is that reasonable?")
  (right "Yes: 5 × 700 = 3,500, which is close." (true "5 * 700 = 3500"))
  (wrong "No: 5 × 700 = 350, which is far away." (false "5 * 700 = 350")
    "5 × 7 = 35, and 700 is 7 hundreds. So 5 × 700 = 35 hundreds: 3,500. That is close to 3,595.")
  (wrong "No: an answer must end in 0 to be right."
    "An estimate made by rounding ends in zeros, but the real product can end in any digit. 3,595 is close to 3,500.")
  (hint "Round 719 to the nearest hundred."))
```

---

## A little more or a little less

If you round the factor up, the estimate is a little more than the
product. If you round it down, the estimate is a little less.

6 × 487: you round 487 up to 500. So 3,000 is a bit more than the real
product, 2,922.

```check
(choice
  (ask "You estimate 9 × 204 as 9 × 200 = 1,800. Is the real product more or less than 1,800?")
  (right "More, because 204 is more than 200." (true "9 * 204 > 1800"))
  (wrong "Less, because you rounded." (false "9 * 204 < 1800")
    "204 rounds down to 200. You multiplied a smaller number, so the real product is more.")
  (wrong "Exactly 1,800." (false "9 * 204 = 1800")
    "An estimate is close, not exact. 9 × 204 is 9 × 4 = 36 more than 1,800.")
  (hint "Is 204 more or less than 200?"))
```

---

## Worked example

```example
(example
  (problem "Is 7 × 681 = 4,767 reasonable?")
  (step "Round 681 to the nearest hundred: 700.")
  (step "7 × 700 = 4,900.")
  (step "4,767 is close to 4,900, and a little less, since 681 was rounded up.")
  (answer "Yes, 4,767 is reasonable."))
```

```example
(example
  (problem "Estimate 6 × 3,150.")
  (step "Round 3,150 to the nearest thousand: 3,000.")
  (step "6 × 3 = 18, so 6 × 3,000 is 18 thousands.")
  (step (number (ask "What is the estimate?") (answer 18000) (from "6 * 3000")
    (wrong-if 1800 "6 × 3,000 is 18 thousands: 18,000.")))
  (answer "6 × 3,150 is about 18,000."))
```

---

## Practice

```check
(number
  (ask "Estimate 4 × 48 by rounding 48 to the nearest ten.")
  (answer 200) (from "4 * 50")
  (wrong-if 160 "48 rounds to 50, not 40: its ones digit is 8. So 4 × 50.")
  (hint "48 rounds to 50."))
```

```check
(choice
  (ask "Lee says 6 × 512 = 30,720. Which estimate shows that his answer is too big?")
  (right "6 × 500 = 3,000" (true "6 * 500 = 3000"))
  (wrong "6 × 500 = 30,000" (false "6 * 500 = 30000")
    "6 × 5 = 30, and 500 is 5 hundreds. So 30 hundreds: 3,000.")
  (wrong "6 × 500 = 300" (false "6 * 500 = 300")
    "6 × 5 hundreds is 30 hundreds, which is 3,000.")
  (hint "6 × 5 = 30. How much is 30 hundreds?"))
```

---

```check
(choice
  (ask "Which answer to 9 × 2,108 is reasonable?")
  (right "18,972" (true "9 * 2108 = 18972"))
  (wrong "1,897"
    "Estimate: 9 × 2,000 = 18,000. 1,897 is far too small.")
  (wrong "189,720"
    "Estimate: 9 × 2,000 = 18,000. 189,720 is far too big.")
  (hint "Estimate: 9 × 2,000."))
```

```check
(number
  (ask "Estimate 8 × 5,790 by rounding 5,790 to the nearest thousand.")
  (answer 48000) (from "8 * 6000")
  (wrong-if 40000 "5,790 rounds to 6,000: its hundreds digit is 7. So 8 × 6,000.")
  (wrong-if 4800 "8 × 6 = 48, and 6,000 is 6 thousands. So 48 thousands: 48,000.")
  (hint "5,790 rounds to 6,000."))
```

So: round the bigger factor to estimate, and compare the estimate with the answer.
