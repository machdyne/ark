# Multiplying problems

```lesson
(objective "Solve word problems that multiply decimals, such as the cost of 3.5 pounds of apples at 2.40 dollars a pound.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can solve word problems that multiply decimals: equal groups, a
price for each unit, or an area.

Apples cost 2.40 dollars a pound. What do 3.5 pounds cost? Each pound
costs 2.40, so 3.5 pounds cost $3.5 * 2.40$.

- Estimate: about 4 × 2.5 = 10, or 3 × 2 = 6. The answer is between.
- 35 × 240 = 8,400. Tenths × hundredths: 3 places. 8.400.

The apples cost \$8.40.

```check
(text
  (ask "Rice costs 1.20 dollars a pound. What do 2.5 pounds cost, in dollars?")
  (accept "3.00") (accept "3") (accept "3.0") (accept "$3.00") (accept "$3")
  (true "2.5 * 1.20 = 3")
  (wrong-if "3.70" "That adds 2.5 + 1.20. Each of 2.5 pounds costs 1.20: multiply.")
  (wrong-if "30" "25 × 120 = 3,000, with 3 places: 3.000. That is 3 dollars.")
  (hint "2.5 × 1.20. Estimate: about 2 × 1.2.")
  (hint "25 × 12 = 300."))
```

---

## Equal groups

A runner runs 2.75 kilometers each day for 6 days. How far does she
run?

$$ 6 * 2.75 = 16.5 $$

```figure
(m5p2-tape 20 80 280 40 6 "2.75" "? km")
(caption "6 equal parts of 2.75 km")
```

```check
(text
  (ask "Each glass holds 0.35 liter. How many liters do 8 glasses hold?")
  (accept "2.8") (accept "2.80")
  (unit "liters")
  (true "8 * 0.35 = 2.8")
  (wrong-if "28" "8 × 35 = 280 hundredths. That is 2.80 liters, not 28.")
  (wrong-if "8.35" "That adds 0.35 once. 8 glasses hold 8 groups of 0.35.")
  (hint "8 × 35 = 280. Hundredths: 2 places."))
```

---

## Area

A rectangle's area is its length times its width. A poster is 0.6
meter wide and 0.9 meter tall:

$$ 0.6 * 0.9 = 0.54 $$

The area is 0.54 square meter.

```check
(text
  (ask "A table top is 1.5 meters long and 0.8 meter wide. What is its area, in square meters?")
  (accept "1.2") (accept "1.20")
  (unit "square meters")
  (true "1.5 * 0.8 = 1.2")
  (wrong-if "4.6" "4.6 is the perimeter: 1.5 + 0.8 + 1.5 + 0.8. The area is 1.5 × 0.8.")
  (wrong-if "12" "15 × 8 = 120 hundredths = 1.20. Estimate: about 1.5 × 1 = 1.5.")
  (hint "15 × 8 = 120. Tenths × tenths: 2 places."))
```

---

## Worked example

```example
(example
  (problem "A car uses 0.08 liter of fuel for each kilometer. How much does it use for 45.5 kilometers?")
  (step "Multiply: 45.5 × 0.08.")
  (step "455 × 8 = 3,640. Tenths × hundredths: 3 places: 3.640.")
  (step "Estimate: 50 × 0.08 = 4. 3.64 is close.")
  (answer "3.64 liters"))
```

```example
(example
  (problem "Cheese costs 6.50 dollars a pound. Kai buys 1.4 pounds. What does he pay?")
  (step "1.4 × 6.50: 14 × 650 = 9,100.")
  (step "Tenths × hundredths: 3 places: 9.100.")
  (step (text (ask "How much does he pay, in dollars?")
    (accept "9.10") (accept "9.1") (accept "$9.10") (accept "$9.1")
    (true "1.4 * 6.50 = 9.1")
    (wrong-if "91" "That is 10 times too much. Estimate: 1 × 6.5 = 6.5, so the cost is near 9, not 91.")))
  (answer "9.10 dollars"))
```

---

## Practice

```check
(text
  (ask "A bus ticket costs 2.25 dollars. What do 4 tickets cost, in dollars?")
  (accept "9.00") (accept "9") (accept "9.0") (accept "$9.00") (accept "$9")
  (true "4 * 2.25 = 9")
  (wrong-if "8.25" "4 × 0.25 = 1.00, not 0.25. So 8 + 1 = 9.")
  (hint "4 × 2 = 8. 4 × 0.25 = 1."))
```

```check
(text
  (ask "A ribbon is 0.4 meter long. A second ribbon is 2.5 times as long. How long is it, in meters?")
  (accept "1") (accept "1.0") (accept "1.00")
  (unit "meters")
  (true "2.5 * 0.4 = 1")
  (wrong-if "2.9" "That adds. 2.5 times as long means multiply: 2.5 × 0.4.")
  (wrong-if "10" "25 × 4 = 100 hundredths = 1.00, not 10.")
  (hint "25 × 4 = 100. Tenths × tenths: 2 places."))
```

---

```check
(text
  (ask "A garden path is 12 meters long and 0.75 meter wide. What is its area, in square meters?")
  (accept "9") (accept "9.0") (accept "9.00")
  (unit "square meters")
  (true "12 * 0.75 = 9")
  (wrong-if "25.5" "25.5 is the perimeter. The area is 12 × 0.75.")
  (wrong-if "90" "12 × 75 = 900 hundredths = 9.00.")
  (hint "12 × 0.75: 3 quarters of 12."))
```

```check
(choice
  (ask "Pens cost 0.85 dollar each. Lea buys 6. Which shows her cost?")
  (right "6 × 0.85 = 5.10 dollars" (true "6 * 0.85 = 5.10"))
  (wrong "6 + 0.85 = 6.85 dollars"
    "Adding counts the price only once. She pays 0.85 for each of 6 pens: 6 × 0.85.")
  (wrong "6 × 0.85 = 51 dollars" (false "6 * 0.85 = 51")
    "6 × 85 = 510 hundredths = 5.10. Estimate: 6 × 1 = 6, so the cost is less than 6 dollars.")
  (hint "Each pen costs 0.85. How many pens?"))
```

So: multiply to find equal groups, a cost from a price for each unit, or an area; estimate to check the decimal point.
