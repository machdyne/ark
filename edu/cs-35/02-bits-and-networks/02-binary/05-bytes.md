# Bytes

```lesson
(objective "Say that a byte is 8 bits, which hold the numbers 0 to 255, and run a BASIC program that prints the place values.")
(minutes 25)
(keywords "byte")
```

A computer keeps its bits in groups of 8, and a group of 8 bits is a
byte.

A **byte** is 8 bits side by side. A computer's memory is counted in
bytes. One byte can hold a number, or one letter, as you will see in
the next unit.

The 8 places of a byte are worth 128, 64, 32, 16, 8, 4, 2 and 1.

```figure
(define n (slider 'n 0 255 77 "Number" 1))
(cs2-places 70 8 n 36)
(text 160 140 (cs2-sum n 8) 'centre 'body)
(text 160 180 (string-append "= " (fmt n 0)) 'centre 'big 'bold)
(caption "one byte: 8 bits")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Bytes and Words")
```

```check
(number
  (ask "How many bits are in a byte?")
  (answer 8)
  (wrong-if 2 "A bit has 2 states. A byte is a group of bits: 8 of them.")
  (wrong-if 10 "We count in tens every day, but a byte is a group of 8 bits.")
  (hint "Count the boxes in the figure."))
```

---

## From 0 to 255

The smallest number in a byte is 00000000, which is 0. The biggest is
11111111. Add all 8 places: 128 + 64 + 32 + 16 + 8 + 4 + 2 + 1 = 255.

So a byte holds every number from 0 to 255. With 0, that is 256
numbers: one for each of the 256 patterns of 8 bits.

```check
(number
  (ask "What is the biggest number one byte can hold?")
  (answer 255) (from "128 + 64 + 32 + 16 + 8 + 4 + 2 + 1")
  (wrong-if 256 "256 is how many patterns there are. They start at 0, so the biggest number is 255.")
  (wrong-if 128 "128 is only the left place. The biggest number has a 1 in every place.")
  (wrong-if 8 "8 is how many bits there are. The biggest number is 11111111.")
  (hint "The biggest number is all 1s. Add all 8 place values."))
```

---

## A program that doubles

Each place value is 2 times the one before. A BASIC program can work
them out with a loop. It starts with P = 1. Each time round, it prints
P and then doubles it.

```basic
10 P = 1
20 FOR I = 1 TO 8
30 PRINT P
40 P = P * 2
50 NEXT
```

It prints 1, 2, 4, 8, 16, 32, 64 and 128, one under the other: the 8
place values of a byte.

```check
(choice
  (ask "Which line doubles P?")
  (right "40 P = P * 2")
  (wrong "30 PRINT P"
    "PRINT only shows P on the screen. It does not change P.")
  (wrong "20 FOR I = 1 TO 8"
    "Line 20 starts the loop, which runs 8 times. The doubling is done inside it.")
  (hint "Look for the line that gives P a new value."))
```

---

## Try it

```basic
10 P = 1
20 FOR I = 1 TO 8
30 PRINT P
40 P = P * 2
50 NEXT
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the program, then RUN. Look at the last number it prints, then come back.")
  (check (number
    (ask "What is the last number it prints?")
    (answer 128) (from "2 * 2 * 2 * 2 * 2 * 2 * 2")
    (wrong-if 256 "The loop runs 8 times and prints P before it doubles. The eighth number printed is 128.")
    (wrong-if 8 "8 is how many numbers it prints. Look at the last one.")
    (hint "It prints 8 numbers: 1, 2, 4 ... which is the eighth?"))))
```

---

## Worked example

```example
(example
  (problem "Read the byte 00001010.")
  (step "The places are worth 128, 64, 32, 16, 8, 4, 2, 1.")
  (step "The 1s are under 8 and 2.")
  (answer "8 + 2 = 10."))
```

```example
(example
  (problem "Read the byte 10000001.")
  (step "The 1s are under 128 and 1.")
  (step (number (ask "What is 128 + 1?")
    (answer 129) (from "128 + 1")
    (wrong-if 2 "That counts the 1s. Each 1 is worth its place: 128 and 1.")))
  (answer "10000001 is 129."))
```

---

## Practice

```check
(number
  (ask "In the program, line 20 is changed to FOR I = 1 TO 5. What is the last number it prints now?")
  (answer 16) (from "2 * 2 * 2 * 2")
  (wrong-if 5 "5 is how many numbers it prints now: 1, 2, 4, 8 and one more.")
  (wrong-if 32 "P is doubled after it is printed. The fifth number printed is 16.")
  (hint "It prints 5 numbers: 1, 2, 4, 8 and ..."))
```

```check
(number
  (ask "What number is the byte 01000000?")
  (answer 64) (from "64")
  (wrong-if 1 "The 1 is not in the 1s place. It is second from the left: the 64s place.")
  (hint "The places, from the left, are 128, 64, 32, 16, 8, 4, 2, 1."))
```

So: a byte is 8 bits, and it holds the numbers from 0 to 255.
