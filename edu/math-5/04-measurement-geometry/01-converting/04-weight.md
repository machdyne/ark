# Ounces, pounds and tons

```lesson
(objective "Convert among ounces, pounds and tons both ways, such as 1 ton = 2,000 pounds and 24 ounces = 1 1/2 pounds.")
(standards "5.MD.A.1")
(minutes 20)
(keywords "ton")
```

You can change between US units of weight by multiplying or dividing.

1 pound = 16 ounces. To get ounces, multiply by 16.

3 pounds = $3 * 16$ ounces = 48 ounces.

```check
(number
  (ask "A melon weighs 5 pounds. How many ounces is that?")
  (answer 80) (unit "oz") (from "5 * 16")
  (wrong-if 21 "That adds 5 + 16. Each pound is 16 ounces, so multiply.")
  (wrong-if 50 "That uses 10 ounces a pound. A pound is 16 ounces.")
  (hint "1 lb = 16 oz.")
  (hint "5 × 16 = ?"))
```

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement, units of mass (avoirdupois)")
```

---

## Ounces to pounds

To get pounds, divide by 16. The answer can be a mixed number.

24 ounces = $24/16$ pounds = $1 8/16$ pounds = $1 1/2$ pounds.

```figure
(m5p4-table 60 40 100 '(("ounces" "pounds") ("16" "1") ("24" "1 1/2") ("32" "2") ("40" "?")))
(caption "Each row: the same weight")
```

```check
(number
  (ask "What weight in pounds goes in place of the ? in the table?")
  (answer 2.5) (unit "lb") (from "40 / 16")
  (wrong-if 2.8 "40 ÷ 16 is 2 with 8 left over. 8 ounces is 8/16 = 1/2 pound, not 0.8.")
  (wrong-if 640 "That multiplies. Pounds are bigger, so divide by 16.")
  (hint "40 ÷ 16 = 2, with 8 ounces left.")
  (hint "8 ounces is 8/16 of a pound."))
```

---

## A ton

A **ton** is 2,000 pounds. Trucks and big animals are weighed in tons.

This is the US ton. Other countries use a metric ton of 1,000 kilograms, also written "tonne".

```check
(number
  (ask "A truck weighs 3 tons. How many pounds is that?")
  (answer 6000) (unit "lb") (from "3 * 2000")
  (wrong-if 3000 "That uses 1,000, the kilograms in a metric ton. A US ton is 2,000 pounds.")
  (hint "3 × 2,000 = ?"))
```

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement: 1 short ton = 2000 pounds")
(source "BIPM, The International System of Units (SI), 9th edition (2019), Table 8: the tonne, 1 t = 1000 kg")
```

---

## A worked example

```example
(example
  (problem "An elephant weighs 9,000 pounds. How many tons is that?")
  (step "Tons are bigger than pounds, so divide by 2,000.")
  (step "9,000 ÷ 2,000 = 4 with 1,000 pounds left.")
  (step (number (ask "How many tons is 9,000 pounds in all?") (answer 4.5) (from "9000 / 2000")
          (wrong-if 4.1 "1,000 pounds is 1,000/2,000 = 1/2 ton, not 1 tenth.")))
  (answer "9,000 pounds = 4 1/2 tons."))
```

---

## Practice

```check
(choice
  (ask "Which weight is the same as 12 ounces?")
  (right "3/4 pound" (true "12/16 = 3/4"))
  (wrong "1 1/5 pounds" "That uses 10 ounces a pound. A pound is 16 ounces, so 12 ounces is less than 1 pound.")
  (wrong "192 pounds" "That multiplies. Pounds are bigger, so divide 12 by 16.")
  (wrong "12 pounds" "A pound is 16 ounces. 12 ounces is not even 1 pound.")
  (hint "12 ounces = 12/16 pound."))
```

```check
(number
  (ask "A box weighs 2 pounds 5 ounces. How many ounces is that?")
  (answer 37) (unit "oz") (from "2 * 16 + 5")
  (wrong-if 25 "That uses 10 ounces a pound. 2 pounds is 2 × 16 = 32 ounces.")
  (wrong-if 32 "32 ounces is the 2 pounds. Add the 5 ounces too.")
  (hint "2 pounds = 32 ounces. Then add 5."))
```

Multiply by 16 or 2,000 to get the smaller unit of weight; divide to get the bigger one.
