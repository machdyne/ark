# Four partial products

```lesson
(objective "Multiply two two-digit numbers by writing and adding their 4 partial products.")
(standards "4.NBT.B.5")
(minutes 25)
```

You can multiply two 2-digit numbers by listing 4 partial products, without drawing the rectangle.

The 4 parts of an area model are partial products. Write them in a
list under the problem, then add.

Move the slider to write the partial products of 23 × 14.

```figure
(define k (slider 'k 0 4 4 "Parts" 1))
(m4p1-partials 170 30 23 14 '(12 80 30 200) '("3 × 4" "20 × 4" "3 × 10" "20 × 10") k)
```

```check
(number
  (ask "Find 34 × 21 with 4 partial products.")
  (answer 714) (from "4 * 1 + 30 * 1 + 4 * 20 + 30 * 20") (true "34 * 21 = 714")
  (wrong-if 604 "That is only 4 × 1 and 30 × 20. You need all 4 partial products: 4, 30, 80 and 600.")
  (wrong-if 55 "That adds 34 + 21. Multiply each part of 34 by each part of 21.")
  (hint "4 × 1, 30 × 1, 4 × 20, 30 × 20.")
  (hint "4 + 30 + 80 + 600 = ?"))
```

---

## Not 2 parts: 4

A common mistake is to multiply only tens by tens and ones by ones.

23 × 14 is not 200 + 12. That leaves out 20 × 4 and 3 × 10, 2 parts
of the rectangle. Each part of one factor is multiplied by each part
of the other.

```check
(choice
  (ask "Pat says 52 × 18 = 500 + 16 = 516. What did Pat forget?")
  (right "The partial products 50 × 8 and 2 × 10" (true "52 * 18 = 500 + 400 + 20 + 16"))
  (wrong "Nothing: 516 is right" (false "52 * 18 = 516")
    "Estimate: 50 × 20 = 1,000. 516 is far too small. 2 partial products are missing.")
  (wrong "To regroup the 16"
    "16 is added as it is. The mistake is that 50 × 8 = 400 and 2 × 10 = 20 are missing.")
  (hint "Each part of 52 times each part of 18: how many products?"))
```

---

## Check the list

Every list has 4 partial products: ones × ones, tens × ones, ones ×
tens and tens × tens. Then add them in columns.

65 × 24: 5 × 4 = 20, 60 × 4 = 240, 5 × 20 = 100, 60 × 20 = 1,200.

```check
(number
  (ask "65 × 24 = 20 + 240 + 100 + 1,200. What is 65 × 24?")
  (answer 1560) (from "20 + 240 + 100 + 1200") (true "65 * 24 = 1560")
  (wrong-if 1220 "That adds only 20 and 1,200. Add 240 and 100 too.")
  (wrong-if 1460 "Check the sum: 20 + 240 = 260, 260 + 100 = 360, 360 + 1,200 = 1,560.")
  (hint "20 + 240 = 260."))
```

---

## Worked example

```example
(example
  (problem "Find 72 × 38 with partial products.")
  (step "2 × 8 = 16. 70 × 8 = 560.")
  (step "2 × 30 = 60. 70 × 30 = 2,100.")
  (step "Add: 16 + 560 + 60 + 2,100 = 2,736.")
  (answer "72 × 38 = 2,736"))
```

```example
(example
  (problem "Find 19 × 88 with partial products.")
  (step "9 × 8 = 72. 10 × 8 = 80.")
  (step "9 × 80 = 720. 10 × 80 = 800.")
  (step (number (ask "72 + 80 + 720 + 800 = ?") (answer 1672) (from "72 + 80 + 720 + 800") (true "19 * 88 = 1672")
    (wrong-if 872 "That adds only 72 and 800. All 4 partial products count.")))
  (answer "19 × 88 = 1,672"))
```

---

## Practice

```check
(number
  (ask "26 × 41 = ?")
  (answer 1066) (from "6 * 1 + 20 * 1 + 6 * 40 + 20 * 40") (true "26 * 41 = 1066")
  (wrong-if 806 "That is only 6 × 1 and 20 × 40. Add 20 × 1 = 20 and 6 × 40 = 240 too.")
  (hint "The partial products are 6, 20, 240 and 800."))
```

```check
(number
  (ask "Fill in the missing partial product: 47 × 23 = 21 + 120 + ? + 800")
  (answer 140) (from "7 * 20") (true "47 * 23 = 21 + 120 + 140 + 800")
  (wrong-if 14 "7 × 2 = 14, but the 2 in 23 is 2 tens. 7 × 20 = 140.")
  (wrong-if 80 "40 × 2 is not a part: the 2 is 2 tens. The missing part is 7 × 20.")
  (hint "21 = 7 × 3, 120 = 40 × 3, 800 = 40 × 20.")
  (hint "Which is left: 7 × 20."))
```

---

```check
(number
  (ask "53 × 17 = ?")
  (answer 901) (from "3 * 7 + 50 * 7 + 3 * 10 + 50 * 10") (true "53 * 17 = 901")
  (wrong-if 521 "That is only 3 × 7 and 50 × 10. Add 50 × 7 = 350 and 3 × 10 = 30 too.")
  (hint "The partial products are 21, 350, 30 and 500."))
```

```check
(number
  (ask "94 × 12 = ?")
  (answer 1128) (from "4 * 2 + 90 * 2 + 4 * 10 + 90 * 10") (true "94 * 12 = 1128")
  (wrong-if 908 "That is only 4 × 2 and 90 × 10. Add 90 × 2 = 180 and 4 × 10 = 40 too.")
  (hint "The partial products are 8, 180, 40 and 900."))
```

So: multiply each part of one factor by each part of the other, and add.
