# Tape diagrams

```lesson
(objective "Draw a tape diagram of equal parts to show a multiplication.")
(standards "3.OA.A.1" "3.OA.A.3")
(minutes 20)
(keywords "tape diagram")
```

You can show a multiplication with one long bar cut into equal parts.

A **tape diagram** is a bar cut into parts. In a multiplication tape
diagram, every part is the same size and stands for the same number.
The ? over the bar is the total you want to find.

```figure
(md-tape 30 70 260 50 4 "6" "?")
(caption "4 parts. Each part is 6.")
```

```check
(choice
  (ask "Which equation does this tape diagram show?")
  (right "4 × 6 = ?")
  (wrong "4 + 6 = ?"
    "The bar is not one 4 and one 6. It has 4 parts, and each part is 6. That is 4 groups of 6.")
  (wrong "6 × 6 = ?"
    "Each part is 6, but count the parts: there are 4, not 6.")
  (hint "Count the parts. Then read the number in one part."))
```

---

## Find the total

Each part is an equal group. In this course, the number of parts is
the first factor.
The number in each part is the second factor. The total is the product.

```check
(number
  (ask "A tape diagram has 4 parts. Each part is 6. What is the total?")
  (answer 24) (from "4 * 6")
  (wrong-if 10 "10 is 4 + 6. There are 4 parts of 6: 6 + 6 + 6 + 6.")
  (wrong-if 18 "18 is 3 parts of 6. Count again: there are 4 parts.")
  (hint "Count by 6s, 4 times."))
```

---

## Draw it yourself

To draw a tape diagram for a story:

1. Draw a long bar.
2. Cut it into one part for each group. Make the parts the same size.
3. Write the number in each group inside each part.
4. Write ? over the bar for the total.

Move the sliders to build a tape diagram.

```figure
(define n (slider 'n 2 8 3 "Parts" 1))
(define k (slider 'k 2 9 5 "Each part" 1))
(md-tape 20 60 280 50 n (fmt k 0) "?")
(math 160 170 (string-append (fmt n 0) " * " (fmt k 0) " = " (fmt (* n k) 0)) 24)
```

```check
(choice
  (ask "There are 3 boxes. Each box holds 5 pens. How should the tape diagram look?")
  (right "3 equal parts, with 5 in each part")
  (wrong "5 equal parts, with 3 in each part"
    "There are 3 boxes, so there are 3 groups. Draw 3 parts, and write 5 in each.")
  (wrong "2 parts: one with 3 and one with 5"
    "That shows 3 + 5. Each box is an equal group, so each box gets its own part with 5 in it.")
  (hint "Make one part for each box."))
```

---

## Lengths

A tape diagram also works for lengths. Each part is a length, and the
whole bar is the total length.

Lee joins 3 boards. Each board is 7 feet long.

```figure
(md-tape 30 70 260 50 3 "7 feet" "? feet")
(caption "3 boards, each 7 feet long")
```

```check
(number
  (ask "How many feet long are the 3 boards end to end?")
  (answer 21) (from "3 * 7")
  (wrong-if 10 "10 is 3 + 7. There are 3 boards, each 7 feet: 7 + 7 + 7.")
  (hint "Multiply the number of boards by the length of each."))
```

---

## Worked example

```example
(example
  (problem "Kim reads 8 pages each day for 4 days. Draw a tape diagram and find the total.")
  (step "There are 4 days, so draw a bar with 4 equal parts.")
  (step "Write 8 in each part. Write ? over the bar.")
  (step "The diagram shows 4 × 8 = ?. Count by 8s: 8, 16, 24, 32.")
  (answer "4 × 8 = 32. Kim reads 32 pages."))
```

```example
(example
  (problem "A ribbon is cut into 5 pieces. Each piece is 6 inches long. How long was the ribbon?")
  (step "There are 5 pieces, so draw a bar with 5 equal parts.")
  (step "Write 6 inches in each part. Write ? over the bar.")
  (step (number (ask "5 × 6 = ? inches") (answer 30) (unit "inches") (from "5 * 6")
    (wrong-if 11 "11 is 5 + 6. There are 5 parts, each 6: count by 6s 5 times.")))
  (answer "The ribbon was 30 inches long."))
```

---

## Practice

```figure
(md-tape 20 70 280 50 6 "4" "?")
```

```check
(number
  (ask "What total does this tape diagram show?")
  (answer 24) (from "6 * 4")
  (wrong-if 10 "10 is 6 + 4. The bar has 6 parts, and each is 4: count by 4s 6 times.")
  (wrong-if 20 "That is 5 parts of 4. Count the parts again: there are 6.")
  (hint "Count the parts. Each part is 4."))
```

---

```check
(choice
  (ask "A tape diagram has 7 parts with 2 in each. Which story fits it?")
  (right "7 children each have 2 mittens")
  (wrong "2 children each have 7 mittens"
    "The bar has 7 parts, so the story needs 7 groups. Each group has 2.")
  (wrong "A child has 7 mittens and gets 2 more"
    "That story adds 7 + 2. A tape diagram of equal parts shows equal groups.")
  (hint "Each part is one group. How many groups are there?"))
```

```check
(number
  (ask "A path has 9 stones in a line. Each stone is 2 feet long. How long is the path?")
  (answer 18) (unit "feet") (from "9 * 2")
  (wrong-if 11 "11 is 9 + 2. Draw 9 parts with 2 feet in each: 9 × 2.")
  (hint "Draw a bar with 9 parts. Write 2 in each."))
```

So: a tape diagram shows equal groups as equal parts of one bar, and the total is their product.
