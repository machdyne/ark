# Parentheses

```lesson
(objective "Evaluate expressions with parentheses by working inside them first, such as 2 x (8 + 7) = 30 but 2 x 8 + 7 = 23.")
(standards "5.OA.A.1")
(minutes 20)
(keywords "evaluate")
```

You can evaluate an expression with parentheses by working inside the
parentheses first.

To **evaluate** an expression means to find its value. Parentheses
change the order: what is inside them comes first.

$$ 2 * (8 + 7) = 2 * 15 = 30 $$

$$ 2 * 8 + 7 = 16 + 7 = 23 $$

The same numbers and signs give different values.

```figure
(m5p2-tape 20 50 280 30 2 "8 + 7" "2 × (8 + 7) = 30")
(rect 20 140 (* 280 (/ 16 30)) 30 'cool)
(frame 20 140 (* 280 (/ 16 30)) 30 'ink 1.5)
(line (+ 20 (* 140 (/ 16 30))) 141 (+ 20 (* 140 (/ 16 30))) 169 'paper 3)
(line (+ 20 (* 140 (/ 16 30))) 140 (+ 20 (* 140 (/ 16 30))) 170 'ink 1)
(rect (+ 20 (* 280 (/ 16 30))) 140 (* 280 (/ 7 30)) 30 'warm)
(frame (+ 20 (* 280 (/ 16 30))) 140 (* 280 (/ 7 30)) 30 'ink 1.5)
(label 160 130 "2 × 8 + 7 = 23" 'small 'bold)
(caption "To scale: 30 and 23")
```

```check
(number
  (ask "Evaluate 3 × (4 + 5).")
  (answer 27) (from "3 * (4 + 5)")
  (wrong-if 17 "17 is 3 × 4 + 5: that leaves out the parentheses. Add first: 4 + 5 = 9. Then 3 × 9.")
  (hint "Inside the parentheses first: 4 + 5."))
```

---

## Parentheses anywhere

Parentheses can be at the start, the middle or the end. Work inside
them first, then use the order of operations for the rest.

$(20 - 8) ÷ 4 + 1$: first 20 - 8 = 12. Then 12 ÷ 4 = 3. Then 3 + 1 = 4.

```check
(number
  (ask "Evaluate (20 - 8) ÷ 4 + 1.")
  (answer 4) (from "(20 - 8) ÷ 4 + 1")
  (wrong-if 3 "That stops at 12 ÷ 4 = 3. Add the 1 too: 3 + 1 = 4.")
  (wrong-if 19 "That leaves out the parentheses: 20 - 2 + 1. Work inside them first: 20 - 8 = 12.")
  (hint "20 - 8 = 12 first."))
```

---

## Two pairs

An expression can have two pairs of parentheses. Work inside each pair,
then go on.

$$ (6 + 4) * (5 - 2) = 10 * 3 = 30 $$

```check
(number
  (ask "Evaluate (9 - 3) × (2 + 5).")
  (answer 42) (from "(9 - 3) * (2 + 5)")
  (wrong-if 11 "11 is 6 + 5. You must multiply: 6 × 7.")
  (wrong-if 8 "8 is 9 - 3 × 2 + 5, without the parentheses. Work inside each pair first: 6 and 7. Then 6 × 7.")
  (hint "9 - 3 = 6. 2 + 5 = 7."))
```

---

## Worked example

```example
(example
  (problem "Evaluate 50 - (12 + 3) × 2.")
  (step "Parentheses first: 12 + 3 = 15.")
  (step "Then multiply: 15 × 2 = 30.")
  (step "Then subtract: 50 - 30 = 20.")
  (answer "50 - (12 + 3) × 2 = 20"))
```

```example
(example
  (problem "Evaluate 4 × (1.5 + 2.5).")
  (step "Parentheses first: 1.5 + 2.5 = 4.")
  (step (number (ask "4 × 4 = ?") (answer 16) (from "4 * (1.5 + 2.5)")
    (wrong-if 8.5 "That leaves out the parentheses: 4 × 1.5 + 2.5. Add first, then multiply.")))
  (answer "4 × (1.5 + 2.5) = 16"))
```

---

## Practice

```check
(number
  (ask "Evaluate 7 × (10 - 4).")
  (answer 42) (from "7 * (10 - 4)")
  (wrong-if 66 "66 is 7 × 10 - 4. Subtract inside the parentheses first: 10 - 4 = 6.")
  (hint "10 - 4 first."))
```

```check
(number
  (ask "Evaluate 36 ÷ (3 + 6).")
  (answer 4) (from "36 ÷ (3 + 6)")
  (wrong-if 18 "18 is 36 ÷ 3 + 6. Add inside the parentheses first: 3 + 6 = 9. Then 36 ÷ 9.")
  (hint "3 + 6 = 9 first."))
```

---

```check
(choice
  (ask "Which has the value 30?")
  (right "(2 + 4) × 5" (true "(2 + 4) * 5 = 30"))
  (wrong "2 + 4 × 5" (false "2 + 4 * 5 = 30")
    "Without parentheses you multiply first: 2 + 20 = 22.")
  (wrong "2 + (4 × 5)" (false "2 + (4 * 5) = 30")
    "These parentheses hold 4 × 5, which comes first anyway: 2 + 20 = 22.")
  (hint "Which one adds 2 + 4 first?"))
```

```check
(number
  (ask "Evaluate (15 - 3) ÷ (2 + 2).")
  (answer 3) (from "(15 - 3) ÷ (2 + 2)")
  (wrong-if 8 "That is 12 ÷ 2 + 2. But 2 + 2 is in parentheses, so add it first: 4. Then 12 ÷ 4.")
  (hint "15 - 3 = 12. 2 + 2 = 4."))
```

So: to evaluate an expression, work inside the parentheses first, then multiply and divide, then add and subtract.
