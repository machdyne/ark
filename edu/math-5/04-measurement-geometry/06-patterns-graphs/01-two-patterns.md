# Two patterns side by side

```lesson
(objective "Make two number patterns from two rules with the same start, such as \"start at 0, add 3\" and \"start at 0, add 6\", and line up their terms in a table.")
(standards "5.OA.B.3")
(minutes 20)
(keywords "corresponding terms")
```

You can make two patterns and line up their terms in a table.

Pattern A: start at 0, add 3. Its terms are 0, 3, 6, 9, 12, ...

```check
(number
  (ask "Pattern A: start at 0, add 3. What is the term after 12?")
  (answer 15) (from "12 + 3")
  (wrong-if 13 "That adds 1. The rule is add 3: 12 + 3.")
  (wrong-if 24 "That doubles 12. The rule adds 3 each time.")
  (hint "Add 3 to 12."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.OA.B.3: generate two numerical patterns using two given rules; identify relationships between corresponding terms")
```

---

## A second pattern

Pattern B: start at 0, add 6. Its terms are 0, 6, 12, 18, ...

```check
(number
  (ask "Pattern B: start at 0, add 6. What is its fifth term? (0 is the first.)")
  (answer 24) (from "0 + 6 + 6 + 6 + 6")
  (wrong-if 30 "30 is the sixth term. Count: 0 is the first, 6 the second, 12 the third, 18 the fourth.")
  (wrong-if 18 "18 is the fourth term. Add 6 once more.")
  (hint "0, 6, 12, 18, ..."))
```

---

## Line them up

Write the two patterns in a table, term by term. Terms in the same row are **corresponding terms**: they are in the same place in each pattern.

```figure
(m5p4-table 40 20 80 '(("term" "A: add 3" "B: add 6") ("1st" "0" "0") ("2nd" "3" "6") ("3rd" "6" "12") ("4th" "9" "18") ("5th" "12" "24")))
(caption "Each row: corresponding terms")
```

The 3rd terms, 6 and 12, are corresponding terms.

```check
(number
  (ask "In pattern B, which term corresponds to 9 in pattern A?")
  (answer 18) (from "4 * 6 - 6")
  (wrong-if 9 "9 is in pattern A. Look across the same row, to pattern B.")
  (wrong-if 12 "12 is in pattern B, but it is in the 3rd row. 9 is the 4th term of A.")
  (hint "Find 9 in column A, then look across the row."))
```

---

## A worked example

```example
(example
  (problem "Make a table of 4 terms: pattern C, start at 0, add 2; pattern D, start at 0, add 10.")
  (step "C: 0, 2, 4, 6.")
  (step "D: 0, 10, 20, 30.")
  (step (number (ask "Which term of D corresponds to 4 in C?") (answer 20) (from "10 + 10")
          (wrong-if 10 "4 is the 3rd term of C. The 3rd term of D is 20.")))
  (answer "Rows: 0 and 0, 2 and 10, 4 and 20, 6 and 30."))
```

---

## Practice

```check
(number
  (ask "Pattern E: start at 0, add 4. Pattern F: start at 0, add 12. What is the 4th term of F?")
  (answer 36) (from "0 + 12 + 12 + 12")
  (wrong-if 48 "48 is the 5th term. 0 is the 1st, 12 the 2nd, 24 the 3rd.")
  (hint "0, 12, 24, ..."))
```

```check
(number
  (ask "For E and F above, which term of F corresponds to 8 in E?")
  (answer 24) (from "12 + 12")
  (wrong-if 12 "8 is the 3rd term of E: 0, 4, 8. The 3rd term of F is 24.")
  (hint "E: 0, 4, 8. Which place is 8 in?"))
```

Two patterns in a table put their corresponding terms side by side, in the same row.
