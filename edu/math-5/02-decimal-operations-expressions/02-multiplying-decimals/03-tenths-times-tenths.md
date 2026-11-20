# Tenths times tenths

```lesson
(objective "Multiply tenths by tenths with a 10 by 10 square, such as 0.3 x 0.4 = 0.12, and explain why the product is in hundredths.")
(standards "5.NBT.B.7")
(minutes 25)
```

You can multiply tenths by tenths on a 10 by 10 square, and see why
the product is in hundredths.

The square is 1 whole, 1 unit long on each side. A rectangle 0.3 wide
and 0.4 tall has area $0.3 * 0.4$, as with whole-number sides.

- Shade 3 columns: 0.3 of the width.
- Shade 4 rows: 0.4 of the height.
- Where they cross, 3 × 4 = 12 small squares are shaded both ways.

Each small square is 1 hundredth of the whole. So the product is 12
hundredths:

$$ 0.3 * 0.4 = 0.12 $$

```figure
(define a (slider 'a 1 9 3 "Columns" 1))
(define b (slider 'b 1 9 4 "Rows" 1))
(m5p2-times 20 20 15 a b)
(text 190 60 (string-append "0." (fmt a 0) " × 0." (fmt b 0)) 'left 'body 'bold)
(text 190 100 (string-append "= " (fmt (* a b) 0) " hundredths") 'left 'small)
(text 190 140 (string-append "= " (m5p2-n (/ (* a b) 100))) 'left 'big 'bold)
(caption "The part shaded both ways is the product")
```

```check
(text
  (ask "Use the square. What is 0.2 × 0.4?")
  (accept "0.08") (accept ".08")
  (true "0.2 * 0.4 = 0.08")
  (wrong-if "0.8" "2 columns and 4 rows cross in 8 small squares. Each small square is a hundredth, so 8 hundredths: 0.08.")
  (wrong-if "8" "The overlap is only 8 small squares of the whole square, far less than 1.")
  (hint "Count the small squares shaded both ways.")
  (hint "Each small square is 1 hundredth."))
```

---

## Why hundredths?

A tenth of a tenth is a hundredth. 1 column is a tenth of the square.
A tenth of that column is 1 small square, and the square holds 100 of
them.

So tenths times tenths gives hundredths: 3 tenths × 4 tenths = 12
hundredths.

```figure
(m5p2-times 80 20 15 1 1)
(caption "0.1 × 0.1 = 0.01: 1 small square of 100")
```

```check
(choice
  (ask "Why is 0.6 × 0.7 written in hundredths?")
  (right "A tenth of a tenth is a hundredth, so 6 tenths × 7 tenths = 42 hundredths" (true "0.6 * 0.7 = 0.42"))
  (wrong "Because 6 × 7 = 42 has 2 digits"
    "2 × 4 = 8 has only 1 digit, and 0.2 × 0.4 is still hundredths: 0.08. The reason is the size of each part: a tenth of a tenth.")
  (wrong "It is not: 0.6 × 0.7 = 4.2"
    "0.6 × 0.7 is part of 1 square, so it is less than 1. 4.2 is more than 4.")
  (hint "1 column is a tenth. A tenth of 1 column is how big?"))
```

---

## Less than both

0.3 × 0.4 = 0.12 is less than 0.3 and less than 0.4. The overlap is a
part of the 4 rows, and a part of the 3 columns. Multiplying by a
number less than 1 takes only part of the other number.

```check
(choice
  (ask "Without working it out, which is true of 0.5 × 0.8?")
  (right "It is less than 0.8" (true "0.5 * 0.8 < 0.8"))
  (wrong "It is more than 0.8" (false "0.5 * 0.8 > 0.8")
    "Multiplying whole numbers greater than 1 makes more. Here 0.5 is less than 1: you take half of the 8 rows.")
  (wrong "It is 1.3" (false "0.5 * 0.8 = 1.3")
    "1.3 is 0.5 + 0.8, a sum. The product is part of the square: 0.40.")
  (hint "On the square, the overlap is a part of the 8 rows."))
```

---

## Worked example

```example
(example
  (problem "Find 0.7 × 0.5 with the square.")
  (step "Shade 7 columns and 5 rows.")
  (step "They cross in 7 × 5 = 35 small squares.")
  (step "Each small square is 1 hundredth.")
  (answer "0.7 × 0.5 = 0.35"))
```

```example
(example
  (problem "Find 0.9 × 0.9.")
  (step "9 tenths × 9 tenths: the overlap is 9 × 9 = 81 small squares.")
  (step (text (ask "81 hundredths as a decimal = ?")
    (accept "0.81") (accept ".81")
    (true "0.9 * 0.9 = 0.81")
    (wrong-if "8.1" "81 hundredths are less than 1 whole square. Write 0.81.")))
  (answer "0.9 × 0.9 = 0.81"))
```

---

## Practice

```check
(text
  (ask "What is 0.6 × 0.3?")
  (accept "0.18") (accept ".18")
  (true "0.6 * 0.3 = 0.18")
  (wrong-if "1.8" "6 × 3 = 18 small squares, each a hundredth: 0.18. 1.8 is more than the whole square.")
  (wrong-if "0.9" "0.9 is 0.6 + 0.3. Multiply: 6 × 3 = 18 hundredths.")
  (hint "6 columns and 3 rows cross in 18 small squares."))
```

```check
(text
  (ask "What is 0.4 × 0.5?")
  (accept "0.2") (accept ".2") (accept "0.20") (accept ".20")
  (true "0.4 * 0.5 = 0.2")
  (wrong-if "2" "4 × 5 = 20 hundredths. 20 hundredths = 2 tenths = 0.2, not 2.")
  (wrong-if "0.02" "20 hundredths, not 2. 20 hundredths = 0.20 = 0.2.")
  (hint "4 × 5 = 20 small squares."))
```

---

```check
(text
  (ask "What is 0.8 × 0.7?")
  (accept "0.56") (accept ".56")
  (true "0.8 * 0.7 = 0.56")
  (wrong-if "5.6" "The overlap is part of 1 whole square, so the product is less than 1: 56 hundredths.")
  (hint "8 × 7 = 56 small squares."))
```

```check
(choice
  (ask "Which product is 0.24?")
  (right "0.4 × 0.6" (true "0.4 * 0.6 = 0.24"))
  (wrong "4 × 0.6" (false "4 * 0.6 = 0.24")
    "4 is 4 wholes. 4 × 6 tenths = 24 tenths = 2.4.")
  (wrong "0.2 × 0.4" (false "0.2 * 0.4 = 0.24")
    "That writes the digits side by side. 2 × 4 = 8, so 0.2 × 0.4 = 0.08.")
  (hint "Tenths × tenths = hundredths. Which pair gives 24 hundredths?"))
```

So: tenths times tenths is a count of hundredths, because a tenth of a tenth is a hundredth.
