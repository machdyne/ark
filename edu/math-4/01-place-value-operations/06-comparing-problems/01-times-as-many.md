# Times as many

```lesson
(objective "Read 35 = 5 x 7 as \"35 is 5 times as many as 7\", and write an equation for a statement that compares by multiplying.")
(standards "4.OA.A.1")
(minutes 20)
(keywords "multiplicative comparison")
```

You can read a multiplication equation as a comparison of 2 amounts.

Ana has 7 stickers. Ben has 5 times as many. Ben's stickers are 5
groups the size of Ana's: 5 × 7 = 35.

Move the slider to change how many times as many Ben has.

```figure
(define n (slider 'n 2 6 5 "Times as many" 1))
(text 60 62 "Ana" 'right 'body 'bold)
(m4p1-tape 70 42 40 30 1 "7" "")
(text 60 142 "Ben" 'right 'body 'bold)
(m4p1-tape 70 122 (* 40 n) 30 n "7" (fmt (* 7 n) 0))
(label 160 200 (string-append (fmt (* 7 n) 0) " = " (fmt n 0) " × 7") 'big 'bold)
```

```check
(number
  (ask "24 = 6 × 4. So 24 is how many times as many as 4?")
  (answer 6) (from "24 / 4")
  (wrong-if 20 "20 is how many more: 24 - 4. The equation says 24 is 6 groups of 4: 6 times as many.")
  (wrong-if 4 "4 is the amount being compared to. 24 is 6 groups of 4.")
  (hint "24 = 6 × 4. Count the groups of 4."))
```

---

## Comparing by multiplying

Saying how many times as many one amount is as another is a
**multiplicative comparison**.

35 = 5 × 7 says 2 comparisons, because 5 × 7 = 7 × 5:

- 35 is 5 times as many as 7.
- 35 is 7 times as many as 5.

```check
(choice
  (ask "Which statements does 42 = 6 × 7 show?" )
  (right "42 is 6 times as many as 7, and 7 times as many as 6." (true "42 = 6 * 7") (true "42 = 7 * 6"))
  (wrong "42 is 6 more than 7." (false "42 = 6 + 7")
    "6 more than 7 is 13. The × means groups: 42 is 6 groups of 7.")
  (wrong "42 is 6 times as many as 7, but not 7 times as many as 6."
    "6 × 7 = 7 × 6, so both are true. 42 is also 7 groups of 6.")
  (hint "6 × 7 = 7 × 6."))
```

---

## Write the equation

To turn a comparison into an equation, write the bigger amount, then
=, then how many times × the smaller amount.

"48 is 6 times as many as 8" is 48 = 6 × 8.

```check
(choice
  (ask "Which equation shows \"54 is 9 times as many as 6\"?")
  (right "54 = 9 × 6" (true "54 = 9 * 6"))
  (wrong "54 = 9 + 6" (false "54 = 9 + 6")
    "Times as many means multiply. 9 times as many as 6 is 9 × 6.")
  (wrong "9 = 54 × 6" (false "9 = 54 * 6")
    "54 is the bigger amount, so it stands alone: 54 = 9 × 6.")
  (hint "The bigger amount = how many times × the smaller amount."))
```

---

## With a letter

When an amount is not known, use a letter for it.

"n is 4 times as many as 9" is n = 4 × 9. So n = 36.

```check
(number
  (ask "t is 3 times as many as 8. Write t = 3 × 8. What is t?")
  (answer 24) (from "3 * 8")
  (wrong-if 11 "That adds 3 + 8. 3 times as many as 8 is 3 groups of 8.")
  (wrong-if 5 "That subtracts. 3 times as many as 8 means 3 × 8.")
  (hint "3 groups of 8."))
```

---

## Worked example

```example
(example
  (problem "Write 2 comparisons for 72 = 8 × 9.")
  (step "72 is 8 groups of 9: 72 is 8 times as many as 9.")
  (step "8 × 9 = 9 × 8, so 72 is also 9 groups of 8.")
  (step "72 is 9 times as many as 8.")
  (answer "72 is 8 times as many as 9, and 9 times as many as 8."))
```

```example
(example
  (problem "A tree is 7 times as tall as a bush. The bush is 4 feet tall. Write an equation for t, the tree's height.")
  (step "The tree is the bigger amount.")
  (step "It is 7 times the bush: t = 7 × 4.")
  (step (number (ask "What is t?") (answer 28) (unit "feet") (from "7 * 4")
    (wrong-if 11 "7 times as tall means 7 × 4, not 7 + 4.")))
  (answer "t = 7 × 4 = 28 feet"))
```

---

## Practice

```check
(choice
  (ask "Which statement matches 30 = 5 × 6?")
  (right "30 is 5 times as many as 6." (true "30 = 5 * 6"))
  (wrong "30 is 5 more than 6." (false "30 = 5 + 6")
    "5 more than 6 is 11. 30 = 5 × 6 means 5 groups of 6.")
  (wrong "6 is 5 times as many as 30." (false "6 = 5 * 30")
    "30 is the bigger amount. 30 is 5 times as many as 6.")
  (hint "Which number is the biggest?"))
```

```check
(number
  (ask "63 is 7 times as many as what number?")
  (answer 9) (from "63 / 7") (true "63 = 7 * 9")
  (wrong-if 56 "56 is 63 - 7. Times as many means 63 = 7 × ?.")
  (wrong-if 441 "63 is the bigger amount. 7 × ? = 63, so the number is 63 ÷ 7.")
  (hint "7 × ? = 63."))
```

---

```check
(choice
  (ask "Which equation shows \"m is 8 times as many as 5\"?")
  (right "m = 8 × 5" (true "8 * 5 = 40"))
  (wrong "m = 8 + 5"
    "Times as many means multiply: 8 × 5.")
  (wrong "5 = 8 × m"
    "m is the bigger amount, so it stands alone: m = 8 × 5.")
  (hint "The bigger amount = how many times × the smaller amount."))
```

```check
(number
  (ask "A pool is 6 times as long as a car. The car is 4 meters long. How long is the pool?")
  (answer 24) (unit "meters") (from "6 * 4")
  (wrong-if 10 "That adds 6 + 4. 6 times as long means 6 × 4.")
  (hint "6 groups of 4 meters."))
```

So: 35 = 5 × 7 says that 35 is 5 times as many as 7.
