# Is the answer reasonable?

```lesson
(objective "Judge whether an answer is reasonable with an estimate, such as seeing that 2/5 + 1/2 = 3/7 cannot be right because 3/7 < 1/2.")
(standards "5.NF.A.2")
(minutes 20)
```

An estimate can catch a wrong answer before you check every step.

Sam writes $2/5 + 1/2 = 3/7$. Is that reasonable?

- You add $2/5$ to $1/2$, so the sum must be more than $1/2$.
- But 3 is less than half of 7, so $3/7 < 1/2$.

$3/7$ cannot be right. The real sum is $4/10 + 5/10 = 9/10$.

```figure
(number-line 30 290 110 0 1 0.1 1)
(line (nl-x 0.5) 102 (nl-x 0.5) 118 'ink 2)
(nl-mark (/ 3 7) 'bad)
(math (nl-x (/ 3 7)) 150 "3/7" 16)
(nl-mark 0.9 'good)
(math (nl-x 0.9) 150 "9/10" 16)
(math (nl-x 0.5) 86 "1/2" 16)
(caption "The sum must be past 1/2.")
```

```check
(choice
  (ask "Mia says" (math "1/2 + 1/3 = 2/5") ". How can you tell at once that she is wrong?")
  (right "2/5 is less than 1/2, but the sum must be more than 1/2" (true "2/5 < 1/2"))
  (wrong "2/5 is more than 1"
    "2/5 is less than 1. The trouble is that it is less than 1/2, the number she started with.")
  (wrong "She is right"
    "Adding 1/3 to 1/2 must give more than 1/2. 2/5 is less than 1/2, so it cannot be the sum.")
  (hint "Compare 2/5 with 1/2."))
```

---

## Estimate, then compare

To check an answer:

1. Estimate with 0, $1/2$ and 1.
2. Compare the answer with the estimate.
3. If they are far apart, work it out again.

$7/8 - 1/3 = 6/5$? Estimate: $1 - 1/2 = 1/2$. But $6/5$ is more than 1.
Not reasonable!

```check
(choice
  (ask "Which answer to" (math "5/6 + 7/8") "is reasonable?")
  (right "41/24, which is 1 17/24" (true "5/6 + 7/8 = 41/24"))
  (wrong "12/14"
    "12/14 is less than 1. But 5/6 and 7/8 are each close to 1, so the sum is close to 2.")
  (wrong "1/2"
    "Each fraction is close to 1. The sum must be close to 2, not 1/2.")
  (hint "Both fractions are close to 1."))
```

---

## Subtracting

Taking away gives less than you started with. And a difference of two
numbers close to each other is close to 0.

$9/10 - 7/8 = 2/2$? $2/2$ is 1. But $9/10$ and $7/8$ are both close to
1, so the difference is close to 0. Not reasonable.

```check
(choice
  (ask "Is" (math "3/4 - 1/6 = 7/12") "reasonable?")
  (right "Yes: 1/6 is small, so the answer is a little less than 3/4" (true "3/4 - 1/6 = 7/12") (true "7/12 < 3/4"))
  (wrong "No: it should be 2/2"
    "Subtracting the tops and the bottoms gives 2/2, which is wrong. 9/12 - 2/12 = 7/12.")
  (wrong "No: it must be more than 3/4"
    "Subtracting gives less than you started with, and 7/12 is less than 3/4.")
  (hint "Is 7/12 less than 3/4?"))
```

---

## Worked example

```example
(example
  (problem "Leo finds 1 1/2 + 2 2/3 = 3 3/5. Is it reasonable?")
  (step "Estimate: 1 1/2 + 3 = 4 1/2, since 2 2/3 is close to 3.")
  (step "3 3/5 is less than 4. That is far from 4 1/2.")
  (step "So it is not reasonable. The real sum is 1 3/6 + 2 4/6 = 3 7/6 = 4 1/6.")
  (answer "Not reasonable: the sum is 4 1/6."))
```

```example
(example
  (problem "Ana finds 5/8 + 1/10 = 29/40. Is it reasonable?")
  (step "Estimate: 1/2 + 0 = 1/2. The sum is a little more than 1/2.")
  (step (choice (ask "29/40: half of 40 is 20. Is 29/40 a little more than 1/2?")
    (right "Yes, so it is reasonable" (true "5/8 + 1/10 = 29/40"))
    (wrong "No, so it is not reasonable" "29 is more than 20, and less than 40. It is between 1/2 and 1, as the estimate says.")))
  (answer "Reasonable: 5/8 + 1/10 = 29/40."))
```

---

## Practice

```check
(choice
  (ask "Which answer to" (math "1/3 + 1/4") "is NOT reasonable?")
  (right "2/7" (false "1/3 + 1/4 = 2/7"))
  (wrong "7/12"
    "7/12 is right: 4/12 + 3/12 = 7/12. It is a little more than 1/2, as an estimate says.")
  (wrong "14/24"
    "14/24 = 7/12, which is right. It is just written with a bigger denominator.")
  (hint "Is 2/7 more than 1/3?"))
```

```check
(choice
  (ask "Kim says" (math "2 1/4 + 3 5/6 = 5 6/10") ". Is it reasonable?")
  (right "No: about 2 + 4 = 6, so the sum must be close to 6, and the parts make more than 1" (true "2 1/4 + 3 5/6 = 6 1/12"))
  (wrong "Yes: 2 + 3 = 5 and 1 + 5 = 6, 4 + 6 = 10"
    "That adds the tops and the bottoms. The parts make 3/12 + 10/12 = 13/12, more than 1. The sum is 6 1/12.")
  (wrong "Yes: 5 6/10 is between 5 and 6"
    "It is, but 3 5/6 is close to 4. So the sum is close to 2 + 4 = 6, a bit more.")
  (hint "Round 2 1/4 and 3 5/6 to whole numbers."))
```

---

```check
(choice
  (ask "Is" (math "11/12 - 1/2 = 5/12") "reasonable?")
  (right "Yes: about 1 - 1/2 = 1/2, and 5/12 is close to 1/2" (true "11/12 - 1/2 = 5/12"))
  (wrong "No: it should be about 1"
    "Taking away 1/2 from about 1 leaves about 1/2. 5/12 is close to 1/2.")
  (wrong "No: it should be 10/10"
    "Subtracting the tops and the bottoms does not find a difference: 10/10 is 1, more than 11/12. In twelfths: 11/12 - 6/12 = 5/12.")
  (hint "Estimate first: round 11/12."))
```

```check
(choice
  (ask "Jo works out" (math "4/5 + 3/4") "and gets" (math "31/20") ". Is that reasonable?")
  (right "Yes: each is a bit less than 1, and 31/20 is between 1 and 2" (true "4/5 + 3/4 = 31/20") (true "1 < 31/20 < 2"))
  (wrong "No: the sum should be about 1/2"
    "4/5 and 3/4 are each close to 1. Two numbers close to 1 add to more than 1.")
  (wrong "No: the sum is less than 1, like 7/9"
    "7/9 adds the tops and the bottoms. Each fraction is close to 1, so the sum is more than 1.")
  (hint "Is 4/5 close to 0, 1/2 or 1?"))
```

An estimate with 0, $1/2$ and 1 tells you if an answer is reasonable.
