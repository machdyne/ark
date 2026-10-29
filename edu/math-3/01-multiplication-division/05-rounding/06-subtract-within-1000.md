# Subtracting within 1000

```lesson
(objective "Subtract within 1000 by place value, regrouping when a place has too few.")
(standards "3.NBT.A.2")
(minutes 25)
```

You can subtract 3-digit numbers place by place, regrouping when you
need more.

Find 352 - 127. Start with the ones: 2 - 7. There are not enough ones.
So regroup: trade 1 ten for 10 ones. Now there are 4 tens and 12 ones.

```figure
(define t (toggle 'trade "Trade a ten"))
(if t (md-ten 24 30 3 4 12 6) (md-ten 24 30 3 5 2 6))
(label 160 140 (if t "3 hundreds, 4 tens, 12 ones" "3 hundreds, 5 tens, 2 ones") 'body)
(label 160 170 "Both are 352." 'body 'bold)
```

```check
(number
  (ask "After the trade there are 12 ones. What is 12 - 7?")
  (answer 5) (from "12 - 7")
  (wrong-if 19 "That adds. Take 7 away from 12.")
  (hint "Count back 7 from 12."))
```

---

## Place by place

Move the slider to finish 352 - 127.

```figure
(define s (slider 's 0 3 0 "Step" 1))
(md-column 200 80 352 "-" 127
  (if (= s 0) "" (if (= s 1) "5" (if (= s 2) "25" "225")))
  (if (= s 0) "   " " 4 "))
(if (> s 0) (label 200 58 "12" 'small))
(if (> s 0) (line 175 79 189 65 'ink 1))
(if (> s 0) (line 193 79 207 65 'ink 1))
(caption (if (= s 0) "Ones: 2 - 7? Not enough."
  (if (= s 1) "Regroup: 4 tens, 12 ones. 12 - 7 = 5."
    (if (= s 2) "Tens: 4 - 2 = 2." "Hundreds: 3 - 1 = 2."))))
```

```check
(number
  (ask "352 - 127 = ?")
  (answer 225) (from "352 - 127")
  (wrong-if 235 "The tens are wrong. After the regroup only 4 tens are left, so 4 - 2 = 2. Taking 2 from 7 in the ones also gives this mistake.")
  (hint "Ones: 12 - 7. Tens: 4 - 2. Hundreds: 3 - 1."))
```

---

## Regroup a hundred

Sometimes the tens are too few. Then trade 1 hundred for 10 tens.

528 - 263: ones 8 - 3 = 5. Tens 2 - 6: too few. Trade 1 hundred:
4 hundreds and 12 tens. 12 - 6 = 6 tens. Hundreds 4 - 2 = 2. So
528 - 263 = 265.

```check
(number
  (ask "614 - 352 = ?")
  (answer 262) (from "614 - 352")
  (wrong-if 342 "In the tens, 1 - 5 needs a regroup: 11 - 5 = 6 tens, and the hundreds become 5. 5 - 3 = 2.")
  (wrong-if 362 "After trading a hundred, only 5 hundreds are left. 5 - 3 = 2 hundreds.")
  (hint "Ones: 4 - 2. Tens: 1 - 5 is too few: trade 1 hundred."))
```

---

## Zeros in the top number

400 - 136: there are no ones and no tens to trade. Trade 1 hundred for
10 tens first. Then trade 1 of those tens for 10 ones. Now 400 is 3
hundreds, 9 tens and 10 ones.

10 - 6 = 4, 9 - 3 = 6, 3 - 1 = 2. So 400 - 136 = 264.

```check
(number
  (ask "300 - 128 = ?")
  (answer 172) (from "300 - 128")
  (wrong-if 228 "That takes the top digits from the bottom ones. 300 is 2 hundreds, 9 tens and 10 ones: 10 - 8, 9 - 2, 2 - 1.")
  (wrong-if 182 "After the trades there are 9 tens, not 10. 9 - 2 = 7 tens.")
  (hint "300 = 2 hundreds, 9 tens and 10 ones."))
```

---

## Worked example

```example
(example
  (problem "Subtract 745 - 368.")
  (step "Ones: 5 - 8 is too few. Trade 1 ten: 15 - 8 = 7. 3 tens are left.")
  (step "Tens: 3 - 6 is too few. Trade 1 hundred: 13 - 6 = 7. 6 hundreds are left.")
  (step "Hundreds: 6 - 3 = 3.")
  (answer "745 - 368 = 377"))
```

```example
(example
  (problem "Subtract 503 - 247.")
  (step "Ones: 3 - 7 is too few, and there are 0 tens. Trade 1 hundred for 10 tens, then 1 ten for 10 ones.")
  (step "Now: 4 hundreds, 9 tens, 13 ones. 13 - 7 = 6. 9 - 4 = 5.")
  (step (number (ask "Hundreds: 4 - 2 = ? So what is 503 - 247?") (answer 256) (from "503 - 247")
    (wrong-if 356 "After the trade only 4 hundreds are left. 4 - 2 = 2.")))
  (answer "503 - 247 = 256"))
```

---

## Practice

```check
(number
  (ask "473 - 128 = ?")
  (answer 345) (from "473 - 128")
  (wrong-if 355 "3 - 8 needs a regroup: 13 - 8 = 5, and only 6 tens are left. 6 - 2 = 4.")
  (hint "Ones: 3 - 8 is too few."))
```

```check
(number
  (ask "800 - 452 = ?")
  (answer 348) (from "800 - 452")
  (wrong-if 452 "800 is 7 hundreds, 9 tens and 10 ones. 10 - 2, 9 - 5, 7 - 4.")
  (wrong-if 458 "Take the bottom digits from the top, after you regroup. 800 is 7 hundreds, 9 tens and 10 ones.")
  (hint "Trade so that 800 is 7 hundreds, 9 tens and 10 ones."))
```

---

```check
(number
  (ask "A book has 312 pages. Mia has read 175. How many pages are left?")
  (answer 137) (unit "pages") (from "312 - 175")
  (wrong-if 263 "That takes the smaller digit from the bigger in each place. Regroup instead: 12 - 5, then 10 - 7, then 2 - 1.")
  (hint "Ones: 2 - 5 is too few. Tens: then 0 - 7 is too few."))
```

So: subtract ones, then tens, then hundreds, and regroup when a place has too few.
