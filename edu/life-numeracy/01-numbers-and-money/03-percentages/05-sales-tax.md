# Sales tax and VAT

```lesson
(objective "Add sales tax or VAT given as a percentage.")
(minutes 20)
(keywords "sales tax" "VAT")
```

Many prices have a tax added as a percentage, and you can work out
the total yourself.

In the US, **sales tax** is a tax on things you buy, set as a
percentage of the price by the state and often by the city or county
too; a few states have no state sales tax. It is usually added at the till, so the
price on the shelf does not include it.

To find the total, work out the tax, then add it to the price.

```example
(example
  (problem "A 40 dollar toaster, in a made-up place with 8% sales tax. What is the total?")
  (step "The tax: 8% of 40 = 0.08 * 40 = 3.20 dollars.")
  (step "The total: 40 + 3.20 = 43.20 dollars.")
  (answer "43.20 dollars"))
```

```check
(number
  (ask "A 60 dollar shirt, with a made-up sales tax of 5%. What is the total to pay?")
  (answer 63) (unit "dollars") (from "60 + 0.05 * 60")
  (wrong-if 3 "3 dollars is the tax. The total is the price and the tax: 60 + 3.")
  (wrong-if 65 "5% is not 5 dollars. 5% of 60 is 3 dollars, so the total is 63.")
  (hint "10% of 60 is 6, so 5% is 3."))
```

---

## A shortcut: the total in one step

The price is 100%. With 8% tax added, you pay 108% of it: multiply by
1.08.

$$ 40 * 1.08 = 43.2 $$

So the total is \$43.20. When the tax comes to part of a cent, it is
rounded to a whole cent.

```check
(choice
  (ask "With a made-up sales tax of 6%, what do you multiply the price by to get the total?")
  (right "1.06" (true "100 + 6 = 106"))
  (wrong "0.06" "Multiplying by 0.06 gives only the tax. The total is the price (100%) plus the tax (6%): 106%, or 1.06.")
  (wrong "1.6" "1.6 would be 160%, a 60% tax. 6% is 0.06, so 106% is 1.06.")
  (wrong "0.94" "0.94 takes 6% off, as a discount does. Tax is added, so the total is 106%.")
  (hint "Price (100%) + tax (6%) = ?"))
```

---

## VAT

Many other countries, including the UK and those of the European
Union, have **VAT** (value added tax): a tax on most things sold, also
a percentage. There, the price a shop shows a shopper must include
VAT already, so the shelf price is the price you pay.

```sources
(source "Directive 98/6/EC of the European Parliament and of the Council (1998), on consumer protection in the indication of the prices of products offered to consumers, Article 2 (selling price)")
(source "The Price Marking Order 2004 (UK statutory instrument 2004/102), definition of selling price")
```

```check
(choice
  (ask "In France, a shop shows a price of 30 euros. What do you pay at the till?")
  (right "30 euros")
  (wrong "30 euros plus VAT" "That is how US sales tax usually works. Where VAT is used, the shop's price for shoppers already includes it.")
  (wrong "30 euros less VAT" "VAT is not taken off at the till. The price shown already includes it.")
  (hint "Is VAT added at the till, or already in the price?"))
```

---

## Practice

```check
(number
  (ask "A 25 dollar book, with a made-up sales tax of 4%. What is the total?")
  (answer 26) (unit "dollars") (from "25 * 1.04")
  (wrong-if 29 "4% is not 4 dollars. 4% of 25 is 1 dollar, so the total is 26.")
  (wrong-if 1 "1 dollar is the tax. Add it to the price: 26.")
  (hint "1% of 25 is 0.25. 4% is 4 times that."))
```

```check
(number
  (ask "A 200 dollar bike, with a made-up sales tax of 7.5%. What is the total?")
  (answer 215) (unit "dollars") (from "200 * 1.075")
  (wrong-if 15 "15 dollars is the tax. The total is 200 + 15.")
  (wrong-if 207.5 "7.5% is not 7.5 dollars. 7.5% of 200 is 15 dollars.")
  (hint "1% of 200 is 2. 7.5% is 7.5 times that."))
```

```check
(choice
  (ask "A 90 dollar coat has 10% off, and then a made-up 10% sales tax is added to the sale price. What is the total?")
  (right "89.10 dollars" (true "90 * 0.9 * 1.1 = 89.1"))
  (wrong "90 dollars" (false "90 * 0.9 * 1.1 = 90") "The two 10%s are of different amounts. The discount is 10% of 90 (9 dollars); the tax is 10% of the sale price, 81 (8.10 dollars). 81 + 8.10 = 89.10.")
  (wrong "99 dollars" "The discount comes first: 90 - 9 = 81. Then 10% tax on 81 is 8.10, so the total is 89.10.")
  (hint "Sale price: 90 - 9 = 81.")
  (hint "Tax: 10% of 81."))
```

Sales tax is added at the till: multiply the price by 1 plus the tax
as a decimal. VAT is usually in the price already.
