# How many parts fit?

```lesson
(objective "Divide a whole number by a unit fraction by counting how many unit fractions fit, such as 4 ÷ (1/5) = 20, on a number line.")
(standards "5.NF.B.7b")
(minutes 25)
```

$4 ÷ (1/5)$ asks: how many fifths fit in 4?

Each whole holds 5 fifths. 4 wholes hold $4 * 5 = 20$ fifths.

$$ 4 ÷ (1/5) = 20 $$

```figure
(define w (slider 'w 1 4 4 "Wholes" 1))
(m5p3-line 30 290 150 4 5 'whole)
(m5p3-hops (* w 5) 5 'cool)
(text 160 80 (string-append (fmt w 0) " wholes hold " (fmt (* 5 w) 0) " fifths") 'centre 'body 'bold)
```

```check
(number
  (ask "Move the slider to 2. How many fifths fit in 2? That is" (math "2 ÷ (1/5)") ".")
  (answer 10) (from "2 ÷ (1/5)")
  (wrong-if 0.4 "That is 2 x (1/5), a part of 2. The question asks how many fifths fit in 2: 5 in each whole.")
  (wrong-if 7 "That adds 2 and 5. Each of the 2 wholes holds 5 fifths: 2 x 5.")
  (hint "Each whole holds 5 fifths."))
```

---

## How many groups

Dividing can mean "how many groups of this size?" $12 ÷ 3$: how many
3s fit in 12? 4.

$3 ÷ (1/2)$: how many halves fit in 3? Each whole holds 2 halves, so 6.

```figure
(m5p3-line 30 290 150 3 2 'whole)
(for-range 0 6 (lambda (i) (nl-jump (/ i 2) (/ (+ i 1) 2) 'cool "1/2")))
(caption "6 jumps of 1/2 from 0 to 3")
```

```check
(number
  (ask "How many halves fit in 5? That is" (math "5 ÷ (1/2)") ".")
  (answer 10) (from "5 ÷ (1/2)")
  (wrong-if 2.5 "2 1/2 is half of 5. The question asks how many halves fit in 5: 2 in each whole.")
  (hint "2 halves in each whole."))
```

---

## A bigger answer

$4 ÷ (1/5) = 20$: the quotient is bigger than 4. That is right. The
fifths are small, so many of them fit.

Dividing does not always give a smaller number.

```check
(choice
  (ask "Without working it out: is" (math "6 ÷ (1/3)") "more or less than 6?")
  (right "More: many thirds fit in 6" (true "6 ÷ (1/3) > 6"))
  (wrong "Less: dividing always makes smaller"
    "Not when you divide by a fraction less than 1. 3 thirds fit in each whole, so 18 thirds fit in 6.")
  (wrong "Equal to 6"
    "Only dividing by 1 keeps 6 the same. 1/3 is smaller than 1.")
  (hint "How many thirds fit in 1 whole?"))
```

---

## Worked example

```example
(example
  (problem "Find 3 ÷ (1/4).")
  (step "How many fourths fit in 3?")
  (step "Each whole holds 4 fourths.")
  (step "3 wholes hold 3 x 4 = 12 fourths.")
  (answer "3 ÷ (1/4) = 12."))
```

```example
(example
  (problem "Find 2 ÷ (1/6).")
  (step "Each whole holds 6 sixths.")
  (step (number (ask "How many sixths fit in 2?") (answer 12) (from "2 ÷ (1/6)")
    (wrong-if 8 "That adds 2 and 6. Each of the 2 wholes holds 6: 2 x 6.")))
  (answer "2 ÷ (1/6) = 12."))
```

---

## Practice

```check
(number
  (ask "Find" (math "5 ÷ (1/3)") ".")
  (answer 15) (from "5 ÷ (1/3)")
  (wrong-if 1.6666666667 "That is 5 ÷ 3, how big each of 3 parts is. Count thirds in 5: 3 in each whole.")
  (hint "3 thirds in each whole."))
```

```check
(number
  (ask "Find" (math "7 ÷ (1/2)") ".")
  (answer 14) (from "7 ÷ (1/2)")
  (wrong-if 3.5 "3 1/2 is half of 7. Count halves in 7: 2 in each whole.")
  (hint "2 halves in each whole."))
```

---

```check
(number
  (ask "Find" (math "1 ÷ (1/8)") ".")
  (answer 8) (from "1 ÷ (1/8)")
  (wrong-if 0.125 "That is 1/8 itself. How many eighths fit in 1 whole?")
  (hint "8 eighths make 1."))
```

```check
(number
  (ask "Find" (math "6 ÷ (1/4)") ".")
  (answer 24) (from "6 ÷ (1/4)")
  (wrong-if 1.5 "That is 6 x (1/4). Count fourths in 6: 4 in each whole.")
  (wrong-if 10 "That adds 6 and 4. 6 wholes of 4 fourths: 6 x 4.")
  (hint "4 fourths in each whole."))
```

To divide a whole number by a unit fraction, count how many of the
unit fractions fit: $n ÷ (1/b) = n * b$.
