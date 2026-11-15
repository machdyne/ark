# Drawing with bits

```lesson
(objective "Draw a small black-and-white picture from rows of bits, and write the bits of a picture.")
(minutes 20)
```

Rows of bits can draw a picture, and a picture can be written as rows
of bits.

Each row of the picture below is 5 pixels, so it is 5 bits. As before,
1 is a filled square and 0 is an empty one.

Each slider sets one row. A row's bits are a binary number, so the
slider gives that number. Try 31 for a full row, and 0 for an empty
one.

```figure
(define r1 (slider 'r1 0 31 4 "Row 1" 1))
(define r2 (slider 'r2 0 31 14 "Row 2" 1))
(define r3 (slider 'r3 0 31 21 "Row 3" 1))
(define r4 (slider 'r4 0 31 4 "Row 4" 1))
(define r5 (slider 'r5 0 31 4 "Row 5" 1))
(define rows (list r1 r2 r3 r4 r5))
(cs2-pixels 30 30 5 34 rows)
(cs2-pixel-bits 215 30 5 34 rows)
(caption "5 rows of 5 bits")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Pictures and Sound")
```

```check
(choice
  (ask "The rows of a picture are 00100, 01110 and 11111. What shape is it?")
  (right "A triangle, wide at the bottom")
  (wrong "A triangle, wide at the top"
    "The first row is the top row. It has only one filled pixel, and the last row has five.")
  (wrong "A square"
    "A square would have the same number of 1s in every row. Here each row has more than the one above.")
  (hint "Draw it on paper: 1 is filled. Row 1 is at the top."))
```

---

## Worked example

```example
(example
  (problem "Draw the picture with the rows 10001, 01010, 00100, 01010, 10001.")
  (step "Row 1, 10001: filled at both ends.")
  (step "Row 2, 01010: filled one step in from each end.")
  (step "Row 3, 00100: filled in the middle only.")
  (step "Rows 4 and 5 are rows 2 and 1 again.")
  (answer "The filled pixels make an X."))
```

```figure
(cs2-pixels 80 30 5 32 '(17 10 4 10 17))
(caption "10001, 01010, 00100, 01010, 10001")
```

---

## Writing the bits

Now go the other way. Look at each row of the picture. Write 1 for a
filled pixel and 0 for an empty one, from left to right.

```figure
(cs2-pixels 80 30 5 32 '(31 4 4 4 4))
(caption "a letter T")
```

```example
(example
  (problem "Write the bits of row 1 of the T.")
  (step "Every pixel in row 1 is filled.")
  (answer "11111."))
```

```check
(text
  (ask "Write the bits of row 2 of the T.")
  (accept "00100")
  (wrong-if "11011" "That swaps filled and empty. Filled is 1 here, and only the middle pixel is filled.")
  (wrong-if "1" "Every pixel needs its bit, the empty ones too. Row 2 has 5 pixels, so write 5 bits.")
  (hint "Only the middle pixel of row 2 is filled."))
```

---

## Practice

```check
(number
  (ask "A row of 5 pixels is 01110. Read it as a binary number. What number is it?")
  (answer 14) (from "8 + 4 + 2")
  (wrong-if 3 "That counts the filled pixels. As a binary number, the 1s are worth 8, 4 and 2.")
  (wrong-if 1110 "That reads the bits as an everyday number. The places are worth 16, 8, 4, 2, 1.")
  (hint "The places of 5 bits are worth 16, 8, 4, 2 and 1."))
```

---

```check
(choice
  (ask "A picture has the rows 11111, 10001, 10001, 10001, 11111. What does it look like?")
  (right "The outline of a square: filled edges, empty inside")
  (wrong "A filled square"
    "Rows 2, 3 and 4 have 0s in the middle. Those pixels are empty, so only the edges are filled.")
  (wrong "Two lines across"
    "Rows 2 to 4 have a 1 at each end. Those make the left and right sides.")
  (hint "Look at the first and last bit of every row."))
```

So: each row of pixels is a row of bits, so a picture can be stored as
numbers and drawn again from them.
