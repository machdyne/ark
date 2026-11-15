# The better buy

```lesson
(objective "Compare offers by unit price to find the better buy.")
(minutes 20)
```

The bigger pack is often, but not always, the cheaper way to buy:
comparing unit prices tells you which is.

To compare two packs, work out the unit price of each, then compare.
The lower unit price is the better value for money.

```example
(example
  (problem "Pack A: 6 rolls for 3.00 dollars. Pack B: 9 rolls for 4.05 dollars. Which is better value?")
  (step "A: 3.00 ÷ 6 = 0.50 dollars a roll.")
  (step "B: 4.05 ÷ 9 = 0.45 dollars a roll.")
  (step "0.45 is less than 0.50.")
  (answer "Pack B, at 45 cents a roll"))
```

```check
(choice
  (ask "4 soaps for 3.60 dollars, or 6 soaps for 6.00 dollars. Which is better value?")
  (right "4 for 3.60: 90 cents each" (true "3.6 / 4 < 6 / 6"))
  (wrong "6 for 6.00: 1 dollar each" (false "6 / 6 < 3.6 / 4") "The bigger pack costs 1 dollar a soap; the smaller costs 3.60 ÷ 4 = 90 cents. Here the smaller pack is better value.")
  (wrong "They are the same" "3.60 ÷ 4 = 0.90 and 6.00 ÷ 6 = 1.00. They differ by 10 cents a soap.")
  (hint "Divide each price by its number of soaps."))
```

---

## Multi-buy offers

With "3 for 2" you take 3 and pay for 2. So each item costs $2/3$ of
its price. "Buy one, get one free" is 2 for the price of 1, so each
costs half.

For any offer, work out what you pay, and divide by how many you get.

```check
(number
  (ask "Juice is 1.50 dollars a bottle, with an offer of 3 for 2. What do you pay for each bottle if you take 3?")
  (answer 1) (unit "dollars") (from "1.5 * 2 / 3")
  (wrong-if 0.5 "You pay for 2 bottles, which is 3.00 dollars, and get 3. 3.00 ÷ 3 = 1.00 a bottle.")
  (wrong-if 1.5 "That is the price without the offer. You pay 3.00 for 3 bottles: 1.00 each.")
  (hint "You pay for 2 bottles: 2 * 1.50.")
  (hint "Then share that among 3 bottles."))
```

---

## Better value is not always better

A lower unit price helps only if you will use it all. A big pack that
goes off, or money you need for something else this week, can make the
smaller pack the right choice. The maths says which is cheaper per
item; you decide what suits you.

```check
(choice
  (ask "A 12-pack of yogurts has a lower unit price than a 4-pack, but they last 5 days and you eat 1 a day. Which is true?")
  (right "The 12-pack may cost more per yogurt eaten, if 7 are thrown away")
  (wrong "The 12-pack is always the better buy" "A lower unit price saves money only on what you use. Yogurts thrown away are paid for and not eaten.")
  (wrong "Unit prices never help" "They help compare price per item. Here you also need to think about how many you will use.")
  (hint "How many of the 12 would you eat in 5 days?"))
```

---

## Practice

```check
(choice
  (ask "10 pens for 4.00 dollars, or 25 pens for 9.00 dollars. Which is better value?")
  (right "25 for 9.00: 36 cents each" (true "9 / 25 < 4 / 10"))
  (wrong "10 for 4.00: 40 cents each" (false "4 / 10 < 9 / 25") "4.00 ÷ 10 = 40 cents, but 9.00 ÷ 25 = 36 cents. The bigger pack is cheaper per pen.")
  (wrong "They are the same" "40 cents and 36 cents are not the same: compare the unit prices.")
  (hint "Divide each price by the number of pens."))
```

```check
(number
  (ask "Bread is 2.40 dollars a loaf, buy one get one free. What does each loaf cost if you take 2?")
  (answer 1.2) (unit "dollars") (from "2.4 / 2")
  (wrong-if 2.4 "You pay 2.40 for 2 loaves, so each costs half: 1.20.")
  (wrong-if 4.8 "The second loaf is free: you pay 2.40 in all, not 4.80.")
  (hint "You pay for 1 loaf and get 2."))
```

```check
(choice
  (ask "Pack A: 8 cans for 6.00 dollars. Pack B: 12 cans for 9.00 dollars. Which is better value?")
  (right "They are the same: 75 cents a can" (true "6 / 8 = 9 / 12"))
  (wrong "Pack B, because it is bigger" "Bigger is not always cheaper. 9.00 ÷ 12 = 0.75 and 6.00 ÷ 8 = 0.75: the same.")
  (wrong "Pack A, because it costs less" "Pack A costs less in all, but has fewer cans. Per can, both are 75 cents.")
  (hint "Work out both unit prices."))
```

Compare unit prices to find the better value, and then think about
whether you will use it all.
