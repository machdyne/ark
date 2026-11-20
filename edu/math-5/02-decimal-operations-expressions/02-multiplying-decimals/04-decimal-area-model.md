# Area models for decimals

```lesson
(objective "Multiply two decimals greater than 1 with an area model and partial products, such as 1.2 x 2.5 = 3.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can multiply two decimals greater than 1 with an area model, as you
did with whole numbers.

Break each factor by place: 1.2 = 1 + 0.2 and 2.5 = 2 + 0.5. Draw a
rectangle with 2 columns and 2 rows. Each part is a partial product.

- 2 × 1 = 2
- 0.5 × 1 = 0.5
- 2 × 0.2 = 0.4
- 0.5 × 0.2 = 0.10, tenths times tenths

Add: 2 + 0.5 + 0.4 + 0.1 = 3.

$$ 1.2 * 2.5 = 3 $$

```figure
(m5p2-area 60 40 220 130 '(2 0.5) '(1 0.2) #t)
(text 170 205 "2 + 0.5 + 0.4 + 0.1 = 3" 'centre 'body 'bold)
```

```check
(text
  (ask "Use the area model. What is 1.5 × 1.5? (The parts: 1 × 1, 0.5 × 1, 1 × 0.5, 0.5 × 0.5.)")
  (accept "2.25") (accept "2.250")
  (true "1.5 * 1.5 = 1 + 0.5 + 0.5 + 0.25")
  (true "1.5 * 1.5 = 2.25")
  (wrong-if "1.25" "That is only 1 × 1 and 0.5 × 0.5. Add the 2 other parts too: 0.5 and 0.5.")
  (wrong-if "2.5" "0.5 × 0.5 is 5 tenths × 5 tenths = 25 hundredths = 0.25, not 0.5.")
  (hint "1 + 0.5 + 0.5 + 0.25 = ?"))
```

---

## All 4 parts

A common mistake is to multiply only the wholes and only the tenths.
1.2 × 2.5 is not 2 + 0.1. That leaves out 0.5 × 1 and 2 × 0.2.

Each part of one factor is multiplied by each part of the other.

```check
(choice
  (ask "Ray says 2.3 × 1.4 = 2 + 0.12 = 2.12. What did he leave out?")
  (right "The partial products 0.3 × 1 and 2 × 0.4" (true "2.3 * 1.4 = 2 + 0.3 + 0.8 + 0.12"))
  (wrong "Nothing: 2.12 is right" (false "2.3 * 1.4 = 2.12")
    "A 2 by 2 area model has 4 parts, and Ray added only 2. The missing parts are 0.3 × 1 = 0.3 and 2 × 0.4 = 0.8.")
  (wrong "He should add 2.3 + 1.4"
    "Adding gives a sum, not a product. Multiply each part of 2.3 by each part of 1.4.")
  (hint "How many parts does a 2 by 2 area model have?"))
```

---

## A bigger model

3.4 × 2.6: parts 3 + 0.4 and 2 + 0.6.

- 3 × 2 = 6
- 0.4 × 2 = 0.8
- 3 × 0.6 = 1.8
- 0.4 × 0.6 = 0.24

6 + 0.8 + 1.8 + 0.24 = 8.84.

```figure
(m5p2-area 60 40 220 130 '(3 0.4) '(2 0.6) #t)
(text 170 205 "6 + 0.8 + 1.8 + 0.24 = 8.84" 'centre 'body 'bold)
```

```check
(text
  (ask "What is 2.5 × 1.3?")
  (accept "3.25") (accept "3.250")
  (true "2.5 * 1.3 = 2 + 0.5 + 0.6 + 0.15")
  (true "2.5 * 1.3 = 3.25")
  (wrong-if "2.15" "That is only 2 × 1 and 0.5 × 0.3. Add 0.5 × 1 = 0.5 and 2 × 0.3 = 0.6 too.")
  (wrong-if "4.6" "0.5 × 0.3 is 15 hundredths = 0.15, not 1.5. Then 2 + 0.5 + 0.6 + 0.15 = 3.25.")
  (hint "The parts: 2, 0.5, 0.6 and 0.15."))
```

---

## Worked example

```example
(example
  (problem "Find 1.6 × 2.2 with an area model.")
  (step "Parts: 1 + 0.6 and 2 + 0.2.")
  (step "1 × 2 = 2. 0.6 × 2 = 1.2. 1 × 0.2 = 0.2. 0.6 × 0.2 = 0.12.")
  (step "2 + 1.2 + 0.2 + 0.12 = 3.52.")
  (answer "1.6 × 2.2 = 3.52"))
```

```example
(example
  (problem "Find 4.5 × 1.2.")
  (step "4 × 1 = 4. 0.5 × 1 = 0.5. 4 × 0.2 = 0.8. 0.5 × 0.2 = 0.1.")
  (step (text (ask "4 + 0.5 + 0.8 + 0.1 = ?")
    (accept "5.4") (accept "5.40")
    (true "4.5 * 1.2 = 5.4")
    (wrong-if "4.14" "Line up the decimal points: 4 + 0.5 + 0.8 + 0.1. The tenths make 14 tenths = 1.4.")))
  (answer "4.5 × 1.2 = 5.4"))
```

---

## Practice

```check
(text
  (ask "What is 1.1 × 3.2?")
  (accept "3.52") (accept "3.520")
  (true "1.1 * 3.2 = 3 + 0.3 + 0.2 + 0.02")
  (true "1.1 * 3.2 = 3.52")
  (wrong-if "3.02" "That is only 1 × 3 and 0.1 × 0.2. Add 0.1 × 3 = 0.3 and 1 × 0.2 = 0.2 too.")
  (hint "The parts: 3, 0.3, 0.2 and 0.02."))
```

```check
(text
  (ask "A garden bed is 2.4 meters long and 1.5 meters wide. What is its area, in square meters?")
  (accept "3.6") (accept "3.60") (accept "3.600")
  (unit "square meters")
  (true "2.4 * 1.5 = 2 + 0.4 + 1 + 0.2")
  (true "2.4 * 1.5 = 3.6")
  (wrong-if "7.8" "7.8 is the perimeter, the distance around. The area is length × width.")
  (wrong-if "2.2" "That is only 2 × 1 and 0.4 × 0.5. Add 0.4 × 1 = 0.4 and 2 × 0.5 = 1 too.")
  (hint "Parts: 2 × 1, 0.4 × 1, 2 × 0.5, 0.4 × 0.5."))
```

---

```check
(choice
  (ask "Which list gives the partial products of 3.5 × 2.1?")
  (right "6, 1, 0.3, 0.05" (true "3.5 * 2.1 = 6 + 1 + 0.3 + 0.05"))
  (wrong "6, 10, 3, 5" (false "3.5 * 2.1 = 6 + 10 + 3 + 5")
    "These forget the places. 0.5 × 2 = 1, 3 × 0.1 = 0.3, and 0.5 × 0.1 = 0.05.")
  (wrong "6, 0.05" (false "3.5 * 2.1 = 6 + 0.05")
    "There are 4 parts, not 2. Add 0.5 × 2 = 1 and 3 × 0.1 = 0.3.")
  (hint "3 × 2, 0.5 × 2, 3 × 0.1, 0.5 × 0.1."))
```

So: break both decimals by place, multiply each part by each part, and add the 4 partial products.
