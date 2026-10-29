# Skip counting on a number line

```lesson
(objective "Find a product by skip counting with equal jumps on a number line.")
(standards "3.OA.A.1")
(minutes 20)
```

You can find a product by making equal jumps on a number line.

Start at 0. To find 3 × 4, make 3 jumps, each 4 long. Each jump is an
equal group of 4. You land on 4, then 8, then 12.

```figure
(number-line 20 300 120 0 16 1 4)
(md-jumps 0 3 4 'ink)
(nl-mark 12 'ink)
(caption "3 jumps of 4: 4, 8, 12")
```

```check
(number
  (ask "You make 3 jumps of 4 from 0. Where do you land?")
  (answer 12) (from "3 * 4")
  (wrong-if 7 "7 is 3 + 4. Each jump is 4 long, and there are 3 of them: 4, 8, 12.")
  (wrong-if 3 "3 is the number of jumps. Count where each jump lands: 4, 8, 12.")
  (hint "Say the numbers you land on: 4, 8 ..."))
```

---

## The jumps show the factors

Here the number of jumps is the first factor. The length of each jump is
the second factor. Where you land is the product.

Move the sliders. Watch where the last jump lands.

```figure
(define n (slider 'n 1 6 4 "Jumps" 1))
(define k (slider 'k 2 5 5 "Each jump" 1))
(number-line 20 300 130 0 30 1 5)
(md-jumps 0 n k 'ink)
(nl-mark (* n k) 'ink)
(math 160 190 (string-append (fmt n 0) " * " (fmt k 0) " = " (fmt (* n k) 0)) 24)
```

```check
(number
  (ask "Find 4 × 5 by skip counting by 5s, 4 times.")
  (answer 20) (from "4 * 5")
  (wrong-if 9 "9 is 4 + 5. Make 4 jumps of 5: 5, 10, 15, 20.")
  (wrong-if 15 "15 is only 3 jumps. Count the jumps: you need 4.")
  (hint "Count by 5s: 5, 10, 15 ... Stop after 4 numbers."))
```

---

## Count the jumps with your fingers

When you skip count, it is easy to lose track. Hold up a finger for
each number you say. Stop when the fingers match the first factor.

For 6 × 3: say 3, 6, 9, 12, 15, 18. That is 6 numbers, so 6 × 3 = 18.

```check
(number
  (ask "Skip count to find 6 × 2.")
  (answer 12) (from "6 * 2")
  (wrong-if 10 "That is 5 jumps of 2. Say 6 numbers: 2, 4, 6, 8, 10, 12.")
  (wrong-if 8 "8 is 6 + 2. Count by 2s, 6 times: 2, 4, 6, 8, 10, 12.")
  (hint "Count by 2s and hold up a finger for each number."))
```

---

## Worked example

```example
(example
  (problem "Find 5 × 4 on a number line.")
  (step "5 × 4 means 5 jumps, each 4 long.")
  (step "Start at 0. Jump to 4, 8, 12, 16, 20.")
  (step "That is 5 jumps. You land on 20.")
  (answer "5 × 4 = 20"))
```

```example
(example
  (problem "Find 3 × 7 on a number line.")
  (step "3 × 7 means 3 jumps, each 7 long.")
  (step "Start at 0. Jump to 7, then 14.")
  (step (number (ask "Where does the third jump land?") (answer 21) (from "3 * 7")
    (wrong-if 20 "14 + 7 is 21, not 20. Count on 7 from 14: 15, 16, 17, 18, 19, 20, 21.")))
  (answer "3 × 7 = 21"))
```

---

## Practice

```figure
(number-line 20 300 120 0 24 1 3)
(md-jumps 0 4 6 'ink)
```

```check
(choice
  (ask "Which equation does this number line show?")
  (right "4 × 6 = 24" (true "4 * 6 = 24"))
  (wrong "6 + 6 + 6 = 18" (true "6 + 6 + 6 = 18")
    "That is only 3 jumps of 6. Count the jumps again: there are 4, landing on 6, 12, 18 and 24.")
  (wrong "4 + 6 = 10"
    "The number line shows equal jumps, not one 4 and one 6. Count the jumps and see how long each one is.")
  (hint "Count the jumps. Then read how long each jump is."))
```

```check
(number
  (ask "Skip count by 10s to find 7 × 10.")
  (answer 70) (from "7 * 10")
  (wrong-if 17 "17 is 7 + 10. Count by 10s 7 times: 10, 20, 30, 40, 50, 60, 70.")
  (hint "10, 20, 30 ... Say 7 numbers."))
```

---

```check
(number
  (ask "A frog jumps 3 feet each time. How far does it go in 5 jumps?")
  (answer 15) (unit "feet") (from "5 * 3")
  (wrong-if 8 "8 is 5 + 3. The frog makes 5 jumps of 3 feet: 3, 6, 9, 12, 15.")
  (hint "Count by 3s, 5 times."))
```

So: make equal jumps from 0 on a number line. The last jump lands on the product.
