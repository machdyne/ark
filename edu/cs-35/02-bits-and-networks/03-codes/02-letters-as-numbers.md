# Letters as numbers

```lesson
(objective "Say that a computer keeps each letter as a number from a code that computers share, and find a letter's number.")
(minutes 20)
(keywords "ASCII")
```

A computer keeps every letter you type as a number.

Computers need one code that they all share. Then a letter typed on
one computer is the same letter on another.

One such code is **ASCII**, a code people agreed on in the 1960s.
In ASCII, capital A is 65, B is 66, C is 67, and so on, up to Z, which
is 90.

Move the slider through the capital letters.

```figure
(define c (slider 'c 65 90 65 "Code" 1))
(text 160 70 (string (integer->char c)) 'centre 44)
(text 160 112 (string-append "ASCII " (fmt c 0)) 'centre 'big 'bold)
(cs2-places 160 8 c 36)
(caption "one letter, one byte")
```

```sources
(source "RFC 20, ASCII format for Network Interchange (V. Cerf, 1969)")
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Text")
```

```check
(number
  (ask "In ASCII, capital A is 65 and the letters go in order. What is capital D?")
  (answer 68) (from "65 + 3")
  (wrong-if 4 "4 is D's place in the alphabet. In ASCII the capitals start at 65, not at 1.")
  (wrong-if 69 "Count again: A is 65, B is 66, C is 67, D is ...")
  (hint "A is 65, B is 66, C is 67."))
```

---

## Small letters and spaces

Small letters have numbers of their own. Small a is 97, b is 98, and so
on. So A and a are different numbers.

A space between words has a number too: 32. The digits have numbers as
well: the digit 0 is 48.

Computers today often use a bigger code, with letters for every
language. It starts with the same numbers as ASCII, so A is still 65.

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Text (ASCII, Unicode)")
```

```check
(choice
  (ask "Are capital A and small a the same number in ASCII?")
  (right "No: A is 65 and a is 97")
  (wrong "Yes: they are the same letter"
    "They are the same letter of the alphabet, but the computer keeps them apart. Capital A is 65 and small a is 97.")
  (hint "Look at the numbers for capital A and small a."))
```

---

## Inside the computer

The computer does not keep the letter's shape. It keeps its number, as
bits. Capital A, 65, is the byte 01000001: 64 + 1.

When the letter is shown, the computer draws the shape for that number.

```example
(example
  (problem "Which letter is the ASCII number 72?")
  (step "A is 65. 72 is 7 more than 65.")
  (step "Count 7 letters on from A: B, C, D, E, F, G, H.")
  (answer "72 is H."))
```

```example
(example
  (problem "Which letter is the ASCII number 73?")
  (step "72 is H.")
  (step (text (ask "73 is one more. Which letter is it?")
    (accept "I")
    (wrong-if "G" "G is 71, one less than H. 73 is one more than H.")))
  (answer "73 is I."))
```

---

## Practice

```check
(text
  (ask "A computer keeps the message 72 73. What does it say?")
  (accept "HI")
  (wrong-if "IH" "Read the numbers in order: 72 first, then 73.")
  (wrong-if "GH" "G is 71. 72 is H and 73 is I.")
  (hint "You worked out 72 and 73 in the examples."))
```

---

```check
(number
  (ask "How many bytes does the word CAT need, one byte for each letter?")
  (answer 3)
  (wrong-if 24 "That is the number of bits, 3 times 8. The question asks for bytes: one for each letter.")
  (wrong-if 1 "Each letter is its own number, and each number takes one byte.")
  (hint "Count the letters."))
```

```check
(number
  (ask "Capital C is 67. What is capital E?")
  (answer 69) (from "67 + 2")
  (wrong-if 5 "5 is E's place in the alphabet. In ASCII, C is 67, so E is 2 more.")
  (hint "D is 68."))
```

So: a computer keeps each letter as a number from a shared code such as
ASCII, where A is 65.
