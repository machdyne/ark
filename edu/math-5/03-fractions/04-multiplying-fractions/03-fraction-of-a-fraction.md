# A fraction of a fraction

```lesson
(objective "Find a fraction of a fraction with an area model, such as (1/2) x (1/3) = 1/6 and (2/3) x (4/5) = 8/15.")
(standards "5.NF.B.4a")
(minutes 25)
```

You can take a fraction of a fraction. What is $1/2$ of $1/3$?

Start with a square: 1 whole. Cut it into 3 equal rows, and shade 1
row: that is $1/3$. Now cut the square into 2 equal columns. Half of
the shaded row is 1 small part.

The square now has $2 * 3 = 6$ equal parts. So

$$ (1/2) * (1/3) = 1/6 $$

```figure
(m5p3-area 85 50 150 150 1 2 1 3)
(math 55 75 "1/3" 18)
(math 122 30 "1/2" 18)
(text 160 222 "half of the top row: 1 of 6 parts" 'centre 'small)
```

```check
(fraction
  (ask "Find" (math "(1/2) * (1/4)") ", which is" (math "1/2") "of" (math "1/4") ".")
  (answer 1 8) (equivalent) (true "(1/2) * (1/4) = 1/8")
  (wrong-if (2 4) "Half of 1/4 is smaller than 1/4. Cut the square into 4 rows and 2 columns: 8 parts.")
  (wrong-if (1 6) "That adds the denominators. 4 rows and 2 columns make 4 x 2 = 8 parts.")
  (hint "4 rows, 2 columns: how many parts?"))
```

---

## Reading the area model

In the square:

- the rows show the second fraction ($1/3$: 1 of 3 rows);
- the columns show the first fraction ($1/2$: 1 of 2 columns);
- where they cross is the product.

The whole square has (columns) x (rows) equal parts. That is the
denominator of the product.

```check
(choice
  (ask "A square is cut into 4 columns and 5 rows. How many equal parts does it have?")
  (right "20" (true "4 * 5 = 20"))
  (wrong "9"
    "That adds 4 and 5. Each of the 5 rows is cut into 4 parts: 5 x 4 = 20.")
  (wrong "5"
    "5 is the number of rows. Each row has 4 parts.")
  (hint "Each row has 4 parts. There are 5 rows."))
```

---

## More than one part

$(2/3) * (4/5)$ is $2/3$ of $4/5$.

- Cut the square into 5 rows. Shade 4 of them: $4/5$.
- Cut it into 3 columns. Take 2 of them.
- They cross in $2 * 4 = 8$ parts, of $3 * 5 = 15$.

$$ (2/3) * (4/5) = 8/15 $$

```figure
(define a (slider 'a 0 3 2 "Columns taken" 1))
(m5p3-area 85 40 150 150 a 3 4 5)
(math 55 110 "4/5" 18)
(text 160 28 (string-append (m5p3-s a 3) " of the columns taken") 'centre 'small)
(text 160 215 (string-append (fmt (* a 4) 0) " of 15 parts where they cross") 'centre 'small)
```

```check
(fraction
  (ask "Move the slider to 1. What is" (math "(1/3) * (4/5)") "?")
  (answer 4 15) (equivalent) (true "(1/3) * (4/5) = 4/15")
  (wrong-if (5 8) "Do not add. The square has 3 x 5 = 15 parts, and 1 column crosses 4 shaded rows.")
  (wrong-if (4 5) "1/3 of 4/5 is smaller than 4/5. Count the parts where they cross: 4 of 15.")
  (hint "Count the parts where the column crosses the shaded rows."))
```

---

## Worked example

```example
(example
  (problem "Find (3/4) x (1/2) with an area model.")
  (step "Cut a square into 2 rows. Shade 1 row: 1/2.")
  (step "Cut it into 4 columns. Take 3 of them.")
  (step "They cross in 3 x 1 = 3 parts, of 4 x 2 = 8.")
  (answer "(3/4) x (1/2) = 3/8."))
```

```example
(example
  (problem "Find (2/5) x (2/3) with an area model.")
  (step "3 rows, 2 shaded: 2/3. 5 columns, 2 taken: 2/5.")
  (step (fraction (ask "They cross in 2 x 2 parts, of 5 x 3. What is the product?") (answer 4 15) (equivalent) (true "(2/5) * (2/3) = 4/15")
    (wrong-if (4 8) "The square has 5 x 3 = 15 parts, not 5 + 3.")))
  (answer "(2/5) x (2/3) = 4/15."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "(1/3) * (1/4)") ".")
  (answer 1 12) (equivalent) (true "(1/3) * (1/4) = 1/12")
  (wrong-if (2 7) "Do not add. A square with 3 columns and 4 rows has 12 parts, and they cross in 1.")
  (hint "3 columns, 4 rows."))
```

```check
(fraction
  (ask "Find" (math "(3/4) * (2/3) ") ".")
  (answer 6 12) (equivalent) (true "(3/4) * (2/3) = 6/12")
  (wrong-if (5 7) "Do not add. 4 columns and 3 rows make 12 parts. 3 columns cross 2 rows in 6 parts.")
  (hint "4 columns, 3 rows: 12 parts.")
  (hint "3 columns cross 2 rows in 3 x 2 parts."))
```

---

```check
(choice
  (ask "Which is greater:" (math "1/2") "of" (math "3/4") ", or" (math "3/4") "?")
  (right "3/4: half of it is less" (true "(1/2) * (3/4) < 3/4"))
  (wrong "1/2 of 3/4"
    "Taking half of something gives less than the whole of it. (1/2) x (3/4) = 3/8, which is less than 3/4.")
  (wrong "They are equal"
    "Half of 3/4 is 3/8. That is only half as much as 3/4.")
  (hint "Is half of a thing more or less than the thing?"))
```

```check
(fraction
  (ask "Lea has" (math "2/3") "of a cake. She gives" (math "1/2") "of it to Max. What part of the whole cake does Max get?")
  (answer 2 6) (equivalent) (true "(1/2) * (2/3) = 2/6")
  (wrong-if (1 2) "Max gets half of Lea's piece, not half of the whole cake. 1/2 of 2/3 is 2/6, which is 1/3.")
  (wrong-if (3 5) "Do not add. Find 1/2 of 2/3 with an area model: 2 parts of 6.")
  (hint "Find (1/2) x (2/3)."))
```

To find a fraction of a fraction, cut a square both ways: the product
is the parts where they cross, out of all the parts.
