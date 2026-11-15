# Subtracting big numbers

```lesson
(objective "Subtract multi-digit numbers with the standard algorithm, regrouping from the next place when a place has too few.")
(standards "4.NBT.B.4")
(minutes 25)
```

You can subtract big numbers in columns, one place at a time.

The standard algorithm for subtracting works like the one for adding:

1. Write the numbers in columns, ones under ones.
2. Subtract the ones, then the tens, then each place to the left.
3. When the top digit is too small, regroup 1 from the next place to the left.

Move the slider to work out 7,352 - 2,816.

```figure
(define s (slider 's 0 4 0 "Step" 1))
(m4p1-column 230 70 7352 "-" 2816
  (list-ref '("" "6" "36" "536" "4536") s)
  (list-ref '(("" "" "" "") ("" "" "4" "12") ("" "" "4" "12") ("6" "13" "4" "12") ("6" "13" "4" "12")) s))
(caption (list-ref '("Ones first: 2 is less than 6." "Regroup 1 ten: 12 - 6 = 6."
  "Tens: 4 - 1 = 3."
  "Hundreds: regroup 1 thousand. 13 - 8 = 5."
  "Thousands: 6 - 2 = 4.") s))
```

```check
(number
  (ask "7,352 - 2,816 = ?")
  (answer 4536) (from "7352 - 2816")
  (wrong-if 5544 "That takes the smaller digit from the bigger one in each place. In the ones, 2 - 6 needs a regroup: 12 - 6.")
  (wrong-if 5546 "When you regroup, the place you take from has 1 less. The 5 tens become 4, and the 7 thousands become 6.")
  (hint "Move the slider one step at a time.")
  (hint "Ones: 2 is less than 6. Regroup 1 ten: 12 - 6."))
```

---

## Always top minus bottom

In each place, take the bottom digit from the top digit. Never turn
them round. If the top digit is smaller, regroup first.

When you regroup, 1 of the next place becomes 10 of this place. The
next place has 1 less.

```check
(number
  (ask "6,421 - 3,785 = ?")
  (answer 2636) (from "6421 - 3785")
  (wrong-if 3364 "That takes the smaller digit from the bigger one in each place. In the ones, 1 - 5 needs a regroup: 11 - 5 = 6.")
  (wrong-if 3746 "After each regroup, the place you took from has 1 less. Take that 1 away before you subtract there.")
  (hint "Ones: 1 is less than 5. Regroup 1 ten.")
  (hint "Tens: 1 is less than 8. Regroup 1 hundred."))
```

---

## Bigger numbers

The steps are the same for 5 or 6 digits. Go place by place from the
right.

85,140 - 37,526: regroup for the ones, the hundreds and the thousands. The answer is
47,614.

```figure
(m4p1-column 240 70 85140 "-" 37526 "47614" '("7" "14" "11" "3" "10"))
(caption "Regrouped for ones, hundreds, thousands.")
```

```check
(number
  (ask "63,207 - 28,451 = ?")
  (answer 34756) (from "63207 - 28451")
  (wrong-if 45256 "That takes the smaller digit from the bigger one in some places. Regroup whenever the top digit is smaller.")
  (wrong-if 45856 "After each regroup, the place you took from has 1 less. The 2 hundreds become 1, and so on.")
  (hint "Ones: 7 - 1 = 6. Tens: 0 is less than 5, so regroup.")
  (hint "The hundreds have only 1 left after that regroup."))
```

---

## Worked example

```example
(example
  (problem "Subtract 92,481 - 35,762.")
  (step "Ones: 1 is less than 2. Regroup 1 ten: 11 - 2 = 9. The tens are now 7.")
  (step "Tens: 7 - 6 = 1.")
  (step "Hundreds: 4 is less than 7. Regroup 1 thousand: 14 - 7 = 7. The thousands are now 1.")
  (step "Thousands: 1 is less than 5. Regroup 1 ten thousand: 11 - 5 = 6. The ten thousands are now 8.")
  (step "Ten thousands: 8 - 3 = 5.")
  (answer "92,481 - 35,762 = 56,719"))
```

```example
(example
  (problem "Subtract 704,315 - 251,842.")
  (step "Ones: 5 - 2 = 3. Tens: 1 is less than 4. Regroup: 11 - 4 = 7.")
  (step "Hundreds: now 2, less than 8. Regroup: 12 - 8 = 4. Thousands: now 3. 3 - 1 = 2.")
  (step "Ten thousands: 0 is less than 5. Regroup: 10 - 5 = 5. Hundred thousands: now 6. 6 - 2 = 4.")
  (step (number (ask "So what is 704,315 - 251,842?") (answer 452473) (from "704315 - 251842")
    (wrong-if 552473 "The ten thousands needed a regroup: 10 - 5 = 5. Then the 7 hundred thousands became 6, and 6 - 2 = 4.")))
  (answer "704,315 - 251,842 = 452,473"))
```

---

## Practice

```check
(number
  (ask "5,934 - 2,871 = ?")
  (answer 3063) (from "5934 - 2871")
  (wrong-if 3143 "In the tens, 3 is less than 7, so regroup: 13 - 7 = 6. Do not take 3 from 7.")
  (wrong-if 3163 "After the regroup, the hundreds have 8, not 9: 8 - 8 = 0.")
  (hint "Tens: 3 is less than 7. Regroup 1 hundred."))
```

```check
(number
  (ask "48,275 - 19,638 = ?")
  (answer 28637) (from "48275 - 19638")
  (wrong-if 31443 "That takes the smaller digit from the bigger one in some places. Regroup where the top is smaller.")
  (wrong-if 39647 "After each regroup, take 1 from the place you regrouped from.")
  (hint "Ones: 5 is less than 8. Regroup 1 ten.")
  (hint "Thousands: 8 is less than 9. Regroup 1 ten thousand."))
```

---

```check
(number
  (ask "A stadium has 31,540 seats. 12,785 people come to a game. How many seats are empty?")
  (answer 18755) (unit "seats") (from "31540 - 12785")
  (wrong-if 21245 "That takes the smaller digit from the bigger one. Regroup where the top digit is smaller.")
  (wrong-if 44325 "The question asks how many are left, so subtract: 31,540 - 12,785.")
  (hint "Empty seats = all the seats - the people.")
  (hint "Ones: 0 is less than 5. Regroup 1 ten."))
```

So: subtract top minus bottom, and regroup when the top digit is too small.
