# Expressions

```lesson
(objective "Tell an expression from an equation, and find the value of a numerical expression with the order of operations, such as 4 + 3 x 5 = 19.")
(standards "5.OA.A.1")
(minutes 20)
(keywords "expression (in math)" "numerical expression")
```

You can tell an expression from an equation, and find the value of an
expression.

An **expression** is numbers joined by operation signs, such as + and
×, with no equal sign. It names a number without saying anything
about it.

- $4 + 3 * 5$ is an expression.
- $4 + 3 * 5 = 19$ is an equation. It says that two things are equal.

An equation has an equal sign. An expression does not.

```check
(choice
  (ask "Which one is an expression?")
  (right "12 - 4 × 2")
  (wrong "12 - 4 × 2 = 4"
    "This has an equal sign, so it is an equation: it says 12 - 4 × 2 and 4 are equal.")
  (wrong "7 + 1 = 8"
    "This has an equal sign. It is an equation, which says 7 + 1 and 8 are equal.")
  (hint "Look for an equal sign."))
```

---

## Numerical expressions

An expression made only of numbers and operation signs is a
**numerical expression**. $18 ÷ 3 + 2$ is a numerical expression. Its
value is the number it names: 8.

Later in math you meet expressions with letters too. In this unit, all
of them are numerical expressions.

```check
(choice
  (ask "What is the value of the numerical expression 10 - 6 + 1?")
  (right "5" (true "10 - 6 + 1 = 5"))
  (wrong "3" (false "10 - 6 + 1 = 3")
    "That adds 6 + 1 first. With only + and -, work from left to right: 10 - 6 = 4, then 4 + 1 = 5.")
  (wrong "10 - 6 + 1 = 5" "That is an equation that gives the value. The value itself is the number 5.")
  (hint "Left to right: 10 - 6 first."))
```

---

## The order of operations

To find the value of an expression, use the order of operations, as
you learned:

- First, what is in parentheses.
- Then multiply and divide, from left to right.
- Then add and subtract, from left to right.

$4 + 3 * 5$: multiply first, 3 × 5 = 15. Then 4 + 15 = 19.

```check
(number
  (ask "What is the value of 4 + 3 × 5?")
  (answer 19) (from "4 + 3 * 5")
  (wrong-if 35 "35 is 7 × 5: that adds first. Multiply first: 3 × 5 = 15, then 4 + 15.")
  (hint "Multiply first: 3 × 5."))
```

---

## Worked example

```example
(example
  (problem "Find the value of 20 - 12 ÷ 4 + 1.")
  (step "Divide first: 12 ÷ 4 = 3.")
  (step "Now 20 - 3 + 1. Left to right: 20 - 3 = 17.")
  (step "17 + 1 = 18.")
  (answer "The value is 18."))
```

```example
(example
  (problem "Find the value of 6 × 2 + 8 ÷ 4.")
  (step "Multiply and divide first: 6 × 2 = 12, and 8 ÷ 4 = 2.")
  (step (number (ask "12 + 2 = ?") (answer 14) (from "6 * 2 + 8 ÷ 4")
    (wrong-if 5 "That works left to right without the rule: 12 + 8 = 20, 20 ÷ 4 = 5. Divide 8 ÷ 4 first.")))
  (answer "The value is 14."))
```

---

## Practice

```check
(number
  (ask "What is the value of 30 - 4 × 6?")
  (answer 6) (from "30 - 4 * 6")
  (wrong-if 156 "That subtracts first: 26 × 6. Multiply first: 4 × 6 = 24, then 30 - 24.")
  (hint "4 × 6 first."))
```

```check
(number
  (ask "What is the value of 2.5 + 3 × 1.5?")
  (answer 7) (from "2.5 + 3 * 1.5")
  (wrong-if 8.25 "That adds first: 5.5 × 1.5. Multiply first: 3 × 1.5 = 4.5, then 2.5 + 4.5.")
  (hint "3 × 1.5 = 4.5."))
```

---

```check
(choice
  (ask "Which one is an equation?")
  (right "9 × 3 = 27")
  (wrong "9 × 3"
    "This has no equal sign. It is an expression: it names a number, 27, but says nothing about it.")
  (wrong "9 × 3 + 27"
    "No equal sign: an expression. An equation says two things are equal.")
  (hint "An equation has an equal sign."))
```

```check
(number
  (ask "What is the value of 48 ÷ 6 ÷ 2?")
  (answer 4) (from "48 ÷ 6 ÷ 2")
  (wrong-if 16 "That divides 6 ÷ 2 first. Go from left to right: 48 ÷ 6 = 8, then 8 ÷ 2 = 4.")
  (hint "Left to right: 48 ÷ 6 first."))
```

So: an expression names a number and has no equal sign; you find its value with the order of operations.
