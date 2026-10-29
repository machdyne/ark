# Division equations

```lesson
(objective "Write a division equation and name its dividend, divisor and quotient.")
(standards "3.OA.A.2")
(minutes 20)
(keywords "dividend" "divisor" "quotient")
```

Each number in a division equation has a name, just like in a
multiplication.

$$ 28 ÷ 4 = 7 $$

The number you divide up is the **dividend**. It is the total. Here the
dividend is 28.

```figure
(md-groups 24 60 4 7 32 4 'ink)
(caption "28 shared into 4 equal groups")
```

```check
(number
  (ask "What is the dividend in 35 ÷ 5 = 7?")
  (answer 35)
  (wrong-if 5 "5 is the number you divide by. The dividend is the total you start with.")
  (wrong-if 7 "7 is the answer. The dividend is the total you divide up.")
  (hint "The dividend is the total. It comes first."))
```

---

## The divisor

The number you divide by is the **divisor**. In 28 ÷ 4 = 7, the
divisor is 4. It tells how many groups, or how many in each group.

```check
(number
  (ask "What is the divisor in 18 ÷ 9 = 2?")
  (answer 9)
  (wrong-if 18 "18 is the dividend, the total. The divisor is the number you divide by.")
  (wrong-if 2 "2 is the answer. The divisor comes right after the ÷ sign.")
  (hint "Look right after the ÷ sign."))
```

---

## The quotient

The answer to a division is the **quotient**. In 28 ÷ 4 = 7, the
quotient is 7.

| 28 | ÷ | 4 | = | 7 |
| dividend | | divisor | | quotient |

```check
(choice
  (ask "Ty puts 24 cans into 3 equal rows. He writes 24 ÷ 3 = 8. What does the quotient count?")
  (right "The cans in each row")
  (wrong "All the cans"
    "All the cans is 24, the dividend. The quotient, 8, is the answer: how many in each row.")
  (wrong "The rows"
    "There are 3 rows. That is the divisor. The quotient, 8, counts the cans in each row.")
  (hint "The quotient is the answer, 8. What is 8 here?"))
```

---

## Write the equation

To write a division equation for a story:

1. Write the total: the dividend.
2. Write ÷ and the divisor.
3. Write = and the quotient.

```example
(example
  (problem "40 stickers are shared equally by 5 friends. Write a division equation.")
  (step "The total is 40. That is the dividend.")
  (step "It is shared by 5 friends. The divisor is 5.")
  (step "Each friend gets 8, because 5 groups of 8 make 40. The quotient is 8.")
  (answer "40 ÷ 5 = 8"))
```

```example
(example
  (problem "27 chairs are set out with 9 in each row. Write a division equation for the number of rows.")
  (step "The total is 27. That is the dividend.")
  (step "There are 9 in each row. The divisor is 9.")
  (step (number (ask "What is the quotient: how many rows?") (answer 3) (from "27 / 9")
    (wrong-if 18 "18 is 27 - 9, one row taken away. Count how many rows of 9 make 27: 9, 18, 27.")))
  (answer "27 ÷ 9 = 3"))
```

---

## Practice

```check
(number
  (ask "Find the quotient: 16 ÷ 4 = ?")
  (answer 4) (from "16 / 4") (true "4 * 4 = 16")
  (wrong-if 12 "12 is 16 - 4. The quotient tells how many in each of 4 equal groups of 16.")
  (wrong-if 20 "20 is 16 + 4. A quotient is less than the dividend here.")
  (hint "Share 16 into 4 equal groups."))
```

```check
(choice (several)
  (ask "In 50 ÷ 10 = 5, which are true? Choose all.")
  (right "50 is the dividend")
  (right "10 is the divisor")
  (right "5 is the quotient")
  (wrong "10 is the quotient"
    "The quotient is the answer, after the = sign. 10 is the number you divide by: the divisor.")
  (hint "Dividend ÷ divisor = quotient."))
```

---

```check
(choice
  (ask "60 grapes are put in 6 bowls equally. Which equation fits?")
  (right "60 ÷ 6 = 10" (true "60 / 6 = 10"))
  (wrong "6 ÷ 60 = 10"
    "The dividend, the total, comes first. The total here is 60 grapes.")
  (wrong "60 - 6 = 54"
    "This takes 6 grapes away. The grapes are shared into 6 equal groups, so you divide.")
  (hint "Write the total first, then ÷, then the number of bowls."))
```

So: in a division, the dividend ÷ the divisor = the quotient.
