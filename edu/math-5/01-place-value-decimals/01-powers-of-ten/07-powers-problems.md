# Powers of ten problems

```lesson
(objective "Solve word problems that multiply or divide whole numbers by powers of ten, such as 10^3 boxes of 25 pins, writing the power with an exponent.")
(standards "5.NBT.A.2")
(minutes 25)
```

You can solve word problems that multiply or divide by powers of ten.

A store gets $10^3$ boxes of pins. Each box holds 25 pins. How many
pins is that?

- Equal groups: multiply. $25 * 10^3$.
- Each digit of 25 moves 3 places left.

$$ 25 * 10^3 = 25000 $$

The store gets 25,000 pins.

```figure
(frac-bar-at 20 70 280 40 10 0 'warm)
(for-range 0 10 (lambda (i) (label (+ 34 (* 28 i)) 95 "25" 'small)))
(path '(20 64 20 56 300 56 300 64) 'ink 1)
(label 160 50 "10 boxes of 25 pins" 'small 'bold)
(label 160 150 "10 boxes: 25 × 10 = 250 pins" 'body)
(label 160 180 "1,000 boxes: 25 × 1,000 = 25,000 pins" 'small 'bold)
(caption "1,000 boxes would fill 100 tapes like this one")
```

```check
(number
  (ask "A farm packs eggs in trays of 30. It fills" (math "10^2") "trays. How many eggs is that?")
  (answer 3000) (from "30 * 10^2") (unit "eggs")
  (wrong-if 300 "300 is 30 × 10. $10^2$ is 100 trays, so 30 × 100.")
  (wrong-if 60 "$10^2$ is not 2. It is 10 × 10 = 100 trays.")
  (hint "$10^2 = 100$.")
  (hint "Find 30 × 100."))
```

---

## Sharing into groups of a power of ten

A printer has 42,000 sheets of paper. It packs them 1,000 to a pack.
How many packs?

- Making groups of 1,000: divide. $42000 ÷ 10^3$.
- Each digit moves 3 places right.

$$ 42000 ÷ 10^3 = 42 $$

```check
(number
  (ask "A bank has 6,000 one-dollar coins. It puts them in rolls of" (math "10^2") "coins. How many rolls?")
  (answer 60) (from "6000 ÷ 10^2") (unit "rolls") (true "60 * 100 = 6000")
  (wrong-if 600 "That makes rolls of 10. Each roll holds $10^2 = 100$ coins: 6,000 ÷ 100.")
  (wrong-if 600000 "That multiplies. Putting coins into rolls makes groups: divide.")
  (hint "$10^2 = 100$.")
  (hint "Find 6,000 ÷ 100."))
```

---

## Which way?

Ask what the problem wants:

- the total of many equal groups: multiply;
- how many groups, or how many in each group: divide.

```check
(choice
  (ask "A school orders" (math "10^3") "pencils. They come in boxes of 10. Which finds the number of boxes?")
  (right "1,000 ÷ 10" (true "1000 ÷ 10 = 100"))
  (wrong "1,000 × 10" (false "1000 * 10 = 100")
    "The pencils are put into boxes, so you make groups of 10. That is dividing.")
  (wrong "3 × 10" (false "3 * 10 = 1000")
    "$10^3$ is not 3. It is 1,000 pencils.")
  (hint "Are you finding a total, or how many groups?"))
```

---

## Worked example

```example
(example
  (problem "A theater has 10 to the 2nd power rows of 48 seats. How many seats?")
  (step "Equal rows: multiply 48 × $10^2$.")
  (step "$10^2 = 100$. Each digit moves 2 places left.")
  (step "48 × 100 = 4,800.")
  (answer "4,800 seats"))
```

```example
(example
  (problem "A factory makes 350,000 nails. It puts 10 to the 4th power nails in each crate. How many crates?")
  (step "Groups of $10^4 = 10000$: divide.")
  (step "Each digit moves 4 places right.")
  (step (number (ask "350,000 ÷ 10,000 = ?") (answer 35) (from "350000 ÷ 10^4") (true "35 * 10000 = 350000")
    (wrong-if 350 "That divides by 1,000. $10^4$ moves the digits 4 places: 35.")))
  (answer "35 crates"))
```

---

## Practice

```check
(number
  (ask "A ream holds 500 sheets of paper. How many sheets are in" (math "10^2") "reams?")
  (answer 50000) (from "500 * 10^2") (unit "sheets")
  (wrong-if 5000 "That is 500 × 10. $10^2$ reams is 100 reams: 500 × 100.")
  (wrong-if 1000 "That is 500 × 2. The exponent counts the 10s: $10^2 = 100$.")
  (hint "500 × 100."))
```

```check
(number
  (ask "A garden center has 72,000 seeds. It puts" (math "10^3") "seeds in each packet. How many packets?")
  (answer 72) (from "72000 ÷ 10^3") (unit "packets") (true "72 * 1000 = 72000")
  (wrong-if 720 "That divides by 100. $10^3 = 1000$, so each digit moves 3 places.")
  (hint "$10^3 = 1000$.")
  (hint "72,000 ÷ 1,000."))
```

---

```check
(number
  (ask "A 1-dollar bill is worth 100 cents. How many cents are" (math "10^3") "one-dollar bills worth?")
  (answer 100000) (from "100 * 10^3") (unit "cents")
  (wrong-if 1000 "That is the number of bills. Each bill is 100 cents: 100 × 1,000.")
  (wrong-if 10000 "100 × 1,000 moves the 1 three places left from the hundreds: to the hundred thousands.")
  (hint "Find 100 × 1,000."))
```

```check
(number
  (ask "A truck carries 9,000 kilograms of sand in" (math "10^2") "equal bags. How many kilograms are in each bag?")
  (answer 90) (from "9000 ÷ 10^2") (unit "kilograms") (true "90 * 100 = 9000")
  (wrong-if 900 "That shares among 10 bags. There are $10^2 = 100$ bags.")
  (wrong-if 900000 "Sharing among bags makes each part smaller: divide, do not multiply.")
  (hint "9,000 ÷ 100."))
```

So: decide whether to multiply or divide, then move each digit as many
places as the exponent says.
