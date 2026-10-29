# Choosing a way

```lesson
(objective "Choose a way to compare two fractions, write the result with >, = or <, and explain it with a model.")
(standards "3.NF.A.3d")
(minutes 25)
```

You can choose a way to compare two fractions. You write the answer
with >, = or <, and you show why.

First look at the 2 fractions:

- **Same denominator?** The parts are the same size. More parts is
  greater: $5/8 > 3/8$.
- **Same numerator?** The same number of parts. Bigger parts is
  greater: $3/4 > 3/8$.

```check
(choice
  (ask "Compare" (math "2/6") "and" (math "2/3") ". What is the same?")
  (right "The numerator: compare the size of the parts")
  (wrong "The denominator: compare the number of parts"
    "The denominators are 6 and 3, which are different. The numerators are both 2.")
  (hint "Look at the top numbers, then the bottom numbers."))
```

---

## Show it with a model

Check your answer with a model: 2 strips of the same length, or a
number line. Choose a pair and see both.

```figure
(define c (choice 'pair '("5/8 3/8" "3/4 3/8" "2/6 2/3" "2/4 1/2")))
(define p (list-ref '((5 8 3 8) (3 4 3 8) (2 6 2 3) (2 4 1 2)) c))
(define a (car p)) (define b (cadr p)) (define d (caddr p)) (define e (cadddr p))
(define s (cond ((> (* a e) (* b d)) " > ") ((< (* a e) (* b d)) " < ") (else " = ")))
(frac-bar 0 b a 'warm (fr-s a b))
(frac-bar 1 e d 'cool (fr-s d e))
(math 160 170 (string-append (fr-s a b) s (fr-s d e)) 26)
(caption "Strips of the same length.")
```

```check
(choice
  (ask "Which sign makes this true?" (math "2/4") "?" (math "1/2"))
  (right "=" (true "2/4 = 1/2"))
  (wrong ">" (false "2/4 > 1/2")
    "2/4 has bigger numbers, but its parts are smaller. On strips, 2/4 and 1/2 end at the same place.")
  (wrong "<" (false "2/4 < 1/2")
    "2 fourths fill exactly 1 half. They are equivalent, so they are equal.")
  (hint "Choose the last pair in the figure."))
```

---

## Worked example

```example
(example
(problem "Compare 4/6 and 4/8. Write it with a sign and explain.")
(step "Same numerator: both are 4 parts.")
(step "Sixths are bigger than eighths, so 4 sixths are more.")
(step "Model: on 2 strips of the same length, 4/6 reaches farther.")
(answer "4/6 > 4/8."))
```

```example
(example
(problem "Compare 1/3 and 2/3. Write it with a sign and explain.")
(step (choice (ask "What is the same?")
  (right "The denominator")
  (wrong "The numerator"
    "The numerators are 1 and 2. The denominators are both 3.")))
(step (choice (ask "So which is greater?")
  (right "2/3: more parts of the same size")
  (wrong "1/3: fewer parts"
    "The parts are the same size, so more parts is more. 2/3 is greater.")))
(answer "1/3 < 2/3. On a number line, 2/3 is farther right."))
```

---

## Practice

```check
(choice
  (ask "Which is true?")
  (right "5/6 > 5/8" (true "5/6 > 5/8"))
  (wrong "5/6 < 5/8" (false "5/6 < 5/8")
    "8 is bigger than 6, but eighths are smaller parts. 5 sixths are more than 5 eighths.")
  (wrong "5/6 = 5/8" (false "5/6 = 5/8")
    "Both are 5 parts, but the parts are different sizes.")
  (hint "Same numerator. Which parts are bigger?"))
```

```check
(choice
  (ask "Which sign makes this true?" (math "1/6") "?" (math "4/6"))
  (right "<" (true "1/6 < 4/6"))
  (wrong ">" (false "1/6 > 4/6")
    "Same denominator: the parts are the same size. 1 part is less than 4 parts.")
  (wrong "=" (false "1/6 = 4/6")
    "1 sixth and 4 sixths are different amounts.")
  (hint "Same denominator. Which has more parts?"))
```

---

```check
(choice
  (ask "Ivy says" (math "3/8 < 3/4") ". Which model shows she is right?")
  (right "Strips of the same length: 3/4 reaches farther")
  (wrong "A small strip in fourths and a long strip in eighths"
    "The strips must be the same length. With different wholes, the model cannot compare the fractions.")
  (wrong "Count the parts: 8 is more than 4"
    "Counting the parts compares the denominators. More parts means smaller parts, so this does not show it.")
  (hint "A fair model uses the same whole."))
```

```check
(choice
  (ask "Which sign makes this true?" (math "6/8") "?" (math "3/4"))
  (right "=" (true "6/8 = 3/4"))
  (wrong ">" (false "6/8 > 3/4")
    "6/8 has bigger numbers, but each eighth is half of a fourth. 6 eighths fill 3 fourths exactly.")
  (wrong "<" (false "6/8 < 3/4")
    "Cut each fourth into 2 eighths: 3/4 becomes 6/8. They are equal.")
  (hint "How many eighths fill 3 fourths?"))
```

So: same denominator, compare the numerators; same numerator, compare
the size of the parts; and check with a model of the same whole.
