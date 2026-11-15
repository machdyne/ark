# Dividing place by place

```lesson
(objective "Divide a number of up to 4 digits by a one-digit number place by place, sharing the thousands, hundreds, tens and ones in turn.")
(standards "4.NBT.B.6")
(minutes 30)
```

You can divide a 4-digit number by sharing one place at a time, from the left.

Share 4,872 into 4 equal groups. Start with the thousands, then the
hundreds, the tens and the ones. Whatever is left in a place is
regrouped into the next place.

Move the slider to share one place at a time.

```figure
(define k (slider 'k 0 4 4 "Places" 1))
(define rows '("4 thousands ÷ 4 = 1 thousand, 0 left"
  "8 hundreds ÷ 4 = 2 hundreds, 0 left"
  "7 tens ÷ 4 = 1 ten, 3 tens left"
  "3 tens and 2 ones = 32 ones"))
(label 160 26 "4,872 ÷ 4" 'big 'bold)
(for-range 0 k (lambda (i) (text 20 (+ 60 (* 28 i)) (list-ref rows i) 'small)))
(if (= k 4) (text 20 180 "32 ones ÷ 4 = 8 ones, 0 left" 'small))
(label 160 216 (string-append "Each group: " (list-ref '("?" "1,000" "1,200" "1,210" "1,218") k)) 'body 'bold)
```

```check
(number
  (ask "4,872 ÷ 4 = ?")
  (answer 1218) (from "4872 / 4") (true "4 * 1218 = 4872")
  (wrong-if 1210 "3 tens were left over. Regroup them: 30 + 2 = 32 ones, and 32 ÷ 4 = 8.")
  (wrong-if 12108 "Each place gets 1 digit. 3 tens left and 2 ones make 32 ones, and 32 ÷ 4 = 8 ones.")
  (hint "Move the slider to the end.")
  (hint "1 thousand, 2 hundreds, 1 ten and 8 ones."))
```

---

## Too few to share

Sometimes a place has fewer than the divisor. Then regroup it into the
next place before you share.

1,535 ÷ 5: 1 thousand cannot go into 5 groups. Regroup it: 15 hundreds.

- 15 hundreds ÷ 5 = 3 hundreds, 0 left.
- 3 tens ÷ 5: too few. Each group gets 0 tens. Regroup: 35 ones.
- 35 ones ÷ 5 = 7 ones.

So 1,535 ÷ 5 = 307. The 0 holds the tens place.

```check
(number
  (ask "5,628 ÷ 4 = ?")
  (answer 1407) (from "5628 / 4") (true "4 * 1407 = 5628")
  (wrong-if 147 "Each group gets 0 tens, and the 0 must hold the tens place: 1,407.")
  (wrong-if 1400 "2 tens were left with the 8 ones: 28 ones ÷ 4 = 7.")
  (hint "5 thousands ÷ 4 = 1, 1 left. 16 hundreds ÷ 4 = 4.")
  (hint "2 tens ÷ 4: too few. Regroup: 28 ones."))
```

---

## A remainder at the end

What is left after the ones is the remainder.

2,147 ÷ 3: 21 hundreds ÷ 3 = 7 hundreds. 4 tens ÷ 3 = 1 ten, 1 left.
17 ones ÷ 3 = 5 ones, 2 left.

So 2,147 ÷ 3 = 715 R 2.

```check
(number
  (ask "3,254 ÷ 6 = 542 R ?")
  (answer 2) (from "3254 - 6 * 542") (true "3254 = 6 * 542 + 2")
  (wrong-if 4 "4 is the tens digit of the quotient. After the ones, 14 ÷ 6 = 2 with 2 left.")
  (wrong-if 0 "Check it: 6 × 542 = 3,252, not 3,254. 2 is left over.")
  (hint "1 ten is left after the tens. Regroup: 14 ones.")
  (hint "14 ÷ 6 = 2, and how many left?"))
```

---

## Worked example

```example
(example
  (problem "Divide 6,936 ÷ 3.")
  (step "6 thousands ÷ 3 = 2 thousands. 9 hundreds ÷ 3 = 3 hundreds.")
  (step "3 tens ÷ 3 = 1 ten. 6 ones ÷ 3 = 2 ones.")
  (step "Nothing is left in any place.")
  (answer "6,936 ÷ 3 = 2,312"))
```

```example
(example
  (problem "Divide 4,268 ÷ 7.")
  (step "4 thousands ÷ 7: too few. Regroup: 42 hundreds ÷ 7 = 6 hundreds, 0 left.")
  (step "6 tens ÷ 7: too few. 0 tens. Regroup: 68 ones.")
  (step (number (ask "68 ÷ 7 = 9 R ?") (answer 5) (from "68 - 7 * 9") (true "4268 = 7 * 609 + 5")
    (wrong-if 9 "9 is the ones digit of the quotient. 7 × 9 = 63, and 68 - 63 is left.")))
  (answer "4,268 ÷ 7 = 609 R 5"))
```

---

## Practice

```check
(number
  (ask "8,190 ÷ 9 = ?")
  (answer 910) (from "8190 / 9") (true "9 * 910 = 8190")
  (wrong-if 91 "The ones: 0 ones ÷ 9 = 0. That 0 holds the ones place: 910.")
  (wrong-if 9010 "8 thousands ÷ 9: too few, so there is no thousands digit. Start with 81 hundreds.")
  (hint "81 hundreds ÷ 9 = 9 hundreds."))
```

```check
(number
  (ask "2,875 ÷ 5 = ?")
  (answer 575) (from "2875 / 5") (true "5 * 575 = 2875")
  (wrong-if 5075 "2 thousands is too few for 5 groups. Regroup into 28 hundreds first.")
  (hint "28 hundreds ÷ 5 = 5, 3 left.")
  (hint "37 tens ÷ 5 = 7, 2 left. Then 25 ones."))
```

---

```check
(number
  (ask "7,452 ÷ 6 = ?")
  (answer 1242) (from "7452 / 6") (true "6 * 1242 = 7452")
  (wrong-if 1202 "2 hundreds were left. Regroup them: 20 tens and 5 tens make 25 tens, and 25 ÷ 6 = 4.")
  (hint "7 thousands ÷ 6 = 1, 1 left. 14 hundreds ÷ 6 = 2, 2 left.")
  (hint "25 tens ÷ 6 = 4, 1 left. 12 ones ÷ 6 = 2."))
```

```check
(number
  (ask "3,609 ÷ 3 = ?")
  (answer 1203) (from "3609 / 3") (true "3 * 1203 = 3609")
  (wrong-if 123 "0 tens ÷ 3 = 0 tens. That 0 holds the tens place: 1,203.")
  (hint "Share each place: 3 thousands, 6 hundreds, 0 tens, 9 ones."))
```

So: share each place from the left, and regroup what is left.
