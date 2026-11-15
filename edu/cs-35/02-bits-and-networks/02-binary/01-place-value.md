# Place value

```lesson
(objective "Say what each place is worth in an everyday number and in a binary number.")
(minutes 15)
(keywords "place value" "binary (number)")
```

Each place in a number has its own worth, and here you learn to find
it.

First, look at a number you know: 352. The 3 means 3 hundreds. The 5
means 5 tens. The 2 means 2 ones.

What a place is worth is its **place value**. In our everyday numbers
the place values are 1, 10, 100 and so on. Each place is worth 10
times the place to its right.

```figure
(define vals '(100 10 1))
(define digs '("3" "5" "2"))
(for-range 0 3
  (lambda (k)
    (let ((x (+ 100 (* k 40))))
      (text (+ x 20) 72 (fmt (list-ref vals k) 0) 'centre 'body)
      (frame x 82 40 40 'ink 1.5)
      (text (+ x 20) 110 (list-ref digs k) 'centre 'big 'bold))))
(text 160 160 "300 + 50 + 2 = 352" 'centre 'big 'bold)
(caption "place values above, digits in the boxes")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Counting in Binary")
```

```check
(number
  (ask "In the number 352, what is the 5 worth?")
  (answer 50) (from "5 * 10")
  (wrong-if 5 "The 5 is in the tens place, so it means 5 tens.")
  (wrong-if 500 "That would be the hundreds place. The 5 is in the middle, the tens place.")
  (hint "The middle place is the tens place."))
```

---

## Binary numbers

A **binary** number uses only two digits, 0 and 1, just like bits.
Each place is worth **2 times** the place to its right.

The place on the right is worth 1. Then each place doubles: 1, 2, 4, 8,
16.

```figure
(cs2-places 90 5 0 48)
(arrow 270 170 50 170 'ink 1.5)
(text 160 195 "each place: 2 times the one on its right" 'centre 'small)
```

```check
(number
  (ask "In a binary number, the places are worth 1, 2, 4, 8, 16. What is the next place worth?")
  (answer 32) (from "16 * 2")
  (wrong-if 20 "That adds 4. Each place is worth 2 times the place before it.")
  (wrong-if 160 "That is 10 times, as in everyday numbers. In binary each place is 2 times the one on its right.")
  (hint "Double 16."))
```

---

## Worked example

```example
(example
  (problem "What is each place worth in a binary number of 4 digits?")
  (step "The place on the right is worth 1.")
  (step "Double for each place to the left: 2, then 4, then 8.")
  (answer "From left to right: 8, 4, 2, 1."))
```

```example
(example
  (problem "What is the place on the left of a binary number of 3 digits worth?")
  (step "The place on the right is worth 1.")
  (step "The next place is worth 2.")
  (step (number (ask "What is the third place worth?")
    (answer 4) (from "2 * 2")
    (wrong-if 3 "That adds 1. Each place is 2 times the one on its right.")))
  (answer "4."))
```

---

## Practice

```check
(choice
  (ask "In a binary number, how many times bigger is each place than the place to its right?")
  (right "2 times")
  (wrong "10 times"
    "That is our everyday numbers, with ten digits. Binary has two digits, 0 and 1, so each place is 2 times the one on its right.")
  (wrong "1 more"
    "The places go 1, 2, 4, 8, 16. 4 is not 1 more than 2. It is 2 times 2.")
  (hint "Look at 1, 2, 4, 8, 16."))
```

---

```check
(number
  (ask "A binary number has 5 digits. What is the place on the left worth?")
  (answer 16) (from "2 * 2 * 2 * 2")
  (wrong-if 5 "5 is how many places there are. Count the place values: 1, 2, 4, 8, 16.")
  (wrong-if 10000 "That is the everyday place of the fifth digit. In binary, the places double: 1, 2, 4, 8, 16.")
  (hint "Start at 1 on the right and double 4 times."))
```

```check
(choice
  (ask "Which number could be a binary number?")
  (right "10110")
  (wrong "10210"
    "A binary number uses only the digits 0 and 1. There is no 2 in binary.")
  (wrong "352"
    "352 uses the digits 3, 5 and 2. Binary uses only 0 and 1.")
  (hint "Binary has only two digits."))
```

So: in binary each place is worth 2 times the place to its right: 1,
2, 4, 8, 16.
