# Dividing problems

```lesson
(objective "Solve word problems that divide decimals, such as sharing a cost equally or cutting a length into equal pieces.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can solve two kinds of dividing problems: sharing into a number of
equal parts, and finding how many groups of a size fit.

**Sharing:** 4 friends share the cost of a 13.80 dollar meal equally.
Each pays
$13.80 ÷ 4$.

- 13 ÷ 4 = 3, 1 left. 18 tenths ÷ 4 = 4, 2 left. 20 hundredths ÷ 4 = 5.
- Each pays \$3.45. Check: 3.45 × 4 = 13.80.

```figure
(m5p2-tape 20 80 280 40 4 "?" "13.80 dollars")
(caption "13.80 shared into 4 equal parts")
```

```check
(text
  (ask "3 friends share a 9.75 dollar meal equally. How much does each pay, in dollars?")
  (accept "3.25") (accept "$3.25") (accept "3.250")
  (true "9.75 ÷ 3 = 3.25")
  (wrong-if "29.25" "That multiplies. Sharing a cost means dividing: 9.75 ÷ 3.")
  (wrong-if "3.21" "That drops the 1 tenth left over. 9 ÷ 3 = 3. 7 tenths ÷ 3 = 2, 1 left. 15 hundredths ÷ 3 = 5. So 3.25.")
  (hint "Ones: 9 ÷ 3. Tenths: 7 ÷ 3 = 2, 1 left."))
```

---

## How many fit?

**Groups:** a ribbon 4.5 meters long is cut into pieces 0.75 meter
long. How many pieces?

$$ 4.5 ÷ 0.75 = 450 ÷ 75 $$

$$ 450 ÷ 75 = 6 $$

```figure
(m5p2-tape 20 80 280 40 6 "0.75" "4.5 m")
(caption "6 pieces of 0.75 m make 4.5 m")
```

```check
(number
  (ask "A jug holds 1.8 liters. How many 0.3 liter glasses can you fill?")
  (answer 6) (from "18 ÷ 3") (true "1.8 ÷ 0.3 = 6")
  (wrong-if 0.6 "Count glasses: how many 3 tenths in 18 tenths? 6.")
  (wrong-if 0.54 "That multiplies. Count how many 0.3s fit in 1.8.")
  (hint "Multiply both by 10: 18 ÷ 3."))
```

---

## Which kind?

Both kinds divide. In a sharing problem you know the number of parts.
In a "how many fit" problem you know the size of each part.

```check
(choice
  (ask "A 2.4 kilogram bag of flour is poured into bags of 0.4 kilogram. What do you find?")
  (right "How many bags: 2.4 ÷ 0.4 = 6" (true "2.4 ÷ 0.4 = 6"))
  (wrong "How much in each bag: 2.4 ÷ 4 = 0.6"
    "The size of each bag is given, 0.4 kilogram. You find how many bags: 2.4 ÷ 0.4.")
  (wrong "The total: 2.4 × 0.4 = 0.96"
    "The total, 2.4 kilograms, is given. Divide to find how many 0.4s fit.")
  (hint "Is the number of bags given, or the size of each?"))
```

---

## Worked example

```example
(example
  (problem "A 12.6 meter wall is painted in 3 equal parts by 3 painters. How long is each part?")
  (step "Sharing into 3 parts: 12.6 ÷ 3.")
  (step "12 ÷ 3 = 4. 6 tenths ÷ 3 = 2 tenths.")
  (answer "4.2 meters"))
```

```example
(example
  (problem "Sara saves 0.25 dollar each day. How many days until she has 3 dollars?")
  (step "How many 0.25s fit in 3?")
  (step "Multiply both by 100: 300 ÷ 25.")
  (step (number (ask "300 ÷ 25 = ?") (answer 12) (from "300 ÷ 25") (true "3 ÷ 0.25 = 12")
    (wrong-if 0.75 "That multiplies 3 × 0.25. Count how many 0.25s are in 3: 4 in each dollar.")))
  (answer "12 days"))
```

---

## Practice

```check
(text
  (ask "6 equal bottles hold 4.5 liters in all. How much does each hold, in liters?")
  (accept "0.75") (accept ".75") (accept "0.750")
  (true "4.5 ÷ 6 = 0.75")
  (wrong-if "1.33" "6 bottles of 1.33 liters hold about 8 liters, too much. 45 tenths ÷ 6 = 7, 3 left; 30 hundredths ÷ 6 = 5.")
  (wrong-if "7.5" "Each bottle holds less than 4.5 liters: 0.75.")
  (hint "4.5 is less than 6, so each holds less than 1 liter.")
  (hint "4.50 ÷ 6: 45 tenths ÷ 6 = 7, 3 left."))
```

```check
(number
  (ask "A board 3.6 meters long is cut into pieces 0.12 meter long. How many pieces?")
  (answer 30) (from "360 ÷ 12") (true "3.6 ÷ 0.12 = 30")
  (wrong-if 3 "Multiply both by 100: 3.6 becomes 360, not 36. 360 ÷ 12 = 30.")
  (hint "Multiply both by 100: 360 ÷ 12."))
```

---

```check
(text
  (ask "A pack of 12 pencils costs 5.40 dollars. What does 1 pencil cost, in dollars?")
  (accept "0.45") (accept ".45") (accept "$0.45") (accept "$.45")
  (true "5.40 ÷ 12 = 0.45")
  (wrong-if "4.5" "12 pencils at 4.5 dollars would cost 54 dollars. 5.40 ÷ 12 is less than 1.")
  (wrong-if "64.80" "That multiplies. 1 pencil costs a share of 5.40: divide by 12.")
  (hint "12 × 0.4 = 4.8. 0.6 is left. 12 × 0.05 = 0.6."))
```

```check
(choice
  (ask "A 7.5 kilometer race has water stops every 1.5 kilometers. How many 1.5 kilometer parts is the race?")
  (right "5" (true "7.5 ÷ 1.5 = 5"))
  (wrong "0.2" (false "7.5 ÷ 1.5 = 0.2")
    "That is 1.5 ÷ 7.5, the other way round. Count how many 1.5s fit in 7.5.")
  (wrong "11.25" (false "7.5 ÷ 1.5 = 11.25")
    "That multiplies. Count how many 1.5s fit in 7.5: multiply both by 10, 75 ÷ 15.")
  (hint "75 ÷ 15 = ?"))
```

So: divide to share into equal parts or to find how many parts of a size fit; then check by multiplying.
