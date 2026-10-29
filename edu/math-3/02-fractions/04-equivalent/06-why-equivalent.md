# Why they are equivalent

```lesson
(objective "Explain with a strip or a number line why two fractions are, or are not, equivalent.")
(standards "3.NF.A.3b")
(minutes 20)
```

You can explain with a strip or a number line why two fractions are,
or are not, equivalent.

Two fractions of the same whole are equivalent when they are the same
size. On strips, the shaded parts end at the same place. On a number
line, the points are at the same place.

```figure
(define c (choice 'pair '("2/4 4/8" "1/2 2/3" "2/3 4/6" "1/4 2/6")))
(define v (choice 'view '("Strips" "Lines")))
(define p (list-ref '((2 4 4 8) (1 2 2 3) (2 3 4 6) (1 4 2 6)) c))
(define a (car p)) (define b (cadr p)) (define d (caddr p)) (define e (cadddr p))
(if (= v 0)
    (begin (frac-bar 0 b a 'warm (fr-s a b)) (frac-bar 1 e d 'cool (fr-s d e)))
    (begin (fr-line 40 280 50 1 b 'whole) (fr-point a b 'warm)
           (fr-line 40 280 140 1 e 'whole) (fr-point d e 'cool)))
(text 188 200 (if (= (* a e) (* b d)) "Same place: equivalent" "Not the same: not equivalent") 'centre 'small 'bold)
```

```check
(choice
  (ask "Why is" (math "1/2") "NOT equivalent to" (math "2/3") "?")
  (right "2/3 of a strip is longer than 1/2 of it" (false "1/2 = 2/3"))
  (wrong "It is equivalent: add 1 to both numbers" (false "1/2 = 2/3")
    "Adding the same number to the top and bottom changes the size. Look at the strips: 2/3 reaches farther than 1/2.")
  (wrong "Because 2/3 has bigger numbers"
    "Bigger numbers alone do not tell you. 2/4 has bigger numbers than 1/2, and they are equivalent. Compare the sizes.")
  (hint "Choose 1/2, 2/3 in the figure. Do the shaded parts end at the same place?"))
```

---

## A good explanation

A good explanation says what you see in the model:

- "On strips of the same length, $2/4$ and $4/8$ end at the same
  place. So they are the same size."
- "On a number line, $2/3$ and $4/6$ are at the same point."

```check
(choice
  (ask "Which explanation shows that" (math "2/3 = 4/6") "?")
  (right "Each third is 2 sixths, so 2 thirds are 4 sixths")
  (wrong "Both have even numbers in them"
    "Even numbers do not make fractions equal. 2/4 and 2/6 both have even numbers, and they are not equivalent.")
  (wrong "4 and 6 are both bigger than 2 and 3"
    "Bigger numbers do not show that the sizes match. 4/8 has bigger numbers than 2/3 and is smaller. Show it with a strip or a number line.")
  (hint "A good explanation talks about the size of the parts."))
```

---

## Same numerator is not enough

$1/4$ and $1/6$ both have 1 part. But a sixth is smaller than a
fourth. So $1/4$ and $1/6$ are not equivalent.

```figure
(frac-bar 0 4 1 'warm "1/4")
(frac-bar 1 6 1 'cool "1/6")
(caption "The shaded parts end at different places.")
```

```check
(choice
  (ask "Are" (math "1/4") "and" (math "1/6") "equivalent?")
  (right "No: the parts are different sizes" (false "1/4 = 1/6"))
  (wrong "Yes: both are 1 part" (false "1/4 = 1/6")
    "Both are 1 part, but the parts are different sizes. On the strips, 1/4 reaches farther.")
  (hint "Look where each shaded part ends."))
```

---

## Worked example

```example
(example
(problem "Is 3/6 equivalent to 1/2? Explain with a number line.")
(step "Draw a line from 0 to 1 in sixths and mark 3/6.")
(step "3/6 is 3 of 6 parts: exactly halfway from 0 to 1.")
(step "1/2 is also halfway from 0 to 1.")
(answer "Yes. 3/6 and 1/2 are at the same point, so they are equivalent."))
```

```example
(example
(problem "Is 2/8 equivalent to 2/4? Explain with strips.")
(step "Shade 2/8 of one strip and 2/4 of a strip of the same length.")
(step (choice (ask "What do you see?")
  (right "2/4 is longer: fourths are bigger than eighths")
  (wrong "They end at the same place"
    "Picture the strips. 2 eighths fill only 1 fourth, so 2/8 is shorter than 2/4.")))
(answer "No. 2/8 is shorter than 2/4, so they are not equivalent."))
```

---

## Practice

```check
(choice
  (ask "Which pair is equivalent?")
  (right "3/4 and 6/8" (true "3/4 = 6/8"))
  (wrong "1/3 and 2/4" (false "1/3 = 2/4")
    "Adding 1 to the top and the bottom does not keep the size. 2/4 is half, and 1/3 is less than half.")
  (wrong "2/3 and 2/6" (false "2/3 = 2/6")
    "Both have 2 parts, but sixths are half as big as thirds. 2/6 is only 1/3.")
  (hint "Cut every part of 3/4 into 2. What do you get?"))
```

```check
(fraction
  (ask "Jen says" (math "1/2") "is equivalent to" (math "2/3") "because she added 1 to both numbers. Write the fraction in sixths that really is equivalent to" (math "1/2") ".")
  (answer 3 6) (true "1/2 = 3/6")
  (wrong-if (4 6) "4/6 is the same as 2/3, which is more than half. Half of 6 sixths is 3 sixths.")
  (wrong-if (2 6) "2/6 is the same as 1/3, which is less than half.")
  (hint "Half of a strip in sixths is how many sixths?"))
```

So: two fractions are equivalent when a strip or a number line shows
they are the same size, not because of how their numbers look.
