# Tenths as hundredths

```lesson
(objective "Write a fraction in tenths as an equivalent fraction in hundredths, such as 3/10 = 30/100, and show it with a 10 by 10 square.")
(standards "4.NF.C.5")
(minutes 20)
```

You can write tenths as hundredths.

In a 10 by 10 square, each column is $1/10$ of the square. Each column
also has 10 hundredths. So:

$$ 1/10 = 10/100 $$

```figure
(define t (slider 't 0 10 3 "Tenths" 1))
(m4p3-hund 20 20 14 (* 10 t) 'warm)
(math 250 70 (m4p3-s t 10) 24)
(text 250 117 "=" 'centre 'big)
(math 250 150 (m4p3-s (* 10 t) 100) 24)
```

```check
(fraction
  (ask "Write" (math "3/10") "in hundredths.")
  (answer 30 100) (true "3/10 = 30/100")
  (wrong-if (3 100) "3/100 is only 3 small squares. 3 tenths are 3 full columns: 30 small squares.")
  (wrong-if (13 100) "Do not add 10. Each tenth is 10 hundredths: 3 × 10 = 30.")
  (hint "Each column is 10 hundredths."))
```

---

## Multiply by 10

$3/10$ and $30/100$ are equivalent fractions. You multiply the
numerator and the denominator by 10:

$$ 3/10 = (3 * 10)/(10 * 10) = 30/100 $$

```check
(number
  (ask "7/10 = ?/100")
  (answer 70) (from "7 * 10") (true "7/10 = 70/100")
  (wrong-if 7 "The denominator was multiplied by 10. Multiply the numerator by 10 too.")
  (wrong-if 17 "Adding 10 does not keep the amount. Multiply: 7 × 10.")
  (hint "10 × 10 = 100. So 7 × 10 = ?"))
```

---

## And back

You can also go back. $60/100$ is 6 full columns, so
$60/100 = 6/10$. Divide the numerator and the denominator by 10.

```check
(fraction
  (ask "Write" (math "40/100") "in tenths.")
  (answer 4 10) (true "40/100 = 4/10")
  (wrong-if (40 10) "40/10 is 4 wholes. Divide both 40 and 100 by 10.")
  (hint "40 hundredths fill how many columns?"))
```

---

## Worked example

```example
(example
  (problem "Write 9/10 in hundredths.")
  (step "Multiply the denominator by 10: 10 × 10 = 100.")
  (step "Multiply the numerator by 10: 9 × 10 = 90.")
  (answer "9/10 = 90/100."))
```

```example
(example
  (problem "Write 5/10 in hundredths.")
  (step "5 tenths are 5 columns.")
  (step (number (ask "5/10 = ?/100")
    (answer 50) (from "5 * 10") (true "5/10 = 50/100")
    (wrong-if 5 "5/100 is 5 small squares, not 5 columns.")))
  (answer "5/10 = 50/100."))
```

---

## Practice

```check
(number
  (ask "2/10 = ?/100")
  (answer 20) (from "2 * 10") (true "2/10 = 20/100")
  (wrong-if 2 "Multiply the numerator by 10 too.")
  (hint "2 columns."))
```

```check
(number
  (ask "10/10 = ?/100")
  (answer 100) (from "10 * 10") (true "10/10 = 100/100")
  (wrong-if 10 "10 tenths is the whole square: 100 hundredths.")
  (hint "All 10 columns."))
```

---

```check
(choice
  (ask "Which is equal to" (math "8/10") "?")
  (right "80/100" (true "8/10 = 80/100"))
  (wrong "8/100" (false "8/10 = 8/100")
    "8/100 is 8 small squares. 8 tenths are 8 full columns: 80 squares.")
  (wrong "18/100" (false "8/10 = 18/100")
    "Adding 10 to the top does not keep the amount. Multiply by 10.")
  (hint "Multiply the top and the bottom by 10."))
```

```check
(fraction
  (ask "Write" (math "90/100") "in tenths.")
  (answer 9 10) (true "90/100 = 9/10")
  (wrong-if (90 10) "90/10 is 9 wholes. Divide both numbers by 10.")
  (hint "90 ÷ 10 and 100 ÷ 10."))
```

So: a tenth is 10 hundredths, so multiply the numerator and the
denominator by 10 to write tenths as hundredths.
