# Factor rectangles

```lesson
(objective "Find every rectangle of whole-number side lengths with a given area, and match each one to a factor pair.")
(standards "4.OA.B.4")
(minutes 20)
```

You can find every rectangle with a given area, and each one gives a
factor pair.

This rectangle is made of 12 unit squares. Its area is 12 square
units. Its side lengths are 3 units and 4 units, and $3 * 4 = 12$. So
its side lengths are a factor pair of 12.

```figure
(rect 100 50 120 90 'cool)
(grid 100 50 4 3 30)
(text 160 42 "4 units" 'centre 'small)
(text 94 99 "3 units" 'right 'small)
(math 160 190 "3 * 4 = 12" 22)
(caption "Area: 12 square units")
```

```check
(number
  (ask "A rectangle has an area of 12 square units. One side length is 2 units. How long is the other side?")
  (answer 6) (from "12 / 2") (unit "units")
  (wrong-if 10 "10 is 12 - 2. The side lengths multiply to make the area: 2 × ? = 12.")
  (wrong-if 24 "24 is 2 × 12. You need 2 × ? = 12, so divide: 12 ÷ 2.")
  (hint "2 rows of squares make 12 squares. How many in each row?"))
```

---

## Every rectangle with area 12

Choose a rectangle. Each one has an area of 12 square units. Each one
matches a factor pair of 12.

```figure
(define c (choice 'r '("1 by 12" "2 by 6" "3 by 4") "Rectangle"))
(define h (list-ref '(1 2 3) c))
(define w (/ 12 h))
(define s (list-ref '(22 30 36) c))
(define x (- 160 (/ (* w s) 2)))
(define y (- 100 (/ (* h s) 2)))
(rect x y (* w s) (* h s) 'cool)
(grid x y w h s)
(text 160 (- y 8) (string-append (fmt w 0) " units") 'centre 'small)
(text (- x 6) (+ y (/ (* h s) 2) 4) (fmt h 0) 'right 'small)
(math 160 200 (string-append (fmt h 0) " * " (fmt w 0) " = 12") 22)
```

```check
(number
  (ask "How many different rectangles have an area of 12 square units? Count a turned rectangle as the same one.")
  (answer 3)
  (wrong-if 6 "A 4 by 3 rectangle is a 3 by 4 rectangle, turned. Each factor pair gives one rectangle: 3 in all.")
  (wrong-if 2 "Do not forget the long thin one: 1 by 12. It has 12 unit squares too.")
  (hint "12 has 3 factor pairs."))
```

---

## Area 24

The rectangles with an area of 24 square units match the factor pairs
of 24: 1 and 24, 2 and 12, 3 and 8, 4 and 6.

```figure
(define c (choice 'r '("1 by 24" "2 by 12" "3 by 8" "4 by 6")))
(define h (list-ref '(1 2 3 4) c))
(define w (/ 24 h))
(define s (list-ref '(12 22 30 34) c))
(define x (- 160 (/ (* w s) 2)))
(define y (- 100 (/ (* h s) 2)))
(rect x y (* w s) (* h s) 'cool)
(grid x y w h s)
(math 160 210 (string-append (fmt h 0) " * " (fmt w 0) " = 24") 22)
```

```check
(choice
  (ask "Which is NOT a rectangle with an area of 24 square units?")
  (right "5 units by 5 units" (false "5 * 5 = 24"))
  (wrong "3 units by 8 units" (true "3 * 8 = 24")
    "3 × 8 = 24, so this rectangle has 24 unit squares. Look for a pair whose product is not 24.")
  (wrong "2 units by 12 units" (true "2 * 12 = 24")
    "2 rows of 12 squares make 24 squares. Look for a pair whose product is not 24.")
  (hint "Multiply the side lengths of each one."))
```

---

## A square is a rectangle too

Area 16 gives 1 by 16, 2 by 8 and 4 by 4. The 4 by 4 rectangle is a
square. Its factor pair uses the same number twice: 4 and 4.

```figure
(rect 100 40 128 128 'cool)
(grid 100 40 4 4 32)
(math 164 205 "4 * 4 = 16" 22)
```

```check
(number
  (ask "A square has an area of 36 square units. How long is each side?")
  (answer 6) (from "36 / 6") (unit "units")
  (wrong-if 9 "A square with sides of 9 has a perimeter of 36, not an area of 36. Its area is 9 × 9 = 81.")
  (wrong-if 18 "18 is half of 36. A square's 2 side lengths are the same and multiply to 36.")
  (hint "Which number times itself makes 36?"))
```

---

## Worked example

```example
(example
  (problem "Find every rectangle with an area of 20 square units.")
  (step "Find the factor pairs of 20: 1 and 20, 2 and 10, 4 and 5.")
  (step "3 does not work: 20 ÷ 3 = 6 R 2. The next try, 5, is already paired with 4.")
  (step "Each pair gives one rectangle.")
  (answer "1 by 20, 2 by 10 and 4 by 5."))
```

```example
(example
  (problem "Find every rectangle with an area of 15 square units.")
  (step "1 × 15 = 15, so 1 by 15.")
  (step "2 does not work: 15 is odd.")
  (step (number (ask "3 × ? = 15")
    (answer 5) (from "15 / 3")
    (wrong-if 12 "12 is 15 - 3. Which number times 3 makes 15?")))
  (answer "1 by 15 and 3 by 5."))
```

---

## Practice

```check
(number
  (ask "A rectangle has an area of 32 square units. One side length is 4 units. How long is the other side?")
  (answer 8) (from "32 / 4") (unit "units")
  (wrong-if 28 "28 is 32 - 4. The sides multiply to the area: 4 × ? = 32.")
  (wrong-if 128 "128 is 4 × 32. You need 4 × ? = 32, so divide.")
  (hint "Count by 4s up to 32."))
```

```check
(number
  (ask "How many different rectangles have an area of 7 square units? Count a turned one as the same.")
  (answer 1)
  (wrong-if 2 "A 7 by 1 rectangle is a 1 by 7 rectangle, turned. 7 has only one factor pair.")
  (hint "Try 7 squares in 2 rows, then 3 rows. Is anything left over?"))
```

---

```check
(choice (several)
  (ask "Which rectangles have an area of 18 square units? Choose all.")
  (right "2 by 9" (true "2 * 9 = 18"))
  (right "3 by 6" (true "3 * 6 = 18"))
  (wrong "4 by 5" (false "4 * 5 = 18")
    "4 × 5 = 20, not 18. 18 squares do not make full rows of 4.")
  (wrong "9 by 9" (false "9 * 9 = 18")
    "9 + 9 = 18, but the area is side × side. 9 × 9 = 81.")
  (hint "Multiply the 2 side lengths. Keep those that make 18."))
```

```check
(choice
  (ask "A garden has an area of 30 square meters. Its sides are whole meters. Which could its sides be?")
  (right "5 meters and 6 meters" (true "5 * 6 = 30"))
  (wrong "15 meters and 15 meters" (false "15 * 15 = 30")
    "15 + 15 = 30, but area multiplies the side lengths. 15 × 15 = 225.")
  (wrong "4 meters and 7 meters" (false "4 * 7 = 30")
    "4 × 7 = 28, not 30. 30 square meters do not make full rows of 4.")
  (hint "Find a factor pair of 30."))
```

So: every rectangle with a given area matches one factor pair of that
area.
