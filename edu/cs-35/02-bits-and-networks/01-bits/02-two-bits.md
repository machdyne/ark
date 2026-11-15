# Two bits, three bits

```lesson
(objective "List every pattern that 2 bits and 3 bits can make.")
(minutes 15)
```

Two bits together can make 4 different patterns.

One bit has 2 states: 0 or 1. Now take 2 bits side by side. The first
can be 0 or 1, and so can the second. Here are all the ways:

| first | second | pattern |
|---|---|---|
| 0 | 0 | 00 |
| 0 | 1 | 01 |
| 1 | 0 | 10 |
| 1 | 1 | 11 |

Choose a pattern to see it on the lamps.

```figure
(define p (choice 'p '("00" "01" "10" "11") "Pattern"))
(cs2-lamps 90 2 p 110)
(caption "2 bits: 4 patterns")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Bits")
```

```check
(number
  (ask "How many different patterns can 2 bits make?")
  (answer 4) (from "2 * 2")
  (wrong-if 2 "2 is the number of bits. Each bit can be 0 or 1, and that gives 00, 01, 10 and 11.")
  (wrong-if 3 "Did you miss one? Count 00, 01, 10 and 11.")
  (hint "Look at the table. Count its rows."))
```

---

## Order matters

The patterns 01 and 10 both have one 1 and one 0. But they are not the
same pattern. In 01 the first lamp is off. In 10 the first lamp is on.

```check
(choice
  (ask "Are the patterns 01 and 10 the same?")
  (right "No: the 1 is in a different place")
  (wrong "Yes: both have one 1 and one 0"
    "They have the same digits, but in a different order. Lamps off-on and on-off look different, so they are different patterns.")
  (hint "Picture the lamps. Which one is lit in 01? And in 10?"))
```

---

## Three bits

Add a third bit. Write the 4 patterns of 2 bits twice. Put a 0 in
front of the first 4, and a 1 in front of the next 4.

| 0 in front | 1 in front |
|---|---|
| 000 | 100 |
| 001 | 101 |
| 010 | 110 |
| 011 | 111 |

That makes 8 patterns, and none of them is left out.

```figure
(define n (slider 'n 1 8 6 "Pattern" 1))
(cs2-lamps 90 3 (- n 1) 90)
(caption (string-append "pattern " (fmt n 0) " of 8"))
```

```check
(number
  (ask "How many different patterns can 3 bits make?")
  (answer 8) (from "4 * 2")
  (wrong-if 6 "Did you add 2 for the new bit? The new bit can be 0 or 1 in front of every one of the 4 patterns: 4 and 4 more.")
  (wrong-if 3 "3 is the number of bits. Count the patterns in the table instead.")
  (hint "There are 4 patterns with a 0 in front, and 4 with a 1 in front."))
```

---

## Worked example

```example
(example
  (problem "Write the 4 patterns of 3 bits that start with 1.")
  (step "Take the 4 patterns of 2 bits: 00, 01, 10, 11.")
  (step "Put a 1 in front of each one.")
  (answer "100, 101, 110, 111."))
```

```example
(example
  (problem "Write the 4 patterns of 3 bits that start with 0.")
  (step "Take the 4 patterns of 2 bits: 00, 01, 10, 11.")
  (step (choice (ask "Which digit goes in front of each one?")
    (right "0")
    (wrong "1" "The question asks for the patterns that start with 0.")))
  (answer "000, 001, 010, 011."))
```

---

## Practice

```check
(text
  (ask "Here are 7 patterns of 3 bits: 000, 001, 010, 011, 100, 110, 111. One is missing. Which one?")
  (accept "101")
  (wrong-if "011" "011 is in the list already. Look at the patterns that start with 1.")
  (wrong-if "1000" "That has 4 bits. Every pattern here has 3.")
  (hint "Look at the patterns that start with 1: there should be 4 of them.")
  (hint "Those start 100 and end 111. What goes between 100 and 110?"))
```

---

```check
(choice
  (ask "Mia uses 2 lamps to send signals to her brother. How many different signals can she make?")
  (right "4" (true "2 * 2 = 4"))
  (wrong "2" (false "2 * 2 = 2")
    "Each lamp is on or off, and there are 2 lamps. Off-off, off-on, on-off and on-on are 4 signals.")
  (wrong "3" (false "2 * 2 = 3")
    "Off-off is a signal too: both lamps dark. Count it with the other 3.")
  (hint "Two lamps are 2 bits."))
```

```check
(choice
  (ask "Which is a pattern of 3 bits?")
  (right "110")
  (wrong "12"
    "A bit is only 0 or 1. There is no 2 in a pattern of bits.")
  (wrong "1101"
    "That has 4 digits, so it is 4 bits. A pattern of 3 bits has 3 digits.")
  (hint "Three digits, each 0 or 1."))
```

So: 2 bits make 4 patterns and 3 bits make 8, and each pattern is a
different row of 1s and 0s.
