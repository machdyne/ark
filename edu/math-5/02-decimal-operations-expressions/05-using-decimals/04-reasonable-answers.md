# Reasonable answers

```lesson
(objective "Check a decimal answer with an estimate and with the inverse operation, and fix a misplaced decimal point.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can check a decimal answer in two ways: an estimate shows its size,
and the inverse operation shows whether it is exact.

- **Estimate**: round the numbers and work it out in your head. A
  misplaced decimal point makes an answer about 10 or 100 times too big
  or too small.
- **Inverse operation**: undo the answer. Add back what you took away;
  multiply a quotient by the divisor.

```check
(choice
  (ask "Raj says 4.8 × 3.1 = 148.8. What does an estimate show?")
  (right "About 5 × 3 = 15, so the right answer is 14.88" (true "4.8 * 3.1 = 14.88"))
  (wrong "About 150, so 148.8 is right"
    "Round each factor: 4.8 is about 5 and 3.1 is about 3. 5 × 3 = 15, not 150.")
  (wrong "About 1.5, so the right answer is 1.488" (false "4.8 * 3.1 = 1.488")
    "5 × 3 = 15, not 1.5. Tenths × tenths are hundredths: 14.88.")
  (hint "4.8 is about 5. 3.1 is about 3."))
```

---

## Fix the decimal point

The digits can be right while the decimal point is wrong. Keep the
digits, and move them to the places the estimate says.

$9.6 ÷ 0.3$: someone writes 3.2. The estimate: about 9 ÷ 0.3, how many
3 tenths fit in 9? 30. So the quotient is 32, not 3.2. Check:
$32 * 0.3 = 9.6$.

```check
(text
  (ask "Sam writes 7.2 ÷ 0.8 = 0.9. Fix his answer.")
  (accept "9") (accept "9.0")
  (true "7.2 ÷ 0.8 = 9")
  (wrong-if "0.9" "Check: 0.9 × 0.8 = 0.72, not 7.2. Multiply both by 10: 72 ÷ 8.")
  (wrong-if "90" "Check: 90 × 0.8 = 72, not 7.2.")
  (hint "Multiply both by 10: 72 ÷ 8."))
```

---

## Check with the inverse

An estimate can miss a small slip. The inverse operation catches it.

Ana says $6.4 - 2.75 = 3.75$. The estimate, 6 - 3 = 3, looks fine. But
$3.75 + 2.75 = 6.5$, not 6.4. So she made a slip. The right difference
is 3.65.

```check
(choice
  (ask "Which check shows that 8.1 ÷ 3 = 2.7 is right?")
  (right "2.7 × 3 = 8.1" (true "2.7 * 3 = 8.1"))
  (wrong "8.1 × 3 = 24.3"
    "That multiplies the number you divided. Multiply the quotient by the divisor: 2.7 × 3.")
  (wrong "8.1 - 3 = 5.1"
    "Subtracting does not undo dividing. Multiplying does: 2.7 × 3.")
  (hint "Quotient × divisor = ?"))
```

---

## Worked example

```example
(example
  (problem "Lee says 0.6 × 0.4 = 2.4. Check and fix.")
  (step "Estimate: 0.6 and 0.4 are both less than 1, so the product is less than 1.")
  (step "Tenths × tenths are hundredths: 6 × 4 = 24 hundredths.")
  (answer "0.6 × 0.4 = 0.24"))
```

```example
(example
  (problem "Mia says 12.5 + 3.75 = 5. Check and fix.")
  (step "Estimate: 13 + 4 = 17. 5 is far off.")
  (step "She lined up the last digits, as 1.25 + 3.75. Line up the decimal points: 12.50 + 3.75.")
  (step (text (ask "12.50 + 3.75 = ?")
    (accept "16.25") (accept "16.250")
    (true "12.5 + 3.75 = 16.25")
    (wrong-if "15.25" "Regroup: 5 + 7 = 12 tenths. Write 2 and regroup 1 one: 12 + 3 + 1 = 16.")))
  (answer "12.5 + 3.75 = 16.25"))
```

---

## Practice

```check
(text
  (ask "Kai writes 3.5 × 2.4 = 84. The digits are right. Fix the decimal point.")
  (accept "8.4") (accept "8.40")
  (true "3.5 * 2.4 = 8.4")
  (wrong-if "0.84" "Estimate: about 4 × 2 = 8. 0.84 is too small.")
  (hint "Estimate: about 4 × 2 = 8."))
```

```check
(text
  (ask "Eva writes 5 - 1.84 = 4.84. Check by adding back, then give the right difference.")
  (accept "3.16") (accept "3.160")
  (true "5 - 1.84 = 3.16")
  (wrong-if "4.84" "4.84 + 1.84 = 6.68, not 5. Write 5.00 and regroup across the zeros.")
  (wrong-if "4.16" "Check: 4.16 + 1.84 = 6, not 5. After you regroup, 5.00 is 4 ones, 9 tenths, 10 hundredths: 4 - 1 = 3 ones.")
  (hint "5.00 - 1.84. Then check: answer + 1.84 = 5."))
```

---

```check
(choice
  (ask "Which answer is reasonable for 19.8 ÷ 4?")
  (right "4.95" (true "19.8 ÷ 4 = 4.95"))
  (wrong "49.5" (false "19.8 ÷ 4 = 49.5")
    "Estimate: 20 ÷ 4 = 5. 49.5 is about 10 times too big.")
  (wrong "0.495" (false "19.8 ÷ 4 = 0.495")
    "Estimate: 20 ÷ 4 = 5. 0.495 is about 10 times too small.")
  (hint "19.8 is about 20."))
```

```check
(choice
  (ask "Jo says 2.5 × 1.2 = 3. She estimates 3 × 1 = 3. Is that enough to be sure?")
  (right "No: an estimate shows the size; to be sure, check exactly, here 25 × 12 = 300, so 3.00" (true "2.5 * 1.2 = 3"))
  (wrong "Yes: an estimate proves an answer"
    "An estimate only shows the size. A small slip, such as 3.1, would look fine too. Work it out exactly or use the inverse.")
  (wrong "No: 2.5 × 1.2 cannot be a whole number" (false "2.5 * 1.2 = 3.5")
    "Products of decimals can be whole numbers: 25 × 12 = 300 hundredths = 3.")
  (hint "Would 3.1 also be close to the estimate?"))
```

So: estimate to check the size and the decimal point, and use the inverse operation to check the exact answer.
