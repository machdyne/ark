# Enough bits

```lesson
(objective "Find how many bits you need to give each thing in a set its own pattern.")
(minutes 15)
```

To give every thing its own pattern, you need enough bits for at least
that many patterns.

A game has 4 arrows: up, down, left and right. You can give each arrow
its own pattern of 2 bits:

| arrow | pattern |
|---|---|
| up | 00 |
| down | 01 |
| left | 10 |
| right | 11 |

2 bits make 4 patterns, and there are 4 arrows. Every arrow has a
pattern, and no two arrows share one.

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Bits")
```

```check
(choice
  (ask "Could 1 bit give each of the 4 arrows its own pattern?")
  (right "No: 1 bit makes only 2 patterns")
  (wrong "Yes: 1 for up and 0 for down, and so on"
    "1 bit has only 2 patterns, 0 and 1. After up and down, left and right would have to share them.")
  (hint "How many patterns does 1 bit make?"))
```

---

## When the patterns run out

Now the game has 5 things: the 4 arrows and a jump. 2 bits make only 4
patterns, so one thing would have none. Add a bit: 3 bits make 8
patterns. That is enough, with 3 patterns left over.

Move the slider. It finds the fewest bits with enough patterns.

```figure
(define t (slider 't 2 32 5 "Things" 1))
(define n (cond ((<= t 2) 1) ((<= t 4) 2) ((<= t 8) 3) ((<= t 16) 4) (else 5)))
(for-range 1 6
  (lambda (b)
    (let ((x (+ 52 (* b 46))))
      (text x 70 (fmt b 0) 'centre 'body)
      (text x 110 (fmt (expt 2 b) 0) 'centre 'big 'bold)
      (if (= b n) (frame (- x 22) 50 44 72 'ink 2)))))
(text 12 70 "bits" 'small)
(text 12 110 "patterns" 'small)
(text 160 170 (string-append (fmt t 0) " things need " (fmt n 0) (if (= n 1) " bit" " bits")) 'centre 'big 'bold)
(caption "the fewest bits with at least that many patterns")
```

```check
(number
  (ask "A traffic light game uses 3 colors. How many bits do you need to give each color its own pattern?")
  (answer 2)
  (true "2 * 2 >= 3") (true "2 < 3")
  (wrong-if 3 "That is one bit for each color. But 2 bits already make 4 patterns, enough for 3 colors.")
  (wrong-if 1 "1 bit makes only 2 patterns, and there are 3 colors. One color would have no pattern.")
  (hint "Find the first number of bits with at least 3 patterns.")
  (hint "1 bit makes 2 patterns. 2 bits make 4."))
```

---

## Worked example

```example
(example
  (problem "How many bits do you need for the 10 digits, 0 to 9?")
  (step "Double: 1 bit makes 2 patterns, 2 bits 4, 3 bits 8, 4 bits 16.")
  (step "8 is less than 10, so 3 bits are not enough.")
  (step "16 is at least 10, so 4 bits are enough.")
  (answer "4 bits. 6 patterns are left over."))
```

```example
(example
  (problem "How many bits do you need for 7 colors?")
  (step "1 bit makes 2 patterns, 2 bits 4, 3 bits 8.")
  (step (number (ask "So how many bits do you need?")
    (answer 3)
    (true "2 * 2 < 7") (true "2 * 2 * 2 >= 7")
    (wrong-if 7 "That is one bit for each color. 3 bits already make 8 patterns.")
    (wrong-if 2 "2 bits make only 4 patterns. That is fewer than 7.")))
  (answer "3 bits, with 1 pattern left over."))
```

---

## Practice

```check
(number
  (ask "There are 26 letters from A to Z. How many bits do you need to give each letter its own pattern?")
  (answer 5)
  (true "2 * 2 * 2 * 2 < 26") (true "2 * 2 * 2 * 2 * 2 >= 26")
  (wrong-if 4 "4 bits make only 16 patterns. 10 letters would have none.")
  (wrong-if 26 "26 bits would be one bit for each letter. Each bit doubles the patterns, so far fewer are enough.")
  (hint "Double from 2: 2, 4, 8, 16, 32. Which is the first that is at least 26?"))
```

---

```check
(choice
  (ask "A class has 20 children. Each needs a pattern of bits of its own. What is the fewest bits that is enough?")
  (right "5 bits" (true "2 * 2 * 2 * 2 * 2 >= 20"))
  (wrong "4 bits" (false "2 * 2 * 2 * 2 >= 20")
    "4 bits make 16 patterns. That is not enough for 20 children: 4 would have none.")
  (wrong "20 bits"
    "20 bits would work, but they are not the fewest. 5 bits already make 32 patterns.")
  (hint "Which is the first number in 2, 4, 8, 16, 32 that is at least 20?"))
```

So: double until you have at least as many patterns as things, and
count the bits.
