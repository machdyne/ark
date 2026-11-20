# The size of a product

```lesson
(objective "Compare a product with one factor without multiplying, from the size of the other factor, such as 5 x (3/4) < 5 and 5 x (3/4) < 7 x (3/4).")
(standards "5.NF.B.5a")
(minutes 20)
```

You can tell how big a product is without working it out. Look at the
other factor.

$5 * (3/4)$: think of it as 5 scaled by $3/4$. $3/4$ is less than 1,
so 5 shrinks:

$$ 5 * (3/4) < 5 $$

```figure
(m5p3-scale 190 6 0.25 1 5 0.75 "5" "5 x (3/4): less than 5")
```

```check
(choice
  (ask "Without multiplying: is" (math "8 * (2/3)") "more or less than 8?")
  (right "Less than 8" (true "8 * (2/3) < 8"))
  (wrong "More than 8"
    "Multiplying does not always make bigger. 2/3 is less than 1, so 8 is shrunk to 2/3 of its size.")
  (wrong "Equal to 8"
    "Only scaling by 1 keeps 8 the same. 2/3 is less than 1.")
  (hint "Is 2/3 more or less than 1?"))
```

---

## A factor greater than 1

$5 * 3$: 5 scaled by 3 is bigger than 5. And $5 * (3/2)$: $3/2$ is
more than 1, so the product is bigger than 5 too.

$$ 5 * (3/2) > 5 $$

```check
(choice
  (ask "Without multiplying: compare" (math "6 * (5/4)") "with 6.")
  (right "It is more than 6" (true "6 * (5/4) > 6"))
  (wrong "It is less than 6"
    "5/4 is more than 1 (5 fourths, and 4 fourths make 1). So 6 is stretched.")
  (wrong "It is equal to 6"
    "5/4 is not 1. It is 1 1/4, so the product is more than 6.")
  (hint "Is 5/4 more than 1?"))
```

---

## Same fraction, different numbers

Compare $5 * (3/4)$ and $7 * (3/4)$. Both scale by $3/4$. The bigger
number gives the bigger product:

$$ 5 * (3/4) < 7 * (3/4) $$

You do not need to work out $15/4$ and $21/4$.

```check
(choice
  (ask "Without multiplying: which is greater?")
  (right "9 x (2/5)" (true "9 * (2/5) > 4 * (2/5)"))
  (wrong "4 x (2/5)"
    "Both are scaled by 2/5. 9 is bigger than 4, so 2/5 of 9 is bigger than 2/5 of 4.")
  (wrong "They are equal"
    "The fraction is the same, but 9 and 4 are not. 2/5 of 9 is more.")
  (hint "Both use 2/5. Which number is bigger?"))
```

---

## Worked example

```example
(example
  (problem "Without multiplying, put in order: 10 x (1/2), 10, 10 x (3/2).")
  (step "1/2 is less than 1: 10 x (1/2) < 10.")
  (step "3/2 is more than 1: 10 x (3/2) > 10.")
  (answer "10 x (1/2) < 10 < 10 x (3/2)."))
```

```example
(example
  (problem "Without multiplying, compare 12 x (7/8) with 12.")
  (step "7/8 is less than 1.")
  (step (choice (ask "So 12 x (7/8) is ...") (right "less than 12" (true "12 * (7/8) < 12"))
    (wrong "more than 12" "7/8 is less than 1, so it shrinks 12.")))
  (answer "12 x (7/8) < 12."))
```

---

## Practice

```check
(choice
  (ask "Without multiplying: compare" (math "3 * (9/10)") "with 3.")
  (right "Less than 3" (true "3 * (9/10) < 3"))
  (wrong "More than 3"
    "9/10 is a little less than 1. So 3 shrinks a little.")
  (wrong "Equal to 3"
    "9/10 is close to 1, but not equal to it.")
  (hint "9/10 or 1: which is bigger?"))
```

```check
(choice
  (ask "Which product is greater than 4?")
  (right "4 x (7/6)" (true "4 * (7/6) > 4"))
  (wrong "4 x (6/7)"
    "6/7 is less than 1, so it shrinks 4.")
  (wrong "4 x (1/2)"
    "1/2 is less than 1. Half of 4 is 2.")
  (hint "Which fraction is more than 1?"))
```

---

```check
(choice
  (ask "Without multiplying: which is greater," (math "3/4") "of 20 or" (math "3/4") "of 12?")
  (right "3/4 of 20" (true "(3/4) * 20 > (3/4) * 12"))
  (wrong "3/4 of 12"
    "The same fraction of a bigger number is bigger. 20 is more than 12.")
  (wrong "They are equal"
    "The fraction is the same, but 20 and 12 are not.")
  (hint "The fraction is the same. Compare 20 and 12."))
```

```check
(choice
  (ask "Lin says" (math "15 * (2/3)") "must be more than 15, because multiplying makes things bigger. Is she right?")
  (right "No: 2/3 is less than 1, so the product is less than 15" (true "15 * (2/3) < 15"))
  (wrong "Yes: multiplying always makes things bigger"
    "Not when the factor is less than 1. 2/3 of 15 is 10, less than 15.")
  (wrong "Yes, because 15 is big"
    "The size of 15 does not matter. Scaling by 2/3 shrinks it.")
  (hint "Is 2/3 more or less than 1?"))
```

Look at the factor: when the other factor is greater than 0, a factor
more than 1 makes the product bigger than it, and a factor less than 1
makes the product smaller than it.
