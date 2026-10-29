# Same denominator

```lesson
(objective "Compare two fractions with the same denominator.")
(standards "3.NF.A.3d")
(minutes 20)
```

When two fractions have the same denominator, the parts are the same
size. Then the fraction with more parts is greater.

$$ 3/4 > 2/4 $$

The sign > means "is greater than". The sign < means "is less than".
The open side faces the greater number.

```figure
(define a (slider 'a 1 8 5 "Top" 1))
(define c (slider 'c 1 8 3 "Bottom" 1))
(frac-bar 0 8 a 'warm (fr-s a 8))
(frac-bar 1 8 c 'cool (fr-s c 8))
(math 160 170 (string-append (fr-s a 8) (cond ((> a c) " > ") ((< a c) " < ") (else " = ")) (fr-s c 8)) 26)
(caption "Two strips of the same length, both in eighths.")
```

```check
(choice
  (ask "Which is greater:" (math "3/8") "or" (math "5/8") "?")
  (right "5/8" (true "5/8 > 3/8"))
  (wrong "3/8" (false "3/8 > 5/8")
    "Both are eighths, so every part is the same size. 5 parts are more than 3 parts.")
  (wrong "They are equal" (false "3/8 = 5/8")
    "The parts are the same size, but there are more of them in 5/8. So 5/8 is greater.")
  (hint "Set the sliders to 3 and 5. Which strip has more shaded?"))
```

---

## Writing it with a sign

Write the fractions with >, < or = between them. Read it from
left to right: "$2/6 < 5/6$" says "2 sixths is less than 5 sixths".

```check
(choice
  (ask "Which is true?")
  (right "2/6 < 5/6" (true "2/6 < 5/6"))
  (wrong "2/6 > 5/6" (false "2/6 > 5/6")
    "The open side of > faces the greater number. 5/6 is greater, so the open side must face 5/6.")
  (wrong "2/6 = 5/6" (false "2/6 = 5/6")
    "The parts are the same size, but 5 parts are more than 2. They are not equal.")
  (hint "Which has more sixths?"))
```

---

## Worked example

```example
(example
(problem "Compare 1/3 and 2/3.")
(step "Same denominator: both are thirds, so the parts are the same size.")
(step "2 parts are more than 1 part.")
(answer "2/3 > 1/3, or 1/3 < 2/3."))
```

```example
(example
(problem "Compare 7/8 and 4/8.")
(step "Same denominator: both are eighths.")
(step (choice (ask "Which has more parts?")
  (right "7/8")
  (wrong "4/8"
    "4 parts are fewer than 7 parts of the same size.")))
(answer "7/8 > 4/8."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "3/4") "?" (math "1/4"))
  (right ">" (true "3/4 > 1/4"))
  (wrong "<" (false "3/4 < 1/4")
    "3 fourths are more than 1 fourth. The open side faces the greater number, 3/4.")
  (wrong "=" (false "3/4 = 1/4")
    "The parts are the same size, but 3 is more than 1. They are not equal.")
  (hint "Both are fourths. Which has more?"))
```

```check
(fraction
  (ask "Write a fraction in sixths that is greater than" (math "4/6") "but less than 1 whole.")
  (answer 5 6) (true "4/6 < 5/6") (true "5/6 < 1")
  (wrong-if (3 6) "3/6 is less than 4/6. You need more sixths, but fewer than 6.")
  (wrong-if (6 6) "6/6 is the whole. The question asks for less than 1 whole.")
  (hint "Count on from 4 sixths, but stop before 6 sixths."))
```

---

```check
(choice
  (ask "Lily paints" (math "2/8") "of a fence. Ben paints" (math "5/8") "of the same fence. Who paints more?")
  (right "Ben" (true "5/8 > 2/8"))
  (wrong "Lily" (false "2/8 > 5/8")
    "Both are eighths of the same fence, so the parts are the same size. Ben paints 5 parts and Lily 2.")
  (hint "Same fence, same denominator. Compare the numerators."))
```

So: with the same denominator, the fraction with the greater
numerator is greater.
