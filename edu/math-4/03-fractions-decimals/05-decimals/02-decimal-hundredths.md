# Decimal hundredths

```lesson
(objective "Write a fraction in hundredths as a decimal, such as 62/100 = 0.62, and name the tenths and hundredths places.")
(standards "4.NF.C.6")
(minutes 20)
```

You can write hundredths as a decimal with two places after the
decimal point.

$62/100$ is 62 hundredths. That is 6 tenths and 2 hundredths, since
$62/100 = 60/100 + 2/100 = 6/10 + 2/100$. As a decimal it is 0.62.

```figure
(m4p3-hund 40 10 10 62 'warm)
(text 220 66 "0.62" 'centre 'big 'bold)
(m4p3-place 45 130 "0" "6" "2")
```

```check
(text
  (ask "Write" (math "45/100") "as a decimal.")
  (accept "0.45") (accept ".45")
  (wrong-if "45" "45 is 45 wholes. 45 hundredths go after the decimal point.")
  (wrong-if "4.5" "4.5 is more than 4 wholes. 45/100 is less than 1: 0.45.")
  (hint "0, the decimal point, then 4 tenths and 5 hundredths."))
```

---

## The places

The first place after the decimal point is the tenths place. The
second is the hundredths place. In 0.62, the 6 means 6 tenths and
the 2 means 2 hundredths.

You read 0.62 as "62 hundredths". Some people say "zero point six two".

```check
(number
  (ask "In 0.38, what digit is in the hundredths place?")
  (answer 8)
  (wrong-if 3 "3 is in the tenths place, the first after the decimal point.")
  (hint "The second place after the decimal point."))
```

---

## Fewer than 10 hundredths

$7/100$ is 0 tenths and 7 hundredths. The tenths place needs a 0:

$$ 7/100 = 0.07 $$

Move the slider.

```figure
(define n (slider 'n 0 99 7 "Hundredths" 1))
(define s (if (< n 10) (string-append "0.0" (fmt n 0)) (string-append "0." (fmt n 0))))
(m4p3-hund 10 20 14 n 'warm)
(math 240 70 (m4p3-s n 100) 22)
(text 240 140 s 'centre 'big 'bold)
```

```check
(text
  (ask "Write" (math "4/100") "as a decimal.")
  (accept "0.04") (accept ".04")
  (wrong-if "0.4" "0.4 is 4 tenths, 10 times as much. Put a 0 in the tenths place: 0.04.")
  (wrong-if "4" "4 is 4 wholes. 4 hundredths is a tiny part of 1.")
  (hint "0 tenths, 4 hundredths."))
```

---

## Worked example

```example
(example
  (problem "Write 0.91 as a fraction.")
  (step "There are 2 places after the decimal point: hundredths.")
  (step "The digits after the decimal point are 91.")
  (answer "0.91 = 91/100."))
```

```example
(example
  (problem "Write 30/100 as a decimal.")
  (step "30 hundredths is 3 tenths and 0 hundredths.")
  (step (text (ask "So 30/100 = ? as a decimal.")
    (accept "0.30") (accept ".30") (accept "0.3") (accept ".3")
    (wrong-if "0.03" "That is 3 hundredths. 30 hundredths fill 3 tenths.")))
  (answer "30/100 = 0.30, which is the same as 0.3."))
```

---

## Practice

```check
(fraction
  (ask "Write 0.29 as a fraction in hundredths.")
  (answer 29 100) (true "0.29 = 29/100")
  (wrong-if (29 10) "2 places after the decimal point means hundredths.")
  (hint "Hundredths: denominator 100."))
```

```check
(text
  (ask "Write" (math "80/100") "as a decimal.")
  (accept "0.80") (accept ".80") (accept "0.8") (accept ".8")
  (wrong-if "0.08" "0.08 is 8 hundredths. 80 hundredths are 8 tenths.")
  (hint "80/100 = 8/10."))
```

---

```check
(choice
  (ask "In 0.53, what does the 5 mean?")
  (right "5 tenths" (true "0.5 = 5/10"))
  (wrong "5 hundredths" "The 5 is in the first place after the decimal point. That is tenths.")
  (wrong "5 ones" "The ones are before the decimal point. There is a 0 there.")
  (hint "Count the places after the decimal point."))
```

```check
(text
  (ask "Write" (math "6/10 + 9/100") "as a decimal.")
  (accept "0.69") (accept ".69")
  (wrong-if "0.15" "6 tenths and 9 hundredths are not added as 6 + 9. Write 6 in the tenths place and 9 in the hundredths.")
  (wrong-if "0.96" "6 is the tenths digit and comes first: 0.69.")
  (hint "6/10 = 60/100. 60 + 9 = 69 hundredths."))
```

So: hundredths take 2 places after the decimal point; the first is
tenths and the second is hundredths: $62/100 = 0.62$.
