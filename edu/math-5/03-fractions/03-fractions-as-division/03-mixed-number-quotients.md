# Quotients as mixed numbers

```lesson
(objective "Write a quotient greater than 1 as a mixed number, such as 17 ÷ 5 = 17/5 = 3 2/5, and link it to 17 ÷ 5 = 3 R 2.")
(standards "5.NF.B.3")
(minutes 25)
```

A quotient can be a mixed number. $17 ÷ 5 = 17/5$, and $17/5$ is more
than 1. Write it as a mixed number.

5 fifths make 1 whole. 17 fifths are 3 groups of 5 fifths, and 2
fifths more:

$$ 17/5 = 3 2/5 $$

```figure
(m5p3-line 30 290 120 4 5 'whole)
(nl-mark (/ 17 5) 'warm)
(math (nl-x (/ 17 5)) 90 "17/5 = 3 2/5" 18)
(caption "17 fifths: 3 wholes and 2 fifths")
```

```check
(fraction
  (ask "Write" (math "13 ÷ 4") "as a mixed number.")
  (answer 13 4) (equivalent) (true "13 ÷ 4 = 3 1/4")
  (wrong-if (4 13) "4/13 is 4 ÷ 13. The dividend, 13, goes on top: 13/4.")
  (hint "13 ÷ 4 = 13/4.")
  (hint "How many groups of 4 in 13? What is left?"))
```

---

## The remainder becomes a fraction

You know $17 ÷ 5 = 3 R 2$: 3 each, and 2 left over.

When the 2 left-over wholes can be cut, share them too. 2 wholes
shared by 5 is $2/5$ each.

$$ 17 ÷ 5 = 3 2/5 $$

The remainder is the numerator. The divisor is the denominator.

```check
(fraction
  (ask "You know" (math "23 ÷ 6") "is 3 R 5. Write the quotient as a mixed number.")
  (answer 23 6) (equivalent) (true "23 ÷ 6 = 3 5/6")
  (wrong-if (74 23) "That is 3 5/23. The remainder is shared by the divisor, 6, so it is 5/6, not 5/23.")
  (hint "The remainder 5 shared by 6 people.")
  (hint "3 and 5/6."))
```

---

## Sharing in a picture

7 brownies, 3 people. Each person gets 2 whole brownies, with 1 left.
Cut that 1 into 3 parts: each gets $1/3$ more.

$$ 7 ÷ 3 = 2 1/3 $$

```figure
(for-range 0 7 (lambda (i)
  (frac-bar-at (+ 14 (* i 43)) 50 38 38 (if (= i 6) 3 1) (if (or (= i 0) (= i 3) (= i 6)) 1 0) 'cool)))
(for-range 0 7 (lambda (i)
  (text (+ 33 (* i 43)) 110 (if (= i 6) "cut" (fmt (+ 1 (modulo i 3)) 0)) 'centre 'small)))
(text 160 150 "Person 1: 2 whole brownies and 1/3" 'centre 'small 'bold)
(text 160 172 "(Person 1's shares are shaded.)" 'centre 'small)
```

```check
(number
  (ask "4 friends share 9 apples equally. How many apples does each get? Type it like 2 1/4.")
  (answer 2.25) (from "9 ÷ 4")
  (wrong-if 2 "That leaves 1 apple. Cut it into 4: each gets 1/4 more.")
  (wrong-if 2.1 "The remainder 1 is shared by 4, so it is 1/4, not 1 tenth.")
  (hint "9 ÷ 4 = 2 R 1.")
  (hint "The 1 left over is shared by 4."))
```

---

## Worked example

```example
(example
  (problem "Write 29 ÷ 8 as a mixed number.")
  (step "29 ÷ 8 = 3 R 5, since 3 x 8 = 24 and 29 - 24 = 5.")
  (step "The 5 left over shared by 8 is 5/8.")
  (step "So 29 ÷ 8 = 29/8 = 3 5/8.")
  (answer "29 ÷ 8 = 3 5/8."))
```

```example
(example
  (problem "Write 40 ÷ 7 as a mixed number.")
  (step "40 ÷ 7 = 5 R 5, since 5 x 7 = 35.")
  (step (fraction (ask "So 40 ÷ 7 = ? Type it like 2 1/4.") (answer 40 7) (equivalent) (true "40 ÷ 7 = 5 5/7")
    (wrong-if (10 7) "The 5 wholes stay wholes. Only the remainder 5 becomes 5/7: 5 5/7.")))
  (answer "40 ÷ 7 = 5 5/7."))
```

---

## Practice

```check
(fraction
  (ask "Write" (math "11 ÷ 3") "as a mixed number.")
  (answer 11 3) (equivalent) (true "11 ÷ 3 = 3 2/3")
  (wrong-if (5 3) "11 ÷ 3 is 3 R 2. The whole part is 3, then 2/3.")
  (hint "3 x 3 = 9. What is left?"))
```

```check
(fraction
  (ask "Write" (math "50 ÷ 9") "as a mixed number.")
  (answer 50 9) (equivalent) (true "50 ÷ 9 = 5 5/9")
  (wrong-if (59 9) "That is 6 5/9. 6 x 9 = 54 is more than 50, so the whole part is 5.")
  (hint "5 x 9 = 45."))
```

---

```check
(choice
  (ask "Which is equal to" (math "26 ÷ 4") "?")
  (right "6 2/4, which is 6 1/2" (true "26 ÷ 4 = 6 1/2"))
  (wrong "6 R 2, which is 6 2/10"
    "The remainder 2 is shared by 4, the divisor. That is 2/4, not 2/10.")
  (wrong "4/26"
    "4/26 is 4 ÷ 26. The dividend, 26, goes on top.")
  (hint "26 ÷ 4 = 6 R 2."))
```

```check
(number
  (ask "Between which two whole numbers is" (math "38/5") "? Type the smaller one.")
  (answer 7) (from "(38 - 3)/5")
  (wrong-if 8 "That is the bigger one. 38/5 = 7 3/5, between 7 and 8.")
  (hint "38 ÷ 5 = 7 R 3."))
```

A quotient with a remainder can be a mixed number: the remainder over
the divisor.
