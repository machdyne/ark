# Wholes over 1

```lesson
(objective "Write a whole number as a fraction over 1, such as 3 = 3/1.")
(standards "3.NF.A.3c")
(minutes 15)
```

You can write a whole number as a fraction with denominator 1:
$3 = 3/1$.

A denominator of 1 means each whole is in just 1 part: it is not cut.
So $3/1$ is 3 parts, each 1 whole. That is 3.

```figure
(define k (slider 'k 1 4 3 "Wholes" 1))
(for-range 0 k (lambda (i) (frac-bar-at (+ 30 (* 66 i)) 40 60 40 1 1 'warm)))
(fr-line 30 294 150 4 1 'whole)
(for-range 1 (+ k 1) (lambda (i) (nl-mark i 'warm)))
(math 160 205 (string-append (fmt k 0) " = " (fr-s k 1)) 24)
```

```check
(fraction
  (ask "Write 5 as a fraction with denominator 1.")
  (answer 5 1) (true "5/1 = 5")
  (wrong-if (1 5) "1/5 is a small part of 1 whole. 5 wholes, each in 1 part, is 5/1.")
  (wrong-if (5 5) "5/5 is 1 whole, not 5. The denominator must be 1.")
  (hint "The numerator counts the wholes. The denominator is 1."))
```

---

## Do not mix them up

$4/1$ and $1/4$ look alike, but they are far apart. $4/1$ is 4 wholes.
$1/4$ is 1 small part of 1 whole.

```figure
(fr-line 30 294 110 4 4 'whole)
(fr-point 1 4 'cool)
(nl-mark 4 'warm)
(math (nl-x 4) (- (nl-y) 26) "4/1" 15)
(caption "1/4 is near 0. 4/1 is at 4.")
```

```check
(choice
  (ask "Which is greater:" (math "4/1") "or" (math "1/4") "?")
  (right "4/1" (true "4/1 > 1/4"))
  (wrong "1/4" (false "1/4 > 4/1")
    "1/4 is less than 1 whole. 4/1 is 4 whole ones, so it is much greater.")
  (wrong "They are equal" (false "4/1 = 1/4")
    "They use the same digits in a different order. 4/1 is 4 and 1/4 is a fourth.")
  (hint "Look at the number line."))
```

---

## Worked example

```example
(example
(problem "Write 2 as a fraction over 1.")
(step "2 is 2 wholes.")
(step "Each whole is 1 part, so the denominator is 1.")
(answer "2 = 2/1."))
```

```example
(example
(problem "What whole number is 6/1?")
(step "The denominator 1 means each whole is not cut.")
(step (choice (ask "How many wholes are there?")
  (right "6")
  (wrong "1"
    "The 1 is below the line: each whole is 1 part. The numerator, 6, counts the wholes.")))
(answer "6/1 = 6."))
```

---

## Practice

```check
(number
  (ask "What whole number is" (math "7/1") "?")
  (answer 7) (from "7/1")
  (wrong-if 1 "The 1 is the denominator: each whole is not cut. There are 7 wholes.")
  (hint "7 wholes, each in 1 part."))
```

```check
(choice
  (ask "Which fraction is equal to 3?")
  (right "3/1" (true "3/1 = 3"))
  (wrong "1/3" (false "1/3 = 3")
    "1/3 is 1 part of a whole cut into 3. It is less than 1.")
  (wrong "3/3" (false "3/3 = 3")
    "3/3 is 3 of 3 parts: 1 whole, not 3.")
  (hint "Which fraction has 3 wholes, each not cut?"))
```

So: any whole number can be written over 1, like $3 = 3/1$.
