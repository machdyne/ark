# Powers of ten

```lesson
(objective "Write 10, 100, 1,000 and 10,000 as products of 10s, such as 1,000 = 10 x 10 x 10, and call them powers of ten.")
(standards "5.NBT.A.2")
(minutes 20)
(keywords "power of ten")
```

You can write 10, 100, 1,000 and 10,000 as products of 10s.

Start with 10. Multiply by 10, and you get 100. Multiply by 10 again,
and you get 1,000.

$$ 100 = 10 * 10 $$

$$ 1000 = 10 * 10 * 10 $$

```figure
(define n (slider 'n 1 4 3 "How many 10s" 1))
(define v (expt 10 n))
(label 160 60 (string-append "10" (list-ref '("" " × 10" " × 10 × 10" " × 10 × 10 × 10") (- n 1))) 'big 'bold)
(label 160 110 (string-append "= " (m5p1-num v)) 'big 'bold)
(label 160 160 (string-append (fmt n 0) (if (= n 1) " factor of 10, 1 zero" " factors of 10, ") (if (= n 1) "" (fmt n 0)) (if (= n 1) "" " zeros")) 'body)
(caption "Each 10 more makes the product 10 times as big")
```

```check
(number
  (ask "What is 10 × 10 × 10 × 10?")
  (answer 10000) (from "10 * 10 * 10 * 10")
  (wrong-if 40 "40 is 10 + 10 + 10 + 10. Here the 10s are multiplied: 10 × 10 = 100, then 1,000, then 10,000.")
  (wrong-if 1000 "That is only three 10s multiplied. Count the 10s: there are 4.")
  (hint "10 × 10 = 100.")
  (hint "100 × 10 = 1,000. Now multiply by 10 once more."))
```

---

## A name for them

A **power of ten** is a number you get by multiplying 10s together, and
nothing else. 10, 100, 1,000 and 10,000 are powers of ten. So is 10
alone: it is one 10.

$$ 10000 = 10 * 10 * 10 * 10 $$

```check
(choice
  (ask "Which number is a power of ten?")
  (right "100,000" (true "100000 = 10 * 10 * 10 * 10 * 10"))
  (wrong "500" (false "500 = 10 * 10")
    "500 = 5 × 10 × 10. It has a 5 as a factor, so it is not 10s alone.")
  (wrong "20" (false "20 = 10 * 10")
    "20 is 2 × 10, or 10 + 10. A power of ten has only 10s multiplied: 10, 100, 1,000 ...")
  (wrong "1,001" (false "1001 = 10 * 10 * 10")
    "1,001 is 1 more than 1,000. A power of ten is a 1 followed only by zeros.")
  (hint "Can you write it as 10 × 10 × ... with nothing else?"))
```

---

## Count the 10s

For these numbers, the count of 10s is the count of zeros.

| Number | Product of 10s | 10s |
| 10 | 10 | 1 |
| 100 | 10 × 10 | 2 |
| 1,000 | 10 × 10 × 10 | 3 |
| 10,000 | 10 × 10 × 10 × 10 | 4 |

Each 10 more moves the 1 one place to the left.

```check
(number
  (ask "How many 10s do you multiply to get 1,000,000?")
  (answer 6)
  (true "10 * 10 * 10 * 10 * 10 * 10 = 1000000")
  (wrong-if 7 "1,000,000 has 7 digits, but the 1 is not a 10. Count the zeros: 6.")
  (wrong-if 1000000 "That is the number itself. The question asks how many 10s make it.")
  (hint "Count the zeros in 1,000,000.")
  (hint "Each zero is one 10 multiplied."))
```

---

## Worked example

```example
(example
  (problem "Write 100,000 as a product of 10s.")
  (step "100,000 has 5 zeros after the 1.")
  (step "So it is five 10s multiplied.")
  (answer "100,000 = 10 × 10 × 10 × 10 × 10"))
```

```example
(example
  (problem "What power of ten is 10 × 10 × 10?")
  (step "10 × 10 = 100.")
  (step (number (ask "100 × 10 = ?") (answer 1000) (from "100 * 10")
    (wrong-if 110 "That adds 10. Multiply: 100 × 10 moves the 1 one place left.")))
  (answer "10 × 10 × 10 = 1,000"))
```

---

## Practice

```check
(number
  (ask "What is 10 × 10?")
  (answer 100) (from "10 * 10")
  (wrong-if 20 "20 is 10 + 10. Multiplying 10 by 10 gives 10 tens: 100.")
  (hint "10 groups of 10."))
```

```check
(number
  (ask "How many 10s do you multiply to get 10,000?")
  (answer 4)
  (true "10 * 10 * 10 * 10 = 10000")
  (wrong-if 5 "10,000 has 5 digits, but the first digit is a 1. Count only the zeros: 4.")
  (hint "Count the zeros."))
```

---

```check
(choice
  (ask "Which is 1,000 written as a product of 10s?")
  (right "10 × 10 × 10" (true "10 * 10 * 10 = 1000"))
  (wrong "10 × 3" (false "10 * 3 = 1000")
    "10 × 3 is 30. 1,000 has three 10s multiplied together, not 10 times 3.")
  (wrong "10 + 10 + 10" (false "10 + 10 + 10 = 1000")
    "That adds to 30. A power of ten multiplies the 10s.")
  (wrong "100 × 100" (false "100 * 100 = 1000")
    "100 × 100 is 10,000: four 10s. 1,000 is three 10s.")
  (hint "Count the zeros in 1,000."))
```

```check
(number
  (ask "Multiply 10 × 10 × 10 × 10 × 10.")
  (answer 100000) (from "10 * 10 * 10 * 10 * 10")
  (wrong-if 50 "That adds five 10s. Multiply them: each 10 adds a zero.")
  (wrong-if 10000 "That is four 10s. There are five here.")
  (hint "Five 10s make a 1 with five zeros."))
```

So: 10, 100, 1,000 and 10,000 are powers of ten, made by multiplying
only 10s.
