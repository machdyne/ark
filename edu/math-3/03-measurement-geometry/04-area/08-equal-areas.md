# Parts with equal areas

```lesson
(objective "Cut a shape into parts with equal areas and name each part as a unit fraction of the whole.")
(standards "3.G.A.2")
(minutes 20)
```

You can cut a shape into parts with the same area and name each part with a fraction.

This rectangle has an area of 8 square units. It is cut into 4 parts. Each part covers 2 squares.

```figure
(ms-parts 60 60 50 4 2 '(0 1 1 2 0 3 3 2) '(warm paper paper paper))
(caption "4 parts, each 2 square units")
```

So the parts have equal areas. Each part is $1/4$ of the whole area.

```check
(fraction
  (ask "A shape is cut into 4 parts with equal areas. What fraction of the whole area is 1 part?")
  (answer 1 4) (equivalent)
  (wrong-if (1 2) "There are 4 equal parts, not 2. 1 of 4 equal parts is 1/4.")
  (wrong-if (2 4) "2 is the number of squares in a part, not the number of parts. 1 part of 4 equal parts is 1/4.")
  (hint "How many equal parts are there?"))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 3, 3.G.A.2")
```

---

## Different shapes, equal areas

Equal parts do not need the same shape. They need the same area.

This rectangle has 12 squares. It is cut into 3 parts. Count the squares in each part.

```figure
(ms-parts 60 40 45 4 3 '(0 1 1 2 0 1 1 2 0 0 2 2) '(warm cool paper))
(caption "3 parts with different shapes")
```

```check
(number
  (ask "How many squares are in each of the 3 parts?")
  (answer 4) (from "12 / 3")
  (wrong-if 3 "There are 3 parts, but count the squares in 1 part. Each has 4.")
  (wrong-if 12 "12 is the whole rectangle. Count only 1 part.")
  (hint "Count the shaded squares on the left."))
```

---

## Each part is 1/3

All 3 parts have 4 squares. So their areas are equal. Each part is $1/3$ of the whole, even though the shapes differ.

```figure
(ms-parts 60 40 45 4 3 '(0 1 1 2 0 1 1 2 0 0 2 2) '(warm cool paper))
(caption "Each part: 4 of the 12 squares")
```

```check
(choice
  (ask "The 3 parts have different shapes but the same area. What is each part?")
  (right "1/3 of the whole")
  (wrong "Not a fraction, because the shapes are different"
    "Fractions need equal areas, not equal shapes. Each part covers 4 of the 12 squares.")
  (wrong "1/4 of the whole"
    "There are 3 equal parts, not 4. Each part has 4 squares, but it is 1 of 3 parts.")
  (hint "How many equal parts make the whole?"))
```

---

## Not equal

If the parts have different areas, they are not equal parts. Then you cannot name each part with the same unit fraction.

```figure
(ms-parts 60 40 45 4 3 '(0 0 1 1 0 0 1 2 0 0 2 2) '(warm cool paper))
(caption "3 parts: count the squares in each")
```

```check
(choice
  (ask "This rectangle is cut into 3 parts. Is each part 1/3 of the whole?")
  (right "No: the parts have 6, 3 and 3 squares")
  (wrong "Yes: there are 3 parts"
    "There are 3 parts, but they are not equal. The left part has 6 squares and the others have 3.")
  (hint "Count the squares in each part."))
```

---

## A worked example

```figure
(ms-parts 40 70 40 6 2 '(0 0 0 1 1 1 2 2 2 1 1 1) '(warm cool paper))
```

```example
(example
  (problem "A rectangle of 12 squares is cut into 3 parts. Are they equal parts? What is each part?")
  (step "Count the squares: the top left part has 3, the right part has 6, the bottom left part has 3.")
  (step "The parts have 3, 6 and 3 squares. They are not all the same.")
  (answer "They are not equal parts, so they are not thirds."))
```

---

## Now you finish one

```figure
(ms-parts 70 50 30 6 4 '(0 0 0 1 1 1 0 0 0 1 1 1 2 2 2 3 3 3 2 2 2 3 3 3) '(warm cool good paper))
```

A garden of 24 square meters is cut into 4 beds. Each bed has 6 squares.

```check
(fraction
  (ask "What fraction of the whole garden is 1 bed?")
  (answer 1 4) (equivalent)
  (wrong-if (1 6) "Each bed has 6 squares, but there are 4 beds. 1 bed is 1 of 4 equal parts.")
  (wrong-if (1 24) "1 bed is not 1 square. It is 1 of the 4 equal beds: 1/4.")
  (hint "How many beds make the whole garden?"))
```

---

## Practice

```check
(fraction
  (ask "A pan of 18 square inches of cornbread is cut into 6 pieces with equal areas. What fraction is 1 piece?")
  (answer 1 6) (equivalent)
  (wrong-if (1 3) "There are 6 equal pieces, not 3. 1 of 6 equal pieces is 1/6.")
  (wrong-if (1 18) "18 is the area, not the number of pieces. There are 6 equal pieces.")
  (hint "How many equal pieces are there?"))
```

```check
(number
  (ask "A shape of 16 squares is cut into 2 parts with equal areas. How many squares are in each part?")
  (answer 8) (unit "squares") (from "16 / 2")
  (wrong-if 2 "2 is how many parts. Share the 16 squares equally between the 2 parts.")
  (hint "16 ÷ 2 = ?"))
```

---

```check
(choice
  (ask "A rectangle is cut into 8 parts. Each part has 3 squares. What is each part?")
  (right "1/8 of the whole")
  (wrong "1/3 of the whole"
    "Each part has 3 squares, but there are 8 parts. 1 of 8 equal parts is 1/8.")
  (wrong "3/8 of the whole"
    "Each part is 1 of the 8 equal parts. So it is 1/8, not 3/8.")
  (hint "How many equal parts are there?"))
```

Now you can cut a shape into parts with equal areas, and name each part as a unit fraction of the whole.
