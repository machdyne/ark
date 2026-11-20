# Checking quotients

```lesson
(objective "Check a quotient by multiplying it by the divisor and adding the remainder, and with an estimate.")
(standards "5.NBT.B.6")
(minutes 20)
```

You can check a quotient by multiplying, and with an estimate.

Multiplying and dividing are inverse operations. So multiply the
quotient by the divisor, then add the remainder. You should get the
dividend back.

For 1,655 ÷ 27 = 61 R 8:

**27 × 61 + 8 = 1,647 + 8 = 1,655**

It matches, so the quotient is right.

```figure
(m5p1-area 70 60 200 80 '(61) '(27) 1)
(rect 278 124 16 16 'grey)
(frame 278 124 16 16 'ink 1)
(label 286 158 "8 left" 'small 'bold)
(label 160 180 "27 × 61 + 8 = 1,655" 'body 'bold)
```

```check
(number
  (ask "Check 1,428 ÷ 34 = 42. What is 34 × 42?")
  (answer 1428) (from "34 * 42")
  (wrong-if 1408 "34 × 2 = 68 and 34 × 40 = 1,360. 68 + 1,360 = 1,428.")
  (hint "34 × 40 = 1,360. 34 × 2 = 68."))
```

---

## Do not forget the remainder

Without the remainder, the product falls short of the dividend. Add it
before you compare.

```check
(choice
  (ask "Eva says 4,802 ÷ 53 = 90 R 32. She checks: 53 × 90 = 4,770. What next?")
  (right "Add 32: 4,770 + 32 = 4,802. It matches." (true "53 * 90 + 32 = 4802"))
  (wrong "4,770 is not 4,802, so she is wrong." (false "53 * 90 = 4802")
    "The remainder is part of the check. 4,770 + 32 = 4,802.")
  (wrong "Subtract 32: 4,770 - 32." (false "53 * 90 - 32 = 4802")
    "The remainder was left over, so add it back.")
  (hint "The remainder was left over from the dividend."))
```

---

## Check with an estimate

An estimate shows if a quotient is about the right size. 5,208 ÷ 62 is
about 5,400 ÷ 60 = 90. A quotient of 84 is close; 8 or 840 is not.

```check
(choice
  (ask "Which quotient for 2,916 ÷ 54 is reasonable?")
  (right "54" (true "2916 ÷ 54 = 54"))
  (wrong "5" (false "2916 ÷ 54 = 5")
    "Estimate: 3,000 ÷ 50 = 60. A quotient of 5 is about 10 times too small.")
  (wrong "540" (false "2916 ÷ 54 = 540")
    "Estimate: 3,000 ÷ 50 = 60. 540 is about 10 times too big.")
  (hint "Estimate: 3,000 ÷ 50."))
```

---

## Worked example

```example
(example
  (problem "Check 6,420 ÷ 32 = 200 R 20.")
  (step "32 × 200 = 6,400.")
  (step "6,400 + 20 = 6,420. It matches.")
  (step "20 is less than 32, so the remainder is allowed.")
  (answer "6,420 ÷ 32 = 200 R 20 is right."))
```

```example
(example
  (problem "Check 3,075 ÷ 25 = 123.")
  (step "25 × 100 = 2,500. 25 × 23 = 575.")
  (step (number (ask "25 × 123 = ?") (answer 3075) (from "25 * 123")
    (wrong-if 2575 "Add both parts: 2,500 + 575 = 3,075.")))
  (answer "It matches: 3,075 ÷ 25 = 123."))
```

---

## Practice

```check
(choice
  (ask "Is 2,340 ÷ 45 = 52 right?")
  (right "Yes: 45 × 52 = 2,340." (true "45 * 52 = 2340"))
  (wrong "No: 45 × 52 = 2,250." (false "45 * 52 = 2250")
    "45 × 50 = 2,250, and 45 × 2 = 90. 2,250 + 90 = 2,340.")
  (wrong "No: the estimate 2,000 ÷ 50 = 40 is different." (false "40 = 52")
    "An estimate is only near the answer. 40 and 52 are close enough; the product check shows 52 is exact.")
  (hint "Find 45 × 52."))
```

```check
(number
  (ask "Check 1,655 ÷ 27 = 61 R 8. What is 27 × 61 + 8?")
  (answer 1655) (from "27 * 61 + 8")
  (wrong-if 1647 "That is 27 × 61. Add the remainder, 8.")
  (hint "27 × 61 = 1,647."))
```

---

```check
(choice
  (ask "Lou says 5,208 ÷ 62 = 84 R 70. What is wrong?")
  (right "70 is more than 62, so another group fits." (true "70 > 62"))
  (wrong "Nothing: 62 × 84 + 70 is near 5,208." (false "62 * 84 + 70 = 5208")
    "62 × 84 = 5,208 exactly, so 62 × 84 + 70 is too much. And 70 holds another 62.")
  (wrong "The quotient should be 8." (false "62 * 8 = 5208")
    "62 × 8 = 496. The quotient is near 90 by estimate.")
  (hint "Compare the remainder with the divisor."))
```

```check
(number
  (ask "Check 4,802 ÷ 53 = 90 R 32. What is 53 × 90 + 32?")
  (answer 4802) (from "53 * 90 + 32")
  (wrong-if 4770 "Add the remainder, 32.")
  (hint "53 × 90 = 4,770."))
```

So: quotient times divisor plus remainder gives back the dividend, and
an estimate shows the size.
