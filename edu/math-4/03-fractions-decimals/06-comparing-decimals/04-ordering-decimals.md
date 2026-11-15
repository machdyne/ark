# Ordering decimals

```lesson
(objective "Put three or four decimals to hundredths in order on a number line.")
(standards "4.NF.C.7")
(minutes 20)
```

You can put decimals in order with a number line.

Put 0.4, 0.15 and 0.62 in order from least to greatest. Place each on
a line from 0 to 1. The one farthest left is the least.

```figure
(number-line 20 300 110 0 1 0.1 0.1)
(nl-mark 0.15 'warm "0.15")
(nl-mark 0.4 'warm "0.4")
(nl-mark 0.62 'warm "0.62")
(caption "Least to greatest: 0.15, 0.4, 0.62")
```

```check
(choice
  (ask "Which is the order from least to greatest?")
  (right "0.3, 0.45, 0.8" (true "0.3 < 0.45 < 0.8"))
  (wrong "0.8, 0.3, 0.45"
    "0.8 is the greatest: 8 tenths. It goes last.")
  (wrong "0.45, 0.3, 0.8"
    "45 looks bigger than 3, but 0.3 = 0.30. 30 hundredths are fewer than 45 hundredths, so 0.3 comes first.")
  (hint "Write them all in hundredths: 0.30, 0.45, 0.80."))
```

---

## Same number of places

To order without a line, write every decimal with 2 places. Then
compare the hundredths:

0.5, 0.48, 0.09 become 0.50, 0.48, 0.09. In order: 0.09, 0.48, 0.50.

```check
(choice
  (ask "Which is the greatest: 0.7, 0.68, 0.71 or 0.09?")
  (right "0.71" (true "0.71 > 0.7") (true "0.71 > 0.68") (true "0.71 > 0.09"))
  (wrong "0.7" (false "0.7 > 0.71")
    "0.7 = 0.70. 71 hundredths are 1 more than 70.")
  (wrong "0.09" (false "0.09 > 0.71")
    "9 looks big, but 0.09 is only 9 hundredths: less than 1 tenth.")
  (wrong "0.68" (false "0.68 > 0.71")
    "0.68 has 6 tenths; 0.71 has 7 tenths.")
  (hint "Write each with 2 places."))
```

---

## Worked example

```example
(example
  (problem "Order 1.2, 0.95, 1.05 from least to greatest.")
  (step "0.95 has 0 ones; it is the least.")
  (step "1.2 = 1.20. Compare 1.05 and 1.20: 5 < 20.")
  (answer "0.95, 1.05, 1.2."))
```

```example
(example
  (problem "Order 0.6, 0.06, 0.66 from greatest to least.")
  (step "In hundredths: 0.60, 0.06, 0.66.")
  (step (choice (ask "Which is the greatest?")
    (right "0.66" (true "0.66 > 0.6"))
    (wrong "0.6" "0.6 = 0.60, and 66 > 60.")))
  (answer "0.66, 0.6, 0.06."))
```

---

## Practice

```check
(choice
  (ask "Which is the order from least to greatest?")
  (right "0.2, 0.25, 0.3, 0.33" (true "0.2 < 0.25 < 0.3 < 0.33"))
  (wrong "0.2, 0.3, 0.25, 0.33"
    "0.3 = 0.30, which is more than 0.25.")
  (wrong "0.33, 0.3, 0.25, 0.2"
    "This is from greatest to least. Start with the least.")
  (hint "In hundredths: 20, 25, 30, 33."))
```

```check
(choice
  (ask "Which is the least: 0.5, 0.45, 0.54 or 0.05?")
  (right "0.05" (true "0.05 < 0.45"))
  (wrong "0.45" (false "0.45 < 0.05")
    "0.05 has 0 tenths; 0.45 has 4 tenths.")
  (wrong "0.5" (false "0.5 < 0.05")
    "0.5 = 0.50, which is 50 hundredths. 0.05 is only 5.")
  (hint "Which has the fewest tenths?"))
```

So: write the decimals with the same number of places or place them on
a number line; the order from left to right is least to greatest.
