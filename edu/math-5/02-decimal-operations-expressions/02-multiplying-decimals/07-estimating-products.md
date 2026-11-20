# Estimating products

```lesson
(objective "Estimate a decimal product by rounding the factors, and use it to find a misplaced decimal point.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can estimate a decimal product by rounding each factor, and use the
estimate to place the decimal point.

Round each factor to a number that is easy to multiply. For
$3.8 * 5.1$: 3.8 is about 4, and 5.1 is about 5. The product is about
4 × 5 = 20.

```figure
(m5p2-line 20 300 110 15 25 20 2)
(nl-mark 19.38 'warm "19.38")
(nl-mark 20 'cool)
(text (nl-x 20) 150 "estimate 20" 'centre 'small)
(caption "3.8 × 5.1 = 19.38, close to 20")
```

```check
(number
  (ask "Round each factor to a whole number. About how much is 6.9 × 3.2?")
  (answer 21) (from "7 * 3")
  (wrong-if 18 "6.9 is closer to 7 than to 6. So 7 × 3 = 21.")
  (wrong-if 10 "That adds 7 + 3. Estimate the product: 7 × 3.")
  (hint "6.9 is about 7. 3.2 is about 3."))
```

---

## Find the decimal point

38 × 51 = 1,938. Where does the point go in 3.8 × 5.1? The estimate is
20, so the product is 19.38, not 193.8 or 1.938.

```check
(choice
  (ask "4.2 × 7.9: the digits are 3318. Use an estimate. Which product is right?")
  (right "33.18" (true "4.2 * 7.9 = 33.18"))
  (wrong "331.8" (false "4.2 * 7.9 = 331.8")
    "Estimate: 4 × 8 = 32. 331.8 is about 10 times too big.")
  (wrong "3.318" (false "4.2 * 7.9 = 3.318")
    "Estimate: 4 × 8 = 32. 3.318 is about 10 times too small.")
  (hint "4.2 is about 4. 7.9 is about 8."))
```

---

## Factors less than 1

For a factor less than 1, round to a tenth, or to a half. 0.48 is about
0.5, which is half. So $0.48 * 21$ is about half of 20, which is 10.

The exact product is 10.08.

```check
(choice
  (ask "About how much is 0.52 × 39?")
  (right "About 20, half of 40" (true "0.52 * 39 = 20.28"))
  (wrong "About 2"
    "0.52 is about a half, not about a tenth. Half of 40 is 20.")
  (wrong "About 200"
    "0.52 is less than 1, so the product is less than 39. Half of 40 is 20.")
  (hint "0.52 is close to 0.5, which is half."))
```

---

## Worked example

```example
(example
  (problem "Tom says 2.9 × 6.1 = 176.9. Is he right?")
  (step "Estimate: 3 × 6 = 18.")
  (step "176.9 is about 10 times 18. The point is in the wrong place.")
  (step "29 × 61 = 1,769. Tenths × tenths: 2 places.")
  (answer "No: 2.9 × 6.1 = 17.69"))
```

```example
(example
  (problem "Place the point: 8.25 × 3.9. The digits are 32175.")
  (step "Estimate: 8 × 4 = 32.")
  (step (text (ask "So 8.25 × 3.9 = ?")
    (accept "32.175") (accept "32.1750")
    (true "8.25 * 3.9 = 32.175")
    (wrong-if "3.2175" "That is about 3, far from the estimate 32.")
    (wrong-if "321.75" "That is about 320, 10 times the estimate 32.")))
  (answer "8.25 × 3.9 = 32.175"))
```

---

## Practice

```check
(number
  (ask "Round each factor to a whole number. About how much is 9.2 × 4.8?")
  (answer 45) (from "9 * 5")
  (wrong-if 36 "4.8 is closer to 5 than to 4. So 9 × 5 = 45.")
  (wrong-if 14 "That adds 9 + 5. Estimate the product: 9 × 5.")
  (hint "9.2 is about 9. 4.8 is about 5."))
```

```check
(choice
  (ask "Which product is surely wrong? Use estimates.")
  (right "5.1 × 1.9 = 96.9" (false "5.1 * 1.9 = 96.9"))
  (wrong "5.1 × 1.9 = 9.69" (true "5.1 * 1.9 = 9.69")
    "Estimate: 5 × 2 = 10. 9.69 is close to 10, so it is reasonable. It is exact.")
  (wrong "6.2 × 3.5 = 21.7" (true "6.2 * 3.5 = 21.7")
    "Estimate: 6 × 4 = 24, or 6 × 3.5 = 21. 21.7 is close, so it is reasonable. It is exact.")
  (hint "5 × 2 is about how much?"))
```

---

```check
(text
  (ask "Place the point. 1.4 × 23.5: the digits are 3290. What is the product?")
  (accept "32.9") (accept "32.90") (accept "32.900")
  (true "1.4 * 23.5 = 32.9")
  (wrong-if "329" "Estimate: 1 × 24 = 24, or a bit more. 329 is far too big.")
  (wrong-if "3.29" "Estimate: about 1 × 24 = 24. 3.29 is far too small.")
  (hint "Tenths × tenths: 2 places. 32.90."))
```

```check
(choice
  (ask "Ana gets 0.26 × 48 = 124.8. What does an estimate say?")
  (right "About 1/4 of 48, which is 12, so the answer should be 12.48" (true "0.26 * 48 = 12.48"))
  (wrong "About 0.3 × 50 = 15, so 124.8 is close enough"
    "124.8 is far from 15: it is about 10 times as much. The right product is 12.48.")
  (wrong "About 48, so 124.8 is too small"
    "0.26 is less than 1, so the product is less than 48, not more.")
  (hint "0.26 is close to 0.25, a quarter."))
```

So: round the factors to easy numbers, and use the estimate to put the decimal point where the product makes sense.
