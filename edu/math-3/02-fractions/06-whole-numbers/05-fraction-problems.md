# Fraction problems

```lesson
(objective "Solve word problems that use all you know about fractions.")
(standards "3.NF.A.1" "3.NF.A.2b" "3.NF.A.3b" "3.NF.A.3c" "3.NF.A.3d")
(minutes 25)
```

You can use all you know about fractions to solve problems.

Before you answer, ask:

- What is the whole?
- Into how many equal parts is it cut? That is the denominator.
- How many parts do I mean? That is the numerator.

```figure
(frac-bar-at 40 60 240 44 6 4 'warm)
(caption "A garden in 6 equal beds. 4 have flowers.")
```

```check
(fraction
  (ask "A garden has 6 equal beds. 4 beds have flowers. What fraction of the garden has flowers?")
  (answer 4 6) (equivalent) (true "4 * 1/6 = 4/6")
  (wrong-if (4 2) "2 is the number of beds without flowers. The denominator counts all 6 beds.")
  (wrong-if (2 6) "2/6 is the part without flowers. Count the beds with flowers.")
  (hint "The whole is the garden: 6 equal beds."))
```

---

## On a path

A path is 2 miles long, with marks every $1/4$ mile. Ana walks from
the start to the 3rd mark after the start.

```figure
(fr-line 40 280 120 2 4 'whole)
(nl-mark (/ 3 4) 'warm "Ana")
(caption "A path from 0 to 2 miles, with marks every 1/4 mile.")
```

```check
(fraction
  (ask "How far does Ana walk? Write a fraction of a mile.")
  (answer 3 4) (equivalent) (true "3 * 1/4 = 3/4")
  (wrong-if (3 8) "The line shows 2 miles, but the denominator counts the parts in 1 mile: 4.")
  (wrong-if (4 4) "That counts the start mark. Count the jumps from 0: 3.")
  (hint "Each mark is 1/4 mile from the one before."))
```

---

## A whole number as a fraction

```check
(fraction
  (ask "Max eats 2 whole sandwiches. Each sandwich was cut into halves. How many halves does he eat? Write it as a fraction.")
  (answer 4 2) (true "4/2 = 2")
  (wrong-if (2 2) "2/2 is 1 sandwich. Max eats 2 sandwiches, each 2 halves.")
  (wrong-if (2 4) "The parts are halves, so the denominator is 2. Count the halves: 4.")
  (hint "Each sandwich is 2 halves."))
```

---

## Worked example

```example
(example
(problem "Two same size pies. Lia eats 2/8 of one. Jon eats 2/6 of the other. Who eats more?")
(step "The pies are the same size, so you can compare.")
(step "Same numerator: 2 parts each. Sixths are bigger than eighths.")
(answer "Jon eats more: 2/6 > 2/8."))
```

```example
(example
(problem "A rope is 4/4 of a meter long. Is it shorter than, the same as, or longer than 1 meter?")
(step "4/4 has the same numerator and denominator.")
(step (choice (ask "So 4/4 is ...")
  (right "equal to 1")
  (wrong "less than 1"
    "All 4 fourths are there. Nothing is missing, so it is 1 whole.")))
(answer "The rope is exactly 1 meter long."))
```

---

## Practice

```check
(choice
  (ask "Two same size cakes. Al eats" (math "3/4") "of one. Bo eats" (math "6/8") "of the other. Who eats more?")
  (right "They eat the same" (true "3/4 = 6/8"))
  (wrong "Bo, because 6 is more than 3" (false "6/8 > 3/4")
    "Bo's parts are eighths, half the size of fourths. 6 eighths fill the same as 3 fourths.")
  (wrong "Al, because fourths are bigger" (false "3/4 > 6/8")
    "Fourths are bigger, but Bo eats twice as many parts. 3/4 = 6/8.")
  (hint "Cut each fourth into 2 eighths."))
```

```check
(choice
  (ask "A trail is" (math "5/3") "miles long. Is that more or less than 1 mile?")
  (right "More than 1 mile" (true "5/3 > 1"))
  (wrong "Less than 1 mile" (false "5/3 < 1")
    "3/3 is 1 whole. 5/3 is 2 thirds more than that.")
  (hint "How many thirds make 1?"))
```

---

```check
(number
  (ask "A ribbon is cut into 8 equal pieces. Each piece is" (math "1/8") "of the ribbon and 2 inches long. How long is the whole ribbon?")
  (answer 16) (unit "inches") (from "8 * 2")
  (wrong-if 10 "That adds 8 and 2. The whole is 8 pieces of 2 inches: 8 groups of 2.")
  (wrong-if 2 "2 inches is 1 piece. The whole ribbon is 8 pieces.")
  (hint "8 pieces, each 2 inches long."))
```

So: find the whole, count its equal parts, and then compare or name
the fraction.
