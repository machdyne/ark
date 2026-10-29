# The same whole

```lesson
(objective "Explain why two fractions can be compared only when they are parts of the same whole.")
(standards "3.NF.A.3d")
(minutes 15)
```

You can compare two fractions only when they are parts of the same
whole, or of wholes the same size.

A fraction is a part of a whole. If the wholes are different sizes,
the parts are too. Move the slider to change the size of the second
pizza.

```figure
(define r (slider 'size 20 70 30 "Pizza B" 10))
(frac-circle 75 105 40 2 1 'warm)
(label 75 195 "1/2 of pizza A" 'small)
(frac-circle 225 105 r 4 1 'cool)
(label 225 195 "1/4 of pizza B" 'small)
(caption (if (= r 40) "Same size pizzas: 1/2 is more than 1/4." "The pizzas are different sizes."))
```

```check
(choice
  (ask "Make pizza B much bigger than pizza A. Can 1/4 of pizza B be more than 1/2 of pizza A?")
  (right "Yes: a part of a bigger whole can be bigger")
  (wrong "No: 1/2 is always more than 1/4"
    "1/2 is more than 1/4 only for the same whole. Move the slider: a fourth of a huge pizza beats half of a tiny one.")
  (hint "Move the slider all the way right. Compare the shaded parts."))
```

---

## Check the wholes first

Before you compare, ask: are the wholes the same? Look for words
like "the same size", "2 equal bars" or "the same ribbon".

```check
(choice
  (ask "Al eats" (math "2/3") "of a cake. Bo eats" (math "2/4") "of a cake. What must be true before you compare the fractions?")
  (right "The cakes are the same size")
  (wrong "The cakes are cut into the same number of parts"
    "The cakes can be cut in different ways: thirds and fourths. What must match is the size of the cakes.")
  (wrong "Nothing: just compare the fractions"
    "If one cake is much bigger, 2/4 of it could be more than 2/3 of a small one. The wholes must be the same size.")
  (hint "Think about a tiny cake and a huge cake."))
```

---

## Worked example

```example
(example
(problem "Eva drinks 1/2 of a small bottle. Ray drinks 1/3 of a big bottle. Eva says she drank more because 1/2 > 1/3. Is she sure to be right?")
(step "The fractions are parts of 2 different bottles.")
(step "The big bottle holds more, so 1/3 of it could be more than 1/2 of the small one.")
(answer "No. You cannot tell from the fractions, because the wholes are not the same."))
```

```example
(example
(problem "Two strips are the same length. Mo shades 3/8 of one. Kim shades 5/8 of the other. Can you compare the fractions?")
(step (choice (ask "Are the wholes the same?")
  (right "Yes: the strips are the same length")
  (wrong "No: Mo and Kim shade different amounts"
    "The amounts shaded are what you compare. The wholes, the strips, are the same length.")))
(answer "Yes. The wholes match, so you can compare 3/8 and 5/8."))
```

---

## Practice

```check
(choice
  (ask "Pia eats 1/4 of a large pizza. Ty eats 1/2 of a small pizza. Who ate more?")
  (right "You cannot tell: the pizzas are different sizes")
  (wrong "Ty, because 1/2 > 1/4"
    "1/2 > 1/4 is true for the same whole. These pizzas are different sizes, so the fractions alone cannot tell you.")
  (wrong "Pia, because 4 > 2"
    "A bigger denominator means smaller parts, not more. And the pizzas are not the same size anyway.")
  (hint "Are the 2 wholes the same?"))
```

---

```check
(choice
  (ask "Two ribbons are the same length. Ann cuts off 1/3 of hers. Dev cuts off 1/6 of his. Can you compare the pieces with the fractions?")
  (right "Yes: the ribbons are the same length")
  (wrong "No: 1/3 and 1/6 have different denominators"
    "Different denominators are fine. What matters is that the wholes, the 2 ribbons, are the same length.")
  (hint "Look at the wholes."))
```

So: compare fractions only when they are parts of the same whole, or
of wholes the same size.
