# Yards, feet and inches

```lesson
(objective "Know that 1 foot = 12 inches and 1 yard = 3 feet, and convert yards and feet to smaller units in a table.")
(standards "4.MD.A.1")
(minutes 20)
(keywords "yard (unit of length)")
```

You can write a length in feet as inches by multiplying.

1 foot = 12 inches. A 4 foot snake is 4 × 12 = 48 inches long.

```figure
(ruler 16 60 12 24)
(text 160 40 "1 foot = 12 inches" 'centre 'body 'bold)
(caption "A 1 foot ruler, marked in inches")
```

```check
(number
  (ask "How many inches are in 2 feet?")
  (answer 24) (unit "in") (from "2 * 12")
  (wrong-if 14 "That adds 2 + 12. Each foot is 12 inches, so multiply: 2 × 12.")
  (wrong-if 20 "That uses 10 inches in a foot. A foot is 12 inches.")
  (hint "1 foot = 12 inches.")
  (hint "2 × 12 = ?"))
```

```sources
(source "NIST Handbook 44 (2024), Appendix C, General Tables of Units of Measurement: 1 foot = 12 inches, 1 yard = 3 feet")
```

---

## A yard

A **yard** is a unit of length equal to 3 feet. A yard is about the length of a long step for a grown-up.

1 yard = 3 feet. The abbreviation is yd.

```figure
(frame 40 80 240 30 'ink 2)
(line 120 80 120 110 'ink 1)
(line 200 80 200 110 'ink 1)
(label 80 100 "1 ft")
(label 160 100 "1 ft")
(label 240 100 "1 ft")
(text 160 60 "1 yard" 'centre 'body 'bold)
```

```check
(number
  (ask "How many feet are in 5 yards?")
  (answer 15) (unit "ft") (from "5 * 3")
  (wrong-if 8 "That adds 5 + 3. Each yard is 3 feet: 5 × 3.")
  (wrong-if 60 "That multiplies by 12. 12 is for feet to inches. A yard is 3 feet.")
  (hint "1 yd = 3 ft.")
  (hint "5 × 3 = ?"))
```

---

## A table

```figure
(m4p4-table 70 30 180 '(("ft" "in") ("1" "12") ("2" "24") ("3" "36") ("4" "?")))
(caption "Each row: the same length")
```

Each row is one length in feet and in inches. The inches go up by 12 each row.

```check
(number
  (ask "What number goes in place of the ? in the table?")
  (answer 48) (unit "in") (from "4 * 12")
  (wrong-if 40 "That counts on by 4. Each row adds 12 inches: 36 + 12.")
  (wrong-if 37 "Each row adds 12 inches, not 1.")
  (hint "36 + 12 = ?"))
```

---

## Yards to inches

1 yard = 3 feet, and each foot is 12 inches. So 1 yard = 3 × 12 = 36 inches.

```check
(number
  (ask "How many inches are in 1 yard?")
  (answer 36) (unit "in") (from "3 * 12")
  (wrong-if 15 "That adds 3 + 12. A yard is 3 feet of 12 inches each: 3 × 12.")
  (wrong-if 12 "12 inches is 1 foot. A yard is 3 feet.")
  (hint "3 feet, each 12 inches."))
```

---

## A worked example

```example
(example
  (problem "A rug is 3 yards long. How long is it in feet?")
  (step "1 yard = 3 feet.")
  (step "3 yards = 3 × 3 feet.")
  (step (number (ask "3 × 3 = ?") (answer 9) (from "3 * 3")
          (wrong-if 6 "3 + 3 = 6, but 3 yards is 3 groups of 3 feet.")))
  (answer "The rug is 9 feet long."))
```

---

## Practice

```check
(number
  (ask "A board is 6 feet long. How long is it in inches?")
  (answer 72) (unit "in") (from "6 * 12")
  (wrong-if 18 "That adds 6 + 12. Multiply: 6 × 12.")
  (wrong-if 60 "That uses 10 inches in a foot. A foot is 12 inches.")
  (hint "6 × 12 = ?"))
```

```check
(number
  (ask "A garden is 8 yards long. How long is it in feet?")
  (answer 24) (unit "ft") (from "8 * 3")
  (wrong-if 11 "That adds 8 + 3. Each yard is 3 feet: 8 × 3.")
  (wrong-if 96 "That uses 12, for feet to inches. A yard is 3 feet.")
  (hint "8 × 3 = ?"))
```

---

```check
(choice
  (ask "Which is longest?")
  (right "1 yard" (true "36 > 24") (true "36 > 30"))
  (wrong "2 feet" (false "24 > 36") "2 feet is 24 inches. A yard is 36 inches, so 1 yard is longer.")
  (wrong "30 inches" (false "30 > 36") "30 inches is less than 36 inches. A yard is 36 inches.")
  (hint "Write each one in inches."))
```

To write yards in feet, multiply by 3; to write feet in inches, multiply by 12.
