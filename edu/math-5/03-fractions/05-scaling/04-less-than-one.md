# Scaling by less than 1

```lesson
(objective "Explain why multiplying a number greater than 0 by a fraction less than 1 gives a product less than the number, and by 1 the same number.")
(standards "5.NF.B.5b")
(minutes 20)
```

Take a number greater than 0, and multiply it by a fraction less than
1. The product is less than the number. Here is why.

$(3/4) * 8$ is $3/4$ of 8: 3 of the 4 equal parts of 8. That leaves
out 1 part, so it is less than all of 8.

$$ (3/4) * 8 = 6 < 8 $$

```figure
(define k (slider 'k 1 4 3 "Fourths" 1))
(m5p3-scale 190 10 1 1 8 (/ k 4) "8"
  (string-append "(" (m5p3-s k 4) ") x 8 = " (fmt (* 2 k) 0)))
```

```check
(choice
  (ask "Why is" (math "(2/5) * 10") "less than 10?")
  (right "It is 2 of the 5 equal parts of 10, not all of them")
  (wrong "Because multiplying by a fraction always makes less"
    "Not always: (3/2) x 10 = 15 is more than 10. It is less here because 2/5 is less than 1.")
  (wrong "Because 2 is less than 10"
    "The numerator alone does not decide it. (12/5) x 10 = 24, more than 10. What matters is that 2/5 < 1.")
  (hint "2/5 of 10 is how many of its 5 parts?"))
```

---

## Times 1

$1 * 8 = 8$. Scaling by 1 keeps the size. A fraction equal to 1, like
$4/4$, does the same: $(4/4) * 8$ is all 4 parts of 8, which is 8.

Move the slider to 4: the two bars are the same length.

```check
(number
  (ask "What is" (math "(6/6) * 15") "?")
  (answer 15) (from "(6/6) * 15")
  (wrong-if 90 "That multiplies by 6 only. 6/6 is 1, so the product is 15.")
  (wrong-if 2.5 "That divides by 6 only. 6/6 of 15 is all of 15.")
  (hint "6/6 = 1."))
```

---

## Why "greater than 0"?

The rule is for numbers greater than 0. $0 * (3/4) = 0$ and
$0 * (5/4) = 0$: scaling 0 gives 0, neither smaller nor bigger.

```check
(choice
  (ask "What is" (math "0 * (7/2)") "?")
  (right "0" (true "0 * (7/2) = 0"))
  (wrong "7/2"
    "0 times any number is 0. Scaling nothing gives nothing.")
  (wrong "More than 0, since 7/2 > 1"
    "Stretching works only for numbers greater than 0. 0 stretched is still 0.")
  (hint "0 groups of anything is ..."))
```

---

## Worked example

```example
(example
  (problem "Without multiplying, put in order: 6 x (4/5), 6 x (5/5), 6 x (6/5).")
  (step "4/5 < 1, so 6 x (4/5) < 6.")
  (step "5/5 = 1, so 6 x (5/5) = 6.")
  (step "6/5 > 1, so 6 x (6/5) > 6.")
  (answer "6 x (4/5) < 6 x (5/5) < 6 x (6/5)."))
```

```example
(example
  (problem "Explain why (5/6) x 12 < 12.")
  (step "5/6 of 12 is 5 of the 6 equal parts of 12. One part is left out.")
  (step (number (ask "What is (5/6) x 12?") (answer 10) (from "(5/6) * 12")
    (wrong-if 2 "2 is 1 part. 5 parts: 5 x 2.")))
  (answer "(5/6) x 12 = 10 < 12."))
```

---

## Practice

```check
(choice
  (ask "Without multiplying: compare" (math "(9/10) * 30") "with 30.")
  (right "Less than 30" (true "(9/10) * 30 < 30"))
  (wrong "More than 30"
    "9/10 is less than 1. It is 9 of 10 parts of 30, not all.")
  (wrong "Equal to 30"
    "9/10 is close to 1, but not 1.")
  (hint "Is 9/10 less than 1?"))
```

```check
(choice
  (ask "For which factor is the product equal to 7?")
  (right "7 x (3/3)" (true "7 * (3/3) = 7"))
  (wrong "7 x (1/3)"
    "1/3 is less than 1, so it shrinks 7.")
  (wrong "7 x (4/3)"
    "4/3 is more than 1, so it stretches 7.")
  (hint "Which fraction equals 1?"))
```

---

```check
(choice
  (ask "Ben scales a 20-centimeter drawing by" (math "3/5") ". He says it is now 33 centimeters wide. Is that reasonable?")
  (right "No: 3/5 < 1, so the drawing must be less than 20 centimeters" (true "(3/5) * 20 = 12"))
  (wrong "Yes: scaling makes things bigger"
    "Scaling by a fraction less than 1 shrinks. 3/5 of 20 is 12.")
  (wrong "Yes: 20 + 13 = 33"
    "Scaling multiplies. (3/5) x 20 = 12, less than 20.")
  (hint "Is 3/5 more or less than 1?"))
```

```check
(number
  (ask "What is" (math "(3/8) * 16") "?")
  (answer 6) (from "(3/8) * 16")
  (wrong-if 2 "2 is 1/8 of 16. 3 parts: 3 x 2.")
  (hint "16 ÷ 8 = 2."))
```

For a number greater than 0: times a fraction less than 1, the product
is less; times 1, it is the same.
