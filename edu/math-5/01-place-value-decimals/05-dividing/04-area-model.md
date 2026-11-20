# Dividing with an area model

```lesson
(objective "Divide with an area model: find the unknown side of a rectangle from its area and a two-digit side.")
(standards "5.NBT.B.6")
(minutes 25)
```

You can divide with an area model: find a missing side of a rectangle.

A rectangle has an area of 2,730 square units. One side is 42 units.
How long is the other side? That is $2730 ÷ 42$.

Build the rectangle in parts, using easy multiples of 42:

- A part 60 long: $42 * 60 = 2520$. Area left: $2730 - 2520 = 210$.
- A part 5 long: $42 * 5 = 210$. Area left: 0.

The missing side is $60 + 5 = 65$.

```figure
(define k (slider 'k 1 2 2 "Parts" 1))
(m5p1-area 70 60 220 100 (if (= k 1) '(60) '(60 5)) '(42) k)
(label 160 190 (if (= k 1) "2,730 - 2,520 = 210 still to fill" "60 + 5 = 65") 'small 'bold)
```

```check
(number
  (ask "A rectangle has an area of 1,872 square units. One side is 36. Use a part 50 long first. How long is the other side?")
  (answer 52) (from "1872 ÷ 36") (true "36 * 52 = 1872")
  (wrong-if 50 "36 × 50 = 1,800, and 72 is still to fill. 72 = 36 × 2, so add a part 2 long.")
  (wrong-if 2 "The side is made of both parts: 50 + 2.")
  (hint "36 × 50 = 1,800. 1,872 - 1,800 = 72.")
  (hint "36 × 2 = 72."))
```

---

## Each part is a partial quotient

Each part of the rectangle has the known side, 42, and a length you
choose. The lengths are the partial quotients. The areas are what you
take away.

$$ 2730 = 42 * 60 + 42 * 5 = 42 * 65 $$

This is the distributive property: $42 * (60 + 5)$.

```check
(choice
  (ask "An area model for 4,628 ÷ 52 has parts with areas 4,160 and 468. What are the lengths of the parts?")
  (right "80 and 9" (true "52 * 80 = 4160"))
  (wrong "4,160 and 468" (false "52 * 4160 = 4628")
    "Those are the areas. The lengths are what 52 is multiplied by: 52 × 80 = 4,160.")
  (wrong "8 and 9" (false "52 * 8 = 4160")
    "52 × 8 = 416, not 4,160. The first length is 80.")
  (hint "52 × ? = 4,160."))
```

---

## Three parts

Big quotients may need more parts. For 6,156 ÷ 38:

- $38 * 100 = 3800$. Left: 2,356.
- $38 * 60 = 2280$. Left: 76.
- $38 * 2 = 76$. Left: 0.

The missing side is $100 + 60 + 2 = 162$.

```figure
(m5p1-area 70 60 220 100 '(100 60 2) '(38) 3)
(label 180 190 "100 + 60 + 2 = 162" 'body 'bold)
```

```check
(number
  (ask "Find 6,156 ÷ 38 with the area model.")
  (answer 162) (from "6156 ÷ 38") (true "38 * 162 = 6156")
  (wrong-if 1602 "Add the lengths: 100 + 60 + 2 = 162. Do not write them side by side.")
  (hint "Add the lengths of the three parts."))
```

---

## Worked example

```example
(example
  (problem "Find 3,285 ÷ 73 with an area model.")
  (step "A part 40 long: 73 × 40 = 2,920. Left: 365.")
  (step "A part 5 long: 73 × 5 = 365. Left: 0.")
  (answer "40 + 5 = 45, so 3,285 ÷ 73 = 45"))
```

```example
(example
  (problem "Find 2,688 ÷ 64 with an area model.")
  (step "A part 40 long: 64 × 40 = 2,560. Left: 128.")
  (step (number (ask "128 = 64 × ? What is the other length?") (answer 2) (from "128 ÷ 64")
    (wrong-if 20 "64 × 20 = 1,280, too big. 64 × 2 = 128.")))
  (answer "40 + 2 = 42, so 2,688 ÷ 64 = 42"))
```

---

## Practice

```check
(number
  (ask "A garden has an area of 1,365 square feet. It is 35 feet wide. How long is it?")
  (answer 39) (from "1365 ÷ 35") (unit "feet") (true "35 * 39 = 1365")
  (wrong-if 47775 "The area and one side are known, so divide: 1,365 ÷ 35.")
  (hint "35 × 30 = 1,050. 1,365 - 1,050 = 315.")
  (hint "35 × 9 = 315."))
```

```check
(number
  (ask "Find 4,628 ÷ 52 with the area model.")
  (answer 89) (from "4628 ÷ 52") (true "52 * 89 = 4628")
  (wrong-if 80 "52 × 80 = 4,160, and 468 is still to fill. 468 = 52 × 9.")
  (hint "52 × 80 = 4,160."))
```

---

```check
(choice
  (ask "Which equation does an area model for 2,730 ÷ 42 show?")
  (right "2,730 = 42 × 60 + 42 × 5" (true "2730 = 42 * 60 + 42 * 5"))
  (wrong "2,730 = 42 + 60 + 5" (false "2730 = 42 + 60 + 5")
    "The parts are areas: side times side. 42 × 60 and 42 × 5 add to 2,730.")
  (wrong "2,730 = 42 × 60 × 5" (false "2730 = 42 * 60 * 5")
    "The parts sit side by side, so their areas are added, not multiplied.")
  (hint "Each part's area is 42 times its length."))
```

```check
(number
  (ask "A rectangle has an area of 2,520 square units. One side is 42. How long is the other side?")
  (answer 60) (from "2520 ÷ 42") (true "42 * 60 = 2520")
  (wrong-if 6 "42 × 6 = 252. You need 2,520: 42 × 60.")
  (hint "Look back at the first area model."))
```

So: the area model finds the missing side in parts, and the lengths of
the parts add up to the quotient.
