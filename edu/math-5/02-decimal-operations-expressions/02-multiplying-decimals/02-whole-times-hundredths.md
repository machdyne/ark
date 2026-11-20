# A whole number times hundredths

```lesson
(objective "Multiply a whole number by a decimal to hundredths with place value and an area model, such as 4 x 2.35 = 9.4.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can multiply a whole number by hundredths by multiplying each place.

$3 * 0.05$ is 3 groups of 5 hundredths: 15 hundredths. 15 hundredths
are 1 tenth and 5 hundredths: 0.15.

$$ 3 * 0.05 = 0.15 $$

```figure
(m5p2-span 20 30 12 0 5 'warm)
(m5p2-span 20 30 12 5 10 'cool)
(m5p2-span 20 30 12 10 15 'warm)
(m5p2-cells 20 30 12)
(text 160 70 "3 groups of 0.05" 'left 'body)
(text 160 110 "= 15 hundredths" 'left 'body)
(text 160 150 "= 0.15" 'left 'big 'bold)
```

```check
(text
  (ask "What is 4 × 0.06?")
  (accept "0.24") (accept ".24")
  (true "4 * 0.06 = 0.24")
  (wrong-if "2.4" "4 × 6 hundredths = 24 hundredths. That is 0.24, not 24 tenths.")
  (wrong-if "24" "24 counts hundredths. 24 hundredths are less than 1: 0.24.")
  (hint "4 groups of 6 hundredths = 24 hundredths."))
```

---

## An area model

To find $4 * 2.35$, break 2.35 into 2 + 0.3 + 0.05. Multiply each part
by 4. These are partial products.

- 4 × 2 = 8
- 4 × 0.3 = 12 tenths = 1.2
- 4 × 0.05 = 20 hundredths = 0.2

Add them: 8 + 1.2 + 0.2 = 9.4.

```figure
(m5p2-area 50 50 240 70 '(2 0.3 0.05) '(4) #t)
(text 160 170 "8 + 1.2 + 0.2 = 9.4" 'centre 'body 'bold)
```

```check
(text
  (ask "Use partial products. What is 3 × 1.25?")
  (accept "3.75") (accept "3.750")
  (true "3 * 1.25 = 3 + 0.6 + 0.15")
  (true "3 * 1.25 = 3.75")
  (wrong-if "3.615" "3 × 0.2 = 0.6 and 3 × 0.05 = 0.15. Add them as decimals: 3 + 0.6 + 0.15 = 3.75.")
  (wrong-if "3.25" "Multiply every part by 3, not only the 1: 3 × 0.25 = 0.75 too.")
  (hint "3 × 1 = 3, 3 × 0.2 = 0.6, 3 × 0.05 = 0.15."))
```

---

## Line up the partial products

You can write the partial products in a column, decimal points lined
up, and add. For 6 × 4.27:

- 6 × 4 = 24
- 6 × 0.2 = 1.2
- 6 × 0.07 = 0.42

24 + 1.2 + 0.42 = 25.62.

```figure
(m5p2-column 200 40 '("24.00" "1.20" "0.42") "+" "25.62" '())
(caption "6 × 4.27 = 25.62")
```

```check
(text
  (ask "What is 5 × 3.18?")
  (accept "15.9") (accept "15.90")
  (true "5 * 3.18 = 15.9")
  (wrong-if "15.540" "5 × 0.1 = 0.5 and 5 × 0.08 = 0.40. Add with the decimal points lined up: 15 + 0.5 + 0.4 = 15.9.")
  (wrong-if "15.54" "5 × 8 hundredths = 40 hundredths = 0.4, not 0.04. So 15 + 0.5 + 0.4 = 15.9.")
  (hint "5 × 3 = 15, 5 × 0.1 = 0.5, 5 × 0.08 = 0.4."))
```

---

## Worked example

```example
(example
  (problem "Find 4 × 2.35 by place.")
  (step "4 × 5 hundredths = 20 hundredths = 2 tenths.")
  (step "4 × 3 tenths = 12 tenths. With the 2 tenths: 14 tenths = 1 whole 4 tenths.")
  (step "4 × 2 = 8 wholes. With the 1 whole: 9.")
  (answer "4 × 2.35 = 9.40 = 9.4"))
```

```example
(example
  (problem "Find 7 × 0.45.")
  (step "7 × 0.4 = 28 tenths = 2.8.")
  (step "7 × 0.05 = 35 hundredths = 0.35.")
  (step (text (ask "2.8 + 0.35 = ?")
    (accept "3.15") (accept "3.150")
    (true "7 * 0.45 = 3.15")
    (wrong-if "2.835" "Line up the decimal points: 2.80 + 0.35 = 3.15.")))
  (answer "7 × 0.45 = 3.15"))
```

---

## Practice

```check
(text
  (ask "What is 2 × 0.48?")
  (accept "0.96") (accept ".96")
  (true "2 * 0.48 = 0.96")
  (wrong-if "0.816" "2 × 8 hundredths = 16 hundredths: 1 tenth and 6 hundredths. Regroup: 0.96.")
  (hint "2 × 48 hundredths = 96 hundredths."))
```

```check
(text
  (ask "What is 8 × 1.05?")
  (accept "8.4") (accept "8.40")
  (true "8 * 1.05 = 8.4")
  (wrong-if "8.04" "8 × 5 hundredths = 40 hundredths, which is 4 tenths. So 8 + 0.4 = 8.4.")
  (wrong-if "8.05" "That multiplies only the 1. Multiply both parts: 8 × 1 = 8 and 8 × 0.05 = 0.4.")
  (hint "8 × 1 = 8. 8 × 0.05 = 0.40."))
```

---

```check
(text
  (ask "A notebook costs 2.15 dollars. What do 6 notebooks cost, in dollars?")
  (accept "12.90") (accept "12.9") (accept "$12.90") (accept "$12.9")
  (true "6 * 2.15 = 12.9")
  (wrong-if "12.630" "6 × 0.1 = 0.6 and 6 × 0.05 = 0.30. Add them as decimals: 12 + 0.6 + 0.3 = 12.9.")
  (wrong-if "8.15" "That adds 6 once. 6 notebooks cost 6 × 2.15.")
  (hint "6 × 2 = 12, 6 × 0.1 = 0.6, 6 × 0.05 = 0.3."))
```

```check
(choice
  (ask "Which partial products give 3 × 4.62?")
  (right "12 + 1.8 + 0.06" (true "3 * 4.62 = 12 + 1.8 + 0.06"))
  (wrong "12 + 18 + 6" (false "3 * 4.62 = 12 + 18 + 6")
    "3 × 0.6 is 18 tenths, which is 1.8, not 18. Keep each place's value.")
  (wrong "12 + 0.18 + 0.6" (false "3 * 4.62 = 12 + 0.18 + 0.6")
    "3 × 0.6 = 1.8 (18 tenths) and 3 × 0.02 = 0.06 (6 hundredths). The places are swapped here.")
  (hint "3 × 4, 3 × 0.6 and 3 × 0.02."))
```

So: multiply a whole number by each place of a decimal, keep each partial product's place, and add.
