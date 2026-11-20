# Estimating with benchmarks

```lesson
(objective "Estimate a sum or difference of fractions with the benchmarks 0, 1/2 and 1, such as 2/5 + 1/2 is a little less than 1.")
(standards "5.NF.A.2")
(minutes 20)
```

You can estimate a sum of fractions in your head. Compare each
fraction with the benchmark fractions 0, $1/2$ and 1.

$2/5$ is a little less than $1/2$: 2 is a little less than half of 5.
So $2/5 + 1/2$ is a little less than $1/2 + 1/2 = 1$.

```figure
(number-line 30 290 120 0 1 0.1 1)
(line (nl-x 0.5) 112 (nl-x 0.5) 128 'ink 2)
(nl-mark 0.4 'warm)
(math (nl-x 0.4) 160 "2/5" 16)
(math (nl-x 0.5) 96 "1/2" 16)
(caption "2/5 is just below the benchmark 1/2.")
```

```check
(choice
  (ask "Is" (math "3/8") "closest to 0," (math "1/2") "or 1?")
  (right "1/2")
  (wrong "0"
    "Half of 8 is 4. 3 eighths is just 1 eighth below 4 eighths, so it is close to 1/2.")
  (wrong "1"
    "1 is 8 eighths. 3 eighths is far from 8 eighths, but close to 4 eighths, which is 1/2.")
  (hint "Half of 8 is 4. Is 3 close to 4?"))
```

---

## Close to 0, 1/2 or 1

Compare the numerator with the denominator:

- numerator small next to the denominator: close to 0 ($1/9$);
- numerator about half the denominator: close to $1/2$ ($5/9$);
- numerator close to the denominator: close to 1 ($8/9$).

```check
(choice
  (ask "Which fraction is closest to 1?")
  (right "11/12")
  (wrong "1/12"
    "1 twelfth is tiny: it is close to 0. A fraction is close to 1 when the numerator is close to the denominator.")
  (wrong "7/12"
    "Half of 12 is 6. 7/12 is close to 1/2, not to 1.")
  (hint "Which numerator is closest to its denominator?"))
```

---

## Estimate a sum or a difference

Round each fraction to 0, $1/2$ or 1, then add or subtract.

- $7/8 + 4/9$: about $1 + 1/2 = 1 1/2$.
- $9/10 - 1/12$: about $1 - 0 = 1$.
- $5/6 - 3/7$: about $1 - 1/2 = 1/2$.

The estimate is not exact. It tells you about how big the answer is.

```check
(choice
  (ask "Estimate" (math "11/12 + 5/9") ".")
  (right "About 1 1/2")
  (wrong "About 16/21"
    "That adds the tops and the bottoms, which does not find a sum. 11/12 is about 1 and 5/9 is about 1/2.")
  (wrong "About 1/2"
    "11/12 is close to 1, not 0. So the sum is about 1 + 1/2.")
  (hint "Round 11/12, then round 5/9."))
```

---

## Worked example

```example
(example
  (problem "Estimate 1/10 + 6/11.")
  (step "1/10 is close to 0: 1 is small next to 10.")
  (step "6/11 is close to 1/2: 6 is about half of 11.")
  (step "0 + 1/2 = 1/2.")
  (answer "1/10 + 6/11 is about 1/2."))
```

```example
(example
  (problem "Estimate 2 7/8 - 1 1/2.")
  (step "2 7/8 is close to 3, and 1 1/2 stays 1 1/2.")
  (step (choice (ask "So the difference is about ...")
    (right "1 1/2" (true "3 - 1 1/2 = 1 1/2"))
    (wrong "2" "3 - 1 1/2 is 1 1/2, not 2. Take away the half too.")))
  (answer "2 7/8 - 1 1/2 is about 1 1/2."))
```

---

## Practice

```check
(choice
  (ask "Estimate" (math "4/7 + 5/9") ".")
  (right "About 1")
  (wrong "About 9/16"
    "9/16 adds the tops and the bottoms. Each fraction is close to 1/2, so the sum is about 1.")
  (wrong "About 2"
    "4/7 and 5/9 are each close to 1/2, not to 1.")
  (hint "4 is about half of 7. 5 is about half of 9."))
```

```check
(choice
  (ask "Estimate" (math "9/10 - 1/2") ".")
  (right "About 1/2")
  (wrong "About 0"
    "9/10 is close to 1, not to 1/2. 1 - 1/2 = 1/2.")
  (wrong "About 8/8"
    "Subtracting the tops and the bottoms does not work. Round: 1 - 1/2.")
  (hint "Round 9/10 first."))
```

---

```check
(choice
  (ask "Is" (math "3/5 + 4/7") "more or less than 1?")
  (right "A little more than 1")
  (wrong "Less than 1"
    "3/5 is a little more than 1/2, and so is 4/7. Two numbers a little more than 1/2 make a little more than 1.")
  (wrong "Exactly 1"
    "Neither fraction is exactly 1/2. Both are a little more, so the sum is a little more than 1.")
  (hint "Half of 5 is 2 1/2. Half of 7 is 3 1/2."))
```

```check
(choice
  (ask "Estimate" (math "5 1/12 + 2 8/9") ".")
  (right "About 8")
  (wrong "About 7"
    "8/9 is close to 1. So 2 8/9 is about 3, and 5 + 3 = 8.")
  (wrong "About 7 1/2"
    "1/12 is close to 0, not 1/2. And 2 8/9 is close to 3.")
  (hint "Round each mixed number to the nearest whole number."))
```

To estimate, round each fraction to 0, $1/2$ or 1, then add or
subtract.
