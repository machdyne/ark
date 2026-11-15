# Reading binary

```lesson
(objective "Read a binary number of up to 5 digits by adding the place values of its 1s.")
(minutes 20)
```

To read a binary number, add the place values of the places that hold
a 1.

A 1 in a place means "count this place". A 0 means "do not count it".

Take the binary number 101. Its places are worth 4, 2 and 1. There is a
1 under the 4 and a 1 under the 1. So 101 is 4 + 1 = 5.

Move the slider. Watch which places hold a 1, and the sum below.

```figure
(define n (slider 'n 0 31 5 "Number" 1))
(cs2-places 70 5 n 48)
(text 160 160 (cs2-sum n 5) 'centre 'big)
(text 160 195 (string-append "= " (fmt n 0)) 'centre 'big 'bold)
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Counting in Binary")
```

```check
(number
  (ask "What number is the binary number 110?")
  (answer 6) (from "4 + 2")
  (wrong-if 110 "That reads the digits as an everyday number. In binary, the places are worth 4, 2 and 1.")
  (wrong-if 3 "That reads the places from the wrong end. The left place is worth the most: 4.")
  (hint "The places of 110 are worth 4, 2 and 1.")
  (hint "Add the places with a 1: 4 and 2."))
```

---

## Longer numbers

A longer number works the same way. Write the place values over the
digits first, so you do not mix them up.

| 16 | 8 | 4 | 2 | 1 |
|---|---|---|---|---|
| 1 | 0 | 0 | 1 | 1 |

The 1s are under 16, 2 and 1. So 10011 is 16 + 2 + 1 = 19.

```check
(number
  (ask "What number is the binary number 1011?")
  (answer 11) (from "8 + 2 + 1")
  (wrong-if 13 "That reads the digits from the right end. A 4-digit number has the places 8, 4, 2, 1, from left to right.")
  (wrong-if 3 "Count every 1. There are three: under 8, 2 and 1.")
  (hint "The places of a 4-digit binary number are 8, 4, 2, 1."))
```

---

## Worked example

```example
(example
  (problem "What number is the binary number 11010?")
  (step "It has 5 digits. The places are worth 16, 8, 4, 2, 1.")
  (step "The 1s are under 16, 8 and 2.")
  (step "16 + 8 + 2 = 26.")
  (answer "11010 is 26."))
```

```example
(example
  (problem "What number is the binary number 1110?")
  (step "It has 4 digits. The places are worth 8, 4, 2, 1.")
  (step "The 1s are under 8, 4 and 2.")
  (step (number (ask "What is 8 + 4 + 2?")
    (answer 14) (from "8 + 4 + 2")
    (wrong-if 15 "That adds the 1 too. The last digit is 0, so the 1s place does not count.")))
  (answer "1110 is 14."))
```

---

## Practice

```check
(number
  (ask "What number is the binary number 10000?")
  (answer 16) (from "16")
  (wrong-if 1 "The 1 is not on the right. It is in the fifth place, which is worth 16.")
  (wrong-if 10000 "That reads it as an everyday number. In binary, the fifth place from the right is worth 16.")
  (hint "Only one place has a 1. Which place is it?"))
```

---

```check
(number
  (ask "What number is the binary number 11111?")
  (answer 31) (from "16 + 8 + 4 + 2 + 1")
  (wrong-if 5 "That counts the 1s. Each 1 is worth its place: 16, 8, 4, 2 and 1.")
  (wrong-if 32 "Close! Add again: 16 + 8 + 4 + 2 + 1.")
  (hint "Every place holds a 1, so add all 5 place values."))
```

```check
(choice
  (ask "Which binary number is 9?")
  (right "1001" (true "8 + 1 = 9"))
  (wrong "1100" (false "8 + 4 = 9")
    "1100 has 1s under 8 and 4. That is 12, not 9.")
  (wrong "0110" (false "4 + 2 = 9")
    "0110 has 1s under 4 and 2. That is 6.")
  (wrong "1010" (false "8 + 2 = 9")
    "1010 has 1s under 8 and 2. That is 10.")
  (hint "Read each one: the places are 8, 4, 2, 1. Which adds up to 9?"))
```

So: write the place values over the digits, and add the places that
hold a 1.
