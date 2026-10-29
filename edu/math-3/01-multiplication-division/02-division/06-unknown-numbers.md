# Unknown numbers

```lesson
(objective "Find the unknown number in any place of a multiplication or division equation.")
(standards "3.OA.A.4")
(minutes 20)
```

You can find a missing number wherever it is in an equation.

The ? can be in any place. Each equation below has one unknown number.

| Equation | Ask yourself |
| 6 × 6 = ? | What is 6 groups of 6? |
| 8 × ? = 48 | 8 times what is 48? |
| ? ÷ 3 = 5 | What total shared by 3 gives 5 each? |

```check
(number
  (ask "6 × 6 = ?")
  (answer 36) (from "6 * 6")
  (wrong-if 12 "12 is 6 + 6. 6 × 6 means 6 groups of 6.")
  (hint "Count by 6s, 6 times."))
```

---

## A missing factor

When a factor is missing, use the product and the other factor. Think
of the related division.

8 × ? = 48 is the same as 48 ÷ 8 = ?.

```check
(number
  (ask "8 × ? = 48")
  (answer 6) (from "48 / 8") (true "8 * 6 = 48")
  (wrong-if 40 "40 is 48 - 8. Find the number that, times 8, makes 48.")
  (wrong-if 56 "56 is 48 + 8. 8 times the missing number must be 48.")
  (hint "Count by 8s to 48. How many 8s?"))
```

---

## A missing total

When the dividend is missing, multiply. In ? ÷ 3 = 5, a total is shared
into 3 groups with 5 in each. That total is 3 × 5.

```figure
(md-groups 50 60 3 5 34 3 'ink)
(label 160 170 "? ÷ 3 = 5" 'big)
(caption "3 groups with 5 in each")
```

```check
(number
  (ask "? ÷ 3 = 5. What is the total?")
  (answer 15) (from "3 * 5") (true "15 / 3 = 5")
  (wrong-if 2 "2 is 5 - 3. The total is shared into 3 groups of 5, so it is 3 × 5.")
  (wrong-if 8 "8 is 5 + 3. The total holds 3 groups of 5: 5 + 5 + 5.")
  (hint "3 groups of 5 is how many in all?"))
```

---

## The = sign can come first

An equation can also be written the other way. 5 = ? ÷ 3 says
the same thing as ? ÷ 3 = 5. Both sides of the = sign have the same value.

```check
(number
  (ask "7 = 21 ÷ ?")
  (answer 3) (from "21 / 7") (true "21 / 3 = 7")
  (wrong-if 14 "14 is 21 - 7. Find the number to divide 21 by to get 7. Think: 7 × ? = 21.")
  (hint "21 ÷ what number is 7?")
  (hint "7 × 3 = 21"))
```

---

## Worked example

```example
(example
  (problem "Find the unknown number: 45 ÷ ? = 9.")
  (step "The divisor is missing. 45 is the total, and 9 is the quotient.")
  (step "Think of the related fact: 9 × ? = 45.")
  (step "Count by 9s: 9, 18, 27, 36, 45. That is 5 nines.")
  (answer "45 ÷ 5 = 9. The unknown number is 5."))
```

```example
(example
  (problem "Find the unknown number: ? = 4 × 7.")
  (step "The product is missing. It is on the left of the = sign.")
  (step "4 × 7 means 4 groups of 7.")
  (step (number (ask "What is 4 × 7?") (answer 28) (from "4 * 7")
    (wrong-if 11 "11 is 4 + 7. 4 × 7 means 4 groups of 7: 7 + 7 + 7 + 7.")))
  (answer "28 = 4 × 7. The unknown number is 28."))
```

---

## Practice

```check
(number
  (ask "? × 9 = 18")
  (answer 2) (from "18 / 9") (true "2 * 9 = 18")
  (wrong-if 9 "9 is the factor you know. Find the other one: what times 9 makes 18?")
  (wrong-if 27 "27 is 18 + 9. The missing factor times 9 must make 18.")
  (hint "How many 9s make 18?"))
```

```check
(number
  (ask "? ÷ 4 = 10")
  (answer 40) (from "4 * 10") (true "40 / 4 = 10")
  (wrong-if 6 "6 is 10 - 4. The total is shared into 4 groups of 10: 4 × 10.")
  (wrong-if 14 "14 is 10 + 4. The total holds 4 groups of 10.")
  (hint "Multiply: 4 groups of 10."))
```

---

```check
(number
  (ask "Some cookies are shared by 6 children. Each child gets 3. How many cookies were there? (? ÷ 6 = 3)")
  (answer 18) (from "6 * 3") (true "18 / 6 = 3")
  (wrong-if 9 "9 is 6 + 3. There are 6 children with 3 each: 6 groups of 3.")
  (wrong-if 2 "2 would be the share if 6 were the total. Here 6 children each get 3, so the total is 6 × 3.")
  (hint "6 groups of 3."))
```

```check
(number
  (ask "8 = ? ÷ 2")
  (answer 16) (from "8 * 2") (true "16 / 2 = 8")
  (wrong-if 4 "4 is 8 ÷ 2. But here 8 is the answer: some total divided by 2 gives 8. That total is 2 × 8.")
  (hint "What number shared by 2 gives 8 each?"))
```

So: use related facts. A missing factor or divisor needs a division, and a missing product or total needs a multiplication.
