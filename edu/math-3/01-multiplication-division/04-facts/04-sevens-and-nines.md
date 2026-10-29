# Sevens and nines

```lesson
(objective "Know the multiplication facts of 7 and 9.")
(standards "3.OA.C.7")
(minutes 25)
```

You can learn the facts of 7 and 9, the last ones to learn.

## You know most 7s already

Swap the factors. 7 × 2 = 2 × 7, 7 × 5 = 5 × 7, and so on. You already
know the 1s, 2s, 3s, 4s, 5s, 6s and 8s. So only 7 × 7, 7 × 9 and 7 × 10 are
left, and 7 × 10 = 70 is easy.

For 7 × 7, break apart: 7 × 5 = 35 and 7 × 2 = 14. 35 + 14 = 49.

```check
(number
  (ask "7 × 7 = ?")
  (answer 49) (from "7 * 5 + 7 * 2") (true "7 * 7 = 49")
  (wrong-if 14 "14 is 7 + 7. Break 7 into 5 + 2: 35 + 14.")
  (wrong-if 42 "42 is 7 × 6. One more 7 makes 49.")
  (hint "7 × 5 = 35 and 7 × 2 = 14."))
```

---

## Nines: 10s take away 1 group

9 is 10 - 1. So 9 × a number is 10 × the number, take away the number
once. 9 × 6: 10 × 6 = 60, and 60 - 6 = 54.

```figure
(define n (slider 'n 1 10 6 "Number" 1))
(label 160 60 (string-append "10 × " (fmt n 0) " = " (fmt (* 10 n) 0)) 'big)
(label 160 110 (string-append (fmt (* 10 n) 0) " - " (fmt n 0) " = " (fmt (* 9 n) 0)) 'big)
(label 160 170 (string-append "9 × " (fmt n 0) " = " (fmt (* 9 n) 0)) 'big 'bold)
```

```check
(number
  (ask "9 × 7 = ?")
  (answer 63) (from "10 * 7 - 7") (true "9 * 7 = 63")
  (wrong-if 70 "70 is 10 × 7. Take away one 7: 70 - 7 = 63.")
  (wrong-if 16 "16 is 9 + 7. Find 10 × 7 = 70, then take away 7.")
  (hint "10 × 7 = 70. Take away 7."))
```

---

## A pattern in the 9s

Look at the 9s: 18, 27, 36, 45, 54, 63, 72, 81, 90.

- The tens digit is 1 less than the number you multiply by 9. In
  9 × 4 = 36, the 3 is 1 less than 4.
- The 2 digits add up to 9: 3 + 6 = 9.

This works for 9 × 2 up to 9 × 10.

```check
(number
  (ask "Use the pattern: 9 × 8 = ?")
  (answer 72) (from "9 * 8")
  (wrong-if 81 "81 is 9 × 9. For 9 × 8 the tens digit is 1 less than 8: 7. Then 7 + 2 = 9.")
  (wrong-if 17 "17 is 9 + 8. The tens digit is 7, and the digits add up to 9: 72.")
  (hint "The tens digit is 1 less than 8.")
  (hint "7 and what make 9?"))
```

---

## Worked example

```example
(example
  (problem "Find 7 × 9.")
  (step "Swap it: 7 × 9 = 9 × 7.")
  (step "10 × 7 = 70. Take away one 7.")
  (step "70 - 7 = 63.")
  (answer "7 × 9 = 63"))
```

```example
(example
  (problem "Find 9 × 9.")
  (step "10 × 9 = 90.")
  (step "Take away one 9: 90 - 9.")
  (step (number (ask "90 - 9 = ?") (answer 81) (from "90 - 9") (true "9 * 9 = 81")
    (wrong-if 89 "89 is 90 - 1. Take away 9, not 1: 90 - 9 = 81.")))
  (answer "9 × 9 = 81"))
```

---

## Practice

```check
(number
  (ask "7 × 8 = ?")
  (answer 56) (from "7 * 8")
  (wrong-if 15 "15 is 7 + 8. Try 8 × 7: double 4 × 7 = 28, so 56.")
  (wrong-if 54 "54 is 6 × 9. 7 × 8: 7 × 5 = 35, 7 × 3 = 21, 35 + 21 = 56.")
  (hint "Double 4 × 7 = 28."))
```

```check
(number
  (ask "9 × 5 = ?")
  (answer 45) (from "9 * 5")
  (wrong-if 14 "14 is 9 + 5. 10 × 5 = 50, take away 5: 45.")
  (hint "Half of 90."))
```

```check
(number
  (ask "7 × 6 = ?")
  (answer 42) (from "7 * 6")
  (wrong-if 13 "13 is 7 + 6. Swap to 6 × 7: 5 × 7 = 35, then add 7.")
  (hint "6 × 7: 35 + 7."))
```

---

```check
(number
  (ask "A week has 7 days. How many days are in 9 weeks?")
  (answer 63) (unit "days") (from "9 * 7")
  (wrong-if 16 "16 is 9 + 7. There are 9 groups of 7 days: 9 × 7.")
  (wrong-if 56 "56 is 8 weeks. Add one more 7: 63.")
  (hint "10 × 7 = 70. Take away one 7."))
```

```check
(number
  (ask "9 × 3 = ?")
  (answer 27) (from "9 * 3")
  (wrong-if 12 "12 is 9 + 3. 10 × 3 = 30, take away 3: 27.")
  (hint "The tens digit is 1 less than 3."))
```

So: find 7s by swapping or breaking apart, and find 9s as 10s take away 1 group.
