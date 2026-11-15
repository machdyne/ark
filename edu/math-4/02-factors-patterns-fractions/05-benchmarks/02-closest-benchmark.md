# The closest benchmark

```lesson
(objective "Tell whether a fraction is closest to 0, 1/2 or 1 on a number line.")
(standards "4.NF.A.2")
(minutes 20)
```

You can tell whether a fraction is closest to 0, $1/2$ or 1.

On a number line from 0 to 1, 0 is at the start. $1/2$ is in the
middle, and 1 is at the end. Move the point. Which benchmark is it
nearest?

```figure
(define k (slider 'k 0 12 2 "Twelfths" 1))
(m4p2-line 30 290 110 1 12 'none)
(for-each (lambda (v) (line (nl-x v) 92 (nl-x v) 128 'ink 2.5)) '(0 0.5 1))
(text 30 150 "0" 'centre 'body)
(math 160 158 "1/2" 18)
(text 290 150 "1" 'centre 'body)
(nl-mark (/ k 12) 'warm)
(math (nl-x (/ k 12)) 78 (m4p2-s k 12) 16)
(label 160 205 (cond ((< k 3) "closest to 0") ((= k 3) "halfway between 0 and 1/2")
                     ((< k 9) "closest to 1/2") ((= k 9) "halfway between 1/2 and 1")
                     (else "closest to 1")) 'body 'bold)
```

```check
(choice
  (ask "Which benchmark is" (math "1/10") "closest to?")
  (right "0")
  (wrong "1"
    "1/10 has a 1 in it, but it is only 1 small part. It is just after 0 on the line.")
  (wrong "1/2"
    "1/2 is 5/10. 1/10 is 4 tenths away from it, but only 1 tenth from 0.")
  (hint "Where is 1 tenth on a line from 0 to 1?"))
```

---

## Without a line

Look at the numerator and the denominator:

- a small numerator, far less than half the denominator: close to 0;
- a numerator near half the denominator: close to $1/2$;
- a numerator almost as big as the denominator: close to 1.

```check
(choice
  (ask "Which benchmark is" (math "9/10") "closest to?")
  (right "1" (true "1 - 9/10 = 1/10"))
  (wrong "1/2"
    "Half of 10 is 5. 9 is far past it. 9/10 is just 1 tenth from 1.")
  (wrong "0"
    "9/10 has 9 of the 10 parts. It is near the end of the line, not the start.")
  (hint "How many tenths is 9/10 from 1?"))
```

---

## Close to a half

$5/12$ and $7/12$ are each just 1 twelfth from $6/12$, which is $1/2$.
$4/10$ is 1 tenth from $5/10$. They are all close to $1/2$.

```check
(choice
  (ask "Which fraction is closest to" (math "1/2") "?")
  (right "5/12" (true "6/12 - 5/12 = 1/12"))
  (wrong "1/12"
    "1/12 is close to 0. It is 5 twelfths from 1/2.")
  (wrong "11/12"
    "11/12 is close to 1. It is 5 twelfths from 1/2.")
  (hint "1/2 = 6/12. Which numerator is closest to 6?"))
```

---

## Halfway

$1/4$ is exactly halfway between 0 and $1/2$. $3/4$ is exactly halfway
between $1/2$ and 1. Such a fraction is not closer to either one.

```check
(choice
  (ask "Where is" (math "3/12") "?")
  (right "Halfway between 0 and 1/2" (true "3/12 = 1/4"))
  (wrong "Closest to 0"
    "3/12 is 3 twelfths from 0, and 1/2 = 6/12 is also 3 twelfths away. It is halfway.")
  (wrong "Closest to 1/2"
    "3/12 is 3 twelfths from 1/2, and also 3 twelfths from 0. It is halfway.")
  (hint "Set the slider to 3."))
```

---

## Worked example

```example
(example
  (problem "Is 2/10 closest to 0, 1/2 or 1?")
  (step "2/10 is 2 tenths from 0.")
  (step "1/2 = 5/10, so 2/10 is 3 tenths from 1/2.")
  (step "2 tenths is less than 3 tenths.")
  (answer "2/10 is closest to 0."))
```

```example
(example
  (problem "Is 5/6 closest to 0, 1/2 or 1?")
  (step "5/6 is 1 sixth from 1.")
  (step "1/2 = 3/6, so 5/6 is 2 sixths from 1/2.")
  (step (choice (ask "Which is closer?")
    (right "1: it is 1 sixth away")
    (wrong "1/2: it is 2 sixths away"
      "2 sixths is farther than 1 sixth. The closer benchmark is 1.")))
  (answer "5/6 is closest to 1."))
```

---

## Practice

```check
(choice
  (ask "Which benchmark is" (math "1/8") "closest to?")
  (right "0" (true "1/8 < 3/8"))
  (wrong "1/2"
    "1/2 is 4/8. 1/8 is 3 eighths from it, but only 1 eighth from 0.")
  (wrong "1"
    "1/8 is the first eighth after 0. It is 7 eighths from 1.")
  (hint "1/2 = 4/8. Is 1 nearer to 0 or to 4?"))
```

```check
(choice
  (ask "Which benchmark is" (math "4/6") "closest to?")
  (right "1/2" (true "4/6 - 3/6 = 1/6"))
  (wrong "1"
    "4/6 is 2 sixths from 1, but only 1 sixth from 1/2 = 3/6.")
  (wrong "0"
    "4/6 is more than half of the whole. It is far from 0.")
  (hint "1/2 = 3/6. How far is 4/6 from 3/6? From 6/6?"))
```

---

```check
(choice
  (ask "Which fraction is closest to 1?")
  (right "11/12" (true "1 - 11/12 = 1/12"))
  (wrong "7/12"
    "7/12 is 5 twelfths from 1, but only 1 twelfth from 1/2.")
  (wrong "1/12"
    "1/12 has a 1 on top, but it is just after 0. It is 11 twelfths from 1.")
  (hint "Which one is missing the fewest twelfths?"))
```

```check
(choice
  (ask "Which benchmark is" (math "6/10") "closest to?")
  (right "1/2" (true "6/10 - 5/10 = 1/10"))
  (wrong "1"
    "6/10 is 4 tenths from 1, but only 1 tenth from 1/2 = 5/10.")
  (wrong "0"
    "6/10 is more than half. It is 6 tenths from 0.")
  (hint "1/2 = 5/10."))
```

So: find how far a fraction is from 0, $1/2$ and 1. The nearest is its
closest benchmark.
