# Multiplying fractions

```lesson
(objective "Multiply two fractions by multiplying the numerators and the denominators, (a/b) x (c/d) = (a x c)/(b x d), and write the product in simplest form.")
(standards "5.NF.B.4a")
(minutes 25)
```

The area model shows a rule. In $(2/3) * (4/5)$:

- the parts where they cross: $2 * 4 = 8$, the numerators multiplied;
- all the parts: $3 * 5 = 15$, the denominators multiplied.

$$ (2/3) * (4/5) = (2 * 4)/(3 * 5) = 8/15 $$

```figure
(m5p3-area 80 20 160 160 2 3 4 5)
(text 160 205 "2 x 4 = 8 parts cross" 'centre 'small)
(text 160 222 "3 x 5 = 15 parts in all" 'centre 'small)
```

```check
(fraction
  (ask "Find" (math "(3/5) * (1/2)") ".")
  (answer 3 10) (equivalent) (true "(3/5) * (1/2) = 3/10")
  (wrong-if (4 7) "That adds the tops and the bottoms. To multiply, multiply them: 3 x 1 and 5 x 2.")
  (wrong-if (6 10) "Multiply the numerators: 3 x 1 = 3, not 3 x 2.")
  (hint "Numerators: 3 x 1. Denominators: 5 x 2."))
```

---

## The rule

To multiply two fractions, multiply the numerators, and multiply the
denominators:

$$ (a/b) * (c/d) = (a * c)/(b * d) $$

You do not need a common denominator to multiply. That is only for
adding and subtracting.

```check
(choice
  (ask "To find" (math "(1/4) * (2/3)") ", what do you do first?")
  (right "Multiply 1 x 2 and 4 x 3" (true "(1/4) * (2/3) = 2/12"))
  (wrong "Write both in twelfths first"
    "A common denominator is for adding and subtracting. To multiply, just multiply tops and bottoms.")
  (wrong "Multiply 1 x 3 and 4 x 2"
    "That crosses over. Multiply top with top (1 x 2) and bottom with bottom (4 x 3).")
  (hint "Top times top, bottom times bottom."))
```

---

## Simplest form

Products are often not in simplest form. $(3/4) * (2/3) = 6/12$. 6 and
12 have the common factor 6:

$$ 6/12 = (6 ÷ 6)/(12 ÷ 6) = 1/2 $$

```check
(fraction
  (ask "Find" (math "(2/5) * (5/6)") ". Write it in simplest form.")
  (answer 1 3) (equivalent) (simplest) (true "(2/5) * (5/6) = 1/3")
  (wrong-if (7 11) "That adds. Multiply: 2 x 5 = 10 and 5 x 6 = 30.")
  (hint "Multiply: 10/30.")
  (hint "10 and 30 have the common factor 10."))
```

---

## Worked example

```example
(example
  (problem "Find (4/9) x (3/8) in simplest form.")
  (step "Multiply the numerators: 4 x 3 = 12.")
  (step "Multiply the denominators: 9 x 8 = 72.")
  (step "12/72: divide both by 12. 12/72 = 1/6.")
  (answer "(4/9) x (3/8) = 1/6."))
```

```example
(example
  (problem "Find (5/6) x (3/10) in simplest form.")
  (step "(5 x 3)/(6 x 10) = 15/60.")
  (step (fraction (ask "Write 15/60 in simplest form.") (answer 1 4) (equivalent) (simplest) (true "15/60 = 1/4")
    (wrong-if (3 12) "3/12 is equal, but 3 and 12 still share 3. Divide again.")))
  (answer "(5/6) x (3/10) = 1/4."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "(2/3) * (2/7)") ".")
  (answer 4 21) (equivalent) (true "(2/3) * (2/7) = 4/21")
  (wrong-if (4 10) "Multiply the denominators: 3 x 7 = 21, not 3 + 7.")
  (hint "2 x 2 and 3 x 7."))
```

```check
(fraction
  (ask "Find" (math "(3/8) * (4/9)") ". Write it in simplest form.")
  (answer 1 6) (equivalent) (simplest) (true "(3/8) * (4/9) = 1/6")
  (wrong-if (7 17) "That adds. Multiply: 12/72.")
  (hint "12/72.")
  (hint "12 and 72 have the common factor 12."))
```

---

```check
(fraction
  (ask "Find" (math "(5/12) * (6/5)") ". Write it in simplest form.")
  (answer 1 2) (equivalent) (simplest) (true "(5/12) * (6/5) = 1/2")
  (wrong-if (11 17) "Multiply, do not add: 30/60.")
  (hint "30/60."))
```

```check
(choice
  (ask "Ana says" (math "(1/2) * (1/2) = 2/4") ". What do you say?")
  (right "Half of a half is 1/4: multiply 1 x 1 = 1, not 1 + 1" (true "(1/2) * (1/2) = 1/4"))
  (wrong "She is right"
    "2/4 = 1/2, but half of 1/2 is smaller than 1/2. Multiply the tops: 1 x 1 = 1. So 1/4.")
  (wrong "It is 1/2, since 1 x 1 = 1 and 2 x 1 = 2"
    "The denominators are both 2: 2 x 2 = 4. Half of a half is 1/4.")
  (hint "Is half of 1/2 equal to 1/2?"))
```

To multiply fractions, multiply the numerators and multiply the
denominators, then simplify.
