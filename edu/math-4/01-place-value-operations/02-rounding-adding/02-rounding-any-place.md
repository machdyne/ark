# Rounding to any place

```lesson
(objective "Round a number to any place, up to the nearest 100,000, by looking at the digit to the right of that place.")
(standards "4.NBT.A.3")
(minutes 25)
```

You can round to any place by looking at just one digit.

1. Find the place you round to.
2. Look at the digit just to its right.
3. If it is 0 to 4, keep the digit in your place. If it is 5 to 9, add 1 to it.
4. Write zeros in every place to the right.

Move the slider to round 46,281 to different places.

```figure
(define k (slider 'k 1 4 4 "Round to" 1))
(define p (expt 10 k))
(define r (* p (floor (+ (/ 46281 p) 0.5))))
(m4p1-chart 20 46281 5 k)
(define x (+ 35 (* 50 (- 4 k)) 50 25))
(arrow x 125 x 98 'ink 1.5)
(label x 140 "look here" 'small)
(label 160 175 (string-append "nearest " (list-ref '("" "ten" "hundred" "thousand" "ten thousand") k)) 'body)
(label 160 205 (string-append "46,281 rounds to " (m4p1-num r)) 'body 'bold)
```

```check
(number
  (ask "Round 46,281 to the nearest ten thousand.")
  (answer 50000)
  (wrong-if 40000 "The digit to the right of the ten thousands is 6. 6 is 5 or more, so the 4 goes up to 5.")
  (wrong-if 46000 "46,000 is the nearest thousand. To the nearest ten thousand, the answer ends in 0,000.")
  (wrong-if 50281 "After rounding, every place to the right of the ten thousands becomes 0.")
  (hint "The ten thousands digit is 4. Look at the digit to its right.")
  (hint "6 is 5 or more, so round up."))
```

---

## The nearest hundred thousand

To round 349,500 to the nearest hundred thousand, look at the ten
thousands digit. It is 4, so keep the 3. The answer is 300,000.

Look at only that one digit. The 9 and the 5 further right do not
matter.

```check
(number
  (ask "Round 682,000 to the nearest hundred thousand.")
  (answer 700000)
  (wrong-if 600000 "The digit to the right of the 6 is 8. 8 is 5 or more, so the 6 goes up to 7.")
  (wrong-if 680000 "680,000 is the nearest ten thousand. To the nearest hundred thousand, it ends in 00,000.")
  (hint "Look at the ten thousands digit."))
```

---

## When a 9 goes up

Round 395,600 to the nearest ten thousand. The ten thousands digit is
9, and the digit to its right is 5. So the 9 goes up by 1.

But 9 + 1 = 10. Regroup: 39 ten thousands become 40 ten thousands. The
answer is 400,000.

```check
(number
  (ask "Round 97,520 to the nearest thousand.")
  (answer 98000)
  (wrong-if 97000 "The digit to the right of the thousands is 5. 5 is 5 or more, so round up: 97 thousands become 98.")
  (wrong-if 100000 "That rounds to the nearest ten thousand. To the nearest thousand, only the 7 changes, to 8.")
  (hint "The thousands digit is 7. The digit to its right is 5."))
```

---

## Different places, different answers

The same number rounds differently to different places.

| Round 253,718 to the nearest | Answer |
|---|---|
| ten | 253,720 |
| hundred | 253,700 |
| thousand | 254,000 |
| ten thousand | 250,000 |
| hundred thousand | 300,000 |

```check
(choice
  (ask "Which is 253,718 rounded to the nearest thousand?")
  (right "254,000")
  (wrong "253,000"
    "The digit to the right of the thousands is 7. 7 is 5 or more, so the 3 goes up to 4.")
  (wrong "250,000"
    "250,000 is the nearest ten thousand. The nearest thousand keeps 25 and changes only the 3.")
  (wrong "253,700"
    "253,700 is the nearest hundred. The nearest thousand ends in 000.")
  (hint "The thousands digit is 3. Look at the 7 to its right."))
```

---

## Worked example

```example
(example
  (problem "Round 804,962 to the nearest ten thousand.")
  (step "The ten thousands digit is 0.")
  (step "The digit to its right is 4. That is 0 to 4: keep the 0.")
  (step "Write zeros in every place to the right.")
  (answer "804,962 rounds to 800,000."))
```

```example
(example
  (problem "Round 159,450 to the nearest hundred thousand.")
  (step "The hundred thousands digit is 1.")
  (step "The digit to its right is 5. That is 5 to 9: the 1 goes up to 2.")
  (step (number (ask "What is 159,450 rounded to the nearest hundred thousand?") (answer 200000)
    (wrong-if 100000 "The ten thousands digit is 5, so round up: 1 becomes 2.")))
  (answer "159,450 rounds to 200,000."))
```

---

## Practice

```check
(number
  (ask "Round 72,481 to the nearest hundred.")
  (answer 72500)
  (wrong-if 72400 "The digit to the right of the hundreds is 8. Round up: the 4 becomes 5.")
  (wrong-if 72480 "72,480 is the nearest ten. To the nearest hundred, the answer ends in 00.")
  (hint "The hundreds digit is 4. Look at the 8 to its right."))
```

```check
(number
  (ask "Round 449,999 to the nearest hundred thousand.")
  (answer 400000)
  (wrong-if 500000 "Look only at the ten thousands digit: 4. It is 0 to 4, so keep the 4. The 9s further right do not matter.")
  (hint "Which digit is just right of the hundred thousands?"))
```

---

```check
(number
  (ask "Round 69,700 to the nearest thousand.")
  (answer 70000)
  (wrong-if 69000 "The hundreds digit is 7, so round up. 69 thousands become 70 thousands.")
  (wrong-if 610000 "9 + 1 = 10 must be regrouped. 69 thousands + 1 thousand = 70 thousands: 70,000.")
  (hint "The thousands digit is 9. It goes up by 1.")
  (hint "69 thousands and 1 more thousand make 70 thousands."))
```

```check
(number
  (ask "Round 538,216 to the nearest ten thousand.")
  (answer 540000)
  (wrong-if 530000 "The digit to the right of the ten thousands is 8. Round up: the 3 becomes 4.")
  (wrong-if 538000 "538,000 is the nearest thousand. To the nearest ten thousand, it ends in 0,000.")
  (hint "The ten thousands digit is 3. Look at the 8."))
```

So: look at the digit just right of your place; 5 or more rounds up.
