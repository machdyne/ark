# Interest on savings

```lesson
(objective "Work out simple interest earned on savings in a year and over several years.")
(minutes 25)
(keywords "interest" "interest rate" "simple interest" "compound interest")
```

Many savings accounts pay you for keeping money in them, and the
amount is a percentage you can work out.

**Interest** is money paid for the use of money: a bank may pay you
interest on savings, and you pay interest on money you borrow. The
**interest rate** is the interest as a percentage of the amount, for a
stated time, usually one year: such as 3% a year.

For one year, the interest is the rate times the amount:

$$ 3% * 500 = 0.03 * 500 = 15 $$

So 500 dollars saved for a year at 3% earns 15 dollars.

```check
(number
  (ask "You save 800 dollars for one year at an interest rate of 2% a year. How much interest do you earn?")
  (answer 16) (unit "dollars") (from "0.02 * 800")
  (wrong-if 2 "2 is the rate, not the interest. 2% of 800 is 0.02 * 800 = 16 dollars.")
  (wrong-if 160 "160 is 20% of 800. 2% is a tenth of that: 16.")
  (hint "1% of 800 is 8."))
```

---

## Several years

With **simple interest**, the same interest is paid every year, worked
out on the amount you first put in. For several years, multiply one
year's interest by the number of years.

Interest = amount times rate times years.

```figure
(define y (slider 'y 0 5 3 "Years" 1))
(number-line 20 300 120 500 600 5 25)
(nl-mark 500 'cool)
(nl-mark (+ 500 (* 15 y)) 'warm (fmt (+ 500 (* 15 y)) 0))
(text 160 180 (string-append "500 at 3%: " (fmt (* 15 y) 0) " dollars interest") 'centre 'small 'bold)
(caption "The mark is the account: 15 dollars more each year.")
```

```check
(number
  (ask "Simple interest on 500 dollars at 3% a year. How much interest after 4 years?")
  (answer 60) (unit "dollars") (from "500 * 0.03 * 4")
  (wrong-if 15 "15 dollars is one year's interest. After 4 years it is 4 times that.")
  (wrong-if 560 "560 dollars is the money in the account: the 500 plus the 60 dollars of interest. The interest alone is 60.")
  (hint "One year's interest is 15 dollars."))
```

---

## Worked example

```example
(example
  (problem "You save 2000 dollars at 4% a year simple interest for 3 years. How much do you have at the end?")
  (step "One year's interest: 0.04 * 2000 = 80 dollars.")
  (step "Three years: 3 * 80 = 240 dollars.")
  (step "At the end: 2000 + 240 = 2240 dollars.")
  (answer "2240 dollars"))
```

```example
(example
  (problem "You save 1500 dollars at 2% a year simple interest for 5 years. How much interest do you earn?")
  (step "One year's interest: 0.02 * 1500 = 30 dollars.")
  (step (number (ask "Interest for 5 years?") (answer 150) (unit "dollars") (from "1500 * 0.02 * 5")
    (wrong-if 1650 "1650 dollars is what you would have at the end. The question asks only for the interest.")))
  (answer "150 dollars"))
```

---

## Real accounts

Many real savings accounts add the interest to the balance, and later
interest is then worked out on the bigger amount. That is called
**compound interest**. At the same rate, it gives more than simple
interest once interest has been added, and the gap grows the longer the
money stays in. The account's papers say how its interest is
worked out. This course works with simple interest.

```check
(choice
  (ask "Two accounts both pay 5% a year on 1000 dollars. One pays simple interest; the other adds the interest to the balance each year. After 3 years, which has more?")
  (right "The one that adds the interest to the balance")
  (wrong "The simple interest one" "With simple interest you get 50 dollars each year. The other account pays 5% of a bigger balance in years 2 and 3, so it pays a little more.")
  (wrong "They are always the same" "They are the same after 1 year. After that, the account that adds interest earns interest on its interest too.")
  (hint "In year 2, which balance is bigger?"))
```

---

## Practice

```check
(number
  (ask "Simple interest on 3000 dollars at 1.5% a year for 2 years. How much interest?")
  (answer 90) (unit "dollars") (from "3000 * 0.015 * 2")
  (wrong-if 45 "45 dollars is one year's interest. For 2 years, double it.")
  (wrong-if 9000 "1.5% is 0.015, not 1.5. One year is 0.015 * 3000 = 45.")
  (hint "1% of 3000 is 30, so 1.5% is 45."))
```

```check
(number
  (ask "You put 600 dollars in an account at 5% a year simple interest. How much is in the account after 1 year?")
  (answer 630) (unit "dollars") (from "600 + 0.05 * 600")
  (wrong-if 30 "30 dollars is the interest. The account holds the 600 as well: 630.")
  (wrong-if 605 "5% is not 5 dollars. 5% of 600 is 30 dollars.")
  (hint "10% of 600 is 60, so 5% is 30."))
```

```check
(choice
  (ask "An advert says 3% interest. What does that tell you?")
  (right "3 dollars a year for every 100 dollars saved" (true "0.03 * 100 = 3"))
  (wrong "3 dollars a year in all" "3% is a percentage, not an amount: it is 3 for every 100. On 1000 dollars it is 30 dollars a year.")
  (wrong "3 dollars a month for every 100 dollars saved" "Interest rates on savings are usually given per year, as this lesson's are.")
  (hint "Percent is out of 100."))
```

Simple interest is amount times rate times years: one year's interest,
once for each year.
