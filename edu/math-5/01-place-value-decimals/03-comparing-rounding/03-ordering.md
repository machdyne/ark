# Ordering decimals

```lesson
(objective "Put three or four decimals to thousandths in order from least to greatest, by place value and on a number line.")
(standards "5.NBT.A.3b")
(minutes 20)
```

You can put three or four decimals in order from least to greatest.

Order 0.52, 0.5 and 0.517.

1. Write them with the same number of places: 0.520, 0.500, 0.517.
2. Compare the thousandths as whole numbers: 500, 517, 520.
3. Least to greatest: 0.5, 0.517, 0.52.

```figure
(m5p1-nl 30 290 110 0.5 0.52 0.001 0.01 2)
(nl-mark 0.5 'warm "0.5")
(nl-mark 0.517 'warm "0.517")
(nl-mark 0.52 'warm "0.52")
(caption "Least on the left, greatest on the right")
```

```check
(choice
  (ask "Which is the least: 0.42, 0.4 or 0.418?")
  (right "0.4" (true "0.4 < 0.418 < 0.42"))
  (wrong "0.418" (false "0.418 < 0.4")
    "0.418 has the most digits, but 0.4 = 0.400. 400 thousandths is less than 418.")
  (wrong "0.42" (false "0.42 < 0.4")
    "0.42 = 0.420. That is the greatest of the three.")
  (hint "Write each with 3 places."))
```

---

## On a number line

On a number line, numbers grow from left to right. So least to greatest
is the order from left to right.

```check
(choice
  (ask "Which list is from least to greatest?")
  (right "1.09, 1.1, 1.19" (true "1.09 < 1.1 < 1.19"))
  (wrong "1.1, 1.09, 1.19" (false "1.1 < 1.09")
    "1.1 = 1.10, which is more than 1.09. 1.09 comes first.")
  (wrong "1.19, 1.1, 1.09" "That is from greatest to least. The question asks for least first.")
  (hint "Write them all with 2 places."))
```

---

## Whole numbers first

If the numbers have different whole number parts, those decide first.
2.05 < 2.5 < 10.01, because 2 < 10.

```check
(choice
  (ask "Which list is from least to greatest?")
  (right "3.999, 4.01, 4.1, 4.109" (true "3.999 < 4.01 < 4.1 < 4.109"))
  (wrong "4.01, 4.1, 4.109, 3.999" (false "4.109 < 3.999")
    "3.999 has 3 ones. The others have 4 ones, so 3.999 is the least.")
  (wrong "3.999, 4.1, 4.01, 4.109" (false "4.1 < 4.01")
    "4.1 = 4.10 and 4.01 has 0 tenths. 4.01 < 4.1.")
  (hint "Compare the ones first."))
```

---

## Worked example

```example
(example
  (problem "Order 0.7, 0.077, 0.707 and 0.77 from least to greatest.")
  (step "Write with 3 places: 0.700, 0.077, 0.707, 0.770.")
  (step "As thousandths: 700, 77, 707, 770.")
  (step "Order: 77, 700, 707, 770.")
  (answer "0.077, 0.7, 0.707, 0.77"))
```

```example
(example
  (problem "Order 5.3, 5.03 and 5.33 from least to greatest.")
  (step "Write with 2 places: 5.30, 5.03, 5.33.")
  (step (choice (ask "Which is the least?")
    (right "5.03" (true "5.03 < 5.3"))
    (wrong "5.3" "5.3 = 5.30. 5.03 has 0 tenths, so it is less.")))
  (answer "5.03, 5.3, 5.33"))
```

---

## Practice

```check
(choice
  (ask "Which is the greatest: 0.65, 0.605, 0.6 or 0.656?")
  (right "0.656" (true "0.656 > 0.65"))
  (wrong "0.605" (false "0.605 > 0.656")
    "0.605 has 0 hundredths. 0.656 has 5 hundredths.")
  (wrong "0.65" (false "0.65 > 0.656")
    "0.65 = 0.650, which is 6 thousandths less than 0.656.")
  (wrong "0.6" (false "0.6 > 0.656")
    "0.6 = 0.600, the least of the four.")
  (hint "Write all four with 3 places."))
```

```check
(choice
  (ask "Which list is from least to greatest?")
  (right "0.08, 0.8, 0.88" (true "0.08 < 0.8 < 0.88"))
  (wrong "0.8, 0.08, 0.88" (false "0.8 < 0.08")
    "0.08 has 0 tenths and 0.8 has 8. 0.08 is less.")
  (wrong "0.8, 0.88, 0.08" (false "0.88 < 0.08")
    "0.08 is the least: 0 tenths.")
  (hint "Compare the tenths first."))
```

---

```check
(choice
  (ask "Which number goes between 2.4 and 2.5?")
  (right "2.45" (true "2.4 < 2.45 < 2.5"))
  (wrong "2.04" (false "2.4 < 2.04")
    "2.04 has 0 tenths, so it is less than 2.4.")
  (wrong "2.54" (false "2.54 < 2.5")
    "2.54 has 5 tenths and 4 hundredths: more than 2.5.")
  (hint "The number must have 4 tenths and something more."))
```

```check
(choice
  (ask "Which list is from greatest to least?")
  (right "1.3, 1.25, 1.205" (true "1.3 > 1.25 > 1.205"))
  (wrong "1.205, 1.25, 1.3" "That is from least to greatest. The question asks for greatest first.")
  (wrong "1.25, 1.3, 1.205" (false "1.25 > 1.3")
    "1.3 = 1.30, which is more than 1.25.")
  (hint "Write them with 3 places."))
```

So: write the decimals with the same number of places, then order them
place by place or on a number line.
