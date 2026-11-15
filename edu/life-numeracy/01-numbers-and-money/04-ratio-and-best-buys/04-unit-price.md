# Unit price

```lesson
(objective "Work out a unit price.")
(minutes 20)
(keywords "unit price")
```

A pack of 6 and a pack of 10 are hard to compare by their prices
alone; the price of one item makes it easy.

The **unit price** is the price of one item, or of one measure of
what you buy. To find it, divide the price by the number of items.

A pack of 6 cans for 4.20 dollars: 4.20 ÷ 6 = 0.70 dollars, or 70
cents a can.

```check
(number
  (ask "A pack of 4 light bulbs costs 10 dollars. What is the unit price, in dollars per bulb?")
  (answer 2.5) (unit "dollars") (from "10 / 4")
  (wrong-if 0.4 "That is 4 ÷ 10. Divide the price by the number of bulbs: 10 ÷ 4.")
  (wrong-if 40 "Multiplying gives no price for one bulb. Divide: 10 ÷ 4 = 2.50.")
  (hint "Price ÷ number of bulbs."))
```

---

## Shelf labels

Many shops print the unit price on the shelf label, often in smaller
print beside the price. It may be per item (per roll, per sheet, per
wash) or per some measure of weight or size. Compare like with like:
both per item, or both per the same measure.

```check
(choice
  (ask "A shelf label shows" "\\$6.00" "and, smaller," "\\$0.25 per roll" ". What does the smaller number tell you?")
  (right "The price of one roll")
  (wrong "A discount of 25 cents" "It is not money off. It is the price divided by the number of rolls: what one roll costs.")
  (wrong "The tax on the pack" "Tax is not shown like that. 6.00 ÷ 0.25 = 24 rolls, so it is the price of one roll.")
  (hint "Per roll: for each roll."))
```

---

## Worked example

```example
(example
  (problem "A box of 12 eggs costs 3.60 dollars. What is the price of one egg?")
  (step "Divide the price by the number of eggs: 3.60 ÷ 12.")
  (step "3.60 ÷ 12 = 0.30.")
  (answer "0.30 dollars, or 30 cents an egg"))
```

```example
(example
  (problem "A pack of 24 bottles of water costs 6 dollars. What is the price of one bottle?")
  (step "Divide the price by the number of bottles: 6 ÷ 24.")
  (step (number (ask "Price of one bottle, in dollars?") (answer 0.25) (unit "dollars") (from "6 / 24")
    (wrong-if 4 "That is 24 ÷ 6, the number of bottles per dollar. Divide the price by the bottles: 6 ÷ 24.")))
  (answer "0.25 dollars, or 25 cents a bottle"))
```

---

## With a calculator

```try
(try (app "calc")
  (task "Press Open calc (or open calc from the dock's Desk group). A pack of 18 diapers costs 7.74 dollars. Type 7.74 / 18 and press Enter. Then come back to the lesson.")
  (check (number (ask "What is the price of one diaper, in dollars?") (answer 0.43) (from "7.74 / 18"))))
```

```check
(choice
  (ask "Check by estimating: 7.74 dollars for 18 is about 8 dollars for 20. About how much is one?")
  (right "About 40 cents" (true "8 / 20 = 0.4"))
  (wrong "About 2.50 dollars" "That is 20 ÷ 8. Divide the price by the number of items: 8 ÷ 20 = 0.40.")
  (wrong "About 4 dollars" "One diaper cannot cost half the pack's price when there are 18 in it. 8 ÷ 20 = 0.40.")
  (hint "8 dollars shared among 20."))
```

---

## Practice

```check
(number
  (ask "8 batteries cost 6 dollars. What is the price of one battery, in dollars?")
  (answer 0.75) (unit "dollars") (from "6 / 8")
  (wrong-if 1.33 "That is 8 ÷ 6. Divide the price by the number of batteries: 6 ÷ 8.")
  (hint "6 ÷ 8."))
```

```check
(number
  (ask "A pack of 3 shirts costs 27 dollars. What is the unit price?")
  (answer 9) (unit "dollars") (from "27 / 3")
  (wrong-if 81 "Multiplying gives no price for one shirt. Divide: 27 ÷ 3.")
  (hint "Price ÷ number of shirts."))
```

```check
(number
  (ask "A bag of 50 tea bags costs 4 dollars. What is the price of one tea bag, in cents?")
  (answer 8) (unit "cents") (from "400 / 50")
  (wrong-if 0.08 "0.08 is the price in dollars. In cents, multiply by 100: 8 cents.")
  (wrong-if 12.5 "That is 50 ÷ 4. Divide the price by the number of tea bags.")
  (hint "4 dollars is 400 cents. 400 ÷ 50."))
```

The unit price is the price divided by the number of items: the price
of one.
