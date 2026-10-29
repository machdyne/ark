# Thirds and sixths

```lesson
(objective "Find fractions equivalent to 1/3 and 2/3 in sixths.")
(standards "3.NF.A.3b")
(minutes 15)
```

You can find fractions in sixths that are equivalent to $1/3$ and
$2/3$.

Cut each third of a strip in half, and you get sixths. So each third
is 2 sixths. Move the slider.

```figure
(define k (slider 'k 1 2 1 "Thirds shaded" 1))
(frac-bar 0 3 k 'warm (fr-s k 3))
(frac-bar 1 6 (* 2 k) 'cool (fr-s (* 2 k) 6))
(line (+ 80 (* 72 k)) 14 (+ 80 (* 72 k)) 112 'ink 1)
(caption "Strips of the same length in thirds and sixths.")
```

```check
(fraction
  (ask "Write a fraction in sixths that is equivalent to" (math "1/3") ".")
  (answer 2 6) (true "1/3 = 2/6")
  (wrong-if (1 6) "A sixth is half of a third. So 1 third is 2 sixths, not 1.")
  (wrong-if (3 6) "3/6 is half the strip. 1/3 is shorter than half.")
  (hint "Each third is cut into 2 sixths."))
```

---

## Two thirds

$2/3$ is 2 thirds. Each third is 2 sixths, so 2 thirds are 4 sixths.

$$ 2/3 = 4/6 $$

```figure
(fr-line 40 280 70 1 3 'whole)
(fr-point 2 3 'warm)
(fr-line 40 280 160 1 6 'frac)
(nl-mark (/ 4 6) 'warm)
(line 200 76 200 154 'ink 1)
(caption "2/3 and 4/6 are at the same point.")
```

```check
(fraction
  (ask "Write a fraction in sixths that is equivalent to" (math "2/3") ".")
  (answer 4 6) (true "2/3 = 4/6")
  (wrong-if (2 6) "2/6 is 1/3. 2 thirds need twice as many sixths: 4.")
  (wrong-if (3 6) "3/6 is half. 2/3 is more than half.")
  (hint "2 groups of 2 sixths."))
```

---

## Back again

You can also go from sixths to thirds. 2 sixths fill 1 third. So
$4/6$ is 2 thirds, and $2/6$ is 1 third.

```check
(choice
  (ask "Which fraction is equivalent to" (math "2/6") "?")
  (right "1/3" (true "2/6 = 1/3"))
  (wrong "2/3" (false "2/6 = 2/3")
    "2/3 is twice as long as 2/6. Thirds are bigger parts, so you need only 1 third.")
  (wrong "1/6" (false "2/6 = 1/6")
    "1/6 is half of 2/6. You cannot drop a part and keep the same size.")
  (hint "2 sixths fill how many thirds?"))
```

---

## Worked example

```example
(example
(problem "Is 4/6 equivalent to 2/3?")
(step "Each third is 2 sixths.")
(step "2 thirds are 2 + 2 = 4 sixths.")
(answer "Yes: 2/3 = 4/6."))
```

```example
(example
(problem "Is 3/6 equivalent to 1/3?")
(step "1/3 is 2 sixths.")
(step (choice (ask "Is 3 sixths the same as 2 sixths?")
  (right "No")
  (wrong "Yes"
    "3 sixths is 1 sixth more than 2 sixths, so it is longer.")))
(answer "No: 3/6 is not equivalent to 1/3. (3/6 is equivalent to 1/2.)"))
```

---

## Practice

```check
(fraction
  (ask "Write a fraction in thirds that is equivalent to" (math "4/6") ".")
  (answer 2 3) (true "4/6 = 2/3")
  (wrong-if (4 3) "4/3 is more than 1 whole. 2 sixths make 1 third, so 4 sixths make 2 thirds.")
  (wrong-if (1 3) "1/3 is 2/6. 4/6 is twice as long.")
  (hint "2 sixths make 1 third."))
```

```check
(choice
  (ask "Mo says" (math "1/3 = 1/6") ". Is he right?")
  (right "No: 1/6 is half as long as 1/3" (false "1/3 = 1/6"))
  (wrong "Yes: both have 1 part" (false "1/3 = 1/6")
    "Both have 1 part, but a sixth is half of a third. 1/3 = 2/6.")
  (hint "Which is bigger: a third or a sixth of the same strip?"))
```

So: $1/3 = 2/6$ and $2/3 = 4/6$.
