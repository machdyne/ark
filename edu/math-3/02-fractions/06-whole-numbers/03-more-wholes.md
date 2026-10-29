# More wholes

```lesson
(objective "Find fractions equal to whole numbers, such as 6/2 = 3, on a number line.")
(standards "3.NF.A.3c")
(minutes 20)
```

Some fractions land exactly on a whole number: $6/2 = 3$.

Count by halves from 0: $1/2$, $2/2$, $3/2$, $4/2$ ... Every 2 halves
make 1 more whole. Move the slider.

```figure
(define c (choice 'b '("2" "3" "4") "Parts"))
(define b (list-ref '(2 3 4) c))
(define k (min (* 3 b) (slider 'k 1 (* 3 b) 1 "Count" 1)))
(fr-line 40 280 130 3 b 'whole)
(fr-point k b 'warm)
(math 160 200 (if (= 0 (modulo k b)) (string-append (fr-s k b) " = " (fmt (/ k b) 0)) (fr-s k b)) 24)
(caption "A number line from 0 to 3.")
```

```check
(fraction
  (ask "Choose 2 parts. Which fraction in halves is at 3?")
  (answer 6 2) (true "6/2 = 3")
  (wrong-if (3 2) "3/2 is halfway between 1 and 2. Each whole is 2 halves, so 3 wholes are 6 halves.")
  (wrong-if (2 6) "The parts are halves, so the denominator is 2. Count the halves from 0 to 3.")
  (hint "Each whole is 2 halves.")
  (hint "3 wholes of 2 halves each."))
```

---

## Find the whole number

To find the whole number, count how many groups of the denominator
fit in the numerator. $8/4$: 4 fourths make 1, and 8 fourths make 2.

$$ 8/4 = 2 $$

```check
(number
  (ask "What whole number is" (math "6/3") "?")
  (answer 2) (from "6/3")
  (wrong-if 6 "6 is the number of thirds. Every 3 thirds make 1 whole, so 6 thirds make 2.")
  (wrong-if 3 "3 thirds make 1 whole. 6 thirds is twice that.")
  (hint "3 thirds make 1. How many groups of 3 thirds are in 6 thirds?"))
```

---

## Worked example

```example
(example
(problem "Is 12/4 a whole number? Which one?")
(step "4 fourths make 1 whole.")
(step "12 fourths are 3 groups of 4 fourths.")
(answer "12/4 = 3."))
```

```example
(example
(problem "Is 4/2 a whole number? Which one?")
(step "2 halves make 1 whole.")
(step (choice (ask "4 halves are how many groups of 2 halves?")
  (right "2")
  (wrong "4"
    "4 is the number of halves. Every 2 halves make 1 whole, so 4 halves are 2 wholes.")))
(answer "4/2 = 2."))
```

---

## Practice

```figure
(fr-line 40 280 120 3 4 'whole)
(nl-mark 2 'warm "P")
(caption "A number line from 0 to 3 in fourths.")
```

```check
(fraction
  (ask "Point P is at 2. Write it as a fraction in fourths.")
  (answer 8 4) (true "8/4 = 2")
  (wrong-if (2 4) "2/4 is only half of 1 whole. Count the fourths from 0 to P: 8.")
  (wrong-if (9 4) "That counts the mark at 0. Count the parts from 0 to P.")
  (hint "Each whole is 4 fourths."))
```

---

```check
(choice
  (ask "Which fraction is NOT a whole number?")
  (right "5/2" (false "5/2 = 2") (false "5/2 = 3"))
  (wrong "6/2" (true "6/2 = 3")
    "6 halves are 3 groups of 2 halves: 3 wholes. So 6/2 = 3.")
  (wrong "8/8" (true "8/8 = 1")
    "8 eighths make exactly 1 whole.")
  (wrong "6/6" (true "6/6 = 1")
    "6 sixths make exactly 1 whole.")
  (hint "For each one: does the numerator make whole groups of the denominator?"))
```

So: when the numerator is made of whole groups of the denominator, like
$6/2 = 3$, the fraction is a whole number.
