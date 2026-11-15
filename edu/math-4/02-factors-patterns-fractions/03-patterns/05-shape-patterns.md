# Shape patterns

```lesson
(objective "Make a shape pattern that follows a rule, and find how many squares or dots a later figure has.")
(standards "4.OA.C.5")
(minutes 25)
```

You can follow a shape pattern and count what a later figure has.

Here are the first 3 figures of a pattern. Each one is an L of squares.
Each figure adds 1 square at the top and 1 at the right.

```figure
(define (ell x n)
  (m4p2-cells x (- 170 (* 16 (+ n 1))) 16
    (append (m4p2-block 0 0 1 (+ n 1)) (m4p2-block 1 n n 1)) 'warm))
(ell 30 1) (ell 120 2) (ell 220 3)
(text 46 196 "Figure 1" 'centre 'small)
(text 144 196 "Figure 2" 'centre 'small)
(text 252 196 "Figure 3" 'centre 'small)
(caption "3, 5 and 7 squares")
```

```check
(number
  (ask "How many squares does Figure 4 have?")
  (answer 9) (from "3 + 3 * 2")
  (wrong-if 8 "Each figure adds 2 squares, 1 at the top and 1 at the right. 7 + 2 = 9.")
  (wrong-if 10 "Each figure adds 2 squares, not 3. 7 + 2 = 9.")
  (hint "Figure 3 has 7 squares. How many does each figure add?"))
```

---

## The number pattern

Count the squares: 3, 5, 7, 9 ... The rule is "start at 3, add 2".
Figure 1 is the 1st term, Figure 2 the 2nd term, and so on.

```figure
(define n (slider 'fig 1 8 4 "Figure" 1))
(m4p2-cells 40 (- 200 (* 20 (+ n 1))) 20
  (append (m4p2-block 0 0 1 (+ n 1)) (m4p2-block 1 n n 1)) 'warm)
(text 300 40 (string-append (fmt (+ 1 (* 2 n)) 0) " squares") 'right 'body 'bold)
```

```check
(number
  (ask "How many squares does Figure 10 have?")
  (answer 21) (from "3 + 9 * 2")
  (wrong-if 23 "23 is Figure 11. Figure 1 has 3, so Figure 10 is 9 jumps of 2 after it: 3 + 18.")
  (wrong-if 20 "20 is 10 × 2. But Figure 1 starts at 3, not 2. The count is 3 + 9 × 2 = 21.")
  (hint "Move the slider to 8, then add 2 for each figure after it."))
```

---

## A feature of the shapes

Another pattern: Figure 1 is 2 rows of 1 square. Figure 2 is 2 rows of
2, and so on. The counts are 2, 4, 6, 8 ... Every figure is 2 equal
rows.

```figure
(for-range 1 5
  (lambda (n)
    (m4p2-cells (list-ref '(0 20 60 120 200) n) 80 18 (m4p2-block 0 0 n 2) 'cool)))
(caption "2 rows of 1, 2, 3 and 4")
```

```check
(choice
  (ask "Why is every count in this pattern even?")
  (right "Each figure is 2 equal rows, so its squares make pairs")
  (wrong "Because the 1st figure has 2 squares"
    "Starting at 2 helps, but the reason is the shape: 2 equal rows. The squares pair up, one from each row.")
  (wrong "It is not: some counts are odd"
    "Count them: 2, 4, 6, 8. Each figure is 2 equal rows, so the count is always even.")
  (hint "Look at how the squares sit: in 2 rows."))
```

---

## From a rule to shapes

Rule: "Start with 1 square. Each figure adds 4 squares, 1 at the end of
each arm." The figures look like a plus sign: 1, 5, 9, 13 ...

```figure
(define n (slider 'fig 1 6 3 "Figure" 1))
(define k (- n 1))
(m4p2-cells (- 160 8 (* 16 k)) (- 100 8) 16 (m4p2-block 0 0 (+ 1 (* 2 k)) 1) 'warm)
(m4p2-cells (- 160 8) (- 100 8 (* 16 k)) 16
  (append (m4p2-block 0 0 1 k) (m4p2-block 0 (+ k 1) 1 k)) 'warm)
(text 300 220 (string-append (fmt (+ 1 (* 4 k)) 0) " squares") 'right 'body 'bold)
```

```check
(number
  (ask "How many squares does Figure 6 have?")
  (answer 21) (from "1 + 5 * 4")
  (wrong-if 24 "24 is 6 × 4. But Figure 1 has just 1 square. Figure 6 adds 4 five times: 1 + 20.")
  (wrong-if 25 "25 is Figure 7. Figure 6 is 5 jumps of 4 after Figure 1: 1 + 20 = 21.")
  (hint "Write 1, 5, 9, 13 ... and count to the 6th term."))
```

---

## Worked example

```example
(example
  (problem "In the L pattern (3, 5, 7 ...), how many squares does Figure 8 have?")
  (step "Figure 1 has 3 squares. Each figure adds 2.")
  (step "From Figure 1 to Figure 8 is 7 steps.")
  (step "3 + 7 × 2 = 3 + 14 = 17.")
  (answer "17 squares."))
```

```example
(example
  (problem "In the plus pattern (1, 5, 9 ...), how many squares does Figure 5 have?")
  (step "Figure 1 has 1 square. Each figure adds 4.")
  (step "From Figure 1 to Figure 5 is 4 steps.")
  (step (number (ask "1 + 4 × 4 = ?")
    (answer 17) (from "1 + 4 * 4")
    (wrong-if 20 "That is (1 + 4) × 4. Multiply first: 4 × 4 = 16, then add 1.")))
  (answer "17 squares."))
```

---

## Practice

```check
(number
  (ask "1 table seats 4 people. Each table you add to the row seats 2 more. How many people do 5 tables in a row seat?")
  (answer 12) (from "4 + 4 * 2")
  (wrong-if 20 "20 is 5 × 4, as if every table seated 4. In a row, each added table seats only 2 more.")
  (wrong-if 14 "14 is 6 tables. 5 tables are 4 steps after 1 table: 4 + 8.")
  (hint "Write 4, 6, 8 ... for 1, 2, 3 tables."))
```

```check
(choice
  (ask "The plus pattern goes 1, 5, 9, 13 ... Does any figure have an even number of squares?")
  (right "No: it starts odd and adds 4, an even number")
  (wrong "Yes: Figure 2 has 4 squares"
    "Figure 2 has 5 squares: 1 in the middle and 4 around it. Adding 4 keeps every count odd.")
  (wrong "Yes: every other figure is even"
    "That happens when you add an odd number. Here you add 4, which is even, so every count stays odd.")
  (hint "Is the 1st count odd or even? Is 4 odd or even?"))
```

---

```check
(number
  (ask "A dot pattern has 4, 7, 10, 13 dots. How many dots does Figure 6 have?")
  (answer 19) (from "4 + 5 * 3")
  (wrong-if 16 "16 is Figure 5. Add 3 once more.")
  (wrong-if 18 "18 is 6 × 3. But Figure 1 has 4 dots. Figure 6 is 4 + 5 × 3.")
  (hint "The rule is start at 4, add 3."))
```

```check
(number
  (ask "Each figure of a pattern is a row of squares. Figure 1 has 5 squares, and each figure adds 5. How many squares does Figure 7 have?")
  (answer 35) (from "5 + 6 * 5")
  (wrong-if 30 "30 is Figure 6. Figure 7 is 7 × 5, since each figure is a multiple of 5.")
  (wrong-if 12 "12 is 5 + 7. Each figure adds 5 squares, so Figure 7 has 7 groups of 5.")
  (hint "Figure 1 has 5, Figure 2 has 10 ..."))
```

So: count the squares or dots of each figure to get a number pattern.
Then use its rule to find a later figure.
