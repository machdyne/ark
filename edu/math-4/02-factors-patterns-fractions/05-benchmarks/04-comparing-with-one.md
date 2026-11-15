# Comparing with 1

```lesson
(objective "Compare two fractions just less than 1 by the size of the part each is missing, such as 5/6 and 7/8.")
(standards "4.NF.A.2")
(minutes 20)
```

You can compare 2 fractions close to 1 by what each is missing.

$5/6$ and $7/8$ are both close to 1. $5/6$ is 1 sixth short of a whole.
$7/8$ is 1 eighth short of a whole. Look at the empty part of each bar.

```figure
(frac-bar 0 6 5 'warm "5/6")
(frac-bar 1 8 7 'cool "7/8")
(text 296 66 "missing 1 sixth" 'right 'small)
(text 296 122 "missing 1 eighth" 'right 'small)
(caption "Bars of the same length")
```

```check
(choice
  (ask "Which bar is missing the smaller part?")
  (right "7/8: an eighth is smaller than a sixth" (true "1/8 < 1/6"))
  (wrong "5/6: a sixth is smaller"
    "A whole cut into 6 parts has bigger parts than one cut into 8. So 1/6 is bigger than 1/8.")
  (hint "Which is smaller: 1/6 or 1/8 of the same bar?"))
```

---

## Less missing, more there

The bar that is missing less has more of it shaded. $7/8$ is missing
only $1/8$, which is less than $1/6$. So $7/8$ is closer to 1, and it
is greater.

$$ 7/8 > 5/6 $$

```check
(choice
  (ask "Which sign makes this true?" (math "3/4") "?" (math "9/10"))
  (right "<" (true "3/4 < 9/10"))
  (wrong ">" (false "3/4 > 9/10")
    "3/4 is missing 1/4, and 9/10 is missing only 1/10. A tenth is smaller, so 9/10 is closer to 1.")
  (wrong "=" (false "3/4 = 9/10")
    "Both are missing 1 part, but the parts are different sizes: 1/4 and 1/10.")
  (hint "What is each one missing to make 1?"))
```

---

## On a number line

Both points are just left of 1. The one closer to 1 is greater. Choose a
pair.

```figure
(define c (choice 'pair '("5/6 7/8" "2/3 4/5" "9/10 11/12") "Pair"))
(define p (list-ref '((5 6 7 8) (2 3 4 5) (9 10 11 12)) c))
(number-line 30 290 120 0 1 1)
(nl-mark (/ (car p) (cadr p)) 'warm)
(math (nl-x (/ (car p) (cadr p))) 90 (m4p2-s (car p) (cadr p)) 18)
(nl-mark (/ (caddr p) (cadddr p)) 'cool)
(math (nl-x (/ (caddr p) (cadddr p))) 168 (m4p2-s (caddr p) (cadddr p)) 18)
```

```check
(choice
  (ask "Which is greater:" (math "2/3") "or" (math "4/5") "?")
  (right "4/5: it is missing only 1/5" (true "4/5 > 2/3"))
  (wrong "2/3: thirds are bigger parts"
    "Thirds are bigger, and that is the trouble: 2/3 is missing a whole third. 4/5 is missing only a fifth.")
  (wrong "They are equal: each is missing 1 part"
    "Each is missing 1 part, but 1/3 is bigger than 1/5. So 2/3 is farther from 1.")
  (hint "Choose the pair 2/3 4/5. Which point is closer to 1?"))
```

---

## Missing more than 1 part

$4/6$ and $8/10$ are each missing 2 parts: 2 sixths and 2 tenths. 2
tenths are less than 2 sixths. So $8/10$ is missing less, and
$8/10 > 4/6$.

```check
(choice
  (ask "Which is greater:" (math "6/8") "or" (math "10/12") "?")
  (right "10/12: it is missing 2 twelfths, less than 2 eighths" (true "10/12 > 6/8"))
  (wrong "6/8: eighths are bigger"
    "Eighths are bigger, so 6/8 is missing more: 2 eighths. 10/12 is missing only 2 twelfths.")
  (wrong "They are equal: each is missing 2 parts"
    "Each is missing 2 parts, but twelfths are smaller than eighths. 10/12 is missing less.")
  (hint "Each is missing 2 parts. Which parts are smaller?"))
```

---

## Worked example

```example
(example
  (problem "Compare 9/10 and 11/12 of the same ribbon.")
  (step "9/10 is missing 1/10. 11/12 is missing 1/12.")
  (step "A twelfth is smaller than a tenth.")
  (step "So 11/12 is missing less, and is closer to 1.")
  (answer "11/12 > 9/10."))
```

```example
(example
  (problem "Compare 3/4 and 4/5 of the same garden.")
  (step "3/4 is missing 1/4. 4/5 is missing 1/5.")
  (step (choice (ask "Which missing part is smaller?")
    (right "1/5")
    (wrong "1/4"
      "A whole in 5 parts has smaller parts than one in 4. 1/5 is smaller.")))
  (answer "4/5 is missing less, so 4/5 > 3/4."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "7/8") "?" (math "11/12"))
  (right "<" (true "7/8 < 11/12"))
  (wrong ">" (false "7/8 > 11/12")
    "7/8 is missing 1/8, and 11/12 is missing 1/12. A twelfth is smaller, so 11/12 is greater.")
  (wrong "=" (false "7/8 = 11/12")
    "Each is missing 1 part, but the parts are different sizes.")
  (hint "Which is smaller: 1/8 or 1/12?"))
```

```check
(choice
  (ask "Which fraction is closest to 1?")
  (right "9/10" (true "9/10 > 5/6") (true "9/10 > 2/3"))
  (wrong "5/6"
    "5/6 is missing 1/6. 9/10 is missing only 1/10, which is smaller.")
  (wrong "2/3"
    "2/3 is missing 1/3, the biggest of the missing parts.")
  (hint "Which one is missing the smallest part?"))
```

---

```check
(choice
  (ask "Ty says" (math "4/5 > 5/6") "because fifths are bigger. Is he right?")
  (right "No: 4/5 is missing 1/5, more than the 1/6 that 5/6 is missing" (true "4/5 < 5/6"))
  (wrong "Yes: fifths are bigger, so 4 fifths is more"
    "Fifths are bigger, but 4/5 has 4 of them and 5/6 has 5 sixths. Look at what each is missing.")
  (hint "What does each one need to make 1?"))
```

```check
(choice
  (ask "Which sign makes this true?" (math "3/5") "?" (math "8/10"))
  (right "<" (true "3/5 < 8/10"))
  (wrong ">" (false "3/5 > 8/10")
    "3/5 is missing 2 fifths. 8/10 is missing 2 tenths, which is less. So 8/10 is greater.")
  (wrong "=" (false "3/5 = 8/10")
    "3/5 = 6/10, not 8/10.")
  (hint "Each is missing 2 parts. Which parts are smaller?"))
```

So: when 2 fractions are close to 1, the one missing the smaller part
is greater.
