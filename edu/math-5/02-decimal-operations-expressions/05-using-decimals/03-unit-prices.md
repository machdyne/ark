# The price of one, the price of many

```lesson
(objective "Find the price of several items from the price of one, and the price of one from the price of several, such as 4 pens for 3.60 dollars.")
(standards "5.NBT.B.7")
(minutes 20)
```

You can find the price of one item from the price of several, and the
other way round.

4 pens cost 3.60 dollars. Each pen costs the same. To find the price
of 1 pen, share the cost into 4 equal parts:

$$ 3.60 ÷ 4 = 0.90 $$

1 pen costs 0.90 dollar, or 90 cents.

```figure
(m5p2-tape 20 80 280 40 4 "0.90" "3.60 dollars")
(caption "4 pens: 4 equal parts of 3.60")
```

```check
(text
  (ask "5 notebooks cost 7.50 dollars. What does 1 notebook cost, in dollars?")
  (accept "1.50") (accept "1.5") (accept "$1.50") (accept "$1.5")
  (true "7.50 ÷ 5 = 1.5")
  (wrong-if "37.50" "That multiplies. The price of 1 is a share of the total: 7.50 ÷ 5.")
  (wrong-if "1.05" "7 ÷ 5 = 1, 2 left. 25 tenths ÷ 5 = 5 tenths. So 1.50.")
  (hint "Share 7.50 into 5 equal parts."))
```

---

## From one to many

When you know the price of 1, multiply to find the price of several.
1 pen costs 0.90 dollar, so 7 pens cost:

$$ 7 * 0.90 = 6.30 $$

```check
(text
  (ask "1 apple costs 0.45 dollar. What do 6 apples cost, in dollars?")
  (accept "2.70") (accept "2.7") (accept "$2.70") (accept "$2.7")
  (true "6 * 0.45 = 2.70")
  (wrong-if "0.075" "That divides. 6 apples cost 6 times as much as 1: multiply.")
  (wrong-if "24.30" "6 × 0.4 = 2.4, not 24. 6 × 0.45 = 270 hundredths = 2.70.")
  (hint "6 × 45 cents = 270 cents."))
```

---

## Both steps

From several to one, then to another number. 3 juices cost 4.20
dollars. What do 5 juices cost?

- 1 juice: 4.20 ÷ 3 = 1.40 dollars.
- 5 juices: 5 × 1.40 = 7.00 dollars.

```check
(text
  (ask "4 muffins cost 6.00 dollars. What do 3 muffins cost, in dollars?")
  (accept "4.50") (accept "4.5") (accept "$4.50") (accept "$4.5")
  (true "3 * (6.00 ÷ 4) = 4.5")
  (wrong-if "1.50" "1.50 dollars is 1 muffin. 3 muffins cost 3 × 1.50.")
  (wrong-if "5" "Taking 1 dollar off is not right: 1 muffin costs 1.50. 6.00 - 1.50 = 4.50.")
  (hint "1 muffin: 6.00 ÷ 4 = 1.50."))
```

---

## Worked example

```example
(example
  (problem "6 bus rides cost 13.50 dollars. What does 1 ride cost?")
  (step "Share into 6: 13.50 ÷ 6.")
  (step "13 ÷ 6 = 2, 1 left. 15 tenths ÷ 6 = 2, 3 left. 30 hundredths ÷ 6 = 5.")
  (step "Check: 2.25 × 6 = 13.50.")
  (answer "2.25 dollars a ride"))
```

```example
(example
  (problem "Which is the better buy: 2 bars for 1.80 dollars, or 5 bars for 4.00 dollars?")
  (step "2 bars: 1.80 ÷ 2 = 0.90 dollar a bar.")
  (step (text (ask "5 bars: 4.00 ÷ 5 = ? dollars a bar")
    (accept "0.80") (accept "0.8") (accept ".80") (accept ".8") (accept "$0.80") (accept "$0.8")
    (true "4.00 ÷ 5 = 0.80")
    (wrong-if "8" "40 tenths ÷ 5 = 8 tenths, not 8 dollars: 0.80.")))
  (answer "5 for 4.00 dollars: 0.80 a bar is less than 0.90."))
```

---

## Practice

```check
(text
  (ask "8 stickers cost 2.40 dollars. What does 1 sticker cost, in dollars?")
  (accept "0.30") (accept "0.3") (accept ".30") (accept ".3") (accept "$0.30") (accept "$0.3")
  (true "2.40 ÷ 8 = 0.3")
  (wrong-if "3" "8 stickers at 3 dollars would cost 24 dollars. 24 tenths ÷ 8 = 3 tenths: 0.30.")
  (hint "2.40 = 24 tenths."))
```

```check
(text
  (ask "1 kilogram of rice costs 1.85 dollars. What do 4 kilograms cost, in dollars?")
  (accept "7.40") (accept "7.4") (accept "$7.40") (accept "$7.4")
  (true "4 * 1.85 = 7.40")
  (wrong-if "4.3240" "Add the partial products as numbers: 4 + 3.20 + 0.20 = 7.40.")
  (wrong-if "5.85" "That adds 4. 4 kilograms cost 4 times 1.85.")
  (hint "4 × 1 = 4. 4 × 0.85 = 3.40."))
```

---

```check
(choice
  (ask "Which is the better buy?")
  (right "3 pencils for 1.20 dollars" (true "1.20 ÷ 3 < 2.00 ÷ 4"))
  (wrong "4 pencils for 2.00 dollars" (true "2.00 ÷ 4 = 0.50")
    "A pencil costs 0.50 dollar here and 0.40 dollar in the pack of 3. Compare the price of 1.")
  (wrong "They are the same" (false "1.20 ÷ 3 = 2.00 ÷ 4")
    "1 pencil costs 0.40 in one pack and 0.50 in the other.")
  (hint "Find the price of 1 pencil in each pack."))
```

```check
(text
  (ask "2 tickets cost 9.50 dollars. What do 6 tickets cost, in dollars?")
  (accept "28.50") (accept "28.5") (accept "$28.50") (accept "$28.5")
  (true "6 * (9.50 ÷ 2) = 28.5")
  (wrong-if "4.75" "4.75 dollars is 1 ticket. 6 tickets cost 6 × 4.75.")
  (hint "6 tickets are 3 times 2 tickets.")
  (hint "3 × 9.50 = ?"))
```

So: divide the total to find the price of 1, and multiply the price of 1 to find the price of several.
