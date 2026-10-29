# Adding within 1000

```lesson
(objective "Add within 1000 by place value, regrouping when a place has 10 or more.")
(standards "3.NBT.A.2")
(minutes 25)
(keywords "regroup")
```

You can add 3-digit numbers place by place: ones, tens, then hundreds.

Sometimes a place gets 10 or more. Then you **regroup**: you trade 10
ones for 1 ten, or 10 tens for 1 hundred. The value stays the same.

Tick the box to trade 10 ones for 1 ten.

```figure
(define t (toggle 'trade "Trade 10 ones"))
(if t (md-ten 120 40 0 3 2 7) (md-ten 120 40 0 2 12 7))
(label 160 150 (if t "3 tens and 2 ones" "2 tens and 12 ones") 'body)
(label 160 180 "Both are 32." 'body 'bold)
```

```check
(number
  (ask "You have 4 tens and 15 ones. Regroup 10 ones. How many tens do you have now?")
  (answer 5) (from "4 + 1")
  (wrong-if 4 "10 of the ones become 1 new ten. 4 tens and 1 more is 5 tens.")
  (wrong-if 14 "Trading 10 ones gives only 1 ten, not 10 tens. 4 + 1 = 5 tens.")
  (hint "10 ones make 1 ten. Add it to the 4 tens."))
```

---

## Add place by place

Write the numbers so that ones are under ones and tens are under tens.
Add the ones first, then the tens, then the hundreds.

Move the slider to add 358 + 274 one place at a time.

```figure
(define s (slider 's 0 3 0 "Step" 1))
(md-column 200 70 358 "+" 274
  (if (= s 0) "" (if (= s 1) "2" (if (= s 2) "32" "632")))
  (if (= s 0) "   " (if (= s 1) " 1 " "11 ")))
(caption (if (= s 0) "Ones first."
  (if (= s 1) "8 + 4 = 12: write 2, regroup 1 ten."
    (if (= s 2) "13 tens: write 3, regroup 1 hundred."
      "1 + 3 + 2 = 6 hundreds."))))
```

```check
(number
  (ask "358 + 274 = ?")
  (answer 632) (from "358 + 274")
  (wrong-if 522 "That forgets the regrouped 1s. 8 + 4 = 12 makes 1 extra ten, and 13 tens make 1 extra hundred.")
  (wrong-if 532 "You regrouped the ones but not the tens. 1 + 5 + 7 = 13 tens: write 3, and add 1 hundred to the hundreds.")
  (hint "Move the slider to step 3."))
```

---

## Regroup tens too

Add 146 + 182.

- Ones: 6 + 2 = 8. No regroup.
- Tens: 4 + 8 = 12 tens. Write 2 and regroup 1 hundred.
- Hundreds: 1 + 1 + 1 = 3.

So 146 + 182 = 328.

```check
(number
  (ask "263 + 155 = ?")
  (answer 418) (from "263 + 155")
  (wrong-if 318 "6 + 5 = 11 tens. Write 1 and regroup 1 hundred: 2 + 1 + 1 = 4 hundreds.")
  (wrong-if 3118 "11 tens is 1 hundred and 1 ten. Write only the 1 ten, and add the hundred to the hundreds.")
  (hint "Ones: 3 + 5. Tens: 6 + 5 = 11."))
```

---

## Worked example

```example
(example
  (problem "Add 475 + 249.")
  (step "Ones: 5 + 9 = 14. Write 4, regroup 1 ten.")
  (step "Tens: 1 + 7 + 4 = 12. Write 2, regroup 1 hundred.")
  (step "Hundreds: 1 + 4 + 2 = 7.")
  (answer "475 + 249 = 724"))
```

```example
(example
  (problem "Add 307 + 586.")
  (step "Ones: 7 + 6 = 13. Write 3, regroup 1 ten.")
  (step "Tens: 1 + 0 + 8 = 9. Write 9.")
  (step (number (ask "Hundreds: 3 + 5 = ? So what is 307 + 586?") (answer 893) (from "307 + 586")
    (wrong-if 883 "Do not forget the regrouped ten: 1 + 0 + 8 = 9 tens.")))
  (answer "307 + 586 = 893"))
```

---

## Practice

```check
(number
  (ask "529 + 136 = ?")
  (answer 665) (from "529 + 136")
  (wrong-if 655 "9 + 6 = 15 ones. Write 5 and regroup 1 ten: 1 + 2 + 3 = 6 tens.")
  (hint "Ones: 9 + 6 = 15."))
```

```check
(number
  (ask "684 + 257 = ?")
  (answer 941) (from "684 + 257")
  (wrong-if 831 "Both the ones and the tens regroup. 4 + 7 = 11, and 1 + 8 + 5 = 14 tens.")
  (hint "Ones: 4 + 7 = 11. Tens: 1 + 8 + 5."))
```

---

```check
(number
  (ask "A farm has 386 hens and 445 ducks. How many birds is that?")
  (answer 831) (unit "birds") (from "386 + 445")
  (wrong-if 721 "Both the ones and the tens regroup. 6 + 5 = 11, and 1 + 8 + 4 = 13 tens.")
  (hint "Ones: 6 + 5 = 11. Write 1, regroup 1 ten."))
```

```check
(number
  (ask "Add 95 + 408.")
  (answer 503) (from "95 + 408")
  (wrong-if 1358 "Line up the ones: the 5 under the 8, the 9 under the 0. 95 has no hundreds.")
  (wrong-if 493 "5 + 8 = 13: write 3 and regroup 1 ten. Then 1 + 9 + 0 = 10 tens: write 0 and regroup 1 hundred.")
  (hint "Line up the ones. 95 has 0 hundreds."))
```

So: add ones, then tens, then hundreds, and regroup whenever a place reaches 10 or more.
