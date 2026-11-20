# Mixed problems

```lesson
(objective "Solve multi-step word problems with all four operations on decimals, writing one expression for the whole problem.")
(standards "5.NBT.B.7" "5.OA.A.2")
(minutes 30)
```

You can solve a problem with several steps by writing one expression
for the whole problem, then evaluating it.

Plan: find what is asked, list the steps, and choose an operation for
each. Then join the steps into one expression, with parentheses for
what comes first.

Lia buys 3 notebooks at 2.15 dollars and a pen at 1.30 dollars. She
pays with 10 dollars. Her change:

$$ 10 - ((3 * 2.15) + 1.30) = 10 - 7.75 = 2.25 $$

With brackets: `10 - [(3 x 2.15) + 1.30]`.

```check
(text
  (ask "Evaluate 10 - [(3 x 2.15) + 1.30]. What is Lia's change, in dollars?")
  (accept "2.25") (accept "$2.25") (accept "2.250")
  (true "10 - ((3 * 2.15) + 1.30) = 2.25")
  (wrong-if "7.75" "7.75 dollars is what she spends. The change is 10 - 7.75.")
  (wrong-if "4.85" "That takes away 6.45 and then adds 1.30. The pen costs money too: the brackets hold the whole cost, 6.45 + 1.30 = 7.75. Then 10 - 7.75.")
  (hint "3 × 2.15 = 6.45. 6.45 + 1.30 = 7.75."))
```

---

## Sharing after joining

3 friends buy a pizza for 12.60 dollars and drinks for 3.90 dollars.
They share the cost equally. Each pays:

$$ (12.60 + 3.90) ÷ 3 = 16.50 ÷ 3 $$

$$ 16.50 ÷ 3 = 5.50 $$

```figure
(m5p2-tape 20 80 280 40 3 "?" "12.60 + 3.90")
(caption "The whole cost in 3 equal parts")
```

```check
(choice
  (ask "4 friends pay 18.40 dollars for tickets and 5.60 dollars for snacks, shared equally. Which expression gives what each pays?")
  (right "(18.40 + 5.60) ÷ 4" (true "(18.40 + 5.60) ÷ 4 = 6"))
  (wrong "18.40 + 5.60 ÷ 4" (true "18.40 + 5.60 ÷ 4 = 19.80")
    "This shares only the snacks. Both costs are shared: add them first, in parentheses.")
  (wrong "4 × (18.40 + 5.60)"
    "That is 4 times the cost. They share the cost: divide by 4.")
  (hint "Find the whole cost first, then share it."))
```

---

## Taking away equal groups

A tank holds 20 liters. Each day 1.5 liters leak out. How much is left
after 4 days?

$$ 20 - (4 * 1.5) = 20 - 6 = 14 $$

```check
(text
  (ask "A ribbon is 5 meters long. Cut off 3 pieces of 0.85 meter. How much is left, in meters?")
  (accept "2.45") (accept "2.450")
  (true "5 - (3 * 0.85) = 2.45")
  (wrong-if "4.15" "That cuts off only 1 piece. 3 pieces of 0.85 make 2.55. Then 5 - 2.55.")
  (wrong-if "2.55" "2.55 meters is what was cut off. What is left is 5 - 2.55.")
  (hint "3 × 0.85 = 2.55.")
  (hint "5.00 - 2.55 = ?"))
```

---

## Worked example

```example
(example
  (problem "Ben runs 2.4 kilometers a day for 5 days, then 3.5 kilometers on day 6. How far does he run in all?")
  (step "5 days: 5 × 2.4. Then add 3.5.")
  (step "Expression: (5 × 2.4) + 3.5.")
  (step "5 × 2.4 = 12. 12 + 3.5 = 15.5.")
  (answer "15.5 kilometers"))
```

```example
(example
  (problem "A 2.5 liter jug of juice fills glasses of 0.25 liter. 4 glasses are spilled. How many glasses are drunk?")
  (step "Glasses in all: 2.5 ÷ 0.25 = 250 ÷ 25 = 10.")
  (step "Expression: (2.5 ÷ 0.25) - 4.")
  (step (number (ask "Evaluate (2.5 ÷ 0.25) - 4.") (answer 6) (from "(2.5 ÷ 0.25) - 4")
    (wrong-if 1 "2.5 ÷ 0.25 is 10, not 5: 4 glasses of 0.25 make 1 liter. 10 - 4 = 6.")))
  (answer "6 glasses"))
```

---

## Practice

```check
(choice
  (ask "Apples cost 0.60 dollar each and pears 0.75 dollar each. Mo buys 5 apples and 4 pears. Which expression gives the cost?")
  (right "(5 × 0.60) + (4 × 0.75)" (true "(5 * 0.60) + (4 * 0.75) = 6"))
  (wrong "(5 + 4) × (0.60 + 0.75)"
    "This buys 9 apples and 9 pears. Find each fruit's cost on its own, then add.")
  (wrong "5 × (0.60 + 4) × 0.75"
    "This mixes the counts and prices. Apples: 5 × 0.60. Pears: 4 × 0.75. Then add.")
  (hint "Cost of apples + cost of pears."))
```

```check
(text
  (ask "Evaluate (5 × 0.60) + (4 × 0.75), in dollars.")
  (accept "6") (accept "6.00") (accept "6.0") (accept "$6") (accept "$6.00")
  (true "(5 * 0.60) + (4 * 0.75) = 6")
  (wrong-if "3.75" "4 × 0.75 is 3.00, not 0.75. Each pair of parentheses is a cost: 3.00 and 3.00. Add them: 6.00.")
  (hint "5 × 0.60 = 3.00. 4 × 0.75 = 3.00."))
```

---

```check
(text
  (ask "A path is 3.6 kilometers long. Posts stand at the start and every 0.4 kilometer after it. How many posts are there?")
  (accept "10")
  (true "(3.6 ÷ 0.4) + 1 = 10")
  (wrong-if "9" "9 is the number of 0.4 kilometer gaps. There is a post at the start too: 9 + 1.")
  (hint "Gaps: 3.6 ÷ 0.4 = 9.")
  (hint "Posts: one more than the gaps."))
```

```check
(text
  (ask "Write and evaluate one expression: Sara has 15 dollars. She buys 2 books at 4.80 dollars each. How much is left, in dollars?")
  (accept "5.40") (accept "5.4") (accept "$5.40") (accept "$5.4")
  (true "15 - (2 * 4.80) = 5.4")
  (wrong-if "10.20" "That takes away only 1 book. 2 books cost 2 × 4.80 = 9.60.")
  (wrong-if "9.60" "9.60 dollars is the cost of the books. What is left is 15 - 9.60.")
  (hint "15 - (2 × 4.80)."))
```

So: plan the steps, write one expression with parentheses for what comes first, evaluate it, and check that the answer is reasonable.
