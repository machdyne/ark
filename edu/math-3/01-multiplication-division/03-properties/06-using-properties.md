# Using properties

```lesson
(objective "Choose a property to work out an unknown fact from facts you know.")
(standards "3.OA.B.5" "3.OA.C.7")
(minutes 25)
```

You can work out a fact you do not know from facts you do know.

You have 3 tools:

| Property | What it lets you do | Example |
| commutative | swap the factors | 9 × 2 = 2 × 9 |
| associative | group the factors | 6 × 7 = 2 × (3 × 7) |
| distributive | break a factor apart | 7 × 6 = (7 × 5) + (7 × 1) |

```check
(choice
  (ask "Max does not know 9 × 3, but he knows 3 × 9 = 27. Which property helps him?")
  (right "The commutative property")
  (wrong "The distributive property"
    "The distributive property breaks a factor into parts. Max only needs to swap the factors: 9 × 3 = 3 × 9.")
  (wrong "The associative property"
    "The associative property groups 3 factors. Here there are only 2 factors to swap.")
  (hint "He has the same 2 factors in the other order."))
```

---

## Swap first

When a fact looks hard, check whether the swapped fact is easier.
7 × 2 can be hard to count by 7s. But 2 × 7 is just 7 + 7 = 14.

```check
(number
  (ask "Find 8 × 5 by swapping it to 5 × 8.")
  (answer 40) (from "5 * 8")
  (wrong-if 13 "13 is 8 + 5. 5 × 8 is 8 fives: 5, 10, 15, 20, 25, 30, 35, 40.")
  (hint "Count by 5s, 8 times."))
```

---

## Break apart

If neither order is easy, break a factor into parts you know. 5s and
2s are good parts.

```figure
(dot-array 50 40 7 8 22 'ink)
(line 149 28 149 184 'ink 2)
(label 94 210 "7 × 5" 'body)
(label 182 210 "7 × 3" 'body)
```

```check
(number
  (ask "Find 7 × 8 as (7 × 5) + (7 × 3).")
  (answer 56) (from "7 * 5 + 7 * 3") (true "7 * 8 = 56")
  (wrong-if 15 "15 is 7 + 8. Find 7 × 5 = 35 and 7 × 3 = 21, then add.")
  (wrong-if 38 "35 + 3 forgets to multiply the 3 by 7. 7 × 3 = 21, so 35 + 21.")
  (hint "7 × 5 = 35 and 7 × 3 = 21."))
```

---

## Double

For a 4, 6 or 8, you can double. This uses the associative property:
4 × 9 = (2 × 2) × 9 = 2 × (2 × 9).

```check
(number
  (ask "Find 4 × 6 by doubling 2 × 6.")
  (answer 24) (from "12 + 12") (true "4 * 6 = 24")
  (wrong-if 14 "14 is 12 + 2. 2 × 6 = 12. Double it: 12 + 12.")
  (hint "2 × 6 = 12. Then 12 + 12."))
```

---

## Worked example

```example
(example
  (problem "Find 9 × 6 using facts you know.")
  (step "Swap? 6 × 9 is no easier.")
  (step "Break apart the 6 into 5 + 1: (9 × 5) + (9 × 1).")
  (step "9 × 5 = 45 and 9 × 1 = 9. 45 + 9 = 54.")
  (answer "9 × 6 = 54"))
```

```example
(example
  (problem "Find 6 × 6 using facts you know.")
  (step "6 is double 3. Find 3 × 6 first.")
  (step "3 × 6 = 18.")
  (step (number (ask "Double 18. What is 6 × 6?") (answer 36) (from "18 + 18") (true "6 * 6 = 36")
    (wrong-if 20 "20 is 18 + 2. Double 18 by adding it to itself: 18 + 18.")))
  (answer "6 × 6 = 36"))
```

---

## Practice

```check
(choice
  (ask "Ana finds 8 × 7 as (8 × 5) + (8 × 2). Which property does she use?")
  (right "The distributive property")
  (wrong "The commutative property"
    "Ana does not swap the factors. She breaks 7 into 5 + 2: that is the distributive property.")
  (wrong "The associative property"
    "Ana does not group 3 factors. She breaks the 7 apart and adds the products.")
  (hint "She breaks the 7 into 2 parts."))
```

```check
(number
  (ask "Use any property to find 9 × 4.")
  (answer 36) (from "9 * 4")
  (wrong-if 13 "13 is 9 + 4. Try 4 × 9: double 2 × 9 = 18 to get 36.")
  (wrong-if 32 "32 is 8 × 4. Break 9 into 5 + 4: 20 + 16 = 36.")
  (hint "Swap to 4 × 9. Then double 2 × 9 = 18."))
```

---

```check
(number
  (ask "Use any property to find 7 × 7.")
  (answer 49) (from "7 * 7")
  (wrong-if 14 "14 is 7 + 7. Break 7 into 5 + 2: (7 × 5) + (7 × 2) = 35 + 14.")
  (wrong-if 42 "42 is 7 × 6. Add one more 7: 42 + 7 = 49.")
  (hint "Break 7 into 5 + 2.")
  (hint "7 × 5 = 35 and 7 × 2 = 14. 35 + 14 = ?"))
```

So: to find a fact you do not know, swap the factors, break one apart, or double a smaller fact.
