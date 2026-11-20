# Estimating sums and differences

```lesson
(objective "Estimate a decimal sum or difference by rounding to whole numbers, and use the estimate to check an answer.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can estimate a decimal sum by rounding each number to a whole
number first.

Round each decimal to the nearest whole number, as you learned. Then
add the whole numbers in your head.

4.78 + 2.31: 4.78 is closer to 5, and 2.31 is closer to 2. The sum is
about 5 + 2 = 7. (The exact sum is 7.09.)

```figure
(m5p2-line 30 290 110 2 6 40 10)
(nl-mark 4.78 'warm "4.78")
(nl-mark 2.31 'cool "2.31")
(arrow (nl-x 4.78) 135 (nl-x 5) 135 'ink 1.5)
(arrow (nl-x 2.31) 135 (nl-x 2) 135 'ink 1.5)
(caption "4.78 rounds to 5; 2.31 rounds to 2")
```

```check
(number
  (ask "Round each number to the nearest whole number. About how much is 6.82 + 3.4?")
  (answer 10) (from "7 + 3")
  (wrong-if 9 "6.82 is closer to 7 than to 6, since 0.82 is more than 0.5. So 7 + 3 = 10.")
  (wrong-if 11 "3.4 is closer to 3, since 0.4 is less than 0.5. So 7 + 3 = 10.")
  (hint "6.82 rounds to 7. 3.4 rounds to 3."))
```

---

## Differences too

Estimate a difference the same way. 9.15 - 3.7 is about 9 - 4 = 5.

A number such as 2.5 is halfway between 2 and 3. The usual rule rounds
it up to 3. That rule is an agreement people share, so everyone gets
the same estimate.

```check
(number
  (ask "Round to whole numbers. About how much is 12.6 - 4.29?")
  (answer 9) (from "13 - 4")
  (wrong-if 8 "12.6 is closer to 13 than to 12. So 13 - 4 = 9.")
  (wrong-if 17 "That adds. Estimate the difference: 13 - 4.")
  (hint "12.6 rounds to 13. 4.29 rounds to 4."))
```

---

## Check an answer

An estimate shows when an answer is far off. Ana says
3.5 + 2.46 = 2.81. The estimate is 4 + 2 = 6. 2.81 is far from 6, so
Ana made a mistake. She lined up the last digits, not the decimal
points. The right sum is 5.96, close to 6.

```check
(choice
  (ask "Ben says 8.3 - 2.15 = 6.15. Use an estimate. Is his answer reasonable?")
  (right "Yes: 8 - 2 = 6, and 6.15 is close to 6" (true "8.3 - 2.15 = 6.15"))
  (wrong "No: it should be close to 10"
    "10 is about 8 + 2: that adds. For a difference, subtract the rounded numbers: 8 - 2 = 6.")
  (wrong "No: the answer must have only 1 decimal place, like 8.3"
    "A difference can have 2 decimal places when one number has hundredths. 8.30 - 2.15 = 6.15.")
  (hint "Round: 8.3 to 8 and 2.15 to 2."))
```

---

## Worked example

```example
(example
  (problem "Mia adds 7.45 + 1.8 and gets 7.63. Is that reasonable?")
  (step "Estimate: 7.45 rounds to 7, and 1.8 rounds to 2. 7 + 2 = 9.")
  (step "7.63 is not close to 9. It is even less than 7.45 + 1.")
  (step "Line up the decimal points: 7.45 + 1.80 = 9.25. That is close to 9.")
  (answer "No. 7.45 + 1.8 = 9.25."))
```

```example
(example
  (problem "Is 15.2 - 6.75 = 8.45 reasonable?")
  (step "15.2 rounds to 15. 6.75 rounds to 7.")
  (step (number (ask "Estimate: 15 - 7 = ?") (answer 8) (from "15 - 7")
    (wrong-if 22 "That adds. Subtract: 15 - 7.")))
  (answer "Yes: 8.45 is close to 8. (It is exactly right.)"))
```

---

## Practice

```check
(number
  (ask "Round to whole numbers. About how much is 5.19 + 8.73 + 1.5?")
  (answer 16) (from "5 + 9 + 2")
  (wrong-if 15 "1.5 is halfway between 1 and 2. The usual rule rounds it up to 2. So 5 + 9 + 2 = 16.")
  (wrong-if 14 "8.73 is closer to 9 than to 8, and 1.5 rounds up to 2. So 5 + 9 + 2 = 16.")
  (hint "5.19 rounds to 5, 8.73 to 9 and 1.5 to 2."))
```

```check
(choice
  (ask "Which answer is surely wrong? Use estimates.")
  (right "4.6 + 3.38 = 3.84" (false "4.6 + 3.38 = 3.84"))
  (wrong "4.6 + 3.38 = 7.98" (true "4.6 + 3.38 = 7.98")
    "Estimate: 5 + 3 = 8. 7.98 is close to 8, so it is reasonable. In fact it is exact.")
  (wrong "9.1 - 3.38 = 5.72" (true "9.1 - 3.38 = 5.72")
    "Estimate: 9 - 3 = 6. 5.72 is close to 6, so it is reasonable. In fact it is exact.")
  (hint "A sum of 4.6 and something more must be more than 4.6."))
```

---

```check
(number
  (ask "Round to whole numbers. About how much is 20.4 - 11.9?")
  (answer 8) (from "20 - 12")
  (wrong-if 9 "11.9 is closer to 12 than to 11. So 20 - 12 = 8.")
  (hint "20.4 rounds to 20. 11.9 rounds to 12."))
```

An estimate catches answers that are far off, not small slips. Kim
adds 2.75 + 0.4 and gets 2.79. Her estimate, 3 + 0 = 3, is close to
2.79, but 2.79 is still wrong.

```check
(text
  (ask "Line up the decimal points. What is 2.75 + 0.4?")
  (accept "3.15") (accept "3.150")
  (true "2.75 + 0.4 = 3.15")
  (wrong-if "2.79" "0.4 is 4 tenths, or 40 hundredths, not 4 hundredths. Write 0.40 under 2.75.")
  (hint "2.75 + 0.40."))
```

So: round each decimal to a whole number to estimate, and an answer far from the estimate has a mistake.
