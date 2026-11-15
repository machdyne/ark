# Pounds and ounces

```lesson
(objective "Know that pounds and ounces measure weight and 1 pound = 16 ounces, and convert pounds to ounces in a table.")
(standards "4.MD.A.1")
(minutes 20)
(keywords "weight" "pound (unit of weight)" "ounce")
```

**Weight** is how heavy something is. In this lesson you learn 2 units of weight.

```check
(choice
  (ask "Which question asks about weight?")
  (right "How heavy is the bag of apples?")
  (wrong "How long is the bag of apples?" "How long is a question about length. Weight is about how heavy.")
  (wrong "How much juice is in the bottle?" "How much juice is liquid volume. Weight is about how heavy.")
  (hint "Weight is how heavy."))
```

---

## A pound

A **pound** is a unit of weight. A loaf of bread can weigh about 1 pound. The abbreviation is lb.

A dog that weighs 30 pounds is heavier than a dog that weighs 20 pounds.

```check
(choice
  (ask "Which is heavier?")
  (right "A box of 9 pounds" (true "9 > 6"))
  (wrong "A box of 6 pounds" (false "6 > 9") "6 pounds is less than 9 pounds. More pounds means heavier.")
  (hint "More pounds, more weight."))
```

---

## An ounce

An **ounce** is a smaller unit of weight. 16 ounces make 1 pound. A slice of bread can weigh about 1 ounce. The abbreviation is oz.

1 pound = 16 ounces. So 2 pounds = 2 × 16 = 32 ounces.

```figure
(line 60 90 260 90 'ink 3)
(line 160 90 160 200 'ink 3)
(line 120 200 200 200 'ink 3)
(frame 70 50 70 40 'ink 2)
(label 105 76 "1 lb")
(frame 180 50 70 40 'ink 2)
(label 215 76 "16 oz")
(caption "1 pound weighs the same as 16 ounces")
```

```check
(number
  (ask "How many ounces are in 3 pounds?")
  (answer 48) (unit "oz") (from "3 * 16")
  (wrong-if 19 "That adds 3 + 16. Each pound is 16 ounces: 3 × 16.")
  (wrong-if 36 "That uses 12, the inches in a foot. A pound is 16 ounces.")
  (hint "1 lb = 16 oz.")
  (hint "3 × 16 = ?"))
```

```sources
(source "NIST Handbook 44 (2024), Appendix C, General Tables of Units of Measurement: avoirdupois units, 1 pound = 16 ounces")
```

---

## Mass and weight

Grams and kilograms measure mass, as you know from grade 3. Pounds and ounces measure weight. Do not change between these units in this course.

```check
(choice
  (ask "Which units measure weight?")
  (right "pounds and ounces")
  (wrong "grams and kilograms" "Grams and kilograms are units of mass. Pounds and ounces are units of weight.")
  (wrong "liters and milliliters" "Liters and milliliters measure liquid volume, how much a container holds.")
  (hint "Think of a bag of flour marked lb."))
```

---

## A table

```figure
(m4p4-table 70 30 180 '(("lb" "oz") ("1" "16") ("2" "32") ("3" "48") ("4" "?")))
(caption "Each row: the same weight")
```

```example
(example
  (problem "Fill in the last row: 4 pounds is how many ounces?")
  (step "Each row adds 16 ounces.")
  (step "Or multiply: 4 × 16.")
  (step (number (ask "4 × 16 = ?") (answer 64) (from "4 * 16")
          (wrong-if 49 "Each row adds 16, not 1: 48 + 16.")))
  (answer "4 lb = 64 oz."))
```

---

## Practice

```check
(number
  (ask "A bag of rice weighs 5 pounds. How many ounces is that?")
  (answer 80) (unit "oz") (from "5 * 16")
  (wrong-if 21 "That adds 5 + 16. Multiply: 5 × 16.")
  (wrong-if 60 "That uses 12 ounces in a pound. A pound is 16 ounces.")
  (hint "5 × 16 = ?"))
```

```check
(number
  (ask "A puppy weighs 10 pounds. How many ounces is that?")
  (answer 160) (unit "oz") (from "10 * 16")
  (wrong-if 26 "That adds. Multiply: 10 × 16.")
  (hint "10 × 16 = ?"))
```

---

```check
(choice
  (ask "Which is heavier?")
  (right "2 pounds" (true "32 > 20"))
  (wrong "20 ounces" (false "20 > 32") "20 is a bigger number, but ounces are small. 2 pounds is 32 ounces.")
  (hint "Write 2 pounds in ounces."))
```

To write pounds in ounces, multiply by 16.
