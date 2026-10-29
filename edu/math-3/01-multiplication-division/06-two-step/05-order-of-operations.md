# Order of operations

```lesson
(objective "Work out an expression with no parentheses by multiplying and dividing before adding and subtracting.")
(standards "3.OA.D.8")
(minutes 20)
(keywords "order of operations")
```

You can work out a problem with several signs so that everyone gets the
same answer.

What is 3 + 4 × 2? If you add first, you get 7 × 2 = 14. If you
multiply first, you get 3 + 8 = 11. A problem needs just one answer.

So everyone agrees to use one rule. Like the rounding rule, it is a
choice everyone shares. The **order of operations** says:

1. Do what is in parentheses first.
2. Then multiply and divide, from left to right.
3. Then add and subtract, from left to right.

So 3 + 4 × 2 = 3 + 8 = 11.

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 3, standard 3.OA.D.8 and its note on the order of operations")
```

```check
(number
  (ask "5 + 3 × 4 = ?")
  (answer 17) (from "5 + 3 * 4")
  (wrong-if 32 "32 is 8 × 4: that adds first. Multiply first: 3 × 4 = 12. Then 5 + 12.")
  (hint "Multiply first: 3 × 4."))
```

---

## Divide before you subtract

Division comes before subtraction too.

20 - 12 ÷ 4: first 12 ÷ 4 = 3. Then 20 - 3 = 17.

```check
(number
  (ask "18 - 6 ÷ 2 = ?")
  (answer 15) (from "18 - 6 / 2")
  (wrong-if 6 "6 is 12 ÷ 2: that subtracts first. Divide first: 6 ÷ 2 = 3. Then 18 - 3.")
  (hint "Divide first: 6 ÷ 2."))
```

---

## Parentheses change the order

Parentheses come first of all. They let you add first when you need to.

$$ (3 + 4) × 2 = 7 × 2 = 14 $$

$$ 3 + 4 × 2 = 3 + 8 = 11 $$

```check
(number
  (ask "(10 - 4) × 3 = ?")
  (answer 18) (from "(10 - 4) * 3")
  (wrong-if 6 "6 is only the part in parentheses, 10 - 4. Now multiply it by 3.")
  (hint "First 10 - 4. Then multiply by 3."))
```

---

## Left to right

When there are only + and -, go from left to right. 15 - 5 + 2 = 10 + 2
= 12. The same for × and ÷: 24 ÷ 4 × 2 = 6 × 2 = 12.

```check
(number
  (ask "20 - 8 + 3 = ?")
  (answer 15) (from "20 - 8 + 3")
  (wrong-if 9 "That adds 8 + 3 first. Go from left to right: 20 - 8 = 12, then 12 + 3.")
  (hint "Left to right: 20 - 8 first."))
```

---

## Worked example

```example
(example
  (problem "Work out 2 × 6 + 10 ÷ 5.")
  (step "Multiply and divide first, from left to right: 2 × 6 = 12.")
  (step "10 ÷ 5 = 2.")
  (step "Then add: 12 + 2 = 14.")
  (answer "2 × 6 + 10 ÷ 5 = 14"))
```

```example
(example
  (problem "Work out 30 - 4 × 5.")
  (step "Multiply first: 4 × 5 = 20.")
  (step (number (ask "Now subtract: 30 - 20 = ?") (answer 10) (from "30 - 4 * 5")
    (wrong-if 130 "That subtracts first: 26 × 5. Multiply first, then 30 - 20.")))
  (answer "30 - 4 × 5 = 10"))
```

---

## Practice

```check
(number
  (ask "7 + 2 × 5 = ?")
  (answer 17) (from "7 + 2 * 5")
  (wrong-if 45 "45 is 9 × 5: that adds first. Multiply first: 2 × 5 = 10, then 7 + 10.")
  (hint "2 × 5 first."))
```

```check
(number
  (ask "(7 + 2) × 5 = ?")
  (answer 45) (from "(7 + 2) * 5")
  (wrong-if 17 "17 is 7 + 10: that ignores the parentheses. Add first: 7 + 2 = 9, then 9 × 5.")
  (hint "Parentheses first: 7 + 2."))
```

---

```check
(number
  (ask "40 ÷ 8 + 3 × 2 = ?")
  (answer 11) (from "40 / 8 + 3 * 2")
  (wrong-if 16 "That works left to right without the rule: 5 + 3 = 8, then 8 × 2. Do 40 ÷ 8 and 3 × 2 first, then add.")
  (hint "40 ÷ 8 = 5 and 3 × 2 = 6."))
```

```check
(choice
  (ask "Kai has 3 bags of 5 marbles and 4 loose marbles. Which shows the total?")
  (right "3 × 5 + 4" (true "3 * 5 + 4 = 19"))
  (wrong "3 × (5 + 4)"
    "This puts 4 more in every bag: 3 × 9 = 27. The 4 marbles are loose, so add them once: 3 × 5 + 4.")
  (hint "Multiply the bags. Add the loose marbles once."))
```

So: by the order of operations, do parentheses first, then × and ÷, then + and -, each from left to right.
