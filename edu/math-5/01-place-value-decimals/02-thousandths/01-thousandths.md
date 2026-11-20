# Thousandths

```lesson
(objective "Show a thousandth as 1/10 of a hundredth, and write a fraction with the denominator 1,000 as a decimal, such as 7/1000 = 0.007 and 45/1000 = 0.045.")
(standards "5.NBT.A.1" "5.NBT.A.3a")
(minutes 25)
(keywords "thousandth (of a whole)")
```

You can show a thousandth and write it as a decimal.

The big square is 1 whole, cut into 100 hundredths. Now cut one
hundredth into 10 equal strips. Each strip is 1/10 of a hundredth.

It takes 1,000 strips to fill the whole. So each strip is a
**thousandth**: one of 1,000 equal parts of a whole.

```figure
(define n (slider 'n 0 10 1 "Strips" 1))
(m5p1-hund 10 40 12 0 'warm)
(rect 10 40 12 12 'grey)
(line 22 40 170 40 'grey 1)
(line 22 52 170 160 'grey 1)
(frac-bar-at 170 40 120 120 10 n 'warm)
(label 70 180 "1 whole" 'small)
(label 230 180 "1 hundredth, cut in 10" 'small)
(label 160 210 (string-append (fmt n 0) " of 10 strips = " (fmt n 0) "/1000") 'body 'bold)
```

```check
(number
  (ask "How many thousandths make 1 hundredth?")
  (answer 10) (from "(1/100) ÷ (1/1000)")
  (wrong-if 100 "100 thousandths make 1 tenth. A hundredth is smaller: it is cut into only 10 strips.")
  (wrong-if 1000 "1,000 thousandths make the whole square. One hundredth holds only 10 of them.")
  (hint "Look at the small square on the right. How many strips is it cut into?"))
```

---

## The third place

Thousandths go in the 3rd place after the decimal point. One thousandth
is written 0.001.

$$ 1/1000 = 0.001 $$

The places after the decimal point are tenths, hundredths, thousandths.
Each is 1/10 of the place to its left.

```figure
(m5p1-chart 40 0.001 0 -3 -3 -3)
(label 160 150 "0.001 is 1 thousandth" 'body 'bold)
```

```check
(text
  (ask "Write" (math "7/1000") "as a decimal.")
  (accept "0.007") (accept ".007")
  (true "7/1000 = 0.007")
  (wrong-if "0.7" "0.7 is 7 tenths. Thousandths go in the 3rd place after the decimal point: 0.007.")
  (wrong-if "0.07" "0.07 is 7 hundredths. You need two zeros before the 7: 0.007.")
  (wrong-if "0.0007" "That puts the 7 in the 4th place. Thousandths are the 3rd place: 0.007.")
  (hint "Thousandths are the 3rd place after the decimal point.")
  (hint "The tenths and hundredths places are empty: write 0s there."))
```

---

## Two-digit thousandths

45/1000 is 45 thousandths. 45 thousandths is 4 hundredths and 5
thousandths, because 40 thousandths make 4 hundredths.

$$ 45/1000 = 0.045 $$

The last digit, 5, is in the thousandths place.

```check
(text
  (ask "Write" (math "45/1000") "as a decimal.")
  (accept "0.045") (accept ".045")
  (true "45/1000 = 0.045")
  (wrong-if "0.45" "0.45 is 45 hundredths. Thousandths end in the 3rd place: 0.045.")
  (wrong-if "0.0045" "That ends in the 4th place. The 5 goes in the thousandths, the 3rd place.")
  (hint "The last digit goes in the 3rd place after the decimal point.")
  (hint "0. _ _ 5"))
```

---

## Three-digit thousandths

When the numerator has 3 digits, they fill all 3 places.

$$ 382/1000 = 0.382 $$

That is 3 tenths, 8 hundredths and 2 thousandths.

```check
(fraction
  (ask "Write 0.209 as a fraction with the denominator 1,000.")
  (answer 209 1000)
  (true "209/1000 = 0.209")
  (wrong-if (29 1000) "The 0 in the hundredths place counts. 0.209 is 209 thousandths.")
  (wrong-if (209 100) "209/100 is more than 2. 0.209 ends in the thousandths place, so the denominator is 1,000.")
  (hint "Read the digits after the decimal point as one number."))
```

---

## Worked example

```example
(example
  (problem "Write 60/1000 as a decimal.")
  (step "The last digit goes in the 3rd place after the decimal point.")
  (step "60 thousandths: 0 in the thousandths, 6 in the hundredths.")
  (answer "60/1000 = 0.060, which is the same as 0.06."))
```

```example
(example
  (problem "Write 3/1000 as a decimal.")
  (step "3 thousandths: the 3 goes in the 3rd place.")
  (step (text (ask "So 3/1000 = ?") (accept "0.003") (accept ".003") (true "3/1000 = 0.003")
    (wrong-if "0.03" "0.03 is 3 hundredths. You need the 3 in the 3rd place: 0.003.")))
  (answer "3/1000 = 0.003"))
```

---

## Practice

```check
(text
  (ask "Write" (math "128/1000") "as a decimal.")
  (accept "0.128") (accept ".128")
  (true "128/1000 = 0.128")
  (wrong-if "1.28" "1.28 is more than 1. 128 thousandths is less than 1 whole.")
  (wrong-if "0.0128" "The last digit goes in the 3rd place: 0.128.")
  (hint "3 digits fill the 3 places."))
```

```check
(fraction
  (ask "Write 0.017 as a fraction with the denominator 1,000.")
  (answer 17 1000)
  (true "17/1000 = 0.017")
  (wrong-if (17 100) "17/100 is 0.17. Here the 7 is in the 3rd place, the thousandths.")
  (hint "0.017 ends in the thousandths place."))
```

---

```check
(choice
  (ask "Which is 1/10 of a hundredth?")
  (right "0.001" (true "(1/10) * 0.01 = 0.001"))
  (wrong "0.1" (false "(1/10) * 0.01 = 0.1")
    "0.1 is a tenth, which is 10 times a hundredth. You need a smaller place.")
  (wrong "0.010" (false "(1/10) * 0.01 = 0.010")
    "0.010 is the same as 0.01, a hundredth. A 0 at the end does not change the value.")
  (hint "One place to the right of the hundredths."))
```

```check
(text
  (ask "Write 9 thousandths as a decimal.")
  (accept "0.009") (accept ".009")
  (true "9/1000 = 0.009")
  (wrong-if "0.9" "0.9 is 9 tenths. Thousandths go in the 3rd place.")
  (wrong-if "9000" "9,000 is 9 thousands, a whole number. A thousandth is a tiny part of 1.")
  (hint "0. _ _ 9"))
```

So: a thousandth is 1/10 of a hundredth, and it is the 3rd place after
the decimal point.
