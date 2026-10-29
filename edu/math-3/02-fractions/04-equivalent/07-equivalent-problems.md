# Equivalent fraction problems

```lesson
(objective "Solve word problems in which two people have equal amounts written as different fractions.")
(standards "3.NF.A.3a" "3.NF.A.3b")
(minutes 20)
```

Two people can have the same amount even when their fractions look
different.

Sam and Lee each have a sandwich of the same size. Sam cuts his into
2 equal parts and eats 1. Lee cuts hers into 4 equal parts and eats 2.

```figure
(label 90 30 "Sam" 'body 'bold)
(fr-cuts 40 45 100 100 '(0.5) 1 'warm #f)
(label 230 30 "Lee" 'body 'bold)
(fr-cuts 180 45 100 100 (fr-even 4) 2 'cool #f)
(math 90 180 "1/2" 22)
(math 230 180 "2/4" 22)
(caption "Each one ate the shaded part.")
```

```check
(choice
  (ask "Who ate more sandwich?")
  (right "They ate the same amount" (true "1/2 = 2/4"))
  (wrong "Lee, because 2 parts are more than 1"
    "Lee ate 2 parts, but each part is a fourth, half the size of Sam's half. 2/4 = 1/2.")
  (wrong "Sam, because his part is bigger"
    "Sam's part is bigger, but Lee ate 2 smaller parts. Together they are the same as 1 half.")
  (hint "Look at the shaded parts. Do they cover the same amount?"))
```

---

## Same whole first

The problem only works if the wholes are the same size. Read for it:
"the same size", "2 equal ribbons", "the same pizza".

```check
(choice
  (ask "Ana eats 1/2 of a small pizza. Raj eats 2/4 of a large pizza. Did they eat the same amount?")
  (right "No: the pizzas are not the same size")
  (wrong "Yes: 1/2 = 2/4" (true "1/2 = 2/4")
    "1/2 = 2/4 only for the same whole. Half of a small pizza is less than half of a large pizza.")
  (hint "Are the 2 wholes the same size?"))
```

---

## Worked example

```example
(example
(problem "Two ribbons are the same length. Mia uses 2/3 of hers. Jo uses 4/6 of his. Who uses more?")
(step "The ribbons are the same length, so you can compare.")
(step "Cut each third into 2 sixths: 2/3 = 4/6.")
(answer "They use the same amount of ribbon."))
```

```example
(example
(problem "Two same size cakes. Kai eats 3/4 of one. Bo eats 6/8 of the other. Who eats more?")
(step "The cakes are the same size.")
(step (choice (ask "Cut each fourth into 2 eighths. 3/4 is how many eighths?")
  (right "6/8")
  (wrong "3/8"
    "Each fourth becomes 2 eighths, so 3 fourths become 6 eighths.")))
(answer "3/4 = 6/8: they eat the same amount."))
```

---

## Practice

```check
(fraction
  (ask "Two water bottles are the same size. Pat drinks" (math "1/2") "of hers. Tim drinks the same amount from his bottle, which has marks in eighths. How many eighths does Tim drink? Write the fraction.")
  (answer 4 8) (true "1/2 = 4/8")
  (wrong-if (1 8) "1/8 is much less than half. Half of 8 eighths is 4 eighths.")
  (wrong-if (2 8) "2/8 is the same as 1/4, not 1/2.")
  (hint "Half of the bottle in eighths."))
```

```check
(choice
  (ask "Lin walks 2/6 of a path. Zoe walks 1/3 of the same path. Lin says she walked farther because 2 is more than 1. Is she right?")
  (right "No: 2/6 = 1/3, so they walked the same" (true "2/6 = 1/3"))
  (wrong "Yes: 2 parts are more than 1"
    "Lin's parts are sixths, half the size of thirds. 2 sixths fill the same length as 1 third.")
  (hint "How many sixths fill 1 third?"))
```

---

```check
(fraction
  (ask "Two gardens are the same size. Tom plants beans in" (math "3/6") "of his. Ana plants beans in the same amount of hers. Her garden is in halves. What fraction does she plant?")
  (answer 1 2) (true "3/6 = 1/2")
  (wrong-if (3 2) "3/2 is more than the whole garden. 3 sixths fill just 1 half.")
  (hint "Half of 6 sixths is 3 sixths."))
```

So: when the wholes are the same, equivalent fractions like $1/2$ and
$2/4$ are the same amount.
