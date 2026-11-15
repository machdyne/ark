# Comparing with a half

```lesson
(objective "Compare two fractions when one is less than 1/2 and the other is greater, such as 3/8 and 4/6.")
(standards "4.NF.A.2")
(minutes 20)
```

You can compare 2 fractions by using $1/2$ as a benchmark.

Compare $3/8$ and $4/6$. Half of 8 is 4, and 3 is less: $3/8 < 1/2$.
Half of 6 is 3, and 4 is more: $4/6 > 1/2$. So $3/8$ is less than a
half and $4/6$ is more.

$$ 3/8 < 1/2 < 4/6 $$

```figure
(frac-bar 0 8 3 'warm "3/8")
(frac-bar 1 6 4 'cool "4/6")
(line 188 12 188 116 'ink 2)
(math 188 140 "1/2" 18)
(caption "Bars of the same length, cut at 1/2")
```

```check
(choice
  (ask "Which sign makes this true?" (math "3/8") "?" (math "4/6"))
  (right "<" (true "3/8 < 4/6"))
  (wrong ">" (false "3/8 > 4/6")
    "8 is more than 6, but that does not make 3/8 bigger. 3/8 is less than a half and 4/6 is more.")
  (wrong "=" (false "3/8 = 4/6")
    "One is less than a half and the other is more, so they cannot be equal.")
  (hint "Compare each one with 1/2."))
```

---

## On a number line

On a line from 0 to 1, a fraction less than $1/2$ is left of the middle.
A fraction greater than $1/2$ is right of it. So the one past the middle
is the greater one.

```figure
(define c (choice 'pair '("2/5 7/12" "1/3 5/8" "4/10 3/4") "Pair"))
(define p (list-ref '((2 5 7 12) (1 3 5 8) (4 10 3 4)) c))
(number-line 30 290 120 0 1 1)
(line 160 100 160 140 'ink 2.5)
(math 160 168 "1/2" 18)
(nl-mark (/ (car p) (cadr p)) 'warm)
(math (nl-x (/ (car p) (cadr p))) 90 (m4p2-s (car p) (cadr p)) 18)
(nl-mark (/ (caddr p) (cadddr p)) 'cool)
(math (nl-x (/ (caddr p) (cadddr p))) 90 (m4p2-s (caddr p) (cadddr p)) 18)
```

```check
(choice
  (ask "Which is greater:" (math "2/5") "or" (math "7/12") "?")
  (right "7/12" (true "7/12 > 2/5"))
  (wrong "2/5"
    "2/5 has a smaller denominator, so its parts are bigger. But it has only 2 of them: less than half. 7/12 is more than half.")
  (wrong "They are equal"
    "2/5 is less than 1/2, and 7/12 is more than 1/2. They are on opposite sides of the middle.")
  (hint "Compare each one with 1/2."))
```

---

## When a half does not help

$5/8$ and $4/6$ are both greater than $1/2$. Knowing that does not tell
you which is greater. You need another way, which the next lessons
teach.

```check
(choice
  (ask "Can comparing with" (math "1/2") "tell you which is greater:" (math "1/3") "or" (math "2/5") "?")
  (right "No: both are less than 1/2" (true "1/3 < 1/2") (true "2/5 < 1/2"))
  (wrong "Yes: 2/5 is greater, as 5 is more than 3"
    "Both fractions are on the same side of 1/2, so the benchmark cannot decide. A bigger denominator alone means smaller parts.")
  (wrong "Yes: they are on opposite sides of 1/2"
    "Half of 3 is 1 and a half, and 1 is less. Half of 5 is 2 and a half, and 2 is less. Both are less than 1/2.")
  (hint "Compare each with 1/2. Are they on opposite sides?"))
```

---

## The same whole

A comparison like $3/8 < 4/6$ is about the same whole: bars of the same
length, or one number line. $3/8$ of a long rope can be more than $4/6$
of a short one.

```check
(choice
  (ask "Kai eats" (math "3/8") "of a large pizza. Lu eats" (math "4/6") "of a small pizza. Can you say Lu eats more?")
  (right "No: the pizzas are different sizes")
  (wrong "Yes: 4/6 > 3/8"
    "4/6 > 3/8 is true for the same whole. Here the wholes differ, so the fractions alone cannot decide.")
  (wrong "Yes: Lu has more slices"
    "Lu eats 4 slices and Kai eats 3, but the slices are of different pizzas. The wholes must be the same size.")
  (hint "Are the 2 wholes the same size?"))
```

---

## Worked example

```example
(example
  (problem "Compare 5/12 and 3/4 of the same garden.")
  (step "Half of 12 is 6. 5 is less, so 5/12 < 1/2.")
  (step "Half of 4 is 2. 3 is more, so 3/4 > 1/2.")
  (step "So 5/12 < 1/2 < 3/4.")
  (answer "5/12 < 3/4."))
```

```example
(example
  (problem "Compare 6/10 and 2/6 of the same rope.")
  (step "Half of 10 is 5. 6 is more, so 6/10 > 1/2.")
  (step "Half of 6 is 3. 2 is less, so 2/6 < 1/2.")
  (step (choice (ask "Which sign makes 6/10 ? 2/6 true?")
    (right ">")
    (wrong "<"
      "6/10 is more than a half and 2/6 is less. So 6/10 is greater.")))
  (answer "6/10 > 2/6."))
```

---

## Practice

```check
(choice
  (ask "Which sign makes this true?" (math "5/6") "?" (math "3/10"))
  (right ">" (true "5/6 > 3/10"))
  (wrong "<" (false "5/6 < 3/10")
    "10 is bigger than 6, but tenths are smaller parts. 5/6 is more than a half, and 3/10 is less.")
  (wrong "=" (false "5/6 = 3/10")
    "They are on opposite sides of 1/2, so they are not equal.")
  (hint "Half of 6 is 3. Half of 10 is 5."))
```

```check
(choice
  (ask "Which is greater:" (math "2/8") "or" (math "2/3") "?")
  (right "2/3" (true "2/3 > 2/8"))
  (wrong "2/8"
    "8 is bigger than 3, but eighths are smaller than thirds. 2/8 is less than a half, and 2/3 is more.")
  (wrong "They are equal"
    "Both have 2 on top, but the parts are different sizes. 2/8 < 1/2 < 2/3.")
  (hint "Compare each with 1/2."))
```

---

```check
(choice
  (ask "Which fraction is greater than" (math "4/10") "?")
  (right "7/12" (true "7/12 > 4/10"))
  (wrong "1/3" (false "1/3 > 4/10")
    "1/3 and 4/10 are both less than 1/2, and 1/3 is in fact less. Look for one that is more than 1/2.")
  (wrong "2/5" (false "2/5 > 4/10")
    "2/5 = 4/10: they are equal, not greater.")
  (hint "4/10 is less than 1/2. Find a fraction greater than 1/2."))
```

```check
(choice
  (ask "Which sign makes this true?" (math "1/4") "?" (math "5/8"))
  (right "<" (true "1/4 < 5/8"))
  (wrong ">" (false "1/4 > 5/8")
    "1/4 is less than a half. Half of 8 is 4, so 5/8 is more than a half.")
  (wrong "=" (false "1/4 = 5/8")
    "1/4 = 2/8, not 5/8.")
  (hint "Compare each with 1/2."))
```

So: when one fraction is less than $1/2$ and the other is more, the
second one is greater.
