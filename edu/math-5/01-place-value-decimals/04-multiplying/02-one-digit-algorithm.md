# The standard algorithm: one digit

```lesson
(objective "Multiply a number of up to 4 digits by a one-digit number with the standard algorithm, writing each regrouped digit above the next place.")
(standards "5.NBT.B.5")
(minutes 25)
```

You can multiply a number of up to 4 digits by a one-digit number with
the standard algorithm.

Find 2,436 × 7. Start at the ones and move left.

- Ones: $6 * 7 = 42$. Write 2. Regroup the 4 tens: write a small 4
  above the tens.
- Tens: $3 * 7 = 21$, plus 4 is 25. Write 5. Write a small 2 above the
  hundreds.
- Hundreds: $4 * 7 = 28$, plus 2 is 30. Write 0. Write a small 3 above
  the thousands.
- Thousands: $2 * 7 = 14$, plus 3 is 17. Write 17.

```figure
(define k (slider 'k 0 4 4 "Places done" 1))
(m5p1-mult 230 60 2436 7 (list-tail '("3" "2" "4" "") (- 3 (min k 3))) '() '() 0)
(m5p1-digits (substring "17052" (- 5 (if (= k 4) 5 k)) 5) 230 110 16 'body 'bold)
(label 160 170 (list-ref '("Start at the ones" "6 × 7 = 42" "3 × 7 + 4 = 25" "4 × 7 + 2 = 30" "2 × 7 + 3 = 17") k) 'body)
(caption "Small digits: the regrouped tens, hundreds, thousands")
```

```check
(number
  (ask "Find 2,436 × 7. What is the product?")
  (answer 17052) (from "2436 * 7")
  (wrong-if 14812 "Add the regrouped digits. 3 × 7 = 21, plus the 4 above, is 25.")
  (hint "Follow the figure one place at a time.")
  (hint "The last step is 2 × 7 + 3 = 17."))
```

---

## Add the regrouped digit after multiplying

The small digit above a place is added after you multiply that place.
It is not multiplied.

In 58 × 4: $8 * 4 = 32$, write 2, regroup 3. Then $5 * 4 = 20$, plus 3
is 23. So $58 * 4 = 232$.

```check
(choice
  (ask "In 67 × 3, you write 1 and regroup 2 from 7 × 3 = 21. What do you do next?")
  (right "6 × 3 = 18, then 18 + 2 = 20" (true "6 * 3 + 2 = 20"))
  (wrong "(6 + 2) × 3 = 24" (false "(6 + 2) * 3 = 20")
    "The regrouped 2 is 2 tens already made. Add it after you multiply the 6 tens.")
  (wrong "6 × 3 = 18, and forget the 2" (false "6 * 3 = 20")
    "The 2 tens from 7 × 3 must be counted. Add them to the 18 tens.")
  (hint "Multiply first, then add the small digit."))
```

---

## Zeros inside the number

A 0 times any digit is 0. You still add the regrouped digit.

In 304 × 6: $4 * 6 = 24$, write 4, regroup 2. Then $0 * 6 = 0$, plus
2 is 2. Then $3 * 6 = 18$.

$304 * 6 = 1824$, written 1,824.

```check
(number
  (ask "Find 405 × 8.")
  (answer 3240) (from "405 * 8")
  (wrong-if 3200 "0 × 8 = 0, but add the 4 regrouped from 5 × 8 = 40. The tens digit is 4.")
  (wrong-if 3204 "5 × 8 = 40: write 0 in the ones and regroup 4. Then 0 × 8 + 4 = 4 tens.")
  (hint "5 × 8 = 40. Write 0, regroup 4.")
  (hint "0 × 8 + 4 = 4."))
```

---

## Worked example

```example
(example
  (problem "Find 1,875 × 4.")
  (step "5 × 4 = 20. Write 0, regroup 2.")
  (step "7 × 4 = 28, plus 2 is 30. Write 0, regroup 3.")
  (step "8 × 4 = 32, plus 3 is 35. Write 5, regroup 3.")
  (step "1 × 4 = 4, plus 3 is 7. Write 7.")
  (answer "1,875 × 4 = 7,500"))
```

```example
(example
  (problem "Find 529 × 6.")
  (step "9 × 6 = 54. Write 4, regroup 5.")
  (step "2 × 6 = 12, plus 5 is 17. Write 7, regroup 1.")
  (step (number (ask "5 × 6 = 30, plus 1. What is 529 × 6?") (answer 3174) (from "529 * 6")
    (wrong-if 3074 "5 × 6 = 30, plus the regrouped 1 is 31. Write 31.")))
  (answer "529 × 6 = 3,174"))
```

---

## Practice

```check
(number
  (ask "Find 763 × 5.")
  (answer 3815) (from "763 * 5")
  (wrong-if 3505 "Add the regrouped digits: 6 × 5 = 30, plus 1 is 31. Then 7 × 5 = 35, plus 3 is 38.")
  (hint "3 × 5 = 15. Write 5, regroup 1."))
```

```check
(number
  (ask "Find 3,208 × 9.")
  (answer 28872) (from "3208 * 9")
  (wrong-if 28802 "0 × 9 = 0, but add the 7 regrouped from 8 × 9 = 72. The tens digit is 7.")
  (hint "8 × 9 = 72. Write 2, regroup 7.")
  (hint "0 × 9 + 7 = 7."))
```

---

```check
(number
  (ask "A box holds 144 pencils. How many pencils are in 6 boxes?")
  (answer 864) (from "144 * 6") (unit "pencils")
  (wrong-if 150 "That adds 6. Equal boxes means multiply: 144 × 6.")
  (wrong-if 644 "4 × 6 = 24: write 4, regroup 2. 4 × 6 + 2 = 26: write 6, regroup 2. 1 × 6 + 2 = 8.")
  (hint "4 × 6 = 24. Write 4, regroup 2."))
```

```check
(number
  (ask "Find 6,047 × 3.")
  (answer 18141) (from "6047 * 3")
  (wrong-if 18121 "4 × 3 = 12, plus the 2 regrouped from 7 × 3 = 21, is 14. Write 4, regroup 1.")
  (hint "7 × 3 = 21. Write 1, regroup 2."))
```

So: multiply each place from the ones, add the regrouped digit, and
write it above the next place.
