# Equivalent problems

```lesson
(objective "Solve word problems in which equal amounts of one whole are written as different fractions.")
(standards "4.NF.A.1")
(minutes 25)
```

You can solve problems where the same amount is written as different
fractions.

Ana and Ben have 2 pizzas of the same size. Ana cuts hers into 4 equal
slices and eats 2: $2/4$. Ben cuts his into 8 and eats 4: $4/8$. They
eat the same amount, because $2/4 = 4/8$.

```figure
(frac-circle 90 100 60 4 2 'warm)
(frac-circle 230 100 60 8 4 'cool)
(math 90 200 "2/4" 24)
(math 230 200 "4/8" 24)
(caption "Two pizzas of the same size")
```

```check
(choice
  (ask "Jo walks" (math "6/10") "of a mile. Kim walks" (math "3/5") "of a mile. Who walks farther?")
  (right "They walk the same distance" (true "6/10 = 3/5"))
  (wrong "Jo, because 6 is more than 3" (false "6/10 > 3/5")
    "Jo walks more parts, but tenths are half the size of fifths. 6 tenths = 3 fifths.")
  (wrong "Kim, because fifths are bigger" (false "3/5 > 6/10")
    "Fifths are bigger, but Jo walks twice as many parts. 3/5 = (2 × 3)/(2 × 5) = 6/10.")
  (hint "Write 3/5 in tenths."))
```

---

## Finding a missing part

Tom paints $3/4$ of a fence. The fence has 12 equal boards. How many
boards does he paint? Write $3/4$ in twelfths: $3/4 = 9/12$. He paints
9 boards.

```check
(number
  (ask "A garden has 10 equal beds. Sam plants" (math "2/5") "of the garden. How many beds does he plant?")
  (answer 4) (from "2 * 2") (true "2/5 = 4/10") (unit "beds")
  (wrong-if 2 "2 is the numerator of 2/5, in fifths. The garden is in tenths: 2/5 = 4/10, so 4 beds.")
  (wrong-if 5 "5 beds is half the garden, 5/10. 2/5 is less: 4/10.")
  (hint "Write 2/5 in tenths."))
```

---

## The same whole

$1/2$ of a small pizza is less than $1/2$ of a big pizza. Equal
fractions are equal amounts only for the same whole. Two wholes of the
same size work too.

```check
(choice
  (ask "Ella eats" (math "2/4") "of a small pizza. Max eats" (math "4/8") "of a large pizza. Do they eat the same amount?")
  (right "No: the pizzas are not the same size")
  (wrong "Yes: 2/4 = 4/8"
    "2/4 = 4/8 is true for the same whole. Max's whole is bigger, so his 4/8 is more pizza.")
  (wrong "No: Max eats more slices, so 4/8 is more"
    "With pizzas of the same size, 4/8 would be the same as 2/4. Max eats more because his pizza is bigger.")
  (hint "Are the 2 wholes the same size?"))
```

---

## Answers in simplest form

A garden is cut into 12 equal beds. 8 beds have flowers. That is
$8/12$ of the garden. In simplest form, $8/12 = 2/3$.

```check
(fraction
  (ask "A wall has 10 equal tiles. 6 are blue. What fraction of the wall is blue? Write it in simplest form.")
  (answer 3 5) (equivalent) (simplest) (true "6/10 = 3/5")
  (wrong-if (4 10) "4/10 is the part that is not blue. 6 of the 10 tiles are blue.")
  (wrong-if (3 10) "Divide the denominator too: 10 ÷ 2 = 5.")
  (hint "Start with 6/10. 2 is a common factor of 6 and 10."))
```

---

## Worked example

```example
(example
  (problem "Lea reads 4/6 of a book. Max reads 8/12 of the same book. Who reads more?")
  (step "It is the same book, so the whole is the same.")
  (step "Write 4/6 in twelfths: (2 × 4)/(2 × 6) = 8/12.")
  (step "8/12 = 8/12.")
  (answer "They read the same amount."))
```

```example
(example
  (problem "A track has 8 equal sections. Ivy runs 3/4 of the track. How many sections does she run?")
  (step "Write 3/4 in eighths: 4 × 2 = 8.")
  (step (number (ask "3 × 2 = ?")
    (answer 6) (from "3 * 2")
    (wrong-if 5 "5 is 3 + 2. Multiply: 3 × 2.")))
  (answer "3/4 = 6/8, so Ivy runs 6 sections."))
```

---

## Practice

```check
(number
  (ask "A pan of corn bread is cut into 12 equal pieces." (math "1/3") "of it is eaten. How many pieces are eaten?")
  (answer 4) (from "1 * 4") (true "1/3 = 4/12") (unit "pieces")
  (wrong-if 3 "3 is the denominator of 1/3. Write 1/3 in twelfths: 4/12.")
  (wrong-if 9 "9 is 12 - 3. Each third of 12 pieces is 12 ÷ 3 = 4 pieces.")
  (hint "1/3 = ?/12"))
```

```check
(choice
  (ask "Two equal ribbons. Pat cuts off" (math "5/10") "of one. Lou cuts off" (math "1/2") "of the other. Which is true?")
  (right "They cut off the same length" (true "5/10 = 1/2"))
  (wrong "Pat cuts off more: 5 parts"
    "Pat's parts are tenths, much smaller than halves. 5 tenths make exactly 1 half.")
  (wrong "Lou cuts off more: halves are bigger"
    "A half is bigger than a tenth, but Pat cuts 5 of them. 5/10 = 1/2.")
  (hint "Write 1/2 in tenths."))
```

---

```check
(fraction
  (ask "A field is cut into 12 equal parts. Corn grows on 9 of them. What fraction of the field has corn? Write it in simplest form.")
  (answer 3 4) (equivalent) (simplest) (true "9/12 = 3/4")
  (wrong-if (3 12) "Divide the numerator and the denominator by 3: 9 ÷ 3 = 3 and 12 ÷ 3 = 4.")
  (hint "Start with 9/12. 3 is a common factor."))
```

```check
(number
  (ask "A path has 6 equal parts." (math "2/3") "of the path is paved. How many parts are paved?")
  (answer 4) (from "2 * 2") (true "2/3 = 4/6") (unit "parts")
  (wrong-if 2 "2 is the numerator in thirds. The path is in sixths: 2/3 = 4/6.")
  (wrong-if 3 "3 parts is half the path. 2/3 is more than half: 4/6.")
  (hint "Write 2/3 in sixths."))
```

So: write the fractions with the same denominator, or in simplest form.
Then you see if they are the same amount.
