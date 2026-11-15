# Checking products

```lesson
(objective "Check a two-digit product with an estimate and by multiplying the factors in the other order.")
(standards "4.NBT.B.5")
(minutes 25)
```

You can check a product in 2 ways: with an estimate, and by multiplying another way.

To estimate 38 × 52, round each factor to the nearest ten. 38 rounds
to 40 and 52 rounds to 50. 40 × 50 = 2,000.

The real product, 1,976, is close to 2,000. So it is reasonable.

```check
(number
  (ask "Estimate 61 × 29 by rounding each factor to the nearest ten.")
  (answer 1800) (from "60 * 30")
  (wrong-if 180 "6 tens × 3 tens give hundreds: 18 hundreds, which is 1,800.")
  (wrong-if 1200 "29 rounds to 30, not 20: its ones digit is 9. So 60 × 30.")
  (hint "61 rounds to 60. 29 rounds to 30.")
  (hint "6 tens × 3 tens = 18 hundreds."))
```

---

## Spot a mistake

Jo says 47 × 23 = 821. Estimate: 50 × 20 = 1,000. 821 is a long way
from 1,000.

Jo added only 2 of the partial products. All 4 give 1,081.

```check
(choice
  (ask "Which answer to 72 × 38 is reasonable?")
  (right "2,736" (true "72 * 38 = 2736"))
  (wrong "2,116"
    "Estimate: 70 × 40 = 2,800. 2,116 is far off. It adds only 2 of the 4 partial products.")
  (wrong "27,360"
    "Estimate: 70 × 40 = 2,800. 27,360 is about 10 times too big.")
  (hint "Estimate: 70 × 40."))
```

---

## The other order

By the commutative property, 23 × 14 and 14 × 23 have the same
product. So you can work it out a second way and compare.

Break only the second factor each time:

- 23 × 14 = 23 × 10 + 23 × 4 = 230 + 92 = 322
- 14 × 23 = 14 × 20 + 14 × 3 = 280 + 42 = 322

The parts are different, but the products agree. So 322 is right.

```figure
(m4p1-area 50 30 230 60 '(10 4) '(23) 2 #f)
(m4p1-area 50 130 230 60 '(20 3) '(14) 2 #f)
(label 160 212 "230 + 92 = 322 and 280 + 42 = 322" 'small 'bold)
```

```check
(number
  (ask "Check 15 × 32 the other way. What is 32 × 10 + 32 × 5?")
  (answer 480) (from "32 * 10 + 32 * 5") (true "15 * 32 = 480")
  (wrong-if 330 "32 × 5 is 160, not 10. 320 + 160 = 480.")
  (wrong-if 47 "That adds 15 + 32. Multiply: 32 × 10 = 320 and 32 × 5 = 160.")
  (hint "32 × 10 = 320.")
  (hint "32 × 5 = 160."))
```

---

## Worked example

```example
(example
  (problem "Check 26 × 41 = 1,066 two ways.")
  (step "Estimate: 30 × 40 = 1,200. 1,066 is close.")
  (step "Other order: 41 × 26 = 41 × 20 + 41 × 6 = 820 + 246.")
  (step "820 + 246 = 1,066. The products agree.")
  (answer "1,066 is right."))
```

```example
(example
  (problem "Dev says 45 × 32 = 1,210. Check it.")
  (step "Estimate: 50 × 30 = 1,500. 1,210 is a bit far.")
  (step "Other order: 32 × 45 = 32 × 40 + 32 × 5 = 1,280 + 160.")
  (step (number (ask "1,280 + 160 = ?") (answer 1440) (from "1280 + 160") (true "45 * 32 = 1440")
    (wrong-if 1210 "1,210 is Dev's answer. 1,280 + 160 = 1,440, so Dev made a mistake.")))
  (answer "45 × 32 = 1,440, so Dev is wrong."))
```

---

## Practice

```check
(number
  (ask "Estimate 78 × 43 by rounding each factor to the nearest ten.")
  (answer 3200) (from "80 * 40")
  (wrong-if 320 "8 tens × 4 tens give hundreds: 32 hundreds, which is 3,200.")
  (wrong-if 2800 "78 rounds to 80, not 70: its ones digit is 8.")
  (hint "78 rounds to 80. 43 rounds to 40."))
```

```check
(choice
  (ask "Which checks 16 × 48 = 768 by the other order?")
  (right "48 × 10 + 48 × 6 = 480 + 288" (true "48 * 10 + 48 * 6 = 768"))
  (wrong "16 × 48 = 768 again" (true "16 * 48 = 768")
    "Doing the same steps again can repeat the same mistake. Use the other order: 48 × 16.")
  (wrong "16 + 48 = 64" (true "16 + 48 = 64")
    "Adding does not check a product. Multiply in the other order: 48 × 16.")
  (hint "Break 16 into 10 + 6, and multiply 48 by each part."))
```

---

```check
(choice
  (ask "Ivy says 28 × 35 = 640. Is that right?")
  (right "No: it should be 980" (true "28 * 35 = 980"))
  (wrong "Yes: 20 × 30 + 8 × 5 = 640" (true "20 * 30 + 8 * 5 = 640")
    "That adds only 2 partial products. 20 × 5 = 100 and 8 × 30 = 240 are missing.")
  (wrong "No: it should be 63" (true "28 + 35 = 63")
    "63 is 28 + 35. The product is 600 + 100 + 240 + 40 = 980.")
  (hint "Estimate: 30 × 40 = 1,200. Is 640 close?"))
```

```check
(number
  (ask "Check 18 × 25 the other way. What is 25 × 10 + 25 × 8?")
  (answer 450) (from "25 * 10 + 25 * 8") (true "18 * 25 = 450")
  (wrong-if 290 "25 × 8 is 200, not 40. 250 + 200 = 450.")
  (hint "25 × 10 = 250 and 25 × 8 = 200."))
```

So: an estimate checks the size, and the other order checks the exact product.
