# Comparing problems

```lesson
(objective "Solve word problems that compare fractions with different numerators and denominators, and justify each answer with a model.")
(standards "4.NF.A.2")
(minutes 25)
```

You can solve word problems that compare fractions, and show why with a
model.

Ana runs $3/4$ of a mile. Ben runs $5/8$ of a mile. Who runs farther?
Both are parts of the same whole, a mile. In eighths, $3/4 = 6/8$, and
$6/8 > 5/8$. So Ana runs farther.

```figure
(m4p2-line 30 290 70 1 4 'whole)
(nl-mark (/ 3 4) 'warm "Ana")
(m4p2-line 30 290 170 1 8 'whole)
(nl-mark (/ 5 8) 'cool "Ben")
(line 225 76 225 164 'ink 1)
(caption "1 mile on each line")
```

```check
(choice
  (ask "How does the model show that Ana runs farther?")
  (right "Her point is farther from 0 on lines of the same length")
  (wrong "Her line has fewer marks"
    "Fewer marks means bigger parts, not a longer run. Compare where the points are.")
  (wrong "Her fraction has smaller numbers"
    "Smaller numbers do not make a fraction greater. 3/4 = 6/8 is past 5/8 on the line.")
  (hint "Both lines show the same mile. Which point is farther along?"))
```

---

## Use a benchmark

It rains $3/10$ of an inch on Monday and $2/3$ of an inch on Tuesday.
Which day has more rain? $3/10 < 1/2$, and $2/3 > 1/2$. So Tuesday has
more.

```check
(choice
  (ask "Lin reads" (math "5/12") "of a book. Max reads" (math "4/5") "of the same book. Who reads more?")
  (right "Max: 4/5 is more than 1/2, and 5/12 is less" (true "4/5 > 5/12"))
  (wrong "Lin: 12 is more than 5"
    "A bigger denominator means smaller parts. Half of 12 is 6, so 5/12 is less than a half.")
  (wrong "They read the same"
    "One fraction is less than 1/2 and the other is more, so they are not equal.")
  (hint "Compare each with 1/2."))
```

---

## Equal amounts

Two equal gardens. Sam plants $4/6$ of his. Kim plants $2/3$ of hers.
$2/3 = 4/6$, so they plant the same amount.

```check
(choice
  (ask "Two equal pitchers. Pat pours out" (math "6/8") "of one. Lou pours out" (math "3/4") "of the other. Who pours more?")
  (right "They pour the same" (true "6/8 = 3/4"))
  (wrong "Pat: 6 is more than 3"
    "Pat's parts are eighths, half the size of fourths. 6 eighths = 3 fourths.")
  (wrong "Lou: fourths are bigger"
    "Fourths are bigger, but Pat pours twice as many parts. 3/4 = 6/8.")
  (hint "Write 3/4 in eighths."))
```

---

## Three amounts

Three friends walk to school. Ivy walks $1/2$ of a mile, Jay $5/6$ of a
mile and Kay $1/3$ of a mile. Who walks the farthest? $1/3 < 1/2$, and
$5/6 > 1/2$. So Jay walks the farthest.

```check
(choice
  (ask "Who walks the least far?")
  (right "Kay" (true "1/3 < 1/2") (true "1/3 < 5/6"))
  (wrong "Ivy"
    "1/2 = 3/6 and 1/3 = 2/6. Kay's 1/3 is less than Ivy's 1/2.")
  (wrong "Jay"
    "Jay walks 5/6, which is close to 1 mile. He walks the farthest.")
  (hint "Write all 3 in sixths."))
```

---

## Worked example

```example
(example
  (problem "Two equal pizzas. Ted eats 2/5 of one. Uma eats 3/10 of the other. Who eats more? Show why.")
  (step "The pizzas are the same size, so you can compare the fractions.")
  (step "Use tenths: 2/5 = 4/10.")
  (step "4/10 > 3/10.")
  (step "Model: 2 strips of the same length. 2/5 reaches farther than 3/10.")
  (answer "Ted eats more."))
```

```example
(example
  (problem "Jo swims 7/8 of a lap. Al swims 5/6 of the same lap. Who swims farther?")
  (step "Both are just short of 1 lap.")
  (step "Jo is missing 1/8. Al is missing 1/6.")
  (step (choice (ask "Who swims farther?")
    (right "Jo: 1/8 is less than 1/6, so she is closer to 1 lap")
    (wrong "Al: sixths are bigger"
      "Sixths are bigger, so Al is missing more. Jo is missing only 1/8.")))
  (answer "Jo swims farther."))
```

---

## Practice

```check
(choice
  (ask "Two equal ribbons. Ed cuts off" (math "2/3") "of one. Fay cuts off" (math "7/12") "of the other. Whose piece is longer?")
  (right "Ed's: 2/3 = 8/12, more than 7/12" (true "2/3 > 7/12"))
  (wrong "Fay's: 7 is more than 2"
    "7 twelfths is a lot of small parts. In twelfths, 2/3 = 8/12, which is more than 7/12.")
  (wrong "They are the same length"
    "2/3 = 8/12, not 7/12.")
  (hint "Write 2/3 in twelfths."))
```

```check
(choice
  (ask "Lee runs" (math "4/10") "of a mile. Ivy runs" (math "4/8") "of a mile. Which model shows who runs farther?")
  (right "2 lines, each 1 mile long: 4/8 is farther from 0" (true "4/8 > 4/10"))
  (wrong "A 1-mile line for Lee and a 2-mile line for Ivy"
    "Both runs are parts of 1 mile. The lines must show the same whole: 1 mile each.")
  (wrong "4 dots for each"
    "Both have 4 parts, but dots do not show the size of the parts. Eighths are bigger than tenths.")
  (hint "A fair model uses the same whole for both."))
```

---

```check
(choice
  (ask "Who eats the most of 3 equal pies? Ana eats" (math "3/8") ", Bo eats" (math "1/4") ", Cy eats" (math "1/2") ".")
  (right "Cy" (true "1/2 > 3/8") (true "1/2 > 1/4"))
  (wrong "Ana"
    "Ana eats 3 pieces, but 3/8 is less than a half: 1/2 = 4/8.")
  (wrong "Bo"
    "1/4 = 2/8. Bo eats the least.")
  (hint "Write each one in eighths."))
```

```check
(choice
  (ask "Mia says she ate more cake than Leo, as" (math "3/4 > 2/3") ". Her cake was small and Leo's was big. Is she right?")
  (right "Not for sure: the cakes are not the same size")
  (wrong "Yes: 3/4 > 2/3"
    "3/4 > 2/3 is true of the same whole. Leo's cake is bigger, so his 2/3 might be more.")
  (wrong "No: 2/3 > 3/4"
    "For the same whole, 3/4 is more. The real trouble is the different wholes.")
  (hint "Are the wholes the same size?"))
```

So: check that the wholes match, and compare in the quickest way. Then
show why with a model.
