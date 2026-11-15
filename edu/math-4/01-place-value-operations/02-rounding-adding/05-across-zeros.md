# Subtracting across zeros

```lesson
(objective "Subtract from a number with zeros, such as 40,000 - 2,568, regrouping across several places.")
(standards "4.NBT.B.4")
(minutes 25)
```

You can subtract from a number like 40,000, even though it has many zeros.

Take 40,000 - 2,568. The ones digit 0 is less than 8, so you need to
regroup. But the tens, hundreds and thousands are 0 too. There is
nothing to take from them.

Go left until a place has something: the 4 ten thousands.

```figure
(define s (slider 's 0 2 0 "Step" 1))
(m4p1-column 240 70 40000 "-" 2568
  (if (= s 2) "37432" "")
  (if (= s 0) '("" "" "" "" "") '("3" "9" "9" "9" "10")))
(caption (list-ref '("Too few ones, and 3 zeros to the left."
  "Regroup 1 ten thousand across the zeros."
  "Now subtract each place: 37,432.") s))
```

```check
(number
  (ask "40,000 - 2,568 = ?")
  (answer 37432) (from "40000 - 2568")
  (wrong-if 42568 "0 - 8 is not 8. Regroup first: the 0s become 9s, and the ones become 10.")
  (wrong-if 47432 "You took 1 ten thousand to regroup, so 4 ten thousands become 3.")
  (hint "Move the slider.")
  (hint "After the regroup: 3 ten thousands, 9 thousands, 9 hundreds, 9 tens, 10 ones."))
```

---

## Why the 9s?

1 ten thousand is 10 thousands. Keep 9 of them, and break 1 into 10
hundreds. Keep 9 hundreds, and break 1 into 10 tens. Keep 9 tens, and
break 1 into 10 ones.

So 4 ten thousands become 3 ten thousands, 9 thousands, 9 hundreds, 9
tens and 10 ones. It is still 40,000.

```check
(number
  (ask "Regroup 6,003 so you can take away the ones. How many hundreds does it have after the regroup?")
  (answer 9)
  (wrong-if 10 "1 thousand becomes 10 hundreds, but 1 of those hundreds is broken into tens. 9 hundreds stay.")
  (wrong-if 0 "The hundreds were 0, but 1 thousand gives them 10. Then 1 goes on to the tens, so 9 stay.")
  (hint "6 thousands become 5 thousands and 10 hundreds.")
  (hint "1 of those hundreds goes on to the tens."))
```

---

## Subtract after the regroup

6,003 - 1,457: after the regroup you have 5 thousands, 9 hundreds, 9
tens and 13 ones.

- Ones: 13 - 7 = 6
- Tens: 9 - 5 = 4
- Hundreds: 9 - 4 = 5
- Thousands: 5 - 1 = 4

```check
(number
  (ask "6,003 - 1,457 = ?")
  (answer 4546) (from "6003 - 1457")
  (wrong-if 5454 "That takes the smaller digit from the bigger one. Regroup across the zeros first.")
  (wrong-if 5546 "You took 1 thousand to regroup, so the 6 thousands become 5. 5 - 1 = 4.")
  (hint "Ones: 13 - 7. Tens: 9 - 5. Hundreds: 9 - 4.")
  (hint "Thousands: 5 - 1."))
```

---

## Worked example

```example
(example
  (problem "Subtract 50,200 - 13,764.")
  (step "Ones: 0 is less than 4. The tens are 0, so go to the hundreds.")
  (step "Regroup 1 hundred: 1 hundred, 9 tens, 10 ones. 10 - 4 = 6. 9 - 6 = 3.")
  (step "Hundreds: 1 is less than 7. The thousands are 0, so regroup 1 ten thousand: 4 ten thousands, 9 thousands, 11 hundreds.")
  (step "11 - 7 = 4. 9 - 3 = 6. 4 - 1 = 3.")
  (answer "50,200 - 13,764 = 36,436"))
```

```example
(example
  (problem "Subtract 70,000 - 36,418.")
  (step "Regroup across all the zeros: 6 ten thousands, 9 thousands, 9 hundreds, 9 tens, 10 ones.")
  (step "Ones: 10 - 8 = 2. Tens: 9 - 1 = 8. Hundreds: 9 - 4 = 5. Thousands: 9 - 6 = 3.")
  (step (number (ask "Ten thousands: 6 - 3 = 3. So what is 70,000 - 36,418?") (answer 33582) (from "70000 - 36418")
    (wrong-if 43582 "The 7 ten thousands became 6 when you regrouped. 6 - 3 = 3.")))
  (answer "70,000 - 36,418 = 33,582"))
```

---

## Practice

```check
(number
  (ask "9,000 - 3,999 = ?")
  (answer 5001) (from "9000 - 3999")
  (wrong-if 6999 "0 - 9 is not 9. Regroup: 8 thousands, 9 hundreds, 9 tens, 10 ones.")
  (wrong-if 6001 "You took 1 thousand to regroup, so 9 thousands become 8. 8 - 3 = 5.")
  (hint "Regroup: 8 thousands, 9 hundreds, 9 tens, 10 ones."))
```

```check
(number
  (ask "100,000 - 45,321 = ?")
  (answer 54679) (from "100000 - 45321")
  (wrong-if 145321 "0 - 1 is not 1. Regroup the 1 hundred thousand: 9 ten thousands, 9 thousands, 9 hundreds, 9 tens, 10 ones.")
  (wrong-if 65789 "When you regroup across the zeros, the middle places become 9, not 10. Only the ones become 10.")
  (hint "100,000 is 9 ten thousands, 9 thousands, 9 hundreds, 9 tens and 10 ones."))
```

---

```check
(number
  (ask "A runner wants to run 20,000 steps today. She has run 8,650. How many steps are left?")
  (answer 11350) (unit "steps") (from "20000 - 8650")
  (wrong-if 28650 "0 - 5 is not 5. Regroup the 2 ten thousands first.")
  (wrong-if 21350 "You took 1 ten thousand to regroup, so 2 ten thousands become 1.")
  (hint "Steps left = 20,000 - 8,650.")
  (hint "Regroup: 1 ten thousand, 9 thousands, 9 hundreds, 10 tens."))
```

```check
(number
  (ask "800,400 - 275,136 = ?")
  (answer 525264) (from "800400 - 275136")
  (wrong-if 675336 "That takes the smaller digit from the bigger one. Regroup each place where the top is smaller.")
  (wrong-if 535264 "The ten thousands were 0. Regrouping makes them 9, not 10: only the thousands get 10. And the 8 becomes 7.")
  (hint "Ones: 0 is less than 6. Regroup 1 ten from the hundreds: 3 hundreds, 9 tens, 10 ones.")
  (hint "Hundreds: 3 - 1 = 2. Thousands: 0 is less than 5, so regroup from the 8."))
```

So: regroup from the first place with something; the zeros on the way become 9s.
