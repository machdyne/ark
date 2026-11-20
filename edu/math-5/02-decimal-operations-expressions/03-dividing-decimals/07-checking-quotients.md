# Checking quotients

```lesson
(objective "Check a decimal quotient by multiplying it by the divisor and with an estimate.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can check a quotient by multiplying it by the divisor, and by
estimating.

Multiplying and dividing are inverse operations. If $9.6 ÷ 4 = 2.4$,
then $2.4 * 4$ must give back 9.6:

$$ 2.4 * 4 = 9.6 $$

It does, so the quotient is right.

```check
(choice
  (ask "Which product checks 7.5 ÷ 3 = 2.5?")
  (right "2.5 × 3" (true "2.5 * 3 = 7.5"))
  (wrong "7.5 × 3"
    "That multiplies the number you divided. Multiply the quotient by the divisor: 2.5 × 3 should give 7.5.")
  (wrong "2.5 × 7.5"
    "Multiply the quotient by the divisor, 3, not by the number you divided.")
  (hint "Quotient × divisor = the number you divided."))
```

---

## Find a mistake

Sam says $5.6 ÷ 8 = 0.07$. Check: $0.07 * 8 = 0.56$, not 5.6. So the
quotient is wrong. 56 tenths ÷ 8 = 7 tenths, so the quotient is 0.7.
Check again: $0.7 * 8 = 5.6$.

```check
(text
  (ask "Eva says 4.2 ÷ 6 = 7. Check by multiplying, then give the right quotient.")
  (accept "0.7") (accept ".7") (accept "0.70")
  (true "4.2 ÷ 6 = 0.7")
  (wrong-if "7" "7 × 6 = 42, not 4.2. The quotient is 10 times too big.")
  (wrong-if "0.07" "0.07 × 6 = 0.42, not 4.2. Try 0.7: 0.7 × 6 = 4.2.")
  (hint "Which number times 6 gives 4.2?"))
```

---

## Estimate first

An estimate tells you about how big the quotient is. For
$31.5 ÷ 15$, think $30 ÷ 15 = 2$. So 2.1 is reasonable, and 21 or
0.21 is not.

For a decimal divisor, think about how many fit. $4.5 ÷ 0.5$: halves
in about 4 or 5 wholes, so about 8 to 10. The quotient is 9.

```check
(choice
  (ask "Use an estimate. Which quotient is reasonable for 19.2 ÷ 6?")
  (right "3.2" (true "19.2 ÷ 6 = 3.2"))
  (wrong "32" (false "19.2 ÷ 6 = 32")
    "Estimate: 18 ÷ 6 = 3. 32 is about 10 times too big.")
  (wrong "0.32" (false "19.2 ÷ 6 = 0.32")
    "Estimate: 18 ÷ 6 = 3. 0.32 is about 10 times too small.")
  (hint "19.2 is close to 18. 18 ÷ 6 = ?"))
```

---

## Worked example

```example
(example
  (problem "Check 8.4 ÷ 0.7 = 12.")
  (step "Estimate: 0.7 is less than 1, so the quotient is more than 8.4. 12 is.")
  (step "Multiply: 12 × 0.7 = 84 tenths = 8.4.")
  (answer "12 × 0.7 = 8.4, so 8.4 ÷ 0.7 = 12 is right."))
```

```example
(example
  (problem "Check 3.15 ÷ 9 = 0.35.")
  (step "Estimate: 3.15 is less than 9, so the quotient is less than 1. 0.35 is.")
  (step (text (ask "Multiply: 0.35 × 9 = ?")
    (accept "3.15") (accept "3.150")
    (true "0.35 * 9 = 3.15")
    (wrong-if "31.5" "35 × 9 = 315 hundredths = 3.15.")))
  (answer "0.35 × 9 = 3.15, so the quotient is right."))
```

---

## Practice

```check
(choice
  (ask "Lee says 6.4 ÷ 0.8 = 0.8. Is he right?")
  (right "No: 0.8 × 0.8 = 0.64, not 6.4. The quotient is 8." (true "0.8 * 0.8 = 0.64") (true "6.4 ÷ 0.8 = 8"))
  (wrong "Yes: 0.8 × 0.8 = 6.4" (false "0.8 * 0.8 = 6.4")
    "Tenths × tenths are hundredths: 0.8 × 0.8 = 0.64. So 0.8 is not the quotient.")
  (wrong "No: the quotient is 80" (false "6.4 ÷ 0.8 = 80")
    "Check: 80 × 0.8 = 64, not 6.4. Multiply both by 10: 64 ÷ 8 = 8.")
  (hint "Multiply his quotient by 0.8."))
```

```check
(text
  (ask "Check 13.5 ÷ 5. Which number times 5 is 13.5?")
  (accept "2.7") (accept "2.70")
  (true "13.5 ÷ 5 = 2.7")
  (true "2.7 * 5 = 13.5")
  (wrong-if "27" "27 × 5 = 135, not 13.5. Estimate: 15 ÷ 5 = 3, so about 3.")
  (wrong-if "2.07" "2.07 × 5 = 10.35. After 13 ÷ 5 = 2, 3 ones are left. With the 5 tenths they make 35 tenths, and 35 ÷ 5 = 7.")
  (hint "Estimate: about 15 ÷ 5 = 3."))
```

---

```check
(number
  (ask "Round 23.6 to the nearest whole number and divide by 4. About how much is 23.6 ÷ 4?")
  (answer 6) (from "24 ÷ 4")
  (wrong-if 60 "24 ÷ 4 = 6, not 60.")
  (hint "23.6 is about 24."))
```

```check
(choice
  (ask "Which check shows 1.8 ÷ 0.3 = 6 is right?")
  (right "6 × 0.3 = 1.8" (true "6 * 0.3 = 1.8"))
  (wrong "1.8 × 0.3 = 6" (false "1.8 * 0.3 = 6")
    "Multiply the quotient, 6, by the divisor, 0.3. 1.8 × 0.3 is 0.54, not 6.")
  (wrong "6 ÷ 0.3 = 1.8" (false "6 ÷ 0.3 = 1.8")
    "That divides again. Multiply instead: quotient × divisor = 6 × 0.3 = 1.8.")
  (hint "Quotient × divisor."))
```

So: multiply the quotient by the divisor to get back the number you divided, and use an estimate to check its size.
