# Multiples of a unit fraction

```lesson
(objective "Write a fraction as a multiple of a unit fraction, such as 5/4 = 5 x 1/4.")
(standards "4.NF.B.4a")
(minutes 20)
```

You can write any fraction as a number times a unit fraction.

You know that $5/4 = 1/4 + 1/4 + 1/4 + 1/4 + 1/4$. Adding the same
number 5 times is the same as multiplying it by 5. So:

$$ 5/4 = 5 * (1/4) $$

$5/4$ is a multiple of $1/4$, as 15 is a multiple of 3.

```figure
(m4p3-line 30 290 110 2 4 'whole)
(m4p3-jumps 0 5 4 'warm)
(nl-mark (/ 5 4) 'warm)
(math (nl-x (/ 5 4)) 160 "5/4" 16)
(caption "5 jumps of 1/4 land on 5/4.")
```

```check
(number
  (ask "7/8 = ? × 1/8")
  (answer 7) (true "7/8 = 7 * 1/8")
  (wrong-if 8 "8 × 1/8 = 8/8, one whole. 7/8 is 7 eighths.")
  (wrong-if 1 "1 × 1/8 is just 1/8. 7/8 has 7 of them.")
  (hint "How many eighths are in 7/8?"))
```

---

## The numerator is the multiplier

In $a/b$, the numerator $a$ says how many times $1/b$ is taken. Move
the slider.

```figure
(define n (slider 'n 1 10 3 "Thirds" 1))
(m4p3-line 30 290 110 4 3 'whole)
(m4p3-jumps 0 n 3 'warm)
(math 160 200 (string-append (m4p3-s n 3) " = " (fmt n 0) " * (1/3)") 22)
```

```check
(choice
  (ask "Which is the same as" (math "4/3") "?")
  (right "4 × 1/3" (true "4/3 = 4 * 1/3"))
  (wrong "3 × 1/4" (false "4/3 = 3 * 1/4")
    "That is 3 fourths. 4/3 is 4 thirds: the unit fraction is 1/3.")
  (wrong "4 × 1/4" (false "4/3 = 4 * 1/4")
    "4 × 1/4 = 4/4. The parts of 4/3 are thirds, not fourths.")
  (hint "The denominator tells the unit fraction. The numerator tells how many."))
```

---

## Worked example

```example
(example
  (problem "Write 6/5 as a whole number times a unit fraction.")
  (step "The unit fraction is 1/5.")
  (step "There are 6 of them.")
  (answer "6/5 = 6 × 1/5."))
```

```example
(example
  (problem "Write 9/10 as a whole number times a unit fraction.")
  (step "The unit fraction is 1/10.")
  (step (number (ask "9/10 = ? × 1/10")
    (answer 9) (true "9/10 = 9 * 1/10")
    (wrong-if 10 "10 × 1/10 = 1. 9/10 has 9 tenths.")))
  (answer "9/10 = 9 × 1/10."))
```

---

## Practice

```check
(fraction
  (ask "Write" (math "3 * (1/5)") "as one fraction.")
  (answer 3 5) (equivalent) (true "3 * 1/5 = 3/5")
  (wrong-if (3 15) "You multiplied the denominator too. 3 fifths is 3/5.")
  (wrong-if (1 15) "Taking 1/5 three times makes more, not less.")
  (hint "3 fifths."))
```

```check
(fraction
  (ask "Write" (math "11 * (1/6)") "as one fraction.")
  (answer 11 6) (equivalent) (true "11 * 1/6 = 11/6")
  (wrong-if (11 66) "Only the number of parts grows. Each part is still 1/6.")
  (hint "11 sixths."))
```

---

```check
(number
  (ask "12/5 = ? × 1/5")
  (answer 12) (true "12/5 = 12 * 1/5")
  (wrong-if 5 "5 × 1/5 = 1 whole. 12/5 has 12 fifths.")
  (hint "Count the fifths in 12/5."))
```

```check
(choice
  (ask "Which fraction is a multiple of" (math "1/8") "?")
  (right "5/8" (true "5/8 = 5 * 1/8"))
  (wrong "5/6" (false "5/6 = 5 * 1/8")
    "5/6 is made of sixths. Multiples of 1/8 are eighths.")
  (wrong "1/5" (false "1/5 = 5 * 1/8")
    "1/5 is a fifth. 5 × 1/8 is 5/8.")
  (hint "Which one is made of eighths?"))
```

So: a fraction $a/b$ is $a$ times the unit fraction $1/b$.
