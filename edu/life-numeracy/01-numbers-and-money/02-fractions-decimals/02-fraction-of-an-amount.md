# A fraction of an amount

```lesson
(objective "Find a fraction of an amount: divide by the bottom, multiply by the top.")
(minutes 20)
```

"A third of the cost" or "three quarters of the staff": to find a
fraction of an amount, you divide, then multiply.

To find $1/4$ of 60 dollars, cut 60 into 4 equal parts. Each part is
60 ÷ 4 = 15 dollars. So $1/4$ of 60 is 15.

```figure
(frac-bar-at 20 60 280 50 4 1 'warm)
(label 55 140 "15")
(label 125 140 "15")
(label 195 140 "15")
(label 265 140 "15")
(label 160 40 "60 dollars")
(caption "60 cut into 4 equal parts: one part is 15.")
```

```check
(number
  (ask "What is" (math "1/5") "of 40 dollars?")
  (answer 8) (unit "dollars") (from "40 / 5")
  (wrong-if 200 "Taking a fifth makes the amount smaller. Divide 40 by 5 instead of multiplying.")
  (wrong-if 35 "1/5 of 40 is not 40 minus 5. Cut 40 into 5 equal parts: each is 8.")
  (hint "Cut 40 into 5 equal parts. How big is one?"))
```

---

## More than one part

For $3/4$ of 60, find one quarter first (15), then take 3 of them:
3 * 15 = 45.

So the rule is: **divide by the bottom number, then multiply by the
top number.**

$$ 3/4 * 60 = 60 ÷ 4 * 3 = 45 $$

```check
(number
  (ask "What is" (math "2/3") "of 90?")
  (answer 60) (from "90 / 3 * 2")
  (wrong-if 30 "30 is one third of 90. You need two thirds, so take 2 of them: 60.")
  (wrong-if 45 "45 is half of 90. Divide by the bottom number, 3, then multiply by the top, 2.")
  (hint "One third of 90 is 30.")
  (hint "Two thirds is 2 of those."))
```

---

## Worked example

```example
(example
  (problem "A jacket costs 120 dollars. You have saved 5/8 of it. How much have you saved?")
  (step "Divide by the bottom: 120 ÷ 8 = 15. One eighth is 15 dollars.")
  (step "Multiply by the top: 15 * 5 = 75.")
  (answer "75 dollars"))
```

```example
(example
  (problem "A shift is 9 hours. Two thirds of it is at the till. How many hours is that?")
  (step "Divide by the bottom: 9 ÷ 3 = 3. One third is 3 hours.")
  (step (number (ask "Multiply by the top. How many hours?") (answer 6) (from "9 / 3 * 2")
    (wrong-if 3 "3 hours is one third. Two thirds is 2 of them.")))
  (answer "6 hours"))
```

---

## With a calculator

When the numbers are not easy, use a calculator in the same order:
divide by the bottom, then multiply by the top.

```try
(try (app "calc")
  (task "Press Open calc (or open calc from the dock's Desk group). To find 3/8 of 248, type 248 / 8 * 3 and press Enter. Then come back to the lesson.")
  (check (number (ask "What is 3/8 of 248?") (answer 93) (from "248 / 8 * 3"))))
```

```check
(choice
  (ask "Estimate first: about how much is" (math "3/8") "of 248?")
  (right "A bit less than half of 248, so under 124" (true "3/8 < 1/2"))
  (wrong "More than 248" "A fraction with a smaller top than bottom is less than the whole, so the answer must be less than 248.")
  (wrong "About 3 times 248" "3/8 is less than one whole, so the answer is part of 248, not more than it.")
  (hint "Is 3/8 more or less than 4/8, a half?"))
```

---

## Practice

```check
(number
  (ask "A bill is 84 dollars. You pay" (math "1/4") "of it. How much do you pay?")
  (answer 21) (unit "dollars") (from "84 / 4")
  (wrong-if 336 "A quarter is smaller than the whole. Divide 84 by 4.")
  (wrong-if 42 "42 is half of 84. A quarter is half of that again: 21.")
  (hint "Cut 84 into 4 equal parts."))
```

```check
(number
  (ask "A team of 30 people. Three fifths of them work from home. How many is that?")
  (answer 18) (from "30 / 5 * 3")
  (wrong-if 6 "6 is one fifth of 30. Three fifths is 3 of them: 18.")
  (wrong-if 10 "10 is one third of 30. Divide by the bottom number, 5, not the top.")
  (hint "One fifth of 30 is 6."))
```

```check
(number
  (ask "A loaf costs 4 dollars. What is" (math "3/4") "of the price?")
  (answer 3) (unit "dollars") (from "4 / 4 * 3")
  (wrong-if 1 "1 dollar is one quarter. Three quarters is 3 of them.")
  (hint "One quarter of 4 dollars is 1 dollar."))
```

To find a fraction of an amount, divide by the bottom number, then
multiply by the top.
