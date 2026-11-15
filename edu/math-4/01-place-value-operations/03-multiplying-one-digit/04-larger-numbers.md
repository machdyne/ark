# Multiplying bigger numbers

```lesson
(objective "Multiply a three- or four-digit number by a one-digit number with partial products.")
(standards "4.NBT.B.5")
(minutes 25)
```

You can multiply a number with 3 or 4 digits the same way: one partial product for each place.

3 × 214: break 214 into 200 + 10 + 4. Now there are 3 partial
products.

- 3 × 200 = 600
- 3 × 10 = 30
- 3 × 4 = 12

Add them: 600 + 30 + 12 = 642.

```figure
(m4p1-area 50 60 240 80 '(200 10 4) '(3) 3 #f)
(label 160 190 "600 + 30 + 12 = 642" 'big 'bold)
```

```check
(number
  (ask "2 × 341 = ?")
  (answer 682) (from "2 * 300 + 2 * 40 + 2 * 1") (true "2 * 341 = 682")
  (wrong-if 641 "Every part of 341 is multiplied by 2: 600, 80 and 2. You need all 3 partial products.")
  (wrong-if 6802 "The partial products are added, not written side by side. 600 + 80 + 2 = 682.")
  (hint "Break 341 into 300 + 40 + 1.")
  (hint "2 × 300 = 600, 2 × 40 = 80, 2 × 1 = 2."))
```

---

## Four digits

A 4-digit number has 4 places, so 4 partial products.

Move the slider to work out 4 × 2,365.

```figure
(define k (slider 'k 0 4 4 "Parts" 1))
(m4p1-partials 150 30 2365 4 '(20 240 1200 8000) '("4 × 5" "4 × 60" "4 × 300" "4 × 2,000") k)
```

```check
(number
  (ask "4 × 2,365 = ?")
  (answer 9460) (from "8000 + 1200 + 240 + 20") (true "4 * 2365 = 9460")
  (wrong-if 8365 "That multiplies only the thousands. Each place of 2,365 is multiplied by 4.")
  (wrong-if 8260 "Check the sum of the partial products: 8,000 + 1,200 + 240 + 20 = 9,460.")
  (hint "The partial products are 8,000, 1,200, 240 and 20.")
  (hint "Add them one at a time."))
```

---

## A zero in the factor

A zero in a place gives a partial product of 0. You can leave it out.

5 × 3,028 = 15,000 + 100 + 40 = 15,140. The hundreds digit is 0, so
there is no hundreds part.

```check
(number
  (ask "6 × 1,407 = ?")
  (answer 8442) (from "6 * 1000 + 6 * 400 + 6 * 7") (true "6 * 1407 = 8442")
  (wrong-if 6407 "That multiplies only the thousands. Each place is multiplied by 6: 6,000, 2,400 and 42.")
  (wrong-if 8412 "The ones part is 6 × 7 = 42, not 12.")
  (hint "Break 1,407 into 1,000 + 400 + 7.")
  (hint "6,000 + 2,400 + 42 = ?"))
```

---

## Worked example

```example
(example
  (problem "Find 7 × 352.")
  (step "Break 352 into 300 + 50 + 2.")
  (step "7 × 300 = 2,100. 7 × 50 = 350. 7 × 2 = 14.")
  (step "Add: 2,100 + 350 + 14 = 2,464.")
  (answer "7 × 352 = 2,464"))
```

```example
(example
  (problem "Find 8 × 4,196.")
  (step "Break 4,196 into 4,000 + 100 + 90 + 6.")
  (step "8 × 4,000 = 32,000. 8 × 100 = 800. 8 × 90 = 720. 8 × 6 = 48.")
  (step (number (ask "32,000 + 800 + 720 + 48 = ?") (answer 33568) (from "32000 + 800 + 720 + 48") (true "8 * 4196 = 33568")
    (wrong-if 33468 "800 + 720 = 1,520. Add that to 32,000, then add 48.")))
  (answer "8 × 4,196 = 33,568"))
```

---

## Practice

```check
(number
  (ask "4 × 629 = ?")
  (answer 2516) (from "4 * 600 + 4 * 20 + 4 * 9") (true "4 * 629 = 2516")
  (wrong-if 2489 "That is 2,400 + 80 + 9. Multiply the 9 by 4 too: 4 × 9 = 36.")
  (hint "4 × 600 = 2,400, 4 × 20 = 80, 4 × 9 = 36."))
```

```check
(choice
  (ask "Which are the partial products of 9 × 2,043?")
  (right "18,000 and 360 and 27" (true "9 * 2043 = 18000 + 360 + 27"))
  (wrong "18,000 and 36 and 27"
    "The 4 in 2,043 is 4 tens. 9 × 40 = 360, not 36.")
  (wrong "1,800 and 360 and 27"
    "The 2 in 2,043 is 2 thousands. 9 × 2,000 = 18,000.")
  (hint "Break 2,043 into 2,000 + 40 + 3."))
```

---

```check
(number
  (ask "A train has 3 cars. Each car can carry 1,508 boxes. How many boxes can the train carry?")
  (answer 4524) (unit "boxes") (from "3 * 1000 + 3 * 500 + 3 * 8") (true "3 * 1508 = 4524")
  (wrong-if 1511 "That adds 3 + 1,508. 3 cars of 1,508 is 3 × 1,508.")
  (wrong-if 4508 "The ones part is 3 × 8 = 24, not 8.")
  (hint "3 × 1,000 = 3,000, 3 × 500 = 1,500, 3 × 8 = 24."))
```

```check
(number
  (ask "2 × 3,875 = ?")
  (answer 7750) (from "2 * 3000 + 2 * 800 + 2 * 70 + 2 * 5") (true "2 * 3875 = 7750")
  (wrong-if 6750 "Check the sum: 6,000 + 1,600 + 140 + 10 = 7,750.")
  (hint "The partial products are 6,000, 1,600, 140 and 10."))
```

So: one partial product for each nonzero place, then add them all.
