# Same size

```lesson
(objective "Show with fraction strips that two fractions are the same size.")
(standards "3.NF.A.3a")
(minutes 20)
(keywords "equivalent (fractions)")
```

Two different fractions can be the same size. Fraction strips show it.

Look at the 2 strips. They are the same length. The top one has $1/2$
shaded. The bottom one has $2/4$ shaded. The shaded parts end at the
same place.

```figure
(frac-bar 0 2 1 'warm "1/2")
(frac-bar 1 4 2 'warm "2/4")
(line 188 14 188 112 'ink 1)
(caption "The shaded parts are the same length.")
```

```check
(choice
  (ask "Is" (math "2/4") "of a strip the same length as" (math "1/2") "of the same strip?")
  (right "Yes: the shaded parts end at the same place")
  (wrong "No: 2/4 has more parts"
    "2/4 has 2 parts, but they are smaller parts. Together they are just as long as 1 half.")
  (wrong "No: 2/4 is bigger because 4 is bigger than 2"
    "The 4 makes the parts smaller, not bigger. Look at the strips: the shaded parts are the same length.")
  (hint "Look at where each shaded part ends."))
```

---

## Equivalent fractions

Fractions that are the same size are **equivalent**. $1/2$ and $2/4$
are equivalent. You write $1/2 = 2/4$.

Choose a pair. Are the shaded parts the same length?

```figure
(define c (choice 'pair '("1/2 3/6" "1/3 2/6" "3/4 6/8" "1/2 2/3")))
(define p (list-ref '((1 2 3 6) (1 3 2 6) (3 4 6 8) (1 2 2 3)) c))
(define a (car p)) (define b (cadr p)) (define d (caddr p)) (define e (cadddr p))
(frac-bar 0 b a 'warm (fr-s a b))
(frac-bar 1 e d 'cool (fr-s d e))
(text 188 160 (if (= (* a e) (* b d)) "Same length: equivalent" "Not the same length") 'centre 'body 'bold)
```

```check
(choice
  (ask "Which pair is NOT equivalent?")
  (right "1/2 and 2/3" (false "1/2 = 2/3"))
  (wrong "1/3 and 2/6" (true "1/3 = 2/6")
    "Choose that pair in the figure. 2 sixths fill the same length as 1 third, so they are equivalent.")
  (wrong "3/4 and 6/8" (true "3/4 = 6/8")
    "Choose that pair. 6 eighths fill the same length as 3 fourths, so they are equivalent.")
  (hint "Try each pair in the figure."))
```

---

## Equal size needs the same whole

Strips can show equivalent fractions only if they are the same
length. $1/2$ of a short strip is not as long as $2/4$ of a long one.

```check
(choice
  (ask "Tom shades 1/2 of a short strip. Ana shades 2/4 of a long strip. Can they use the strips to show that 1/2 = 2/4?")
  (right "No: the strips must be the same length")
  (wrong "Yes: any strips will do"
    "The wholes must be the same. Half of a short strip is shorter than 2/4 of a long strip, though 1/2 = 2/4.")
  (hint "What must be the same for the shaded parts to be compared?"))
```

---

## Worked example

```example
(example
(problem "Use strips to show that 1/3 and 2/6 are equivalent.")
(step "Take 2 strips of the same length.")
(step "Cut one into 3 equal parts and shade 1. Cut the other into 6 equal parts and shade 2.")
(step "The shaded parts end at the same place.")
(answer "1/3 = 2/6: they are equivalent."))
```

```example
(example
(problem "Use strips to check whether 2/3 and 2/4 are equivalent.")
(step "Take 2 strips of the same length. Shade 2/3 of one and 2/4 of the other.")
(step (choice (ask "The 2/3 part is longer. Are they equivalent?")
  (right "No")
  (wrong "Yes, both have 2 parts shaded"
    "Both have 2 parts, but thirds are bigger than fourths. The shaded parts are not the same length.")))
(answer "2/3 and 2/4 are not equivalent."))
```

---

## Practice

```figure
(frac-bar 0 4 1 'warm "1/4")
(frac-bar 1 8 0 'cool)
(caption "Two strips of the same length.")
```

```check
(fraction
  (ask "The bottom strip is in eighths. How many eighths are equivalent to" (math "1/4") "? Write it as a fraction.")
  (answer 2 8) (true "1/4 = 2/8")
  (wrong-if (1 8) "1/8 is only half as long as 1/4. You need 2 eighths to fill 1 fourth.")
  (wrong-if (4 8) "4/8 is as long as 1/2. Look at where 1/4 ends on the top strip.")
  (hint "How many eighths fit under the shaded fourth?"))
```

---

```check
(fraction
  (ask "How many sixths are equivalent to" (math "1/2") "? Write it as a fraction with denominator 6.")
  (answer 3 6) (true "1/2 = 3/6")
  (wrong-if (2 6) "2/6 is the same as 1/3. 1 half of a strip is as long as 3 sixths.")
  (wrong-if (1 6) "1/6 is much shorter than 1/2. Picture a strip in sixths: half of it is 3 parts.")
  (hint "6 sixths make the whole. Half of that is how many?"))
```

So: fractions that are the same size of the same whole are
equivalent, like $1/2 = 2/4$.
