# Decimals on a number line

```lesson
(objective "Place decimals to hundredths on a number line, such as 0.62 between 0.6 and 0.7.")
(standards "4.NF.C.6")
(minutes 20)
```

You can place decimals on a number line.

Cut the line from 0 to 1 into 10 equal parts. Each mark is a tenth:
0.1, 0.2, 0.3 and so on.

```figure
(number-line 20 300 110 0 1 0.1 0.1)
(nl-mark 0.3 'warm "0.3")
(caption "The line from 0 to 1 in tenths")
```

```check
(choice
  (ask "On a line from 0 to 1 in tenths, which mark is 0.7?")
  (right "The 7th mark after 0" (true "0.7 = 7/10"))
  (wrong "The 7th mark before 1"
    "Counting 7 tenths back from 1 lands on 0.3. Count from 0 instead: 7 tenths.")
  (wrong "The 7th mark after 1"
    "Marks after 1 are more than 1. 0.7 is less than 1.")
  (hint "Count tenths from 0."))
```

---

## Between two tenths

Cut each tenth into 10 equal parts. Each small part is a hundredth.
0.62 is 6 tenths and 2 hundredths, so it is between 0.6 and 0.7, at
the 2nd small mark after 0.6.

```figure
(number-line 20 300 110 0.5 0.8 0.01 0.1)
(nl-mark 0.62 'warm "0.62")
(caption "From 0.5 to 0.8 in hundredths")
```

```check
(choice
  (ask "Between which two tenths is 0.48?")
  (right "0.4 and 0.5" (true "0.4 < 0.48 < 0.5"))
  (wrong "0.8 and 0.9" "0.48 has 4 tenths. The 8 is hundredths.")
  (wrong "4 and 5" "0.48 is less than 1. It is between 4 tenths and 5 tenths.")
  (hint "Look at the tenths digit."))
```

---

## Find the point

Move the slider. The point is at the decimal shown.

```figure
(define n (slider 'n 0 100 62 "Hundredths" 1))
(define v (/ n 100))
(number-line 20 300 110 0 1 0.1 0.1)
(nl-mark v 'warm)
(text 160 170 (string-append (if (< n 100) (if (< n 10) "0.0" "0.") "") (if (< n 100) (fmt n 0) "1.00")) 'centre 'big 'bold)
```

```check
(number
  (ask "A point is 3 small marks past 0.2 on a line in hundredths. What decimal is it?")
  (answer 0.23) (from "0.2 + 3/100")
  (wrong-if 0.5 "Each small mark is 1 hundredth, not 1 tenth. 0.2 and 3 hundredths is 0.23.")
  (wrong-if 0.203 "3 hundredths go in the second place: 0.23.")
  (hint "0.20, 0.21, 0.22, ..."))
```

---

## Worked example

```example
(example
  (problem "Place 0.35 on a number line from 0 to 1.")
  (step "0.35 is 3 tenths and 5 hundredths.")
  (step "It is between 0.3 and 0.4.")
  (step "5 hundredths is halfway between them.")
  (answer "0.35 is halfway between 0.3 and 0.4."))
```

```example
(example
  (problem "Where is 0.9 on a line from 0 to 1?")
  (step "0.9 is 9 tenths.")
  (step (choice (ask "Is 0.9 nearer to 0 or to 1?")
    (right "Nearer to 1" (true "1 - 0.9 < 0.9"))
    (wrong "Nearer to 0" "0.9 is 9 tenths from 0 and only 1 tenth from 1.")))
  (answer "0.9 is 1 tenth to the left of 1."))
```

---

## Practice

```check
(choice
  (ask "Between which two tenths is 0.06?")
  (right "0 and 0.1" (true "0 < 0.06 < 0.1"))
  (wrong "0.6 and 0.7" "0.06 has 0 tenths. 6 hundredths is less than 1 tenth.")
  (wrong "0.5 and 0.6" "The tenths digit of 0.06 is 0.")
  (hint "What digit is in the tenths place?"))
```

```check
(number
  (ask "Which decimal is halfway between 0.7 and 0.8?")
  (answer 0.75) (from "(0.7 + 0.8)/2")
  (wrong-if 0.705 "Between 0.70 and 0.80 are 10 hundredths. Halfway is 5 of them: 0.75.")
  (wrong-if 1.5 "That is 0.7 + 0.8 added up. Halfway between is 0.75.")
  (hint "0.70, 0.71, ... 0.80. Which is in the middle?"))
```

So: tenths cut the line from 0 to 1 into 10 parts, and hundredths cut
each tenth into 10 more.
