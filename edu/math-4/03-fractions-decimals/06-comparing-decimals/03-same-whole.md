# The same whole

```lesson
(objective "Explain why two decimals can be compared only when they refer to the same whole.")
(standards "4.NF.C.7")
(minutes 20)
```

You can compare two decimals only when they are parts of the same
whole.

Lin drinks 0.5 of a small bottle. Max drinks 0.3 of a big bottle. Who
drinks more? $0.5 > 0.3$, but the bottles are not the same size. 3
tenths of a big bottle can be more than 5 tenths of a small one.

```figure
(m4p3-tenths 20 50 140 30 5 'warm)
(m4p3-tenths 20 120 290 30 3 'cool)
(text 20 40 "0.5 of a small bottle" 'left 'small)
(text 20 110 "0.3 of a big bottle" 'left 'small)
(caption "Different wholes: the shaded parts are not 5 to 3.")
```

```check
(choice
  (ask "Can you tell who drinks more from" (math "0.5 > 0.3") "alone?")
  (right "No: the wholes are different sizes")
  (wrong "Yes: 0.5 is more than 0.3"
    "0.5 > 0.3 is true for the same whole. Here the bottles are different, so the amounts may not be.")
  (wrong "Yes: Max drinks more"
    "In the model Max's shaded part is longer, but that is because his bottle is bigger. 0.3 alone does not tell you.")
  (hint "Are the 2 bottles the same size?"))
```

---

## A fair comparison

A fair comparison uses one whole, or two wholes of the same size. 0.62
meter and 0.6 meter are both parts of 1 meter. So you can say
$0.62 > 0.6$: the first length is longer.

```check
(choice (several)
  (ask "Which can you compare with" (math "0.8 > 0.75") "? Choose all.")
  (right "0.8 liter of milk and 0.75 liter of juice")
  (right "0.8 of a sheet of paper and 0.75 of the same size sheet")
  (wrong "0.8 of a small pizza and 0.75 of a large pizza"
    "The pizzas are different sizes, so the wholes differ. You cannot tell which part is more.")
  (hint "Is the whole the same, like 1 liter, in each?"))
```

---

## Worked example

```example
(example
  (problem "Ivy runs 0.4 of a short track. Jon runs 0.4 of a long track. Do they run the same distance?")
  (step "Both are 0.4, but of different wholes.")
  (step "4 tenths of a long track is longer than 4 tenths of a short one.")
  (answer "No: Jon runs farther."))
```

```example
(example
  (problem "Kay has 0.25 of a dollar. Leo has 0.3 of a dollar. Who has more money?")
  (step "Both are parts of 1 dollar: the same whole.")
  (step (choice (ask "0.30 and 0.25: who has more?")
    (right "Leo" (true "0.3 > 0.25"))
    (wrong "Kay" "25 looks bigger than 3, but 0.3 = 0.30, and 30 > 25.")))
  (answer "Leo has more: 30 cents to 25 cents."))
```

---

## Practice

```check
(choice
  (ask "Ted eats 0.5 of a small cake. Uma eats 0.5 of a big cake. Which is true?")
  (right "Uma eats more cake")
  (wrong "They eat the same amount"
    "Both are 0.5, but half of a big cake is more than half of a small one.")
  (wrong "Ted eats more cake"
    "Ted's cake is the small one. Half of it is less.")
  (hint "Half of which cake is more?"))
```

```check
(choice
  (ask "Two equal ribbons. Ana cuts 0.45 of hers. Bo cuts 0.5 of his. Who cuts more?")
  (right "Bo" (true "0.5 > 0.45"))
  (wrong "Ana" (false "0.45 > 0.5")
    "0.45 has more digits, but that does not make it greater. 0.5 = 0.50, and 50 > 45.")
  (wrong "You cannot tell" 
    "The ribbons are equal, so the wholes are the same. You can compare.")
  (hint "Same whole: compare 0.45 and 0.50."))
```

So: a comparison like $0.5 > 0.3$ is true about the amounts only when
both decimals refer to the same whole.
