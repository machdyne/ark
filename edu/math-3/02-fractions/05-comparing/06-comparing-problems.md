# Comparing problems

```lesson
(objective "Solve word problems that compare two fractions.")
(standards "3.NF.A.3d")
(minutes 20)
```

You can solve word problems that compare two fractions.

Use 3 steps:

1. Check that the wholes are the same.
2. Look for the same numerator or the same denominator.
3. Compare, write it with a sign, and answer in words.

```figure
(fr-cuts 30 50 120 60 (fr-even 6) 4 'warm #f)
(label 90 135 "Jen: 4/6" 'small)
(fr-cuts 170 50 120 60 (fr-even 6) 2 'cool #f)
(label 230 135 "Raj: 2/6" 'small)
(caption "Two same size pans of bread.")
```

```check
(choice
  (ask "Jen eats" (math "4/6") "of a pan of bread. Raj eats" (math "2/6") "of a pan the same size. Who eats more?")
  (right "Jen" (true "4/6 > 2/6"))
  (wrong "Raj" (false "2/6 > 4/6")
    "Both are sixths of the same size pan, so the parts are equal. Jen eats 4 parts and Raj 2.")
  (wrong "They eat the same" (false "4/6 = 2/6")
    "The parts are the same size, but Jen eats more of them.")
  (hint "Same pans, same denominator. Compare the numerators."))
```

---

## Same numerator problems

Ali walks $2/3$ of a mile. Bea walks $2/4$ of a mile. Both walk 2
parts, but thirds of a mile are longer than fourths.

```check
(choice
  (ask "Who walks farther?")
  (right "Ali walks farther: 2/3 > 2/4" (true "2/3 > 2/4"))
  (wrong "Bea walks farther: 4 is bigger than 3" (false "2/4 > 2/3")
    "A bigger denominator means shorter parts. 2 fourths of a mile is less than 2 thirds.")
  (hint "Both walk 2 parts. Whose parts are longer?"))
```

---

## Worked example

```example
(example
(problem "Two same size gardens. Max plants corn in 3/8 of his. Liv plants corn in 3/6 of hers. Who has more corn?")
(step "The gardens are the same size, so you can compare.")
(step "Same numerator, 3. Sixths are bigger than eighths.")
(step "3/6 > 3/8.")
(answer "Liv has more of her garden in corn."))
```

```example
(example
(problem "A pitcher is 5/8 full in the morning and 2/8 full at night. When is there more in it?")
(step "The same pitcher, so the whole is the same.")
(step (choice (ask "Which is greater, 5/8 or 2/8?")
  (right "5/8")
  (wrong "2/8"
    "Same denominator: compare the numerators. 5 eighths are more than 2 eighths.")))
(answer "There is more in the morning: 5/8 > 2/8."))
```

---

## Practice

```check
(choice
  (ask "Two ribbons are the same length. Pam uses" (math "1/6") "of hers. Lou uses" (math "1/2") "of his. Who uses less ribbon?")
  (right "Pam" (true "1/6 < 1/2"))
  (wrong "Lou" (false "1/2 < 1/6")
    "6 is bigger than 2, but a sixth is a small part. 1/6 is less than 1/2, so Pam uses less.")
  (hint "Which is less: a sixth or a half of the same ribbon?"))
```

```check
(choice
  (ask "A bottle is" (math "3/4") "full. Another bottle of the same size is" (math "3/8") "full. Which sign goes in" (math "3/4") "?" (math "3/8") "?")
  (right ">" (true "3/4 > 3/8"))
  (wrong "<" (false "3/4 < 3/8")
    "Fourths are bigger than eighths. 3 fourths is more than 3 eighths.")
  (wrong "=" (false "3/4 = 3/8")
    "Both are 3 parts, but the parts are different sizes.")
  (hint "Same numerator. Whose parts are bigger?"))
```

---

```check
(choice
  (ask "Nia read" (math "2/3") "of a short book. Leo read" (math "1/3") "of a long book. Nia says she read more pages. Can you tell from the fractions?")
  (right "No: the books are different sizes")
  (wrong "Yes: 2/3 > 1/3, so Nia read more"
    "2/3 > 1/3 is true for the same whole. A third of a long book can have more pages than 2 thirds of a short one.")
  (hint "Are the wholes the same?"))
```

So: check the wholes, look for the same numerator or denominator,
then compare and answer in words.
