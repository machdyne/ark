# Brackets and braces

```lesson
(objective "Evaluate expressions with parentheses inside brackets and brackets inside braces, working from the innermost pair outward.")
(standards "5.OA.A.1")
(minutes 25)
(keywords "brackets (in math)" "braces (in math)")
```

You can evaluate an expression with grouping symbols inside other
grouping symbols, from the inside out.

When one pair of parentheses sits inside another, it is hard to see
which pairs belong together. So the outer pair is often written with
square **brackets**, [ and ]. They group just as parentheses do.

`2 x [3 + (4 - 1)]`

Work from the innermost pair outward:

- Parentheses: 4 - 1 = 3.
- Brackets: 3 + 3 = 6.
- Then 2 × 6 = 12.

```figure
(text 160 60 "2 x [3 + (4 - 1)]" 'centre 'big 'bold)
(text 160 110 "2 x [3 + 3]" 'centre 'big)
(text 160 160 "2 x 6" 'centre 'big)
(text 160 210 "12" 'centre 'big 'bold)
(arrow 160 70 160 92 'ink 1)
(arrow 160 120 160 142 'ink 1)
(arrow 160 170 160 192 'ink 1)
```

```check
(number
  (ask "Evaluate 3 x [10 - (2 + 5)].")
  (answer 9) (from "3 * (10 - (2 + 5))")
  (wrong-if 33 "33 is 3 × 10 - 2 + 5: that leaves out the grouping symbols. Start inside: 2 + 5 = 7, then 10 - 7 = 3, then 3 × 3.")
  (wrong-if 23 "23 is 3 × 10 - 7: the 3 multiplies only the 10. The brackets group 10 - 7 = 3 first. Then 3 × 3 = 9.")
  (hint "Innermost first: 2 + 5.")
  (hint "Then 10 - 7 = 3. Then 3 × 3."))
```

---

## Braces

A third layer is written with curly **braces**, { and }. They group just
as parentheses and brackets do. The usual order from inside to outside
is ( ), then [ ], then { }.

`{20 - [2 x (3 + 4)]} ÷ 3`

- Parentheses: 3 + 4 = 7.
- Brackets: 2 × 7 = 14.
- Braces: 20 - 14 = 6.
- Then 6 ÷ 3 = 2.

```check
(number
  (ask "Evaluate {5 + [4 x (6 - 3)]} - 7.")
  (answer 10) (from "(5 + (4 * (6 - 3))) - 7")
  (wrong-if 17 "17 is the value inside the braces. Finish the expression: 17 - 7 = 10.")
  (wrong-if 19 "19 is 5 + 4 × 6 - 3 - 7: that leaves out the grouping symbols. 4 × (6 - 3) is 4 × 3 = 12. Then 5 + 12 = 17, and 17 - 7 = 10.")
  (hint "6 - 3 = 3. Then 4 × 3 = 12.")
  (hint "5 + 12 = 17. Then 17 - 7."))
```

---

## Inside each pair, the usual order

Inside any pair, use the order of operations as usual. In
`[8 + 2 x 3] ÷ 7`, multiply before you add: 2 × 3 = 6, then
8 + 6 = 14, then 14 ÷ 7 = 2.

```check
(number
  (ask "Evaluate [12 - 3 x 2] x 5.")
  (answer 30) (from "(12 - 3 * 2) * 5")
  (wrong-if 90 "90 is 18 × 5: that subtracts first inside the brackets. Multiply first: 3 × 2 = 6, then 12 - 6 = 6.")
  (hint "Inside the brackets, multiply first: 3 × 2."))
```

---

## Worked example

```example
(example
  (problem "Evaluate 40 - [6 x (2 + 3)].")
  (step "Parentheses: 2 + 3 = 5.")
  (step "Brackets: 6 × 5 = 30.")
  (step "Then 40 - 30 = 10.")
  (answer "The value is 10."))
```

```example
(example
  (problem "Evaluate 2 x {1 + [3 x (5 - 1)]}.")
  (step "Parentheses: 5 - 1 = 4.")
  (step "Brackets: 3 × 4 = 12. Braces: 1 + 12 = 13.")
  (step (number (ask "Then 2 × 13 = ?") (answer 26) (from "2 * (1 + (3 * (5 - 1)))")
    (wrong-if 13 "13 is the value inside the braces. Multiply it by 2.")))
  (answer "The value is 26."))
```

---

## Practice

```check
(number
  (ask "Evaluate 5 + [8 ÷ (3 + 1)].")
  (answer 7) (from "5 + (8 ÷ (3 + 1))")
  (wrong-if 3.25 "That adds 5 + 8 first: 13 ÷ 4. The brackets hold 8 ÷ (3 + 1), so work it first: 8 ÷ 4 = 2, then 5 + 2.")
  (hint "3 + 1 = 4 first."))
```

```check
(number
  (ask "Evaluate [7 + (9 - 4)] x 2.")
  (answer 24) (from "(7 + (9 - 4)) * 2")
  (wrong-if 12 "12 is the value in the brackets. Multiply it by 2.")
  (wrong-if 17 "The brackets group 7 + 5, so add before you multiply: 12 × 2.")
  (hint "9 - 4 = 5. Then 7 + 5 = 12."))
```

---

```check
(number
  (ask "Evaluate {30 - [4 x (1 + 2)]} ÷ 6.")
  (answer 3) (from "(30 - (4 * (1 + 2))) ÷ 6")
  (wrong-if 18 "18 is the value inside the braces. Divide it by 6.")
  (wrong-if 4 "4 × (1 + 2) is not 4 × 1 + 2 = 6. Add first: 4 × 3 = 12. Then 30 - 12 = 18, and 18 ÷ 6 = 3.")
  (hint "1 + 2 = 3. 4 × 3 = 12. 30 - 12 = 18."))
```

```check
(choice
  (ask "In 6 x [2 + (8 - 5)], what do you work out first?")
  (right "8 - 5, the innermost pair")
  (wrong "6 x 2, from left to right"
    "Grouping symbols come before the left-to-right rule. Start with the innermost pair, the parentheses.")
  (wrong "2 + 8, inside the brackets"
    "The parentheses inside the brackets group 8 - 5. Work them first.")
  (hint "Find the pair that has no other pair inside it."))
```

So: work from the innermost pair outward, parentheses, then brackets, then braces, with the usual order inside each pair.
