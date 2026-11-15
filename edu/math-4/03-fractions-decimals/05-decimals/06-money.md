# Money as decimals

```lesson
(objective "Write amounts of money as decimals of a dollar, such as 1 cent = 1/100 dollar = 0.01 dollar, and 3 dollars 45 cents as 3.45 dollars.")
(standards "4.NF.C.6")
(minutes 20)
```

You can write money as a decimal of a dollar.

1 dollar is 100 cents. So 1 cent is $1/100$ of a dollar:

$$ 1/100 = 0.01 $$

1 cent is 0.01 dollar. 10 cents are $10/100 = 1/10$ of a dollar: 0.10
dollar.

```figure
(m4p3-hund 90 15 14 1 'warm)
(caption "1 dollar as 100 cents: 1 cent is shaded.")
```

```check
(text
  (ask "Write 7 cents as a decimal of a dollar.")
  (accept "0.07") (accept ".07") (accept "$0.07") (accept "$.07")
  (wrong-if "0.7" "0.7 dollar is 70 cents. 7 cents is 7 hundredths: 0.07.")
  (wrong-if "7" "7 dollars is 700 cents. 7 cents is a small part of 1 dollar.")
  (hint "7/100 of a dollar."))
```

---

## Dollars and cents

The dollars go before the decimal point. The cents go after it, in 2
places. 3 dollars and 45 cents is 3.45 dollars. People often write it
\$3.45.

```figure
(m4p3-place 45 40 "3" "4" "5")
(text 160 150 "3 dollars, 45 cents" 'centre 'body)
(text 160 190 "3.45 dollars" 'centre 'big 'bold)
```

```check
(text
  (ask "Write 6 dollars and 50 cents as a decimal number of dollars.")
  (accept "6.50") (accept "6.5") (accept "$6.50") (accept "$6.5")
  (wrong-if "6.05" "6.05 is 6 dollars and 5 cents. 50 cents is 50 hundredths: 6.50.")
  (wrong-if "650" "650 is the number of cents. In dollars, put the decimal point after the 6.")
  (hint "Cents take 2 places after the decimal point."))
```

---

## Worked example

```example
(example
  (problem "Write 2 dollars and 9 cents as a decimal.")
  (step "2 dollars go before the decimal point.")
  (step "9 cents = 9/100 dollar: 0 tenths and 9 hundredths.")
  (answer "2.09 dollars."))
```

```example
(example
  (problem "How many cents is 4.25 dollars?")
  (step "4 dollars = 400 cents.")
  (step (number (ask "400 + 25 = ?")
    (answer 425) (from "400 + 25")
    (wrong-if 4.25 "Write the amount in cents: 4 dollars are 400 cents.")))
  (answer "425 cents."))
```

---

## Practice

```check
(text
  (ask "Write 1 dollar and 3 cents as a decimal number of dollars.")
  (accept "1.03") (accept "$1.03")
  (wrong-if "1.3" "1.3 dollars is 1 dollar and 30 cents. 3 cents go in the hundredths place: 1.03.")
  (hint "3 cents = 0.03 dollar."))
```

```check
(number
  (ask "0.75 dollar is how many cents?")
  (answer 75) (unit "cents") (from "0.75 * 100")
  (wrong-if 7.5 "0.75 = 75/100 dollar. Each hundredth of a dollar is 1 cent.")
  (hint "0.75 = 75/100."))
```

---

```check
(choice
  (ask "Which shows 8 dollars and 40 cents?")
  (right "8.40 dollars" (true "8 + 40/100 = 8.40"))
  (wrong "8.04 dollars" (false "8 + 40/100 = 8.04")
    "8.04 is 8 dollars and 4 cents. 40 cents is 0.40.")
  (wrong "840 dollars" (false "8 + 40/100 = 840")
    "840 dollars is far more. 840 is the number of cents.")
  (hint "40 cents = 40/100 dollar."))
```

So: cents are hundredths of a dollar, so 3 dollars and 45 cents is
3.45 dollars.
