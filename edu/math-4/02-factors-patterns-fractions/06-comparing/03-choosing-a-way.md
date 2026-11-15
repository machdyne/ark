# Choosing a way

```lesson
(objective "Choose a way to compare two fractions (a benchmark, a common denominator or a common numerator) and record the result with >, = or <.")
(standards "4.NF.A.2")
(minutes 25)
```

You can choose the quickest way to compare 2 fractions.

Look at the fractions first:

- One less than $1/2$, one more? Use the benchmark $1/2$.
- Both just short of 1? Compare the missing parts.
- One numerator a multiple of the other? Use a common numerator.
- Otherwise, use a common denominator.

```check
(choice
  (ask "Which way is quickest for" (math "3/8") "and" (math "5/6") "?")
  (right "The benchmark 1/2: 3/8 is less, 5/6 is more" (true "3/8 < 1/2") (true "5/6 > 1/2"))
  (wrong "A common numerator"
    "3 is not a factor of 5, so a common numerator is hard here. 3/8 < 1/2 < 5/6 is quicker.")
  (wrong "Compare the denominators: 8 is more"
    "The denominators alone do not decide. Compare each one with 1/2.")
  (hint "Is each fraction more or less than 1/2?"))
```

---

## More than one way can work

$2/3$ and $4/10$: 4 is a multiple of 2, so a common numerator works:
$2/3 = 4/6$, and $4/6 > 4/10$. A half works too: $2/3 > 1/2 > 4/10$.
Either way, $2/3 > 4/10$.

```check
(choice
  (ask "Which way fits" (math "5/6") "and" (math "7/12") "best?")
  (right "A common denominator: 12" (true "5/6 = 10/12"))
  (wrong "The benchmark 1/2"
    "Both are more than 1/2, so the benchmark cannot decide. 12 is a multiple of 6: use twelfths.")
  (wrong "A common numerator"
    "5 and 7 have no easy common multiple for the numerators. A common denominator of 12 is quick.")
  (hint "Is 12 a multiple of 6?"))
```

---

## Writing the result

Write the result with >, = or <. The open side faces the greater
fraction: $4/10 < 2/3$ says the same as $2/3 > 4/10$.

```check
(choice
  (ask "Which says the same as" (math "5/8 > 1/3") "?")
  (right "1/3 < 5/8" (true "1/3 < 5/8"))
  (wrong "1/3 > 5/8" (false "1/3 > 5/8")
    "Turning the fractions around turns the sign too. 5/8 is greater, so the open side faces 5/8.")
  (wrong "5/8 < 1/3" (false "5/8 < 1/3")
    "That says 5/8 is less. The open side must face the greater fraction, 5/8.")
  (hint "Which fraction is greater? The open side faces it."))
```

---

## Show it with a model

A model of the same whole shows the comparison is true. Choose a pair.

```figure
(define c (choice 'pair '("A" "B" "C" "D") "Pair"))
(define p (list-ref '((2 3 4 10) (5 6 7 12) (3 4 5 8) (2 5 4 10)) c))
(define a (car p)) (define b (cadr p)) (define d (caddr p)) (define e (cadddr p))
(define s (cond ((> (* a e) (* b d)) " > ") ((< (* a e) (* b d)) " < ") (else " = ")))
(frac-bar 0 b a 'warm (m4p2-s a b))
(frac-bar 1 e d 'cool (m4p2-s d e))
(math 188 170 (string-append (m4p2-s a b) s (m4p2-s d e)) 26)
(caption "Bars of the same length")
```

```check
(choice
  (ask "Which sign makes this true?" (math "3/4") "?" (math "5/8"))
  (right ">" (true "3/4 > 5/8"))
  (wrong "<" (false "3/4 < 5/8")
    "5/8 has bigger numbers, but 3/4 = 6/8. 6 eighths are more than 5.")
  (wrong "=" (false "3/4 = 5/8")
    "3/4 = 6/8, not 5/8.")
  (hint "Write 3/4 in eighths, or choose pair C in the figure."))
```

---

## Worked example

```example
(example
  (problem "Compare 4/5 and 9/10. Choose a way, and write the result.")
  (step "Both are just short of 1. 4/5 is missing 1/5. 9/10 is missing 1/10.")
  (step "1/10 is smaller, so 9/10 is closer to 1.")
  (step "Check with a common denominator: 4/5 = 8/10, and 8/10 < 9/10.")
  (answer "4/5 < 9/10."))
```

```example
(example
  (problem "Compare 1/3 and 4/6. Choose a way, and write the result.")
  (step "1/3 is less than 1/2. Half of 6 is 3, so 4/6 is more than 1/2.")
  (step (choice (ask "Which sign is right?")
    (right "1/3 < 4/6")
    (wrong "1/3 > 4/6"
      "1/3 is less than a half and 4/6 is more. So 1/3 is less.")))
  (answer "1/3 < 4/6."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "5/12") "?" (math "3/5"))
  (right "<" (true "5/12 < 3/5"))
  (wrong ">" (false "5/12 > 3/5")
    "Half of 12 is 6, so 5/12 is less than 1/2. Half of 5 is 2 and a half, so 3/5 is more.")
  (wrong "=" (false "5/12 = 3/5")
    "They are on opposite sides of 1/2, so they cannot be equal.")
  (hint "Compare each with 1/2."))
```

```check
(choice
  (ask "Which sign makes this true?" (math "6/8") "?" (math "9/12"))
  (right "=" (true "6/8 = 9/12"))
  (wrong ">" (false "6/8 > 9/12")
    "Write both in simplest form: 6/8 = 3/4 and 9/12 = 3/4. They are equal.")
  (wrong "<" (false "6/8 < 9/12")
    "9/12 has bigger numbers, but 9/12 = 3/4 and 6/8 = 3/4.")
  (hint "Write each in simplest form."))
```

---

```check
(choice
  (ask "Which sign makes this true?" (math "2/6") "?" (math "2/5"))
  (right "<" (true "2/6 < 2/5"))
  (wrong ">" (false "2/6 > 2/5")
    "Same numerator: 2 parts each. Sixths are smaller than fifths, so 2/6 is less.")
  (wrong "=" (false "2/6 = 2/5")
    "Both are 2 parts, but the parts differ in size.")
  (hint "The numerators are the same. Which parts are bigger?"))
```

```check
(choice
  (ask "Which sign makes this true?" (math "7/8") "?" (math "5/6"))
  (right ">" (true "7/8 > 5/6"))
  (wrong "<" (false "7/8 < 5/6")
    "7/8 is missing 1/8 and 5/6 is missing 1/6. An eighth is smaller, so 7/8 is closer to 1.")
  (wrong "=" (false "7/8 = 5/6")
    "Each is missing 1 part, but 1/8 and 1/6 are different sizes.")
  (hint "What is each one missing to make 1?"))
```

So: choose the quickest way to compare. Write the result with >, = or <,
and check it with a model.
