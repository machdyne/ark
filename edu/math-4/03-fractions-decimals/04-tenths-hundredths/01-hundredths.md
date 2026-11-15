# Hundredths

```lesson
(objective "Show hundredths with a 10 by 10 square and write fractions with the denominator 100.")
(standards "4.NF.C.5")
(minutes 20)
(keywords "hundredth (of a whole)")
```

You can show hundredths with a square cut into 100 equal parts.

Cut a square into 10 rows and 10 columns. You get 100 small squares,
all the same size. Each small square is a **hundredth** of the whole:
$1/100$.

```figure
(m4p3-hund 90 20 14 1 'warm)
(math 270 90 "1/100" 20)
(caption "1 of 100 equal parts is shaded.")
```

```check
(number
  (ask "How many hundredths make 1 whole?")
  (answer 100) (true "100 * (1/100) = 1")
  (wrong-if 10 "10 hundredths fill only 1 column. The whole square has 10 columns of 10.")
  (hint "10 rows of 10 small squares."))
```

---

## Counting hundredths

Shade some small squares. The number shaded is the numerator, and 100
is the denominator. Move the slider.

```figure
(define n (slider 'n 0 100 37 "Hundredths" 1))
(m4p3-hund 20 20 14 n 'warm)
(math 250 90 (m4p3-s n 100) 24)
```

```check
(fraction
  (ask "A square has 100 equal parts. 45 are shaded. What fraction is shaded? Write it in hundredths.")
  (answer 45 100) (true "45/100 = 45/100")
  (wrong-if (45 10) "The square has 100 parts, so the denominator is 100.")
  (wrong-if (55 100) "55 parts are not shaded. Count the shaded ones.")
  (hint "Shaded parts over all the parts."))
```

---

## Full columns

Each column has 10 small squares. So 3 full columns are 30 hundredths.
With 6 more small squares, that is 36 hundredths: $36/100$.

```figure
(m4p3-hund 90 20 14 36 'warm)
(caption "3 full columns and 6 more: 36/100")
```

```check
(fraction
  (ask "7 full columns are shaded, and 2 more small squares. What fraction is shaded? Write it in hundredths.")
  (answer 72 100) (true "70/100 + 2/100 = 72/100")
  (wrong-if (9 100) "Each full column is 10 hundredths, not 1. 7 columns = 70.")
  (wrong-if (27 100) "That swaps the digits. 7 columns of 10 is 70, then 2 more: 72.")
  (hint "7 columns × 10 = 70."))
```

---

## Worked example

```example
(example
  (problem "A square of 100 equal parts has 5 full columns and 8 more squares shaded. Write the fraction.")
  (step "5 columns × 10 = 50 hundredths.")
  (step "50 + 8 = 58.")
  (answer "58/100."))
```

```example
(example
  (problem "How many hundredths are not shaded in that square?")
  (step "The whole is 100/100.")
  (step (number (ask "100 - 58 = ?")
    (answer 42) (from "100 - 58")
    (wrong-if 52 "Check the subtraction: 58 + 42 = 100.")))
  (answer "42/100 are not shaded."))
```

---

## Practice

```check
(fraction
  (ask "Write 9 hundredths as a fraction. Use the denominator 100.")
  (answer 9 100) (true "9/100 = 9/100")
  (wrong-if (9 10) "9/10 is 9 tenths. Hundredths have the denominator 100.")
  (hint "Numerator 9, denominator 100."))
```

```check
(number
  (ask "All 10 columns are shaded. How many hundredths is that?")
  (answer 100) (from "10 * 10")
  (wrong-if 10 "10 columns of 10 squares each is 100.")
  (hint "10 × 10."))
```

---

```check
(choice
  (ask "Which is greater:" (math "1/10") "or" (math "1/100") "?")
  (right "1/10" (true "1/10 > 1/100"))
  (wrong "1/100" (false "1/100 > 1/10")
    "100 is bigger than 10, but cutting into 100 parts makes each part smaller. A hundredth is a tiny square; a tenth is a whole column.")
  (wrong "They are equal" (false "1/10 = 1/100")
    "A tenth is 1 column of 10 squares. A hundredth is 1 square.")
  (hint "Picture 1 column and 1 small square."))
```

So: a hundredth is 1 of 100 equal parts, and you write it with the
denominator 100.
