# How two patterns are related

```lesson
(objective "Find a relationship between corresponding terms, such as each term of the second pattern is 2 times the term of the first, and explain why it keeps going.")
(standards "5.OA.B.3")
(minutes 25)
```

You can find a rule that links corresponding terms of two patterns.

```figure
(m5p4-table 40 20 80 '(("term" "A: add 3" "B: add 6") ("1st" "0" "0") ("2nd" "3" "6") ("3rd" "6" "12") ("4th" "9" "18") ("5th" "12" "24")))
```

Look across each row: 3 and 6, 6 and 12, 9 and 18. Each term of B is 2 times the term of A.

```check
(choice
  (ask "Which is true for every row of this table?")
  (right "B is 2 times A." (true "2 * 9 = 18"))
  (wrong "B is A + 3." (false "9 + 3 = 18") "3 + 3 = 6 works, but 9 + 3 = 12, not 18. Check every row.")
  (wrong "B is A + 6." (false "9 + 6 = 18") "That is B's own rule, from one term to the next. Across a row, 9 and 18: 2 times.")
  (hint "Try the row 9 and 18."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.OA.B.3: explain informally why the terms of one sequence are twice the corresponding terms of the other")
```

---

## Why it keeps going

Both start at 0. Each step, A adds 3 and B adds 6, which is 2 groups of 3.

So B grows 2 times as fast as A, step after step. The 2 times never breaks.

```check
(number
  (ask "The 20th term of A is 57. What is the 20th term of B?")
  (answer 114) (from "2 * 57")
  (wrong-if 60 "That adds 3. Each term of B is 2 times the term of A: 2 × 57.")
  (wrong-if 63 "That adds 6, B's own rule. Across the patterns, B is 2 times A.")
  (hint "B = 2 × A."))
```

---

## Other rules

Pattern C: start at 0, add 2. Pattern D: start at 0, add 8. D adds 4 times as much each step.

```figure
(m5p4-table 40 20 80 '(("term" "C: add 2" "D: add 8") ("1st" "0" "0") ("2nd" "2" "8") ("3rd" "4" "16") ("4th" "6" "24")))
```

```check
(choice
  (ask "How is each term of D related to the term of C?")
  (right "D is 4 times C." (true "4 * 6 = 24"))
  (wrong "D is C + 6." (false "6 + 6 = 24") "2 + 6 = 8 works, but 4 + 6 = 10, not 16. Look for a times rule.")
  (wrong "D is 2 times C." (false "2 * 6 = 24") "2 × 2 = 4, not 8. Each term of D is 4 times C: 4 × 2 = 8.")
  (hint "8 ÷ 2 = ?"))
```

---

## A worked example

```example
(example
  (problem "Pattern E: start at 0, add 5. Pattern F: start at 0, add 15. How are they related?")
  (step "E: 0, 5, 10, 15. F: 0, 15, 30, 45.")
  (step "Across: 5 and 15, 10 and 30, 15 and 45.")
  (step (number (ask "Each term of F is how many times the term of E?") (answer 3) (from "15 / 5")
          (wrong-if 10 "15 - 5 = 10 works for one row, but 30 - 10 = 20. Look for a times rule: 15 ÷ 5.")))
  (answer "F is 3 times E, because F adds 3 times as much as E at each step."))
```

---

## Practice

```check
(number
  (ask "Pattern G: start at 0, add 4. Pattern H: start at 0, add 20. Each term of H is how many times the term of G?")
  (answer 5) (from "20 / 4")
  (wrong-if 16 "That is 20 - 4. Compare by times: 20 is 5 times 4.")
  (hint "20 ÷ 4 = ?"))
```

```check
(number
  (ask "For G and H above, a term of G is 36. What is the corresponding term of H?")
  (answer 180) (from "5 * 36")
  (wrong-if 56 "That adds 20. H is 5 times G: 5 × 36.")
  (hint "H = 5 × G."))
```

When two patterns start at 0, and one adds n times as much each step, its terms are n times the other's.
