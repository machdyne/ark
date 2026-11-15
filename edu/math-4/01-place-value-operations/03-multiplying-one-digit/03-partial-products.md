# Partial products

```lesson
(objective "Multiply by breaking the bigger factor into its places and adding the partial products, such as 7 x 46 = 280 + 42.")
(standards "4.NBT.B.5")
(minutes 25)
(keywords "partial product")
```

You can multiply by writing the parts of an area model as a list and adding them.

In the area model of 7 × 46, the parts are 7 × 40 = 280 and 7 × 6 = 42.
Each part is a **partial product**: one factor times one part of the
other factor. Add the partial products to get the whole product.

7 × 46 = 280 + 42 = 322

```figure
(m4p1-area 50 60 240 80 '(40 6) '(7) 2 #f)
(label 160 190 "280 + 42 = 322" 'big 'bold)
```

```check
(number
  (ask "The partial products of 5 × 63 are 300 and 15. What is 5 × 63?")
  (answer 315) (from "300 + 15") (true "5 * 63 = 315")
  (wrong-if 30015 "The partial products are added, not written side by side. 300 + 15 = 315.")
  (wrong-if 303 "That is 300 + 3. The second partial product is 5 × 3 = 15.")
  (hint "Add the partial products: 300 + 15."))
```

---

## Writing it down

You can write the partial products under the problem, one on each
line. Then add them.

Move the slider to write each partial product.

```figure
(define k (slider 'k 0 2 2 "Parts" 1))
(m4p1-partials 170 40 46 7 '(42 280) '("7 × 6" "7 × 40") k)
```

```check
(number
  (ask "Find 6 × 53 with partial products.")
  (answer 318) (from "6 * 3 + 6 * 50") (true "6 * 53 = 318")
  (wrong-if 48 "6 × 5 = 30, but the 5 in 53 is 5 tens. The partial product is 6 × 50 = 300.")
  (wrong-if 303 "That is 300 + 3. Multiply the 3 by 6 too: 6 × 3 = 18.")
  (hint "6 × 3 = 18 and 6 × 50 = 300.")
  (hint "Add them: 18 + 300."))
```

---

## Any order

You can find the ones part first or the tens part first. The sum is
the same either way.

8 × 74 = 560 + 32, or 32 + 560. Both are 592.

```check
(number
  (ask "Fill in the missing partial product: 8 × 74 = 560 + ?")
  (answer 32) (from "8 * 4") (true "8 * 74 = 560 + 32")
  (wrong-if 4 "Each part of 74 is multiplied by 8. The ones part is 8 × 4 = 32.")
  (wrong-if 592 "592 is the whole product. The missing number is just the ones part: 8 × 4.")
  (hint "560 is 8 × 70. What is the other part of 74?"))
```

---

## Worked example

```example
(example
  (problem "Find 4 × 87 with partial products.")
  (step "Break 87 into 80 and 7.")
  (step "4 × 7 = 28 and 4 × 80 = 320.")
  (step "Add the partial products: 28 + 320 = 348.")
  (answer "4 × 87 = 348"))
```

```example
(example
  (problem "Find 9 × 36 with partial products.")
  (step "Break 36 into 30 and 6.")
  (step "9 × 6 = 54 and 9 × 30 = 270.")
  (step (number (ask "54 + 270 = ?") (answer 324) (from "54 + 270") (true "9 * 36 = 324")
    (wrong-if 314 "Add the tens: 5 tens + 27 tens = 32 tens. So 54 + 270 = 324.")))
  (answer "9 × 36 = 324"))
```

---

## Practice

```check
(number
  (ask "3 × 78 = ?")
  (answer 234) (from "3 * 8 + 3 * 70") (true "3 * 78 = 234")
  (wrong-if 45 "3 × 7 = 21, but the 7 is 7 tens. The partial products are 3 × 8 = 24 and 3 × 70 = 210.")
  (wrong-if 218 "That is 210 + 8. Multiply the 8 by 3 too: 3 × 8 = 24.")
  (hint "3 × 8 = 24 and 3 × 70 = 210."))
```

```check
(choice
  (ask "Which are the partial products of 6 × 92?")
  (right "540 and 12" (true "6 * 92 = 540 + 12"))
  (wrong "54 and 12"
    "The 9 in 92 is 9 tens. So the partial product is 6 × 90 = 540, not 54.")
  (wrong "540 and 2"
    "Both parts of 92 are multiplied by 6. The ones part is 6 × 2 = 12.")
  (hint "Break 92 into 90 and 2."))
```

---

```check
(number
  (ask "A bag holds 48 marbles. How many marbles are in 5 bags?")
  (answer 240) (unit "marbles") (from "5 * 8 + 5 * 40") (true "5 * 48 = 240")
  (wrong-if 53 "That adds 5 + 48. 5 bags of 48 is 5 × 48.")
  (wrong-if 208 "That is 200 + 8. The ones part is 5 × 8 = 40.")
  (hint "5 × 8 = 40 and 5 × 40 = 200."))
```

```check
(number
  (ask "7 × 59 = ?")
  (answer 413) (from "7 * 9 + 7 * 50") (true "7 * 59 = 413")
  (wrong-if 359 "That is 350 + 9. Multiply the 9 by 7 too: 7 × 9 = 63.")
  (hint "7 × 9 = 63 and 7 × 50 = 350."))
```

So: break the bigger factor into its places, find each partial product, and add them.
