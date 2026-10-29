# Factors and products

```lesson
(objective "Name the factors and the product in a multiplication equation and say what each one counts.")
(standards "3.OA.A.1")
(minutes 20)
(keywords "factor (of a product)" "product (of numbers)")
```

Each number in a multiplication equation has a name and a job.

$$ 3 × 6 = 18 $$

The numbers you multiply are the **factors**. Here the factors are 3
and 6. In this course, the first factor, 3, counts the groups. The second factor, 6,
counts how many are in each group.

```figure
(md-groups 50 50 3 6 34 3 'ink)
(label 160 150 "3 groups of 6" 'body)
(math 160 190 "3 * 6 = 18" 24)
```

```check
(choice
  (ask "In the picture, what does the factor 3 count?")
  (right "The number of groups")
  (wrong "How many are in each group"
    "That is the job of the second factor, 6. The first factor, 3, counts the groups.")
  (wrong "How many there are in all"
    "The total is 18, the number after the = sign. 3 is a factor: it counts the groups.")
  (hint "3 × 6 means 3 groups of 6."))
```

---

## The product

The answer to a multiplication is the **product**. In 3 × 6 = 18, the
product is 18. It counts how many there are in all.

| 3 | × | 6 | = | 18 |
| factor | | factor | | product |

```check
(number
  (ask "What is the product in 7 × 2 = 14?")
  (answer 14)
  (wrong-if 7 "7 is a factor: one of the numbers you multiply. The product is the answer.")
  (wrong-if 2 "2 is a factor: one of the numbers you multiply. The product is the answer.")
  (hint "The product comes after the = sign here."))
```

---

## What each number counts

Look at the picture. There are 4 groups, with 3 in each group.

```figure
(md-groups 18 60 4 3 32 4 'ink)
(math 160 170 "4 * 3 = 12" 24)
```

```check
(choice
  (ask "In 4 × 3 = 12, what does 12 count?")
  (right "All the dots")
  (wrong "The groups"
    "There are 4 groups, not 12. The factor 4 counts the groups. 12 is the product: all the dots.")
  (wrong "The dots in one group"
    "Each group has 3 dots. That is the factor 3. The product, 12, counts every dot.")
  (hint "12 is the product. What does a product count?"))
```

---

## Worked example

```example
(example
  (problem "Ana has 5 jars with 4 shells in each. She writes 5 × 4 = 20. Name each number.")
  (step "5 is a factor. It counts the jars: the groups.")
  (step "4 is a factor. It counts the shells in each jar.")
  (step "20 is the product. It counts all the shells.")
  (answer "Factors: 5 and 4. Product: 20."))
```

```example
(example
  (problem "Ben has 6 boxes with 3 toy cars in each. He writes 6 × 3 = 18. Name the product.")
  (step "6 is a factor. It counts the boxes.")
  (step "3 is a factor. It counts the cars in each box.")
  (step (choice (ask "Which number is the product?")
    (right "18")
    (wrong "6" "6 is a factor. It counts the boxes. The product is the answer, after the = sign.")
    (wrong "3" "3 is a factor. It counts the cars in one box. The product counts all the cars.")))
  (answer "The product is 18: all the toy cars."))
```

---

## Practice

```check
(number
  (ask "Find the product of 2 and 8.")
  (answer 16) (from "2 * 8")
  (wrong-if 10 "10 is the sum, 2 + 8. The product is what you get when you multiply: 2 × 8.")
  (hint "Multiply: 2 groups of 8 is 8 + 8."))
```

```check
(choice (several)
  (ask "In 9 × 5 = 45, which numbers are factors? Choose all.")
  (right "9")
  (right "5")
  (wrong "45"
    "45 is the product, the answer. The factors are the numbers you multiply.")
  (hint "The factors are the numbers on each side of the × sign."))
```

---

```check
(number
  (ask "Ty has 3 bags. Each bag has 7 grapes. In 3 × 7, what is the product?")
  (answer 21) (from "3 * 7")
  (wrong-if 10 "10 is 3 + 7, the sum. The product is the total of 3 groups of 7: 7 + 7 + 7.")
  (hint "7 + 7 + 7"))
```

```check
(choice
  (ask "4 × 6 = 24 tells about 4 cups of pencils. What does 6 count?")
  (right "The pencils in each cup")
  (wrong "The cups"
    "The first factor, 4, counts the cups. The second factor counts the pencils in each cup.")
  (wrong "All the pencils"
    "All the pencils is the product, 24. The factor 6 counts the pencils in one cup.")
  (hint "6 is the second factor."))
```

So: the factors are the numbers you multiply, and the product is the total they make.
