# Same numerator

```lesson
(objective "Compare two fractions with the same numerator.")
(standards "3.NF.A.3d")
(minutes 20)
```

Two fractions can have the same numerator. Then they have the same
number of parts. The one with bigger parts is greater. Bigger parts
come from a smaller denominator.

$$ 2/3 > 2/6 $$

```figure
(define c (choice 'b '("2" "3" "4" "6" "8") "Bottom strip"))
(define b (list-ref '(2 3 4 6 8) c))
(frac-bar 0 3 1 'warm "1/3")
(frac-bar 1 b 1 'cool (fr-s 1 b))
(math 160 170 (string-append "1/3" (cond ((< b 3) " < ") ((> b 3) " > ") (else " = ")) (fr-s 1 b)) 26)
(caption "Two strips of the same length, 1 part shaded on each.")
```

```check
(choice
  (ask "Which is greater:" (math "1/3") "or" (math "1/8") "?")
  (right "1/3" (true "1/3 > 1/8"))
  (wrong "1/8" (false "1/8 > 1/3")
    "8 is bigger than 3, but it is the number of parts. Cutting the same strip into 8 parts makes each part smaller.")
  (hint "Choose 8 in the figure. Which shaded part is longer?"))
```

---

## The bigger-number trap

Some people think a bigger denominator means a bigger fraction. It is
the other way. The denominator tells how many parts the whole has.
More parts means smaller parts.

```figure
(frac-bar 0 4 3 'warm "3/4")
(frac-bar 1 8 3 'cool "3/8")
(caption "3 parts each, but fourths are bigger than eighths.")
```

```check
(choice
  (ask "Sam says" (math "3/8 > 3/4") "because 8 is bigger than 4. Is Sam right?")
  (right "No: eighths are smaller parts, so 3/8 < 3/4" (true "3/8 < 3/4"))
  (wrong "Yes: 8 is bigger than 4" (false "3/8 > 3/4")
    "A bigger denominator means the whole is cut into more, smaller parts. 3 small parts are less than 3 big parts.")
  (wrong "They are equal: both have 3 parts" (false "3/8 = 3/4")
    "Both have 3 parts, but the parts are different sizes. Fourths are twice as big as eighths.")
  (hint "Look at the strips. Which shaded part is longer?"))
```

---

## Worked example

```example
(example
(problem "Compare 2/4 and 2/6.")
(step "Same numerator: both are 2 parts.")
(step "Fourths are bigger than sixths: a whole cut into 4 parts has bigger parts than a whole cut into 6.")
(answer "2/4 > 2/6."))
```

```example
(example
(problem "Compare 5/8 and 5/6.")
(step "Same numerator: both are 5 parts.")
(step (choice (ask "Which parts are bigger, sixths or eighths?")
  (right "Sixths")
  (wrong "Eighths"
    "Eighths cut the whole into more parts, so each one is smaller.")))
(answer "5/6 > 5/8, or 5/8 < 5/6."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "1/2") "?" (math "1/4"))
  (right ">" (true "1/2 > 1/4"))
  (wrong "<" (false "1/2 < 1/4")
    "4 is bigger than 2, but a fourth is smaller than a half. 1 half is more than 1 fourth.")
  (wrong "=" (false "1/2 = 1/4")
    "Both are 1 part, but the parts are different sizes.")
  (hint "Which is bigger: half of a sandwich or a fourth of it?"))
```

```check
(choice
  (ask "Which fraction is the least?")
  (right "2/8" (true "2/8 < 2/6") (true "2/8 < 2/3"))
  (wrong "2/3" (false "2/3 < 2/8")
    "Thirds are the biggest parts here. 2 thirds is the greatest, not the least.")
  (wrong "2/6" (false "2/6 < 2/8")
    "Sixths are smaller than thirds, but eighths are smaller still.")
  (hint "All have 2 parts. Which parts are the smallest?"))
```

---

```check
(choice
  (ask "Kai runs" (math "3/4") "of a mile. Mia runs" (math "3/6") "of a mile. Who runs farther?")
  (right "Kai" (true "3/4 > 3/6"))
  (wrong "Mia" (false "3/6 > 3/4")
    "6 is bigger than 4, but sixths of a mile are shorter than fourths. 3 fourths is farther.")
  (hint "Both ran 3 parts of a mile. Whose parts are longer?"))
```

So: with the same numerator, the smaller denominator wins. Its parts
are bigger.
