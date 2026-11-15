# Money problems

```lesson
(objective "Solve word problems about money in dollars and cents by working in cents and writing the answer in dollars and cents.")
(standards "4.MD.A.2")
(minutes 25)
```

You can solve money problems by writing every amount in cents first.

1 dollar = 100 cents. So \$3.45 is 3 dollars and 45 cents: $300 + 45 = 345$ cents.

```figure
(m4p4-table 70 40 180 '(("dollars" "cents") ("$1.00" "100") ("$2.50" "250") ("$3.45" "345") ("$4.05" "?")))
```

```check
(number
  (ask "How many cents is 4 dollars and 5 cents?")
  (answer 405) (unit "cents") (from "4 * 100 + 5")
  (wrong-if 45 "4 dollars is 400 cents, not 40. Then add 5: 405.")
  (wrong-if 450 "4 dollars and 5 cents has 5 cents, not 50. The 0 in the tens place matters.")
  (hint "4 dollars = 400 cents."))
```

---

## Adding money

A book costs \$4.75 and a pen costs \$1.50. How much do they cost together?

In cents: $475 + 150 = 625$ cents. 625 cents is 6 dollars and 25 cents, or \$6.25.

```check
(number
  (ask "A ball costs \\$2.35 and a cap costs \\$3.40. How many cents do they cost together?")
  (answer 575) (unit "cents") (from "235 + 340")
  (wrong-if 105 "That is the difference. Together means add: 235 + 340.")
  (hint "235 + 340 = ?"))
```

---

## Change

You pay with a \$10 bill for a toy that costs \$6.80. Your change is what is left.

```figure
(number-line 30 290 120 600 1000 20 100)
(nl-jump 680 700 'warm)
(nl-jump 700 1000 'cool "300")
(text (nl-x 670) 100 "20" 'centre 'small)
(caption "Money in cents")
```

Count up in cents from 680 to 1,000: $20 + 300 = 320$ cents, so the change is \$3.20.

```check
(number
  (ask "You pay \\$5 for a snack of \\$3.65. How much change do you get, in cents?")
  (answer 135) (unit "cents") (from "500 - 365")
  (wrong-if 235 "Count up from 365: 35 cents to 400, then 100 to 500. That is 135.")
  (wrong-if 865 "That adds. Change is what is left: 500 - 365.")
  (hint "365 + ? = 500"))
```

---

## A worked example

```example
(example
  (problem "3 apples cost \\$0.45 each. What do they cost in all?")
  (step "\\$0.45 is 45 cents.")
  (step "3 × 45 = 135 cents.")
  (step (choice (ask "135 cents in dollars and cents is:") (right "\\$1.35")
          (wrong "\\$13.50" "135 cents is 1 dollar (100 cents) and 35 cents left: \\$1.35.")))
  (answer "They cost \\$1.35."))
```

---

## Now you finish one

4 friends share \$8.20 equally. In cents, that is 820 cents.

```check
(number
  (ask "How many cents does each friend get?")
  (answer 205) (unit "cents") (from "820 / 4")
  (wrong-if 3280 "That multiplies. Share means divide: 820 ÷ 4.")
  (wrong-if 250 "4 × 250 = 1,000, too much. 4 × 205 = 820.")
  (hint "800 ÷ 4 = 200, and 20 ÷ 4 = 5."))
```

---

## Practice

```check
(number
  (ask "A shirt costs \\$12.00 and socks cost \\$3.50. How many cents is that in all?")
  (answer 1550) (unit "cents") (from "1200 + 350")
  (wrong-if 850 "That is the difference. In all means add.")
  (hint "1,200 + 350 = ?"))
```

```check
(choice
  (ask "You have \\$2.00. A drink costs \\$1.25. How much is left?")
  (right "\\$0.75" (true "200 - 125 = 75"))
  (wrong "\\$1.25" (false "200 - 125 = 125") "That is the cost of the drink. What is left is 200 - 125 cents.")
  (wrong "\\$0.85" (false "200 - 125 = 85") "Check: 125 + 85 = 210, not 200. Count up: 125 to 200 is 75.")
  (hint "Count up from 125 cents to 200 cents."))
```

---

```check
(number
  (ask "Pens cost 60 cents each. How many cents do 5 pens cost?")
  (answer 300) (unit "cents") (from "5 * 60")
  (wrong-if 65 "That adds 5 + 60. 5 pens of 60 cents each: 5 × 60.")
  (hint "5 × 60 = ?"))
```

For money problems, work in cents, then write the answer back in dollars and cents.
