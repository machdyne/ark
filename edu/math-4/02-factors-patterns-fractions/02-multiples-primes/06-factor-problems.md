# Factor problems

```lesson
(objective "Solve word problems with factors, multiples and primes, such as setting 36 chairs in equal rows.")
(standards "4.OA.B.4")
(minutes 25)
```

You can solve word problems with factors, multiples and primes.

A class sets 36 chairs in equal rows. Each way to do it is a factor
pair of 36:

| Rows | 1 | 2 | 3 | 4 | 6 |
| Chairs in a row | 36 | 18 | 12 | 9 | 6 |

Turn each one around for more: 9 rows of 4, 12 rows of 3, 18 rows of 2
and 36 rows of 1.

```check
(number
  (ask "The room fits at most 8 chairs in a row. What is the fewest number of equal rows for 36 chairs?")
  (answer 6) (from "36 / 6")
  (wrong-if 4 "4 rows of 9 chairs do not fit: 9 is more than 8.")
  (wrong-if 5 "36 ÷ 5 = 7 R 1, so 5 rows are not equal. 5 is not a factor of 36.")
  (hint "Find the factor pairs of 36. Which have 8 or fewer chairs in a row?"))
```

---

## Is it a multiple?

Juice boxes come in packs of 6. Can you buy exactly 40 juice boxes?
Packs give 6, 12, 18 ... the multiples of 6. 40 ÷ 6 = 6 R 4, so 40 is
not a multiple of 6. No.

```check
(choice
  (ask "Pencils come in boxes of 8. Can you buy exactly 56 pencils?")
  (right "Yes: 7 boxes, as 56 = 8 × 7" (true "56 = 8 * 7"))
  (wrong "No: 56 does not end in 8"
    "The last digit does not tell you about 8. Count by 8s: 48, 56. So 7 boxes make 56.")
  (wrong "Yes: 8 boxes"
    "8 boxes of 8 are 64 pencils. 56 is 7 eights.")
  (hint "Is 56 a multiple of 8?"))
```

---

## A prime number of things

Ana has 17 square tiles. Can she make a rectangle with more than 1 row?
17 is prime, so its only factor pair is 1 and 17. She can make only 1
row of 17.

```check
(choice
  (ask "Which number of tiles can make a rectangle with more than 1 row?")
  (right "21" (true "21 = 3 * 7"))
  (wrong "23"
    "23 is prime. Its only factor pair is 1 and 23, so the tiles make only 1 row.")
  (wrong "19"
    "19 is prime. Its only factor pair is 1 and 19, so the tiles make only 1 row.")
  (hint "Find the number that is composite."))
```

---

## Two numbers at once

Some problems need both numbers. A garden club shares 18 bulbs and 24
seeds into bags. Each bag is the same, with none left. The number of
bags must be a common factor of 18 and 24.

```check
(number
  (ask "What is the greatest number of bags the club can make?")
  (answer 6)
  (wrong-if 3 "3 bags work, but more do too. 18 ÷ 6 = 3 and 24 ÷ 6 = 4.")
  (wrong-if 12 "12 is a factor of 24, but 18 ÷ 12 = 1 R 6. It must be a factor of both.")
  (hint "List the common factors of 18 and 24. Choose the greatest."))
```

---

## Worked example

```example
(example
  (problem "Mia puts 24 photos in an album, the same number on each page. She wants from 3 to 10 pages. How many pages could she use?")
  (step "The number of pages must be a factor of 24.")
  (step "Factors of 24: 1, 2, 3, 4, 6, 8, 12, 24.")
  (step "Keep those from 3 to 10.")
  (answer "3, 4, 6 or 8 pages."))
```

```example
(example
  (problem "A bus comes every 5 minutes, from 0. A train comes every 3 minutes, from 0. When do they first come together after 0?")
  (step "They come together at the common multiples of 5 and 3.")
  (step "Count by 5s: 5, 10, 15. Test each for 3.")
  (step (number (ask "When do they first come together, in minutes?")
    (answer 15) (from "5 * 3")
    (wrong-if 8 "8 is 5 + 3. At 8 minutes, neither comes: 8 is not a multiple of 5 or of 3.")))
  (answer "At 15 minutes."))
```

---

## Practice

```check
(number
  (ask "A baker puts 48 muffins in boxes of 6. How many boxes does she fill?")
  (answer 8) (from "48 / 6") (unit "boxes")
  (wrong-if 42 "42 is 48 - 6. Count how many 6s make 48.")
  (wrong-if 7 "6 × 7 = 42, and 6 muffins are left. One more box makes 8.")
  (hint "6 × ? = 48"))
```

```check
(choice
  (ask "29 children want to split into equal groups. They need at least 2 groups, each with at least 2 children. Can they do it?")
  (right "No: 29 is prime")
  (wrong "Yes: groups of 3"
    "29 ÷ 3 = 9 R 2, so 2 children are left out. 29 has no factors except 1 and 29.")
  (wrong "Yes: 29 is odd, so groups of an odd number work"
    "Being odd does not help. 29 is prime, so its only factor pair is 1 and 29.")
  (hint "Is 29 prime or composite?"))
```

---

```check
(choice (several)
  (ask "There are 30 desks in equal rows. Which numbers of rows can there be? Choose all.")
  (right "5" (true "30 = 5 * 6"))
  (right "6" (true "30 = 6 * 5"))
  (right "10" (true "30 = 10 * 3"))
  (wrong "4" (true "30 = 4 * 7 + 2")
    "30 ÷ 4 = 7 R 2, so the rows would not be equal. 4 is not a factor of 30.")
  (wrong "8" (true "30 = 8 * 3 + 6")
    "30 ÷ 8 = 3 R 6. 8 is not a factor of 30.")
  (hint "The number of rows must be a factor of 30."))
```

```check
(number
  (ask "Cups come in stacks of 9 and plates in stacks of 6. You want the same number of cups and plates. What is the least number of cups you can have?")
  (answer 18) (from "9 * 2")
  (wrong-if 54 "54 works, since 9 × 6 = 54. But 18 is less: 2 stacks of cups and 3 of plates.")
  (wrong-if 15 "15 is 9 + 6. It is not a multiple of 9 or of 6.")
  (hint "Find the least number that is a multiple of both 9 and 6. Count by 9s."))
```

So: factors tell how a number splits into equal groups. Multiples tell
what equal groups add up to.
