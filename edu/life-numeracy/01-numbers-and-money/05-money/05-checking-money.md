# Checking money sums

```lesson
(objective "Estimate a shopping total, a bill and change, and spot a wrong total.")
(minutes 20)
```

Before you pay, a quick estimate tells you whether the total and the
change are about right.

**Round each price to the nearest dollar**, then add. 3.89 is about 4,
2.15 is about 2, and 6.49 is about 6.

$$ 4 + 2 + 6 = 12 $$

The exact total, 12.53, is close to 12, so it looks right.

```check
(number
  (ask "Estimate the total of 4.79, 1.99 and 8.25 by rounding each to the nearest dollar.")
  (answer 15) (unit "dollars") (from "5 + 2 + 8")
  (wrong-if 15.03 "15.03 is the exact total. The estimate uses the rounded prices: 5 + 2 + 8.")
  (wrong-if 13 "Round to the nearest dollar: 4.79 is nearer 5 than 4, and 1.99 is nearer 2 than 1.")
  (hint "4.79 is about 5. 1.99 is about 2. 8.25 is about 8."))
```

---

## Many small prices

With many items, rounding errors partly cancel: some go up, some go
down. If the prices end in .99 or .95, every one rounds up, so the
estimate is a little over the real total. That is a safe way to be
wrong when you are counting what you can afford.

```check
(choice
  (ask "You buy 5 things at 1.99 dollars each. A quick estimate is 5 * 2 = 10 dollars. Is the real total more or less?")
  (right "A little less: 9.95 dollars" (true "5 * 1.99 = 9.95"))
  (wrong "A little more" (false "5 * 1.99 > 10") "Each price was rounded up by 1 cent, so the estimate is 5 cents too high. The real total is 9.95.")
  (wrong "Exactly 10 dollars" (false "5 * 1.99 = 10") "1.99 is 1 cent less than 2, five times over: 9.95.")
  (hint "Was each price rounded up or down?"))
```

---

## Change

Change is what you hand over minus the total. Count up from the total
to what you gave, as many cashiers do: from 12.53, 47 cents makes 13,
then 7 dollars makes 20. So the change from 20 dollars is 7.47 dollars.

```example
(example
  (problem "The total is 8.65 dollars. You pay with 10 dollars. What is the change?")
  (step "Count up from 8.65 to 9: 35 cents.")
  (step "From 9 to 10: 1 dollar.")
  (answer "1.35 dollars"))
```

```example
(example
  (problem "The total is 16.20 dollars. You pay with 20 dollars. What is the change?")
  (step "Count up from 16.20 to 17: 80 cents. From 17 to 20: 3 dollars.")
  (step (number (ask "So the change is?") (answer 3.8) (unit "dollars") (from "20 - 16.20")
    (wrong-if 4.8 "From 16.20 to 17 is 80 cents, and from 17 to 20 is 3 dollars, not 4: 3.80 in all.")))
  (answer "3.80 dollars"))
```

---

## Spotting a wrong total

Common mistakes on a bill or a receipt: an item charged twice, a price
typed with the decimal point in the wrong place, a discount that was
not taken off. An estimate shows that something is wrong; then look
line by line.

```check
(choice
  (ask "A shelf shows prices of 2.49, 3.10 and 5.25. The receipt for them comes to 38.74. What is most likely wrong?")
  (right "A price was typed with the point in the wrong place, such as 31.00 for 3.10" (true "2.49 + 31.00 + 5.25 = 38.74"))
  (wrong "Nothing: receipts are printed by machines" "Machines print what people type. The estimate 2 + 3 + 5 = 10 is far from 38.74, so check each line.")
  (wrong "The tax was left off" "Leaving tax off would make the total smaller, not bigger. The estimate is about 10, and 38.74 is nearly 4 times that.")
  (hint "Estimate the total."))
```

---

## Practice

```check
(number
  (ask "The total is 7.35 dollars. You pay with a 10 dollar bill. What is the change?")
  (answer 2.65) (unit "dollars") (from "10 - 7.35")
  (wrong-if 3.65 "From 7.35 to 8 is 65 cents, and from 8 to 10 is 2 dollars: 2.65.")
  (wrong-if 3.35 "Count up from 7.35: 65 cents to 8, then 2 dollars to 10.")
  (hint "Count up from 7.35 to 8, then to 10."))
```

```check
(number
  (ask "Estimate to the nearest dollar: a meal of 11.80, 3.25 and 4.90 dollars.")
  (answer 20) (unit "dollars") (from "12 + 3 + 5")
  (wrong-if 19.95 "19.95 is the exact total. An estimate uses the rounded prices: 12 + 3 + 5.")
  (wrong-if 18 "11.80 is nearer 12 than 11, and 4.90 is nearer 5 than 4.")
  (hint "12 + 3 + 5."))
```

```check
(choice
  (ask "You have 25 dollars. You pick up items at 6.99, 8.49, 3.75 and 5.20. Is 25 dollars enough?")
  (right "Only just: the estimate is about 24, so work out the exact total (24.43)" (true "6.99 + 8.49 + 3.75 + 5.20 = 24.43"))
  (wrong "Yes, easily: the estimate is about 15" "Round each: 7 + 8 + 4 + 5 = 24. That is close to 25, so it is not easy: check the exact total.")
  (wrong "No: the estimate is about 30" "Rounded, the prices are 7, 8, 4 and 5, which add to 24, not 30.")
  (hint "Round each price to the nearest dollar and add."))
```

Round each price to the nearest dollar to estimate a total, count up
to find change, and check any total that is far from your estimate.
