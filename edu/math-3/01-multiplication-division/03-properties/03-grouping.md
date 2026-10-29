# Grouping factors

```lesson
(objective "Use the associative property to multiply three factors, grouping them with parentheses.")
(standards "3.OA.B.5")
(minutes 20)
(keywords "parentheses" "associative property")
```

You can multiply 3 numbers by choosing which 2 to multiply first.

## Do this first

The curved marks ( ) are **parentheses**. They hug the part of a
problem you do first.

$$ (2 × 4) × 3 $$

First do 2 × 4 = 8. Then do 8 × 3 = 24.

```check
(number
  (ask "Find (5 × 2) × 4. Do the part in parentheses first.")
  (answer 40) (from "(5 * 2) * 4")
  (wrong-if 11 "11 is 5 + 2 + 4. These are × signs: 5 × 2 = 10, then 10 × 4.")
  (wrong-if 20 "20 is 5 × 4, which skips the 2. First 5 × 2 = 10, then 10 × 4.")
  (hint "5 × 2 = 10. Now find 10 × 4."))
```

---

## Any grouping works

Find 3 × 5 × 2 in 2 ways. Group the first 2 factors, or the last 2.

```figure
(math 160 60 "(3 * 5) * 2" 24)
(label 160 95 "= 15 × 2 = 30" 'body)
(math 160 150 "3 * (5 * 2)" 24)
(label 160 185 "= 3 × 10 = 30" 'body)
```

Both ways give 30. The **associative property** of multiplication says
you can group the factors any way. The product stays the same.

```check
(choice
  (ask "Is (4 × 2) × 5 equal to 4 × (2 × 5)?")
  (right "Yes, both are 40" (true "(4 * 2) * 5 = 4 * (2 * 5)"))
  (wrong "No, the ( ) moved"
    "The parentheses change what you do first, not the answer. (4 × 2) × 5 = 8 × 5 = 40, and 4 × (2 × 5) = 4 × 10 = 40.")
  (hint "Work out both. Compare."))
```

---

## Pick the easy way

Some groupings are easier. Look for 2 factors that make 10, or a fact
you know well.

In 7 × 5 × 2, the 5 × 2 makes 10. So 7 × (5 × 2) = 7 × 10 = 70.

```check
(number
  (ask "Find 6 × 5 × 2. Group the 5 × 2 first.")
  (answer 60) (from "6 * (5 * 2)")
  (wrong-if 13 "13 is 6 + 5 + 2. Multiply: 5 × 2 = 10, then 6 × 10.")
  (wrong-if 30 "30 is 6 × 5, without the 2. Then you still multiply 30 × 2, or do 6 × 10.")
  (hint "5 × 2 = 10. What is 6 × 10?"))
```

---

## Worked example

```example
(example
  (problem "Find 2 × 4 × 5.")
  (step "Look for an easy pair. 2 × 5 = 10, but they are not next to each other.")
  (step "Swap the last 2 factors: 2 × 4 × 5 = 2 × 5 × 4.")
  (step "Group them: (2 × 5) × 4 = 10 × 4 = 40.")
  (answer "2 × 4 × 5 = 40"))
```

```example
(example
  (problem "Find 3 × 3 × 2.")
  (step "Group the last 2: 3 × (3 × 2).")
  (step "3 × 2 = 6, so it is 3 × 6.")
  (step (number (ask "3 × 6 = ?") (answer 18) (from "3 * (3 * 2)")
    (wrong-if 9 "9 is 3 + 6. 3 × 6 means 3 groups of 6: 6 + 6 + 6.")))
  (answer "3 × 3 × 2 = 18"))
```

---

## Practice

```check
(number
  (ask "Find (2 × 3) × 3.")
  (answer 18) (from "(2 * 3) * 3")
  (wrong-if 8 "8 is 2 + 3 + 3. Multiply: 2 × 3 = 6, then 6 × 3.")
  (hint "First 2 × 3. Then multiply by 3."))
```

```check
(number
  (ask "Find the missing number: (4 × 2) × 3 = 4 × (2 × ?)")
  (answer 3) (true "(4 * 2) * 3 = 4 * (2 * 3)")
  (wrong-if 4 "Grouping does not change the factors, only which 2 go together. The factors are 4, 2 and 3.")
  (wrong-if 24 "24 is the product. The missing number is one of the factors.")
  (hint "The same 3 factors are on each side."))
```

---

```check
(number
  (ask "A box has 2 rows of 5 crayons. A pack holds 4 boxes. How many crayons are in a pack? (4 × 2 × 5)")
  (answer 40) (from "4 * (2 * 5)")
  (wrong-if 11 "11 is 4 + 2 + 5. Each box holds 2 × 5 = 10 crayons, and there are 4 boxes.")
  (wrong-if 20 "20 is 4 × 5, which leaves out the 2 rows. Each box holds 2 × 5 = 10.")
  (hint "One box holds 2 × 5. Then multiply by 4 boxes."))
```

So: with 3 factors, by the associative property, you can multiply any 2 first. Parentheses show which.
