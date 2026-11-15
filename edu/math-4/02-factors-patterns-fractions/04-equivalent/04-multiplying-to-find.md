# Multiplying to find

```lesson
(objective "Make an equivalent fraction by multiplying the numerator and the denominator by the same number.")
(standards "4.NF.A.1")
(minutes 20)
```

You can make an equivalent fraction by multiplying.

To write $3/4$ in twelfths, ask: 4 times what is 12? $4 * 3 = 12$.
Then multiply the numerator by the same number: $3 * 3 = 9$.

$$ 3/4 = (3 * 3)/(4 * 3) = 9/12 $$

```check
(fraction
  (ask "Write" (math "2/5") "in tenths.")
  (answer 4 10) (true "2/5 = 4/10")
  (wrong-if (2 10) "You multiplied only the denominator. 5 × 2 = 10, so the numerator is 2 × 2 = 4.")
  (wrong-if (7 10) "7/10 adds 5 to the top, as 10 adds 5 to the bottom. Multiply instead: 2 × 2.")
  (hint "5 times what is 10? Multiply the 2 by that too."))
```

---

## Many equivalent fractions

Multiply by 2, 3, 4 ... and you get a whole list of fractions equal to
$1/2$. Move the slider.

```figure
(define n (slider 'n 1 6 2 "Multiply by" 1))
(m4p2-bar 50 50 250 40 1 2 n 'warm)
(math 175 150 (string-append "1/2 = (" (fmt n 0) " * 1)/(" (fmt n 0) " * 2) = " (m4p2-s n (* 2 n))) 22)
```

```check
(fraction
  (ask "Write a fraction equal to" (math "1/3") "with the denominator 6.")
  (answer 2 6) (true "1/3 = 2/6")
  (wrong-if (1 6) "1/6 is half of 1/3. 3 × 2 = 6, so the numerator is 1 × 2 = 2.")
  (wrong-if (4 6) "4/6 is 2/3, not 1/3. Multiply the 1 by 2.")
  (hint "3 × 2 = 6. Multiply the 1 by 2 as well."))
```

---

## Find the number to multiply by

Write $5/6$ in twelfths. The denominator goes from 6 to 12. $6 * 2 = 12$, so
multiply by 2. The numerator is $5 * 2 = 10$. So $5/6 = 10/12$.

```check
(number
  (ask "3/5 = ?/10")
  (answer 6) (from "3 * 2") (true "3/5 = 6/10")
  (wrong-if 8 "8 adds 5 to the top, as 10 adds 5 to the bottom. But 5 × 2 = 10: multiply the 3 by 2.")
  (wrong-if 3 "The denominator was multiplied by 2. The numerator must be multiplied by 2 too.")
  (hint "5 × ? = 10"))
```

---

## When it does not work

Can you write $1/3$ in tenths? 3 times what is 10? There is no whole
number: 10 is not a multiple of 3. So you cannot write $1/3$ as tenths
this way. You can write it in sixths or twelfths: $2/6$, $4/12$.

```check
(choice
  (ask "Which denominator can" (math "3/4") "be written with by multiplying?")
  (right "12" (true "3/4 = 9/12"))
  (wrong "10"
    "4 × 2 = 8 and 4 × 3 = 12. 10 is not a multiple of 4, so no whole number works.")
  (wrong "6"
    "4 × 1 = 4 and 4 × 2 = 8. 6 is not a multiple of 4.")
  (hint "The new denominator must be a multiple of 4."))
```

---

## Worked example

```example
(example
  (problem "Write 2/3 in twelfths.")
  (step "3 times what is 12? 3 × 4 = 12.")
  (step "Multiply the numerator by 4 too: 2 × 4 = 8.")
  (step "Check with a model: cut every third into 4 parts.")
  (answer "2/3 = 8/12."))
```

```example
(example
  (problem "Write 3/4 in eighths.")
  (step "4 times what is 8? 4 × 2 = 8.")
  (step (number (ask "3 × 2 = ?")
    (answer 6) (from "3 * 2")
    (wrong-if 5 "5 is 3 + 2. Multiply: 3 × 2.")))
  (answer "3/4 = 6/8."))
```

---

## Practice

```check
(fraction
  (ask "Write" (math "4/5") "in tenths.")
  (answer 8 10) (true "4/5 = 8/10")
  (wrong-if (4 10) "The denominator was multiplied by 2, so multiply the 4 by 2 as well.")
  (wrong-if (9 10) "9/10 adds 5 to the top. Multiply instead: 4 × 2 = 8.")
  (hint "5 × 2 = 10."))
```

```check
(number
  (ask "1/4 = ?/12")
  (answer 3) (from "1 * 3") (true "1/4 = 3/12")
  (wrong-if 9 "9 adds 8 to the top, as 12 adds 8 to 4. But 4 × 3 = 12, so multiply the 1 by 3.")
  (wrong-if 1 "The bottom was multiplied by 3. The top must be too.")
  (hint "4 × ? = 12"))
```

---

```check
(number
  (ask "2/3 = 8/?")
  (answer 12) (from "3 * 4") (true "2/3 = 8/12")
  (wrong-if 9 "9 adds 6 to the bottom, as 8 adds 6 to the top. But 2 × 4 = 8, so multiply 3 by 4.")
  (wrong-if 3 "The top was multiplied by 4. The bottom must be multiplied by 4 too.")
  (hint "2 × ? = 8. Do the same to the 3."))
```

```check
(choice (several)
  (ask "Which are equivalent to" (math "2/3") "? Choose all.")
  (right "4/6" (true "2/3 = 4/6"))
  (right "8/12" (true "2/3 = 8/12"))
  (wrong "4/5" (false "2/3 = 4/5")
    "4/5 is 2 more on the top and the bottom. Adding does not keep the amount. Multiplying does.")
  (wrong "2/6" (false "2/3 = 2/6")
    "Only the denominator was multiplied, so each part is smaller. 2/6 is half of 2/3.")
  (hint "Are the top and the bottom each multiplied by the same number?"))
```

So: multiply the numerator and the denominator by the same number to
make an equivalent fraction.
