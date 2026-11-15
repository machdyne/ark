# Adding big numbers

```lesson
(objective "Add multi-digit numbers with the standard algorithm, lining up the places and regrouping.")
(standards "4.NBT.B.4")
(minutes 25)
(keywords "standard algorithm")
```

You can add big numbers in columns, one place at a time.

The **standard algorithm** for adding is a set of steps that always
works:

1. Write the numbers in columns, ones under ones.
2. Add the ones, then the tens, then each place to the left.
3. When a place adds up to 10 or more, regroup 1 to the next place.

Move the slider to add 3,658 + 2,774.

```figure
(define s (slider 's 0 4 0 "Step" 1))
(m4p1-column 230 70 3658 "+" 2774
  (list-ref '("" "2" "32" "432" "6432") s)
  (list-ref '(("" "" "" "") ("" "" "1" "") ("" "1" "1" "") ("1" "1" "1" "") ("1" "1" "1" "")) s))
(caption (list-ref '("Ones first." "8 + 4 = 12: write 2, regroup 1 ten."
  "1 + 5 + 7 = 13 tens: write 3, regroup 1."
  "1 + 6 + 7 = 14 hundreds: write 4, regroup 1"
  "1 + 3 + 2 = 6 thousands.") s))
```

```check
(number
  (ask "3,658 + 2,774 = ?")
  (answer 6432) (from "3658 + 2774")
  (wrong-if 5322 "That leaves out every regrouped 1. Each place from the ones to the hundreds adds up to 10 or more.")
  (wrong-if 5131212 "8 + 4 = 12, but only 1 digit fits in each place. Write the 2 and regroup the 1 ten into the tens.")
  (hint "Move the slider one step at a time.")
  (hint "Ones: 8 + 4 = 12. Write 2, regroup 1 ten."))
```

---

## Line up the places

The numbers may have different numbers of digits. Line them up on the
right, so ones are under ones.

45,206 + 3,819: the 3 of 3,819 goes under the 5, in the thousands.

```figure
(m4p1-column 230 70 45206 "+" 3819 "49025" '("" "1" "" "1" ""))
(caption "Ones under ones. 3,819 has 4 digits.")
```

```check
(number
  (ask "45,206 + 3,819 = ?")
  (answer 49025) (from "45206 + 3819")
  (wrong-if 83396 "That lines up 3,819 on the left. Line up the ones: the 9 goes under the 6.")
  (wrong-if 49015 "6 + 9 = 15 ones: write 5 and regroup 1 ten. Then 1 + 0 + 1 = 2 tens.")
  (hint "Write 3,819 so its 9 is under the 6."))
```

---

## A new place

When the greatest place adds up to 10 or more, the 1 goes into a new
place on the left.

67,450 + 58,730: the ten thousands are 1 + 6 + 5 = 12. Write 2 and
put the 1 in the hundred thousands. The sum is 126,180.

```check
(number
  (ask "84,600 + 37,500 = ?")
  (answer 122100) (from "84600 + 37500")
  (wrong-if 22100 "The ten thousands make 1 + 8 + 3 = 12. Write 2, and the 1 goes into a new place: 122,100.")
  (wrong-if 121100 "6 + 5 = 11 hundreds. Regroup 1 thousand: 1 + 4 + 7 = 12 thousands.")
  (hint "Hundreds: 6 + 5 = 11.")
  (hint "Ten thousands: 1 + 8 + 3 = 12."))
```

---

## Worked example

```example
(example
  (problem "Add 27,384 + 15,939.")
  (step "Ones: 4 + 9 = 13. Write 3, regroup 1 ten.")
  (step "Tens: 1 + 8 + 3 = 12. Write 2, regroup 1 hundred.")
  (step "Hundreds: 1 + 3 + 9 = 13. Write 3, regroup 1 thousand.")
  (step "Thousands: 1 + 7 + 5 = 13. Write 3, regroup 1 ten thousand.")
  (step "Ten thousands: 1 + 2 + 1 = 4.")
  (answer "27,384 + 15,939 = 43,323"))
```

```example
(example
  (problem "Add 508,275 + 96,148.")
  (step "Ones: 5 + 8 = 13. Write 3, regroup 1. Tens: 1 + 7 + 4 = 12. Write 2, regroup 1.")
  (step "Hundreds: 1 + 2 + 1 = 4. Thousands: 8 + 6 = 14. Write 4, regroup 1.")
  (step "Ten thousands: 1 + 0 + 9 = 10. Write 0, regroup 1. Hundred thousands: 1 + 5 = 6.")
  (step (number (ask "So what is 508,275 + 96,148?") (answer 604423) (from "508275 + 96148")
    (wrong-if 504423 "The ten thousands make 10. Write 0 and regroup 1 into the hundred thousands: 5 + 1 = 6.")))
  (answer "508,275 + 96,148 = 604,423"))
```

---

## Practice

```check
(number
  (ask "6,475 + 2,968 = ?")
  (answer 9443) (from "6475 + 2968")
  (wrong-if 8333 "Every place from the ones to the hundreds needs a regroup. Add the regrouped 1s.")
  (hint "Ones: 5 + 8 = 13. Write 3, regroup 1."))
```

```check
(number
  (ask "39,052 + 7,689 = ?")
  (answer 46741) (from "39052 + 7689")
  (wrong-if 115942 "That lines up 7,689 on the left. Put its 9 under the 2.")
  (wrong-if 36741 "9 + 7 = 16 thousands. Write 6, and regroup 1 ten thousand: 3 + 1 = 4.")
  (hint "Line up the ones: 2 and 9."))
```

---

```check
(number
  (ask "A school library has 18,265 books. It gets 4,870 more. How many books does it have now?")
  (answer 23135) (unit "books") (from "18265 + 4870")
  (wrong-if 22135 "8 + 4 = 12 thousands, plus the regrouped 1, is 13. Write 3 and regroup 1.")
  (wrong-if 23035 "6 + 7 = 13 tens: write 3 and regroup 1 hundred. Then the hundreds are 1 + 2 + 8 = 11.")
  (hint "Line up the ones: 5 and 0.")
  (hint "Tens: 6 + 7 = 13. Hundreds: 1 + 2 + 8 = 11."))
```

```check
(number
  (ask "250,800 + 749,200 = ?")
  (answer 1000000) (from "250800 + 749200")
  (wrong-if 999000 "8 + 2 = 10 hundreds: write 0 and regroup 1. Every place after that makes 10 too.")
  (wrong-if 100000 "Every place makes 10 and regroups. The last 1 goes into a 7th place: 1,000,000.")
  (hint "Hundreds: 8 + 2 = 10. Write 0, regroup 1.")
  (hint "Each place after that is 10 again."))
```

So: line up the ones, add each place, and regroup at 10 or more.
