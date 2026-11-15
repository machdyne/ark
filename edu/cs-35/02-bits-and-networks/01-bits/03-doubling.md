# One more bit, twice as many

```lesson
(objective "Explain that each extra bit doubles the number of patterns, up to 5 bits and 32 patterns.")
(minutes 15)
```

Each bit you add doubles the number of patterns.

You made the patterns of 3 bits from the patterns of 2 bits. You wrote
them all twice: once with a 0 in front, once with a 1 in front. So 3
bits have twice as many patterns as 2 bits.

The same works every time. To **double** a number means to make it 2
times as big.

Move the slider to see every pattern of 1 to 5 bits.

```figure
(define n (slider 'bits 1 5 2 "Bits" 1))
(define count (expt 2 n))
(define cols (if (> count 4) 4 (if (> count 2) 2 1)))
(define rows (/ count cols))
(define cw 70)
(define rh (if (> rows 4) 19 26))
(define x0 (- 160 (/ (* cols cw) 2)))
(for-range 0 count
  (lambda (k)
    (text (+ x0 (* (floor (/ k rows)) cw) (/ cw 2)) (+ 34 (* (modulo k rows) rh))
          (cs2-bin k n) 'centre 'body)))
(caption (string-append (fmt n 0) (if (= n 1) " bit: " " bits: ") (fmt count 0) " patterns"))
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Bits")
```

```check
(number
  (ask "3 bits make 8 patterns. How many patterns do 4 bits make?")
  (answer 16) (from "8 * 2")
  (wrong-if 10 "That adds 2. But a new bit does not add 2 patterns: it doubles them. Every old pattern comes once with a 0 in front and once with a 1.")
  (wrong-if 9 "That adds 1. A new bit doubles the patterns: 8 with a 0 in front, and 8 with a 1 in front.")
  (hint "Double 8.")
  (hint "8 + 8."))
```

---

## The doubling table

Start with 1 bit and 2 patterns. Double for each bit you add.

| bits | patterns |
|---|---|
| 1 | 2 |
| 2 | 4 |
| 3 | 8 |
| 4 | 16 |
| 5 | 32 |

The number of patterns grows fast. It doubles at every step.

```check
(number
  (ask "How many patterns can 5 bits make?")
  (answer 32) (from "16 * 2")
  (wrong-if 10 "That is 5 times 2. But each bit doubles the count: 2, 4, 8, 16, 32.")
  (wrong-if 25 "That is 5 times 5. Start at 2 and double once for each bit you add.")
  (hint "4 bits make 16. One more bit doubles it."))
```

---

## Worked example

```example
(example
  (problem "How many patterns can 6 bits make?")
  (step "5 bits make 32 patterns.")
  (step "A sixth bit doubles that: 32 + 32.")
  (answer "6 bits make 64 patterns."))
```

```example
(example
  (problem "How many patterns can 4 bits make? Start from 1 bit.")
  (step "1 bit makes 2 patterns. 2 bits make 4.")
  (step "3 bits make 8.")
  (step (number (ask "4 bits make how many?")
    (answer 16) (from "8 * 2")
    (wrong-if 12 "That adds 4. Double 8 instead.")))
  (answer "4 bits make 16 patterns."))
```

---

## Practice

```check
(choice
  (ask "Sam says: \"Adding a bit always adds 2 more patterns.\" Is he right?")
  (right "No: adding a bit doubles the patterns")
  (wrong "Yes: each bit adds 2"
    "That works only from 1 bit to 2 bits, from 2 to 4. From 2 bits to 3 bits the patterns go from 4 to 8, which is 4 more.")
  (hint "Look at 3 bits and 4 bits: 8 and 16. How many more is that?"))
```

---

```check
(number
  (ask "1 bit makes 2 patterns. How many bits do you need to make 16 patterns?")
  (answer 4)
  (true "2 * 2 * 2 * 2 = 16")
  (wrong-if 8 "8 bits make many more than 16 patterns. Double from 2: 2, 4, 8, 16. How many doublings is that?")
  (wrong-if 16 "That would be one bit for each pattern. Bits do better: each one doubles the count.")
  (hint "Count along the table until you reach 16."))
```

```check
(number
  (ask "Lily has 5 lamps in a row. How many different patterns can she show with them?")
  (answer 32) (from "2 * 2 * 2 * 2 * 2")
  (wrong-if 5 "5 is the number of lamps. Each lamp is a bit, and each bit doubles the patterns.")
  (wrong-if 10 "Each lamp has 2 states, but they multiply, not add: 2, 4, 8, 16, 32.")
  (hint "5 lamps are 5 bits."))
```

So: every bit you add doubles the number of patterns, and 5 bits make
32.
