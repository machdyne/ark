# The cost of borrowing

```lesson
(objective "Work out the simple interest and total cost of a loan.")
(minutes 25)
(keywords "loan")
```

Borrowing costs money, and a little arithmetic shows how much more
than the price you pay in the end.

A **loan** is money you borrow and pay back later, usually with
interest. With simple interest, the interest on a loan is worked out
just as on savings: amount times rate times years. The total you pay
back is the loan plus the interest.

```example
(example
  (problem "You borrow 1000 dollars for 2 years at 8% a year simple interest. What do you pay back in all?")
  (step "One year's interest: 0.08 * 1000 = 80 dollars.")
  (step "Two years: 2 * 80 = 160 dollars.")
  (step "Total: 1000 + 160 = 1160 dollars.")
  (answer "1160 dollars"))
```

```check
(number
  (ask "You borrow 500 dollars for 1 year at 10% a year simple interest. How much do you pay back in all?")
  (answer 550) (unit "dollars") (from "500 + 0.1 * 500")
  (wrong-if 50 "50 dollars is the interest. You pay back the 500 you borrowed as well: 550.")
  (wrong-if 510 "10% is not 10 dollars. 10% of 500 is 50 dollars.")
  (hint "Interest: 10% of 500."))
```

---

## Paying in monthly amounts

Loans are often paid back in equal monthly payments. Divide the total
by the number of months.

```example
(example
  (problem "The 1160 dollar total above is paid over 2 years. What is each monthly payment?")
  (step "2 years is 24 months.")
  (step "1160 ÷ 24 = 48.33..., about 48.33 dollars a month.")
  (answer "About 48.33 dollars a month"))
```

```check
(number
  (ask "A loan costs 1800 dollars in all, paid over 1 year in equal monthly payments. How much is each payment?")
  (answer 150) (unit "dollars") (from "1800 / 12")
  (wrong-if 34.62 "That divides by 52, the weeks. Monthly payments: divide by 12 months.")
  (wrong-if 1800 "That is the whole total. Spread over 12 months, each payment is 1800 ÷ 12.")
  (hint "How many months are in 1 year?"))
```

---

## Comparing two offers

The total you pay back is the fairest way to compare two loans for
the same amount. A lower monthly payment over more years often costs
more in all.

```check
(choice
  (ask "You borrow 2000 dollars. Offer A: 6% a year simple interest for 2 years. Offer B: 5% a year simple interest for 3 years. Which costs less in interest?")
  (right "A: 240 dollars" (true "2000 * 0.06 * 2 < 2000 * 0.05 * 3"))
  (wrong "B: it has the lower rate" (false "2000 * 0.05 * 3 < 2000 * 0.06 * 2") "B's rate is lower, but it runs a year longer. A: 2000 * 0.06 * 2 = 240. B: 2000 * 0.05 * 3 = 300.")
  (wrong "They cost the same" "Work out each: A is 240 dollars and B is 300 dollars.")
  (hint "Work out amount times rate times years for each."))
```

---

## Real loans

Real loans and credit cards usually work out interest on what you
still owe, often every month, and may add fees. So the real cost can
differ from simple interest. The lender's papers give the yearly rate,
and for a loan usually the total you will pay back; read them before
you sign.

```check
(choice
  (ask "A store card offers to spread a 600 dollar sofa over 2 years at 20% a year simple interest. What would you pay in all?")
  (right "840 dollars" (true "600 + 600 * 0.2 * 2 = 840"))
  (wrong "720 dollars" "720 dollars is one year at 20%. Over 2 years the interest is 2 * 120 = 240, so 840 in all.")
  (wrong "620 dollars" "20% is not 20 dollars. 20% of 600 is 120 dollars each year.")
  (hint "One year's interest: 20% of 600 = 120."))
```

---

## Practice

```check
(number
  (ask "You borrow 3000 dollars for 3 years at 7% a year simple interest. How much interest is that?")
  (answer 630) (unit "dollars") (from "3000 * 0.07 * 3")
  (wrong-if 210 "210 dollars is one year. For 3 years, 3 * 210.")
  (wrong-if 3630 "3630 is the total paid back. The question asks for the interest only.")
  (hint "One year: 7% of 3000 = 210."))
```

```check
(number
  (ask "A 2400 dollar loan, with 360 dollars of interest, is paid back over 24 months. How much is each monthly payment?")
  (answer 115) (unit "dollars") (from "(2400 + 360) / 24")
  (wrong-if 100 "100 dollars a month pays back only the 2400. The interest is paid too: (2400 + 360) ÷ 24.")
  (hint "Total first: 2400 + 360 = 2760."))
```

```check
(choice
  (ask "Estimate: a 4950 dollar loan at 10% a year for 2 years. About how much interest?")
  (right "About 1000 dollars" (true "5000 * 0.1 * 2 = 1000"))
  (wrong "About 100 dollars" "10% of about 5000 is about 500 a year, so about 1000 for 2 years, not 100.")
  (wrong "About 5000 dollars" "That is the loan itself. The interest is 10% of it each year.")
  (hint "4950 is about 5000. 10% of 5000 is 500."))
```

With simple interest, a loan costs amount times rate times years in
interest; add the loan to get the total, and compare loans by that
total.
