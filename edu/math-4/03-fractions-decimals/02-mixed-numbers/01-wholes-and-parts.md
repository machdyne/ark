# Wholes and parts

```lesson
(objective "Decompose a mixed number into wholes and a fraction, such as 2 1/8 = 1 + 1 + 1/8 = 8/8 + 8/8 + 1/8.")
(standards "4.NF.B.3b")
(minutes 20)
```

You can break a mixed number into wholes and a fraction.

A mixed number, like $2 1/8$, is a whole number and a fraction
together. It means 2 wholes and $1/8$ more:

$$ 2 1/8 = 1 + 1 + 1/8 $$

```figure
(m4p3-wholes 60 30 220 32 17 8 'warm)
(math 30 47 "1" 20)
(math 30 87 "1" 20)
(math 30 127 "1/8" 18)
(math 160 200 "2 1/8 = 1 + 1 + 1/8" 22)
```

```check
(number
  (ask "3 1/4 = 1 + 1 + 1 + 1/4. How many wholes are in" (math "3 1/4") "?")
  (answer 3) (true "3 1/4 = 1 + 1 + 1 + 1/4")
  (wrong-if 4 "The 4 is the denominator: the wholes are cut in fourths. The whole number is 3.")
  (wrong-if 1 "1 is the numerator of the fraction part. There are 3 wholes.")
  (hint "Look at the whole number in front."))
```

---

## Each whole as a fraction

A whole bar cut in eighths has 8 parts. So 1 whole is $8/8$. You can
write each 1 as eighths:

$$ 2 1/8 = 8/8 + 8/8 + 1/8 $$

```check
(fraction
  (ask "1 whole cut into fifths is how many fifths? Write it as a fraction.")
  (answer 5 5) (true "5/5 = 1")
  (wrong-if (1 5) "1/5 is one part. The whole has all 5 parts.")
  (hint "Count all the parts of the whole."))
```

---

## Write the sum

To decompose $1 3/5$ into fifths, write the 1 as $5/5$:

$$ 1 3/5 = 5/5 + 3/5 $$

```check
(fraction
  (ask "Finish: 2 2/3 = 3/3 + 3/3 + ?")
  (answer 2 3) (equivalent) (true "2 2/3 = 3/3 + 3/3 + 2/3")
  (wrong-if (3 3) "Each 3/3 is a whole. 2 wholes are done; now add the fraction part.")
  (hint "The part after the wholes is the fraction in 2 2/3."))
```

---

## Worked example

```example
(example
  (problem "Decompose 3 1/2 into wholes and halves.")
  (step "3 1/2 = 1 + 1 + 1 + 1/2.")
  (step "Each 1 is 2/2.")
  (answer "3 1/2 = 2/2 + 2/2 + 2/2 + 1/2."))
```

```example
(example
  (problem "Decompose 1 5/6 into sixths.")
  (step "1 5/6 = 1 + 5/6.")
  (step (fraction (ask "1 = ? sixths. Write it as a fraction.")
    (answer 6 6) (true "6/6 = 1")
    (wrong-if (1 6) "1/6 is one part. The whole has 6.")))
  (answer "1 5/6 = 6/6 + 5/6."))
```

---

## Practice

```check
(choice
  (ask "Which sum equals" (math "2 3/4") "?")
  (right "4/4 + 4/4 + 3/4" (true "4/4 + 4/4 + 3/4 = 2 3/4"))
  (wrong "2/4 + 3/4" (false "2/4 + 3/4 = 2 3/4")
    "2/4 is half of 1 whole, not 2 wholes. Each whole is 4/4.")
  (wrong "1 + 1 + 1 + 3/4" (false "1 + 1 + 1 + 3/4 = 2 3/4")
    "That is 3 wholes and 3/4. 2 3/4 has only 2 wholes.")
  (hint "Write each whole as 4/4."))
```

```check
(number
  (ask "1 + 1 + 1 + 1 + 5/8 is what mixed number? Type it like 2 1/4.")
  (answer 4.625) (from "4 + 5/8")
  (wrong-if 5 "There are 4 wholes and 5/8 more. 5 is the numerator.")
  (wrong-if 4 "Do not forget the 5/8.")
  (hint "Count the 1s. Then write the fraction after them."))
```

---

```check
(fraction
  (ask "Finish: 1 7/10 = ? + 7/10. Write the whole as tenths.")
  (answer 10 10) (true "10/10 + 7/10 = 1 7/10")
  (wrong-if (1 10) "1/10 is one part. 1 whole is 10 tenths.")
  (hint "1 whole = how many tenths?"))
```

So: a mixed number is wholes and a fraction; each whole can be
written as $b/b$.
