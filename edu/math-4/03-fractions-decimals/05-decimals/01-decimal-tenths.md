# Decimal tenths

```lesson
(objective "Write a fraction in tenths as a decimal, such as 3/10 = 0.3, and read it.")
(standards "4.NF.C.6")
(minutes 20)
(keywords "decimal" "decimal point")
```

You can write tenths in a new way, as a decimal.

A **decimal** is a number written with places for parts of a whole,
after the ones place. The fraction $3/10$ is the decimal 0.3. Both
mean 3 tenths.

```figure
(m4p3-tenths 30 40 260 40 3 'warm)
(math 100 140 "3/10" 24)
(text 160 147 "=" 'centre 'big)
(text 220 150 "0.3" 'centre 'big 'bold)
(caption "3 tenths of the strip")
```

```check
(choice
  (ask "Which decimal means 7 tenths?")
  (right "0.7" (true "0.7 = 7/10"))
  (wrong "7.0" (false "7.0 = 7/10")
    "7.0 is 7 wholes. Tenths go after the ones place: 0.7.")
  (wrong "0.07" (false "0.07 = 7/10")
    "0.07 puts the 7 one place too far to the right. Tenths are the first place after the ones.")
  (hint "The tenths place comes right after the ones place."))
```

---

## The decimal point

The dot in 0.3 is the **decimal point**. It separates the ones from
the parts of a whole. The digit just after it is the tenths.

```figure
(m4p3-place 40 60 "0" "3" "")
(caption "0 ones, 3 tenths: 0.3")
```

You read 0.3 as "3 tenths". Some people also say "zero point three".

```check
(number
  (ask "In 0.6, what digit is in the tenths place?")
  (answer 6)
  (wrong-if 0 "0 is in the ones place, before the decimal point.")
  (hint "Look just after the decimal point."))
```

---

## From tenths to a decimal

Write a 0 in the ones place, then the decimal point, then the number
of tenths. Move the slider.

```figure
(define t (slider 't 0 9 4 "Tenths" 1))
(m4p3-tenths 30 30 260 36 t 'warm)
(math 110 125 (m4p3-s t 10) 24)
(text 220 132 (string-append "0." (fmt t 0)) 'centre 'big 'bold)
```

```check
(text
  (ask "Write" (math "9/10") "as a decimal.")
  (accept "0.9") (accept ".9") (accept "0.90") (accept ".90")
  (wrong-if "9" "9 is 9 wholes. 9 tenths go after the decimal point: 0.9.")
  (wrong-if "0.09" "0.09 is 9 hundredths. Tenths are the first place after the decimal point.")
  (hint "0, the decimal point, then the tenths."))
```

---

## Worked example

```example
(example
  (problem "Write 2/10 as a decimal and read it.")
  (step "There are 0 wholes: write 0 in the ones place.")
  (step "Write the decimal point, then 2 in the tenths place.")
  (answer "2/10 = 0.2, read \"2 tenths\"."))
```

```example
(example
  (problem "Write 0.5 as a fraction.")
  (step "The 5 is in the tenths place.")
  (step (fraction (ask "So 0.5 = ? Write it in tenths.")
    (answer 5 10) (true "0.5 = 5/10")
    (wrong-if (5 100) "The 5 is in the first place after the decimal point: tenths.")))
  (answer "0.5 = 5/10."))
```

---

## Practice

```check
(text
  (ask "Write" (math "1/10") "as a decimal.")
  (accept "0.1") (accept ".1") (accept "0.10") (accept ".10")
  (wrong-if "1.0" "1.0 is 1 whole. 1 tenth is 0.1.")
  (wrong-if "0.01" "0.01 is 1 hundredth, a tenth of a tenth.")
  (hint "0, the decimal point, then 1."))
```

```check
(fraction
  (ask "Write 0.8 as a fraction in tenths.")
  (answer 8 10) (true "0.8 = 8/10")
  (wrong-if (8 100) "The 8 is just after the decimal point, so it is tenths.")
  (wrong-if (1 8) "0.8 is 8 tenths, not 1 eighth.")
  (hint "The first place after the decimal point is tenths."))
```

---

```check
(choice
  (ask "How do you read 0.4?")
  (right "4 tenths")
  (wrong "4" "0.4 is less than 1. The 4 is in the tenths place.")
  (wrong "4 hundredths" "Hundredths are the second place after the decimal point. 0.4 has one place: tenths.")
  (hint "Which place is the 4 in?"))
```

So: tenths can be written as a decimal, with the tenths digit just
after the decimal point: $3/10 = 0.3$.
