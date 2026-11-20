# Multiplying mixed numbers

```lesson
(objective "Multiply mixed numbers by writing them as fractions greater than 1 or with the distributive property, such as 2 1/2 x 3 = 7 1/2.")
(standards "5.NF.B.4a" "5.NF.B.6")
(minutes 25)
```

There are two ways to multiply a mixed number.

Way 1, as a fraction: write the mixed number as a fraction greater
than 1, then multiply.

$$ 2 1/2 * 3 = (5/2) * 3 $$

$$ (5/2) * 3 = 15/2 = 7 1/2 $$

```check
(number
  (ask "Find" (math "1 1/4 * 2") "by writing" (math "1 1/4") "as a fraction. Type it like 2 1/4.")
  (answer 2.5) (from "(5/4) * 2")
  (wrong-if 2.25 "That doubles only the 1, not the 1/4. (5/4) x 2 = 10/4.")
  (hint "1 1/4 = 5/4.")
  (hint "(5/4) x 2 = 10/4."))
```

---

## Way 2: the distributive property

$2 1/2$ is $2 + 1/2$. Multiply each part by 3, then add:

$$ (2 + 1/2) * 3 = 2 * 3 + (1/2) * 3 $$

$$ 6 + 3/2 = 7 1/2 $$

```figure
(frac-bar-at 20 40 80 30 1 1 'cool)
(frac-bar-at 110 40 80 30 1 1 'cool)
(frac-bar-at 200 40 80 30 2 1 'cool)
(text 290 60 "x 3" 'left 'body 'bold)
(text 100 110 "2 x 3 = 6" 'centre 'body)
(math 245 110 "(1/2) * 3 = 3/2" 16)
(math 160 170 "6 + 3/2 = 7 1/2" 22)
```

```check
(number
  (ask "Find" (math "3 1/3 * 6") "with the distributive property.")
  (answer 20) (from "3 * 6 + (1/3) * 6")
  (wrong-if 18.3333333333 "That multiplies only the 3 by 6. Multiply the 1/3 by 6 too: 2 more.")
  (wrong-if 19 "(1/3) x 6 = 6/3 = 2, not 1.")
  (hint "3 x 6 = 18.")
  (hint "(1/3) x 6 = 2."))
```

---

## Two mixed numbers

With two mixed numbers, writing both as fractions is easiest:

$$ 1 1/2 * 2 1/3 = (3/2) * (7/3) $$

$$ (3/2) * (7/3) = 21/6 = 3 1/2 $$

Do not multiply only the wholes and the parts: $1 * 2 = 2$ and
$(1/2) * (1/3) = 1/6$ gives $2 1/6$, which is too small. It leaves out
$1 * (1/3)$ and $(1/2) * 2$.

```check
(number
  (ask "Find" (math "1 1/3 * 1 1/2") ".")
  (answer 2) (from "(4/3) * (3/2)")
  (wrong-if 1.1666666667 "That is 1 x 1 + (1/3) x (1/2). Write both as fractions: (4/3) x (3/2).")
  (hint "(4/3) x (3/2) = 12/6."))
```

---

## Worked example

```example
(example
  (problem "Find 4 x 2 3/4.")
  (step "Distributive property: 4 x 2 + 4 x (3/4).")
  (step "4 x 2 = 8, and 4 x (3/4) = 12/4 = 3.")
  (step "8 + 3 = 11.")
  (answer "4 x 2 3/4 = 11."))
```

```example
(example
  (problem "Find 2 1/2 x 1 1/5.")
  (step "As fractions: (5/2) x (6/5).")
  (step (number (ask "(5/2) x (6/5) = 30/10 = ?") (answer 3) (from "(5/2) * (6/5)")
    (wrong-if 2.1 "That is 2 x 1 + (1/2) x (1/5). Use the fractions: 30/10.")))
  (answer "2 1/2 x 1 1/5 = 3."))
```

---

## Practice

```check
(number
  (ask "Find" (math "5 * 1 2/5") ".")
  (answer 7) (from "5 * (7/5)")
  (wrong-if 5.4 "That multiplies only the 1 by 5. 5 x (2/5) = 2, so 5 + 2 = 7.")
  (hint "5 x 1 + 5 x (2/5)."))
```

```check
(number
  (ask "Find" (math "2 1/4 * 2") ". Type it like 2 1/4.")
  (answer 4.5) (from "(9/4) * 2")
  (wrong-if 4.25 "Double the 1/4 too: (1/4) x 2 = 1/2.")
  (hint "(9/4) x 2 = 18/4."))
```

---

```check
(number
  (ask "Find" (math "1 1/2 * 1 1/2") ". Type it like 2 1/4.")
  (answer 2.25) (from "(3/2) * (3/2)")
  (wrong-if 1.25 "That is 1 x 1 + (1/2) x (1/2). Use (3/2) x (3/2) = 9/4.")
  (hint "(3/2) x (3/2)."))
```

```check
(number
  (ask "A path is" (math "2 2/3") "miles long. Kim walks it 3 times. How many miles does she walk?")
  (answer 8) (unit "miles") (from "(8/3) * 3")
  (wrong-if 6.6666666667 "Multiply the 2/3 by 3 as well: 3 x (2/3) = 2. So 6 + 2.")
  (hint "3 x 2 + 3 x (2/3)."))
```

To multiply mixed numbers, write them as fractions greater than 1, or
multiply each part with the distributive property and add.
