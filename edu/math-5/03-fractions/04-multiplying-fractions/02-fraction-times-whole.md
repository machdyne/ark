# A fraction times a whole number

```lesson
(objective "Multiply a fraction by a whole number as a x q ÷ b, such as (3/4) x 10 = 30/4 = 7 1/2, and see it equals 10 x (3/4).")
(standards "5.NF.B.4a")
(minutes 25)
```

$3/4$ of 10: 10 does not cut evenly into 4 parts. There is another way.
Multiply by the numerator first, then divide by the denominator:

$$ (3/4) * 10 = (3 * 10)/4 = 30/4 $$

And $30/4 = 30 ÷ 4 = 7 2/4 = 7 1/2$.

```figure
(m5p3-line 30 290 110 10 1 'whole)
(nl-mark 7.5 'warm)
(math (nl-x 7.5) 80 "7 1/2" 18)
(text 160 170 "3 of the 4 equal parts of 10" 'centre 'small)
(text 160 190 "each part is 10/4 = 2 1/2" 'centre 'small)
```

```check
(fraction
  (ask "Find" (math "(2/3) * 5") ". You may write a fraction or a mixed number.")
  (answer 10 3) (equivalent) (true "(2/3) * 5 = 10/3")
  (wrong-if (10 15) "Multiply only the numerator by 5. The denominator stays 3: (2 x 5)/3.")
  (wrong-if (7 3) "That adds 5 to the 2. Multiply: 2 x 5 = 10, so 10/3.")
  (hint "(2 x 5)/3")
  (hint "10/3 = 3 1/3."))
```

---

## Why it works

$3/4$ of 10 is 3 parts, each $1/4$ of 10.

- $1/4$ of 10 is $10/4$.
- 3 of those parts: $3 * (10/4) = 30/4$.

So $(a/b) * q = (a * q)/b$: multiply by $a$, divide by $b$.

```check
(choice
  (ask "Which is equal to" (math "(5/6) * 4") "?")
  (right "(5 x 4)/6 = 20/6" (true "(5/6) * 4 = 20/6"))
  (wrong "5/(6 x 4) = 5/24"
    "5/24 is less than 1/4. But 5/6 of 4 is almost 4. Multiply the numerator, not the denominator.")
  (wrong "(5 x 4)/(6 x 4) = 20/24"
    "20/24 = 5/6. Multiplying top and bottom by 4 does not change 5/6. Multiply only the top.")
  (hint "5/6 of 4 should be close to 4."))
```

---

## The order does not matter

You know $10 * (3/4)$ from grade 4: 10 groups of $3/4$ is $30/4$. And
$(3/4) * 10 = 30/4$ too. The commutative property holds for fractions:

$$ (3/4) * 10 = 10 * (3/4) = 30/4 $$

```check
(fraction
  (ask "Find" (math "6 * (3/8)") ".")
  (answer 18 8) (equivalent) (true "6 * (3/8) = 18/8")
  (wrong-if (18 48) "Multiply only the numerator: 6 x 3 = 18. The parts are still eighths.")
  (wrong-if (9 8) "That adds 6 and 3. Multiply: 6 x 3 = 18.")
  (hint "6 x 3/8 = (6 x 3)/8."))
```

---

## Worked example

```example
(example
  (problem "Find (4/5) x 7.")
  (step "Multiply by the numerator: 4 x 7 = 28.")
  (step "Divide by the denominator: 28/5 = 28 ÷ 5.")
  (step "28 ÷ 5 = 5 R 3, so 28/5 = 5 3/5.")
  (answer "(4/5) x 7 = 28/5 = 5 3/5."))
```

```example
(example
  (problem "Find (3/10) x 4.")
  (step "Multiply by the numerator: 3 x 4 = 12, so 12/10.")
  (step (fraction (ask "Write 12/10 as a mixed number, or leave it.") (answer 12 10) (equivalent) (true "12/10 = 1 2/10")
    (wrong-if (12 40) "The denominator stays 10. Only the numerator was multiplied.")))
  (answer "(3/10) x 4 = 12/10 = 1 2/10 = 1 1/5."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "(5/8) * 3") ".")
  (answer 15 8) (equivalent) (true "(5/8) * 3 = 15/8")
  (wrong-if (15 24) "The denominator stays 8. Multiply only the top: 5 x 3 = 15.")
  (hint "(5 x 3)/8"))
```

```check
(number
  (ask "Find" (math "(3/4) * 6") ". Type it like 2 1/4.")
  (answer 4.5) (from "(3/4) * 6")
  (wrong-if 8 "That is 6 x 4/3. Multiply by 3 and divide by 4: 18/4.")
  (wrong-if 18 "18 is 3 x 6. Then divide by 4: 18/4 = 4 1/2.")
  (hint "3 x 6 = 18.")
  (hint "18 ÷ 4 = 4 R 2."))
```

---

```check
(number
  (ask "A bag of flour weighs 5 pounds. Ty uses" (math "2/3") "of it. How many pounds does he use? Type it like 2 1/4.")
  (answer 3.3333333333) (within 0.0001) (unit "pounds") (from "(2/3) * 5")
  (wrong-if 7.5 "That is 5 x 3/2. 2/3 of the flour is less than all 5 pounds: (2 x 5)/3.")
  (hint "(2 x 5)/3 = 10/3."))
```

```check
(choice
  (ask "Is" (math "(3/4) * 10") "the same as" (math "10 * (3/4)") "?")
  (right "Yes: both are 30/4" (true "(3/4) * 10 = 10 * (3/4)"))
  (wrong "No: 3/4 of 10 is smaller"
    "3/4 of 10 is 30/4, and 10 groups of 3/4 is also 30/4. The order of the factors does not change the product.")
  (wrong "No: 10 x 3/4 is 30/40"
    "10 x 3/4 = (10 x 3)/4 = 30/4. The denominator does not change.")
  (hint "Work out each one."))
```

To multiply a fraction by a whole number, multiply by the numerator
and divide by the denominator: $(a/b) * q = (a * q)/b$.
