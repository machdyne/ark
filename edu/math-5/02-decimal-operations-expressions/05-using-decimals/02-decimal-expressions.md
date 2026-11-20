# Expressions with decimals

```lesson
(objective "Write and evaluate expressions with parentheses that use decimals, such as 2 x (3.5 + 1.25) = 9.5.")
(standards "5.OA.A.1" "5.OA.A.2" "5.NBT.B.7")
(minutes 25)
```

You can write and evaluate expressions with decimals, just as with
whole numbers.

The order of operations is the same. Work inside the parentheses first,
then multiply and divide, then add and subtract.

$$ 2 * (3.5 + 1.25) = 2 * 4.75 $$

$$ 2 * 4.75 = 9.5 $$

```figure
(m5p2-tape 20 80 280 40 2 "3.5 + 1.25" "2 × (3.5 + 1.25) = 9.5")
(caption "2 copies of 4.75")
```

```check
(text
  (ask "Evaluate 3 × (1.2 + 0.4).")
  (accept "4.8") (accept "4.80")
  (true "3 * (1.2 + 0.4) = 4.8")
  (wrong-if "4" "4 is 3 × 1.2 + 0.4: that leaves out the parentheses. Add first: 1.6, then 3 × 1.6.")
  (wrong-if "0.48" "3 × 1.6 is 3 × 16 tenths = 48 tenths = 4.8, not 48 hundredths.")
  (hint "1.2 + 0.4 = 1.6."))
```

---

## Writing a decimal expression

"Add 2.5 and 1.5, then divide by 4" is $(2.5 + 1.5) ÷ 4$. Its value is
4 ÷ 4 = 1.

```check
(choice
  (ask "Which expression records \"subtract 0.6 from 5, then multiply by 3\"?")
  (right "3 × (5 - 0.6)" (true "3 * (5 - 0.6) = 13.2"))
  (wrong "3 × 5 - 0.6" (true "3 * 5 - 0.6 = 14.4")
    "Without parentheses you multiply first. The words subtract first: (5 - 0.6).")
  (wrong "3 × (0.6 - 5)"
    "\"Subtract 0.6 from 5\" starts with 5: 5 - 0.6.")
  (hint "What is done first? Put it in parentheses."))
```

---

## Money expressions

Jo buys 3 sandwiches at 4.25 dollars and a juice at 1.50 dollars:

$$ (3 * 4.25) + 1.50 = 12.75 + 1.50 = 14.25 $$

She pays with a 20 dollar bill. Her change is
$20 - ((3 * 4.25) + 1.50) = 5.75$ dollars. With brackets it is written
`20 - [(3 x 4.25) + 1.50]`.

```check
(text
  (ask "Evaluate 10 - [(2 x 3.40) + 0.75]. That is the change, in dollars, from 10 dollars after 2 items at 3.40 and 1 at 0.75.")
  (accept "2.45") (accept "$2.45") (accept "2.450")
  (true "10 - ((2 * 3.40) + 0.75) = 2.45")
  (wrong-if "7.55" "7.55 is the cost. The change is 10 - 7.55.")
  (wrong-if "3.95" "That adds the 0.75 back. Inside the brackets, 6.80 + 0.75 = 7.55 is the cost. Then 10 - 7.55.")
  (hint "2 × 3.40 = 6.80. 6.80 + 0.75 = 7.55.")
  (hint "10 - 7.55 = ?"))
```

---

## Worked example

```example
(example
  (problem "Evaluate (4.6 - 1.6) × 0.5.")
  (step "Parentheses first: 4.6 - 1.6 = 3.")
  (step "Then 3 × 0.5 = 1.5.")
  (answer "(4.6 - 1.6) × 0.5 = 1.5"))
```

```example
(example
  (problem "Evaluate [2.4 + (0.3 x 2)] ÷ 3.")
  (step "Parentheses: 0.3 × 2 = 0.6.")
  (step "Brackets: 2.4 + 0.6 = 3.")
  (step (text (ask "Then 3 ÷ 3 = ?")
    (accept "1") (accept "1.0")
    (true "(2.4 + (0.3 * 2)) ÷ 3 = 1")
    (wrong-if "3" "3 is the value in the brackets. Divide it by 3.")))
  (answer "The value is 1."))
```

---

## Practice

```check
(text
  (ask "Evaluate 5 × (0.8 + 0.12).")
  (accept "4.6") (accept "4.60")
  (true "5 * (0.8 + 0.12) = 4.6")
  (wrong-if "4.12" "That is 5 × 0.8 + 0.12. Add first: 0.8 + 0.12 = 0.92, then 5 × 0.92.")
  (wrong-if "1" "0.8 + 0.12 is 0.92, not 0.20. Line up the decimal points: 0.80 + 0.12.")
  (hint "0.80 + 0.12 = 0.92."))
```

```check
(text
  (ask "Evaluate (7.5 + 2.5) ÷ 4.")
  (accept "2.5") (accept "2.50")
  (true "(7.5 + 2.5) ÷ 4 = 2.5")
  (wrong-if "8.125" "That divides only 2.5 by 4. Add first: 10, then 10 ÷ 4.")
  (hint "7.5 + 2.5 = 10. 10 ÷ 4 = 2, 2 left: write a 0."))
```

---

```check
(choice
  (ask "Each of 4 friends pays 2.75 dollars for a ticket and 1.25 dollars for a snack. Which expression gives what they pay in all?")
  (right "4 × (2.75 + 1.25)" (true "4 * (2.75 + 1.25) = 16"))
  (wrong "4 × 2.75 + 1.25" (true "4 * 2.75 + 1.25 = 12.25")
    "This counts the snack only once. Each friend buys a snack too: 4 × (2.75 + 1.25).")
  (wrong "(4 + 2.75) × 1.25"
    "This adds the number of friends to a price. Find 1 friend's cost first: 2.75 + 1.25.")
  (hint "What does 1 friend pay?"))
```

```check
(text
  (ask "Evaluate 4 × (2.75 + 1.25), in dollars.")
  (accept "16") (accept "16.00") (accept "$16") (accept "$16.00") (accept "16.0")
  (true "4 * (2.75 + 1.25) = 16")
  (wrong-if "12.25" "That is 4 × 2.75 + 1.25. Add first: 2.75 + 1.25 = 4.00, then 4 × 4.")
  (hint "2.75 + 1.25 = 4."))
```

So: decimal expressions follow the same order: parentheses (and brackets) first, then × and ÷, then + and -.
