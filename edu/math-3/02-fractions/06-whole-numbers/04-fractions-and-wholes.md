# Fractions and whole numbers

```lesson
(objective "Compare a fraction with a whole number using a number line.")
(standards "3.NF.A.3c" "3.NF.A.3d")
(minutes 20)
```

You can compare a fraction with a whole number on a number line.

Put both on the same line. The one farther right is greater. Move the
slider to place a fraction in fourths, and compare it with 1.

```figure
(define k (slider 'k 1 12 5 "Fourths" 1))
(fr-line 40 280 130 3 4 'whole)
(nl-mark 1 'cool "1")
(fr-point k 4 'warm)
(math 160 200 (string-append (fr-s k 4) (cond ((> k 4) " > ") ((< k 4) " < ") (else " = ")) "1") 24)
(caption "A number line from 0 to 3 in fourths.")
```

```check
(choice
  (ask "Compare" (math "5/4") "and 1.")
  (right "5/4 > 1" (true "5/4 > 1"))
  (wrong "5/4 < 1" (false "5/4 < 1")
    "4/4 is 1. 5/4 is 1 more fourth, so it is past 1 on the line.")
  (wrong "5/4 = 1" (false "5/4 = 1")
    "4/4 equals 1. 5/4 is 1 fourth more.")
  (hint "Where is 4/4 on the line?"))
```

---

## Use the whole as a fraction

Write the whole number as a fraction with the same denominator. Then
compare the numerators.

$2 = 6/3$, so $7/3 > 2$ because 7 thirds are more than 6 thirds.

```check
(choice
  (ask "Which is greater:" (math "5/2") "or 3?")
  (right "3" (true "3 > 5/2"))
  (wrong "5/2" (false "5/2 > 3")
    "5 is bigger than 3, but 5/2 is 5 halves. 3 wholes are 6 halves, so 3 is greater.")
  (hint "Write 3 in halves.")
  (hint "3 = 6/2."))
```

---

## Worked example

```example
(example
(problem "Compare 7/8 and 1.")
(step "Write 1 in eighths: 1 = 8/8.")
(step "7 eighths are fewer than 8 eighths.")
(answer "7/8 < 1."))
```

```example
(example
(problem "Compare 9/4 and 2.")
(step "Write 2 in fourths: 2 = 8/4.")
(step (choice (ask "Which has more fourths, 9/4 or 8/4?")
  (right "9/4")
  (wrong "8/4"
    "Both are fourths. 9 fourths are more than 8 fourths.")))
(answer "9/4 > 2."))
```

---

## Practice

```check
(choice
  (ask "Which is true?")
  (right "3/3 = 1" (true "3/3 = 1"))
  (wrong "3/3 > 1" (false "3/3 > 1")
    "3/3 is all 3 thirds: exactly 1 whole, not more.")
  (wrong "3/3 < 1" (false "3/3 < 1")
    "Nothing is missing from 3/3. All 3 thirds make 1 whole.")
  (hint "How many thirds make 1?"))
```

```check
(choice
  (ask "Which is greater:" (math "11/6") "or 2?")
  (right "2" (true "2 > 11/6"))
  (wrong "11/6" (false "11/6 > 2")
    "11 is a big numerator, but these are sixths. 2 wholes are 12 sixths, 1 more than 11 sixths.")
  (hint "Write 2 in sixths."))
```

---

```check
(choice
  (ask "Tia runs" (math "3/2") "miles. Ken runs 1 mile. Who runs farther?")
  (right "Tia" (true "3/2 > 1"))
  (wrong "Ken" (false "1 > 3/2")
    "1 mile is 2/2 miles. Tia runs 3 halves, 1 more half than Ken.")
  (hint "Write 1 in halves."))
```

So: to compare a fraction with a whole number, put both on a number
line, or write the whole number with the same denominator.
