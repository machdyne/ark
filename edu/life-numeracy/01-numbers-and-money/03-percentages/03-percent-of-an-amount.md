# A percentage of an amount

```lesson
(objective "Find a percentage of an amount, in your head (10%, 5%, 50%, 25%) and with a calculator.")
(minutes 25)
```

"15% of your pay" or "a 20% deposit": you can find most percentages in
your head by starting from 10%.

**10% is a tenth**, so divide by 10. 10% of 80 dollars is 8 dollars.
Dividing by 10 moves every digit one place to the right: 10% of 45 is
4.5.

From 10% you can build others:

- 20% is 2 times 10%; 30% is 3 times 10%.
- 5% is half of 10%.
- 1% is a tenth of 10%: divide by 100.

```check
(number
  (ask "What is 10% of 250 dollars?")
  (answer 25) (unit "dollars") (from "250 / 10")
  (wrong-if 2.5 "That is 1% of 250. 10% is a tenth: 250 ÷ 10 = 25.")
  (wrong-if 240 "10% of 250 is the part, not what is left. 250 ÷ 10 = 25.")
  (hint "Divide by 10."))
```

---

## 50% and 25%

50% is a half: divide by 2. 25% is a quarter: divide by 4, or halve
twice.

```check
(number
  (ask "What is 25% of 64 dollars?")
  (answer 16) (unit "dollars") (from "64 / 4")
  (wrong-if 32 "32 is 50%, a half. 25% is a quarter: halve again to get 16.")
  (wrong-if 39 "25% of 64 is not 64 - 25. It is a quarter of 64: 16.")
  (hint "Half of 64 is 32. Half of that is?"))
```

---

## Building a percentage

```example
(example
  (problem "Find 15% of 60 dollars.")
  (step "10% of 60 is 6.")
  (step "5% is half of that: 3.")
  (step "15% = 10% + 5% = 6 + 3.")
  (answer "9 dollars"))
```

```example
(example
  (problem "Find 35% of 80 dollars.")
  (step "10% of 80 is 8, so 30% is 3 times 8 = 24.")
  (step "5% is half of 10%: 4.")
  (step (number (ask "So 35% of 80 is?") (answer 28) (unit "dollars") (from "35/100 * 80")
    (wrong-if 24 "24 is 30%. Add the 5% as well: 24 + 4.")))
  (answer "28 dollars"))
```

---

## With a calculator

For any percentage, change it to a decimal and multiply: 17% of 340 is
0.17 * 340. The calculator in Zeitlos has no % button, so this is the
way to do it there; it works on every calculator.

```try
(try (app "calc")
  (task "Press Open calc (or open calc from the dock's Desk group). To find 17% of 340, type 0.17 * 340 and press Enter. Then come back to the lesson.")
  (check (number (ask "What is 17% of 340?") (answer 57.8) (from "0.17 * 340"))))
```

```check
(choice
  (ask "Estimate first: about how much should 17% of 340 be?")
  (right "A bit less than 20% of 340, which is 68" (true "0.2 * 340 = 68"))
  (wrong "About 17" "17 is the percentage, not the answer. 10% of 340 alone is 34, so 17% is more than that.")
  (wrong "About 340" "340 is the whole, 100%. 17% is a small part of it.")
  (hint "10% of 340 is 34. 20% is twice that."))
```

---

## Practice

```check
(number
  (ask "What is 5% of 120 dollars?")
  (answer 6) (unit "dollars") (from "120 * 5 / 100")
  (wrong-if 12 "12 is 10%. 5% is half of that: 6.")
  (wrong-if 24 "Dividing by 5 gives 20%, not 5%. Find 10% (12), then halve it.")
  (hint "Find 10% first."))
```

```check
(number
  (ask "A tip of 20% on a 45 dollar meal. How much is the tip?")
  (answer 9) (unit "dollars") (from "0.2 * 45")
  (wrong-if 4.5 "4.5 is 10%. 20% is twice that: 9.")
  (wrong-if 20 "20 is the percentage, not the amount. 20% of 45 is 2 times 4.5.")
  (hint "10% of 45 is 4.5."))
```

```check
(number
  (ask "A 15% deposit on a 2400 dollar car repair. How much is the deposit?")
  (answer 360) (unit "dollars") (from "0.15 * 2400")
  (wrong-if 240 "240 is 10%. Add 5% (120) to make 15%.")
  (wrong-if 160 "Dividing by 15 does not give 15%. Find 10% (240) and 5% (120), then add.")
  (hint "10% of 2400 is 240. 5% is half of that."))
```

To find a percentage of an amount, build it from 10% in your head, or
multiply by the percentage written as a decimal.
