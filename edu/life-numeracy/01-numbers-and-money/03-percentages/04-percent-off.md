# Percent off

```lesson
(objective "Work out a sale price from a percentage off.")
(minutes 20)
(keywords "discount")
```

"30% off" signs are everywhere; you can work out what you will pay
before you reach the till.

A **discount** is an amount taken off a price. "30% off" is a discount
of 30% of the price.

To find the sale price, work out the discount, then take it away from
the price.

```example
(example
  (problem "A coat is 80 dollars, with 25% off. What is the sale price?")
  (step "The discount: 25% of 80 is a quarter of 80, which is 20 dollars.")
  (step "The sale price: 80 - 20 = 60 dollars.")
  (answer "60 dollars"))
```

```check
(number
  (ask "Shoes cost 50 dollars, with 20% off. What is the sale price?")
  (answer 40) (unit "dollars") (from "50 - 0.2 * 50")
  (wrong-if 10 "10 dollars is the discount, 20% of 50. The sale price is what is left: 50 - 10 = 40.")
  (wrong-if 30 "20% off is not 20 dollars off. 20% of 50 is 10 dollars, so you pay 40.")
  (hint "First find 20% of 50.")
  (hint "Then take that away from 50."))
```

---

## A shortcut: what you pay

If 30% is taken off, you pay the rest: 100% - 30% = 70% of the price.
So the sale price is 70% of the price, in one step.

$$ 120 * 0.7 = 84 $$

```figure
(define off (slider 'off 0 90 30 "Percent off" 5))
(frac-bar-at 20 70 280 50 20 (/ (- 100 off) 5) 'cool)
(text 20 60 (string-append "you pay " (fmt (- 100 off) 0) "%") 'left 'small)
(text 300 140 (string-append (fmt off 0) "% off") 'right 'small)
(caption "The shaded part is what you pay.")
```

```check
(choice
  (ask "A sofa has 40% off. What part of the price do you pay?")
  (right "60%" (true "100 - 40 = 60"))
  (wrong "40%" "40% is the part taken off. You pay the rest: 100% - 40% = 60%.")
  (wrong "140%" "A discount takes off, so you pay less than 100%: 60%.")
  (hint "The whole price is 100%."))
```

---

## Watch the wording

"Up to 50% off" says that 50% is the most taken off; many things
may have less off.
"Save 20 dollars" is a discount in dollars, not in percent. Read the
sign before you work it out.

```check
(choice
  (ask "A 200 dollar phone: one shop offers 15% off, another 25 dollars off. Which is cheaper?")
  (right "15% off: 170 dollars" (true "200 - 0.15 * 200 = 170"))
  (wrong "25 dollars off: 175 dollars" "15% of 200 is 30 dollars, more than 25. So 15% off saves more: 170 dollars against 175.")
  (wrong "They are the same" "15% of 200 is 30 dollars, not 25. The prices are 170 and 175.")
  (hint "Find 15% of 200: 10% is 20, 5% is 10."))
```

---

## Practice

```check
(number
  (ask "A 64 dollar jacket with 50% off. What is the sale price?")
  (answer 32) (unit "dollars") (from "64 * 0.5")
  (wrong-if 14 "50% off is not 50 dollars off. 50% is half, so you pay half of 64.")
  (hint "50% is a half."))
```

```check
(number
  (ask "A 350 dollar washing machine with 10% off. What is the sale price?")
  (answer 315) (unit "dollars") (from "350 * 0.9")
  (wrong-if 35 "35 dollars is the discount. Take it away from 350.")
  (wrong-if 340 "10% off is 10% of the price, which is 35 dollars, not 10 dollars.")
  (hint "10% of 350 is 35."))
```

```check
(number
  (ask "A 45 dollar lamp with 20% off. What is the sale price? Use the shortcut: you pay 80%.")
  (answer 36) (unit "dollars") (from "45 * 0.8")
  (wrong-if 9 "9 dollars is the discount (20%). You pay 80% of 45, which is 36.")
  (wrong-if 25 "20% off is not 20 dollars off. 20% of 45 is 9, so you pay 36.")
  (hint "80% is 0.8. Work out 45 * 0.8, or take 9 from 45."))
```

Find the discount and take it from the price, or work out the percent
you pay (100% minus the percent off) of the price.
