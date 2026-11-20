# Adding and subtracting money

```lesson
(objective "Add and subtract amounts of money written as decimals of a dollar, such as the change from 20 dollars after spending 13.75 dollars.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can add and subtract money as decimals, because cents are
hundredths of a dollar.

1 cent is 0.01 dollar, and 10 cents are 0.10 dollar. So \$4.35 is 4
dollars, 3 tenths and 5 hundredths of a dollar. Line up the decimal
points and add as with any decimals.

A book costs \$4.35 and a pen costs \$1.89. Together they cost:

$$ 4.35 + 1.89 = 6.24 $$

```figure
(m5p2-column 200 60 '("4.35" "1.89") "+" "6.24" '("1" "" "1" ""))
(caption "4.35 dollars + 1.89 dollars = 6.24 dollars")
```

```check
(text
  (ask "A drink costs 2.65 dollars and a sandwich costs 5.80 dollars. What do they cost together, in dollars?")
  (accept "8.45") (accept "$8.45") (accept "8.450")
  (true "2.65 + 5.80 = 8.45")
  (wrong-if "7.45" "6 + 8 = 14 tenths. Write 4 and regroup 1 dollar: 2 + 5 + 1 = 8.")
  (hint "2.65 + 5.80. Hundredths: 5 + 0."))
```

---

## Change

Change here means the money you get back. It is what you pay minus
the cost. You pay with a \$20 bill for something that costs \$13.75:

$$ 20 - 13.75 = 6.25 $$

Write 20 as 20.00 and regroup across the zeros.

You can also count up from the cost: 13.75 + 0.25 = 14, and
14 + 6 = 20. That is 0.25 + 6 = 6.25 dollars.

```figure
(m5p2-line 30 290 170 13 20 28 4)
(nl-jump 13.75 14 'warm)
(text (nl-x 13.6) 152 "+0.25" 'right 'small)
(nl-jump 14 20 'cool "+6")
(nl-mark 13.75 'ink)
(text (nl-x 13.75) 212 "13.75" 'centre 'small)
(caption "Count up from 13.75 to 20: 6.25")
```

```check
(text
  (ask "You pay with a 10 dollar bill for a cap that costs 7.40 dollars. How much change do you get, in dollars?")
  (accept "2.60") (accept "2.6") (accept "$2.60") (accept "$2.6")
  (true "10 - 7.40 = 2.60")
  (wrong-if "3.60" "After you regroup, 10.00 becomes 9 ones and 10 tenths. 9 - 7 = 2 dollars.")
  (wrong-if "17.40" "That adds. Change is what you pay minus the cost.")
  (hint "Count up: 7.40 + 0.60 = 8. Then 8 + 2 = 10."))
```

---

## Worked example

```example
(example
  (problem "Jo buys a 3.49 dollar notebook and a 0.75 dollar eraser. She pays with a 5 dollar bill. What is her change?")
  (step "Cost: 3.49 + 0.75 = 4.24 dollars.")
  (step "Change: 5.00 - 4.24 = 0.76 dollar.")
  (step "Check: 4.24 + 0.76 = 5.00.")
  (answer "Her change is 0.76 dollar, or 76 cents."))
```

```example
(example
  (problem "A game costs 18.50 dollars. Raj has 12.85 dollars. How much more does he need?")
  (step "Find the difference: 18.50 - 12.85.")
  (step (text (ask "18.50 - 12.85 = ?")
    (accept "5.65") (accept "$5.65") (accept "5.650")
    (true "18.50 - 12.85 = 5.65")
    (wrong-if "6.35" "That takes 0 from 5 and 5 from 8. Regroup: 18.50 is 17 ones, 14 tenths, 10 hundredths.")))
  (answer "He needs 5.65 dollars more."))
```

---

## Practice

```check
(text
  (ask "Lunch costs 6.75 dollars and a juice costs 1.30 dollars. What is the total, in dollars?")
  (accept "8.05") (accept "$8.05") (accept "8.050")
  (true "6.75 + 1.30 = 8.05")
  (wrong-if "7.105" "7 + 3 = 10 tenths: write 0 and regroup 1 dollar. Each place holds one digit: 8.05.")
  (wrong-if "7.05" "Add the regrouped dollar: 6 + 1 + 1 = 8.")
  (hint "Tenths: 7 + 3 = 10."))
```

```check
(text
  (ask "You pay with a 20 dollar bill for a 4.68 dollar snack. What is your change, in dollars?")
  (accept "15.32") (accept "$15.32") (accept "15.320")
  (true "20 - 4.68 = 15.32")
  (wrong-if "16.32" "After regrouping, 20.00 is 19 ones, 9 tenths and 10 hundredths. 19 - 4 = 15.")
  (wrong-if "16.68" "The 0.68 is taken away too, not added. 20.00 - 4.68 = 15.32.")
  (hint "Count up: 4.68 + 0.32 = 5. Then 5 + 15 = 20."))
```

---

```check
(text
  (ask "Sara had 25 dollars. She spent 9.99 dollars and then 7.50 dollars. How much does she have left, in dollars?")
  (accept "7.51") (accept "$7.51") (accept "7.510")
  (true "25 - 9.99 - 7.50 = 7.51")
  (wrong-if "17.49" "That is what she spent. Take it away from 25: 25 - 17.49.")
  (hint "She spent 9.99 + 7.50 = 17.49 dollars.")
  (hint "25.00 - 17.49 = ?"))
```

```check
(choice
  (ask "A pencil costs 0.35 dollar. Tom pays with 1 dollar. Which is his change?")
  (right "0.65 dollar, or 65 cents" (true "1 - 0.35 = 0.65"))
  (wrong "0.75 dollar" (false "1 - 0.35 = 0.75")
    "100 cents minus 35 cents is 65 cents, not 75. Count up: 35 + 5 = 40, 40 + 60 = 100.")
  (wrong "1.35 dollars" (false "1 - 0.35 = 1.35")
    "That adds. Change is what you pay minus the cost, so it is less than 1 dollar.")
  (hint "1 dollar is 100 cents."))
```

So: money adds and subtracts like any decimals; change is what you pay minus the cost.
