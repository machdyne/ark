# Fraction word problems

```lesson
(objective "Solve word problems that add and subtract fractions and mixed numbers with unlike denominators, all of the same whole, with models and equations.")
(standards "5.NF.A.2")
(minutes 30)
```

To solve a word problem with fractions, draw it, write an equation,
solve it, and check it with an estimate.

Ana walks $3/4$ mile to school, then $1/3$ mile to the park. How far
does she walk?

Both fractions are of the same whole: 1 mile.

$$ 3/4 + 1/3 = 9/12 + 4/12 $$

$$ 9/12 + 4/12 = 13/12 = 1 1/12 $$

Check: $3/4$ is close to 1, and $1/3$ is a small part more. So a
little more than 1 mile is reasonable.

```figure
(number-line 30 290 110 0 2 0.25 1)
(nl-jump 0 0.75 'cool "3/4")
(nl-jump 0.75 (/ 13 12) 'warm "1/3")
(nl-mark (/ 13 12) 'warm)
(text 160 170 "miles" 'centre 'small)
(caption "3/4 mile + 1/3 mile = 1 1/12 miles")
```

```check
(number
  (ask "Ben reads for" (math "1/2") "hour, then for" (math "1/6") "hour more. How long does he read? Write it as a fraction of an hour.")
  (answer 0.6666666667) (within 0.0001) (unit "hour") (from "1/2 + 1/6")
  (wrong-if 0.25 "2/8 adds the tops and the bottoms. In sixths: 3/6 + 1/6 = 4/6.")
  (hint "1/2 = 3/6.")
  (hint "3/6 + 1/6 = ?"))
```

---

## How much is left?

A ribbon is $2 1/2$ yards long. Lin cuts off $3/4$ yard. How much is
left?

The equation is $2 1/2 - 3/4 = n$, where $n$ is the length left. In
fourths: $2 2/4 - 3/4$. Regroup: $1 6/4 - 3/4 = 1 3/4$.

Check: about $2 1/2 - 1 = 1 1/2$. $1 3/4$ yards is close.

```figure
(m5p3-tape 30 100 260 30 10 7 'cool "2 1/2 yards" "1/4")
(text 121 178 "left: 1 3/4 yards" 'centre 'small 'bold)
(text 251 178 "cut: 3/4" 'centre 'small)
```

```check
(number
  (ask "A jug holds" (math "1 1/2") "liters of juice. Sam pours out" (math "2/3") "liter. How much is left, in liters?")
  (answer 0.8333333333) (within 0.0001) (unit "liters") (from "1 1/2 - 2/3")
  (wrong-if 2.1666666667 "That adds the 2/3. Pouring out takes away: 9/6 - 4/6.")
  (hint "1 1/2 = 3/2 = 9/6.")
  (hint "9/6 - 4/6 = ?"))
```

---

## How much more?

Tom runs $1 2/5$ kilometers on Monday and $2 1/2$ kilometers on Tuesday.
How much farther does he run on Tuesday?

"How much farther" means subtract: $2 1/2 - 1 2/5$.

In tenths: $2 5/10 - 1 4/10 = 1 1/10$ kilometers.

```check
(number
  (ask "Eva's plant is" (math "3 1/4") "inches tall. Leo's is" (math "5 2/3") "inches tall. How much taller is Leo's plant, in inches?")
  (answer 2.4166666667) (within 0.0001) (unit "inches") (from "5 2/3 - 3 1/4")
  (wrong-if 8.9166666667 "\"How much taller\" asks for the difference, so subtract.")
  (hint "Subtract: 5 2/3 - 3 1/4.")
  (hint "In twelfths: 5 8/12 - 3 3/12."))
```

---

## Worked example

```example
(example
  (problem "In a garden, 1/3 is tomatoes and 1/4 is beans. The rest is flowers. What part is flowers?")
  (step "The whole garden is 1.")
  (step "Tomatoes and beans: 1/3 + 1/4 = 4/12 + 3/12 = 7/12.")
  (step "Flowers: 1 - 7/12 = 12/12 - 7/12 = 5/12.")
  (answer "5/12 of the garden is flowers."))
```

```example
(example
  (problem "A bag has 2 3/4 pounds of rice. Mo uses 1 1/3 pounds. How much is left?")
  (step "Equation: 2 3/4 - 1 1/3 = ?")
  (step (number (ask "In twelfths: 2 9/12 - 1 4/12 = ? pounds") (answer 1.4166666667) (within 0.0001)
    (from "2 9/12 - 1 4/12")
    (wrong-if 4.0833333333 "Mo uses rice, so it is taken away. Subtract.")))
  (answer "1 5/12 pounds are left."))
```

---

## Practice

```check
(number
  (ask "Kai paints" (math "2/5") "of a fence in the morning and" (math "1/3") "of it after lunch. What part of the fence has he painted?")
  (answer 0.7333333333) (within 0.0001) (from "2/5 + 1/3")
  (wrong-if 0.375 "3/8 adds the tops and the bottoms. In fifteenths: 6/15 + 5/15.")
  (hint "Use the denominator 15."))
```

```check
(number
  (ask "A path is" (math "4 1/2") "kilometers long. Rosa has walked" (math "2 5/6") "kilometers. How far does she still have to go, in kilometers?")
  (answer 1.6666666667) (within 0.0001) (unit "kilometers") (from "4 1/2 - 2 5/6")
  (wrong-if 2.3333333333 "That takes 3/6 from 5/6, the wrong way round. Regroup: 3 9/6 - 2 5/6.")
  (hint "4 1/2 = 4 3/6.")
  (hint "Regroup: 4 3/6 = 3 9/6."))
```

---

```check
(number
  (ask "A recipe uses" (math "3/4") "cup of milk and" (math "2/3") "cup of water. How many cups of liquid in all?")
  (answer 1.4166666667) (within 0.0001) (unit "cups") (from "3/4 + 2/3")
  (wrong-if 0.7142857143 "5/7 adds the tops and the bottoms. In twelfths: 9/12 + 8/12.")
  (hint "Use twelfths.")
  (hint "9/12 + 8/12 = 17/12."))
```

```check
(choice
  (ask "Noor says" (math "1/2") "of her pizza plus" (math "1/2") "of her friend's bigger pizza is 1 whole pizza. What is wrong?")
  (right "The halves are of different wholes, so they are not the same size")
  (wrong "Nothing: 1/2 + 1/2 = 1"
    "1/2 + 1/2 = 1 only when both halves are of the same whole. Half of a bigger pizza is more than half of hers.")
  (wrong "She should get 2/4"
    "2/4 adds the tops and the bottoms. The real trouble is that the two wholes are not the same size.")
  (hint "Are the two pizzas the same size?"))
```

For a fraction word problem: draw it, write an equation with one whole,
solve, and check with an estimate.
