# Tenths and hundredths

```lesson
(objective "Use the same rule on both sides of the decimal point: 0.3 is 10 times 0.03, and 0.3 is 1/10 of 3.")
(standards "5.NBT.A.1")
(minutes 20)
```

You can use the ten-times rule on both sides of the decimal point.

Places to the right of the decimal point follow the same rule. 10
hundredths make 1 tenth. 10 tenths make 1 one.

Move the 3 with the slider. Each move left is 10 times as much.

```figure
(define k (slider 'k -2 2 -1 "Move the 3" 1))
(define v (if (< k 0) (/ 3 (expt 10 (- k))) (* 3 (expt 10 k))))
(m5p1-chart 30 v 2 -2 (min k 0) k)
(label 160 140 (string-append "the 3 is worth " (fmt v (max 0 (- k)))) 'body 'bold)
(caption "The decimal point stays between ones and tenths")
```

```check
(choice
  (ask "How many hundredths make 1 tenth?")
  (right "10" (true "10 * (1/100) = 1/10"))
  (wrong "100" (false "100 * (1/100) = 1/10")
    "100 hundredths make 1 whole one. A tenth is smaller: 10 hundredths.")
  (wrong "2" (false "2 * (1/100) = 1/10")
    "Tenths are the 1st place after the decimal point and hundredths the 2nd, but that does not mean 2. It takes 10 hundredths.")
  (hint "Think of a 10 by 10 square. One column is a tenth.")
  (hint "How many small squares are in one column?"))
```

---

## Ten times a hundredth

0.03 is 3 hundredths. Move the 3 one place left, and it is 3 tenths.

$$ 0.3 = 10 * 0.03 $$

```figure
(m5p1-hund 20 30 14 3 'warm)
(m5p1-hund 170 30 14 30 'warm)
(label 90 190 "0.03" 'big 'bold)
(label 240 190 "0.3" 'big 'bold)
(caption "3 small squares, then 3 columns: 10 times as much")
```

```check
(text
  (ask "What is 10 × 0.05? Type a decimal.")
  (accept "0.5") (accept ".5") (accept "0.50") (accept ".50")
  (true "10 * 0.05 = 0.5")
  (wrong-if "0.005" "That moves the 5 to the right. 10 times moves it one place left: from hundredths to tenths.")
  (wrong-if "5" "That is 2 places left, 100 times. 10 times is one place: 5 tenths.")
  (hint "0.05 is 5 hundredths.")
  (hint "10 times moves the 5 one place left, to the tenths."))
```

---

## A tenth of a one

Now go right. Move a 3 from the ones place to the tenths place. It is
worth 0.3, which is 1/10 of 3.

$$ 0.3 = (1/10) * 3 $$

Cut 3 wholes into 10 equal parts. Each part is 3 tenths.

```check
(text
  (ask "What is 1/10 of 8? Type a decimal.")
  (accept "0.8") (accept ".8") (accept "0.80") (accept ".80")
  (true "(1/10) * 8 = 0.8")
  (wrong-if "80" "80 is 10 times 8. 1/10 is smaller: the 8 moves one place right, to the tenths.")
  (wrong-if "0.08" "That moves the 8 two places right. 1/10 is one place: 8 tenths.")
  (hint "The 8 moves one place to the right.")
  (hint "From the ones place to the tenths place."))
```

---

## The same rule everywhere

The rule does not stop at the decimal point. In any number:

- one place left is 10 times as much;
- one place right is 1/10 as much.

In 0.44, the first 4 is worth 0.4 and the second is worth 0.04. The
first is worth 10 times the second.

```check
(choice
  (ask "In 2.22, what is the 2 in the tenths place worth, compared with the 2 in the ones place?")
  (right "1/10 as much" (true "0.2 = (1/10) * 2"))
  (wrong "10 times as much" (false "0.2 = 10 * 2")
    "The tenths place is to the right of the ones. One place right is worth 1/10 as much: 0.2 is 1/10 of 2.")
  (wrong "1/100 as much" (false "0.2 = (1/100) * 2")
    "The ones and tenths places are next to each other, 1 place apart. That is 1/10, not 1/100.")
  (hint "What is each 2 worth?")
  (hint "2 and 0.2."))
```

---

## Worked example

```example
(example
  (problem "In 5.55, compare the 5 in the ones place with the 5 in the hundredths place.")
  (step "The first 5 is worth 5. The last 5 is worth 0.05.")
  (step "They are 2 places apart: 10 times, then 10 times again.")
  (answer "The 5 in the ones place is worth 100 times the 5 in the hundredths place."))
```

```example
(example
  (problem "What is 1/10 of 0.6?")
  (step "0.6 is 6 tenths.")
  (step "1/10 moves the 6 one place right, to the hundredths.")
  (step (text (ask "So what is 1/10 of 0.6?") (accept "0.06") (accept ".06") (true "(1/10) * 0.6 = 0.06")
    (wrong-if "6" "That moves the 6 to the left. 1/10 moves it right: 6 hundredths.")))
  (answer "1/10 of 0.6 is 0.06."))
```

---

## Practice

```check
(text
  (ask "Fill in the missing decimal: 0.7 = 10 × ?")
  (accept "0.07") (accept ".07") (accept "0.070") (accept ".070")
  (true "10 * 0.07 = 0.7")
  (wrong-if "7" "10 × 7 is 70. You need a number that is 1/10 of 0.7: one place to the right.")
  (wrong-if "0.007" "10 × 0.007 is only 0.07. Move the 7 just one place right: 0.07.")
  (hint "0.7 is 7 tenths. What is one place to the right of tenths?"))
```

```check
(text
  (ask "What is 10 × 0.4? Type the answer.")
  (accept "4") (accept "4.0") (accept "4.00")
  (true "10 * 0.4 = 4")
  (wrong-if "0.04" "That is 1/10 of 0.4. 10 times moves the 4 one place left: to the ones.")
  (wrong-if "0.40" "0.40 is the same as 0.4. Writing a 0 at the end does not multiply. Move the 4 one place left.")
  (hint "10 tenths make 1 one."))
```

---

```check
(choice
  (ask "Which is true?")
  (right "0.09 is 1/10 of 0.9" (true "0.09 = (1/10) * 0.9"))
  (wrong "0.09 is 10 times 0.9" (false "0.09 = 10 * 0.9")
    "0.09 is 9 hundredths and 0.9 is 9 tenths. Hundredths are smaller, so 0.09 is the smaller one.")
  (wrong "0.09 and 0.9 are the same" (false "0.09 = 0.9")
    "The 9s are in different places. 9 tenths is 10 times 9 hundredths.")
  (hint "Which place is each 9 in?"))
```

```check
(text
  (ask "A digit is worth 0.6. What is the same digit worth one place to the left?")
  (accept "6") (accept "6.0")
  (true "10 * 0.6 = 6")
  (wrong-if "0.06" "That is one place to the right. One place left is 10 times as much: 6.")
  (wrong-if "60" "That is 2 places to the left. One place left of tenths is the ones place.")
  (hint "What place is one step left of the tenths?"))
```

So: on both sides of the decimal point, each place is 10 times the place
to its right.
