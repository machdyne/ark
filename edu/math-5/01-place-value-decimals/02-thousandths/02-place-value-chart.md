# The place-value chart

```lesson
(objective "Name the place and the value of each digit in a decimal to thousandths, such as the 2 in 4.125, which is worth 2 hundredths.")
(standards "5.NBT.A.1" "5.NBT.A.3a")
(minutes 20)
```

You can name the place and the value of each digit in a decimal.

Here is 4.125 in a place-value chart. Each digit's place tells what it
is worth. The 2 is in the hundredths place, so it is worth 2
hundredths, or 0.02.

```figure
(define k (- -1 (choice 'c '("tenths" "hundredths" "thousandths") "Place")))
(define d (m5p1-dig 4.125 k))
(m5p1-chart 30 4.125 1 -3 -3 k)
(label 160 130 (string-append "the " (fmt d 0) " is in the " (list-ref '("thousandths" "hundredths" "tenths") (+ k 3)) " place") 'body)
(label 160 165 (string-append "it is worth " (fmt d 0) "/" (fmt (expt 10 (- k)) 0)) 'body 'bold)
(label 160 195 (string-append "= " (fmt (/ d (expt 10 (- k))) (- k))) 'body 'bold)
```

```check
(choice
  (ask "In 4.125, which digit is in the thousandths place?")
  (right "5" (true "4.125 = 4 + 1/10 + 2/100 + 5/1000"))
  (wrong "1" "1 is in the tenths place, the 1st place after the decimal point. Thousandths are the 3rd place.")
  (wrong "4" "4 is in the ones place, left of the decimal point. Thousandths are right of it.")
  (wrong "2" "2 is in the hundredths place, the 2nd place. Look one place further right.")
  (hint "Count 3 places after the decimal point."))
```

---

## The value of a digit

A digit's value is the digit times the value of its place.

- In 4.125, the 1 is worth 1 tenth: 0.1.
- The 2 is worth 2 hundredths: 0.02.
- The 5 is worth 5 thousandths: 0.005.

```check
(text
  (ask "What is the value of the 6 in 3.468? Type a decimal.")
  (accept "0.06") (accept ".06") (accept "0.060") (accept ".060")
  (true "6/100 = 0.06")
  (wrong-if "6" "6 is the digit. Its value depends on its place: the hundredths.")
  (wrong-if "0.6" "0.6 is 6 tenths. The 6 is in the 2nd place after the decimal point: hundredths.")
  (wrong-if "0.006" "0.006 is 6 thousandths. The 6 is in the 2nd place, not the 3rd.")
  (hint "Which place is the 6 in?")
  (hint "The 2nd place after the decimal point is hundredths."))
```

---

## Whole numbers and decimals together

The chart goes on to the left: ones, tens, hundreds, thousands, and
more. In 52.307, the 5 is worth 50 and the 7 is worth 7 thousandths.

The 0 in the hundredths place shows that there are no hundredths.

```figure
(m5p1-chart 40 52.307 2 -3 -3 99)
(label 160 140 "52.307" 'big 'bold)
(label 160 175 "5 tens, 2 ones, 3 tenths," 'small)
(label 160 195 "0 hundredths, 7 thousandths" 'small)
```

```check
(choice
  (ask "In 52.307, what is the 3 worth?")
  (right "3 tenths" (true "3/10 = 0.3"))
  (wrong "3 hundredths" "The 3 is the 1st digit after the decimal point. That is the tenths place.")
  (wrong "3 thousandths" "The thousandths place is the 3rd place. The 3 is in the 1st place after the decimal point.")
  (wrong "3 hundreds" "Hundreds are left of the decimal point. The 3 is right of it.")
  (hint "Find the decimal point. Which place comes right after it?"))
```

---

## Worked example

```example
(example
  (problem "Name the place and value of each digit after the decimal point in 0.684.")
  (step "6 is in the tenths place: 0.6.")
  (step "8 is in the hundredths place: 0.08.")
  (step "4 is in the thousandths place: 0.004.")
  (answer "0.684 is 6 tenths, 8 hundredths and 4 thousandths."))
```

```example
(example
  (problem "What is the 9 worth in 7.019?")
  (step "After the decimal point: 0 tenths, 1 hundredth, 9 thousandths.")
  (step (text (ask "So the 9 is worth ...") (accept "0.009") (accept ".009") (true "9/1000 = 0.009")
    (wrong-if "0.9" "The 9 is in the 3rd place after the decimal point: thousandths.")))
  (answer "The 9 is worth 9 thousandths, 0.009."))
```

---

## Practice

```check
(text
  (ask "What is the value of the 4 in 1.704? Type a decimal.")
  (accept "0.004") (accept ".004")
  (true "4/1000 = 0.004")
  (wrong-if "0.4" "The 4 is the 3rd digit after the decimal point, not the 1st.")
  (wrong-if "4" "The 4 is not in the ones place. Its place is the thousandths.")
  (hint "Count the places after the decimal point."))
```

```check
(choice
  (ask "In 8.888, the 8 in the hundredths place is worth how many times the 8 in the thousandths place?")
  (right "10 times" (true "0.08 = 10 * 0.008"))
  (wrong "The same" (false "0.08 = 0.008")
    "The digits are the same, but their places are not. 0.08 is more than 0.008.")
  (wrong "1/10 as much" (false "0.08 = (1/10) * 0.008")
    "The hundredths place is left of the thousandths. One place left is 10 times as much.")
  (hint "0.08 and 0.008: one place apart."))
```

---

```check
(choice
  (ask "Which number has a 3 worth 3 thousandths?")
  (right "6.243" (true "6.243 = 6 + 2/10 + 4/100 + 3/1000"))
  (wrong "6.432" "In 6.432 the 3 is in the hundredths place: 3 hundredths.")
  (wrong "3.624" "In 3.624 the 3 is in the ones place: 3 ones.")
  (wrong "6.324" "In 6.324 the 3 is in the tenths place: 3 tenths.")
  (hint "The 3 must be the 3rd digit after the decimal point."))
```

```check
(text
  (ask "What is the value of the 5 in 0.351? Type a decimal.")
  (accept "0.05") (accept ".05") (accept "0.050") (accept ".050")
  (true "5/100 = 0.05")
  (wrong-if "0.5" "The 5 is the 2nd digit after the decimal point: hundredths.")
  (wrong-if "0.005" "The 5 is in the 2nd place, the hundredths, not the 3rd.")
  (hint "Which place is the 5 in?"))
```

So: a digit's place tells its value: tenths, hundredths and thousandths
after the decimal point.
