# Halves, fourths and eighths

```lesson
(objective "Find fractions equivalent to 1/2, 1/4 and 3/4 in fourths and eighths.")
(standards "3.NF.A.3b")
(minutes 20)
```

You can find fractions in fourths and eighths that are equivalent to
$1/2$, $1/4$ and $3/4$.

Each strip below is cut into twice as many parts as the one above it.
Choose a fraction and see its equivalents.

```figure
(define c (choice 'f '("1/2" "1/4" "3/4") "Fraction"))
(define q (list-ref '(4 2 6) c))
(if (= c 0) (frac-bar 0 2 1 'warm "1/2") (frac-bar 0 2 0 'warm))
(frac-bar 1 4 (/ q 2) 'warm (fr-s (/ q 2) 4))
(frac-bar 2 8 q 'warm (fr-s q 8))
(line (+ 80 (* 27 q)) 14 (+ 80 (* 27 q)) 194 'ink 1)
(caption "Strips of the same length in halves, fourths and eighths.")
```

```check
(fraction
  (ask "Choose 1/2 in the figure. How many eighths are equivalent to" (math "1/2") "? Write the fraction.")
  (answer 4 8) (true "1/2 = 4/8")
  (wrong-if (2 8) "2/8 is the same as 1/4. Half of a strip in eighths is 4 eighths.")
  (wrong-if (1 8) "1/8 is much shorter than 1/2. Count the eighths under the shaded half.")
  (hint "8 eighths make the whole. How many make half?"))
```

---

## The pattern

$$ 1/2 = 2/4 = 4/8 $$

Each time the parts are cut in half, there are twice as many shaded
parts. The size of the shaded part does not change.

```check
(fraction
  (ask "Write a fraction in eighths that is equivalent to" (math "1/4") ".")
  (answer 2 8) (true "1/4 = 2/8")
  (wrong-if (1 8) "Eighths are half the size of fourths. So 1 fourth is 2 eighths, not 1.")
  (wrong-if (4 8) "4/8 is the same as 1/2. 1/4 is half as long as that.")
  (hint "Picture a strip in fourths over a strip in eighths.")
  (hint "Each fourth is cut into 2 eighths."))
```

---

## Three fourths

$3/4$ is 3 fourths. Cut each fourth into 2 eighths, and you get 6
eighths.

$$ 3/4 = 6/8 $$

```figure
(frac-bar 0 4 3 'warm "3/4")
(frac-bar 1 8 6 'warm "6/8")
(line 242 14 242 112 'ink 1)
(caption "3/4 and 6/8 end at the same place.")
```

```check
(choice
  (ask "Ben says" (math "3/4 = 3/8") "because both have 3 parts. Is he right?")
  (right "No: eighths are smaller, so 3/8 is shorter" (false "3/4 = 3/8"))
  (wrong "Yes: they both have 3 parts" (false "3/4 = 3/8")
    "The numbers of parts match, but the parts are different sizes. Eighths are half as big as fourths. 3/4 = 6/8.")
  (hint "Picture 3 fourths and 3 eighths of the same strip."))
```

---

## Worked example

```example
(example
(problem "Find a fraction in fourths equivalent to 4/8.")
(step "2 eighths fill the same length as 1 fourth.")
(step "4 eighths is 2 groups of 2 eighths.")
(step "2 groups of 2 eighths fill 2 fourths.")
(answer "4/8 = 2/4."))
```

```example
(example
(problem "Find a fraction in eighths equivalent to 2/4.")
(step "Each fourth is cut into 2 eighths.")
(step (choice (ask "2 fourths is how many eighths?")
  (right "4")
  (wrong "2"
    "Each fourth is 2 eighths. 2 fourths is 2 groups of 2 eighths.")
  (wrong "3"
    "Each fourth is cut into 2 eighths, so 2 fourths make 2 + 2 eighths.")))
(answer "2/4 = 4/8."))
```

---

## Practice

```check
(fraction
  (ask "Write a fraction in fourths that is equivalent to" (math "6/8") ".")
  (answer 3 4) (true "6/8 = 3/4")
  (wrong-if (6 4) "6/4 is more than 1 whole. 2 eighths make 1 fourth, so 6 eighths make 3 fourths.")
  (wrong-if (2 4) "2/4 is 4/8. 6/8 is longer: 3 fourths.")
  (hint "2 eighths make 1 fourth."))
```

```check
(choice
  (ask "Which fraction is equivalent to" (math "1/2") "?")
  (right "2/4" (true "1/2 = 2/4"))
  (wrong "2/8" (false "1/2 = 2/8")
    "2/8 is the same as 1/4. Half of a strip in eighths is 4 eighths.")
  (wrong "1/4" (false "1/2 = 1/4")
    "1/4 is half of 1/2. A half is 2 fourths.")
  (hint "How many fourths fill 1 half?"))
```

---

```check
(fraction
  (ask "Write a fraction in fourths that is equivalent to" (math "2/8") ".")
  (answer 1 4) (true "2/8 = 1/4")
  (wrong-if (2 4) "2/4 is twice as long as 2/8. Fourths are bigger parts, so you need fewer of them.")
  (hint "2 eighths make 1 fourth."))
```

So: $1/2 = 2/4 = 4/8$, $1/4 = 2/8$ and $3/4 = 6/8$.
