# Counting in binary

```lesson
(objective "Count in binary from 0 to 15, and on to 31 with a fifth bit.")
(minutes 20)
```

You can count in binary, the same way you count every day.

Think of how you count: 7, 8, 9. Then you run out of digits. So you
write 0 and carry 1 to the next place: 10.

Binary runs out of digits sooner, after 1. So: 0, 1, then 10, then 11,
then 100. Watch the lamps count, one number at a time.

```figure
(define n (modulo (floor (/ (seconds) 1.5)) 16))
(cs2-lamps 80 4 n 64)
(text 160 175 (string-append "binary " (cs2-bin n 4) " = " (fmt n 0)) 'centre 'big 'bold)
(caption "counting from 0 to 15, again and again")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Counting in Binary")
```

```check
(text
  (ask "In binary, 0, 1, 10, 11 ... What comes after 11?")
  (accept "100") (accept "0100")
  (wrong-if "12" "There is no 2 in binary. After 11 both places are full, so you carry: 100.")
  (wrong-if "111" "111 is 7. After 11, which is 3, comes 4: a 1 in the 4s place and 0s after it.")
  (hint "11 is 3. Which binary number is 4?"))
```

---

## The first 16 numbers

| number | binary | number | binary |
|---|---|---|---|
| 0 | 0000 | 8 | 1000 |
| 1 | 0001 | 9 | 1001 |
| 2 | 0010 | 10 | 1010 |
| 3 | 0011 | 11 | 1011 |
| 4 | 0100 | 12 | 1100 |
| 5 | 0101 | 13 | 1101 |
| 6 | 0110 | 14 | 1110 |
| 7 | 0111 | 15 | 1111 |

Look at the right-hand bit. It changes at every count: 0, 1, 0, 1.

Adding 1 to a bit that is 1 turns it to 0 and carries 1 to the left.
From 0111, every 1 turns to 0 and the carry lands in the 8s place:
1000.

```check
(text
  (ask "What comes after 0111 when you count in binary?")
  (accept "1000")
  (wrong-if "0112" "Binary has no digit 2. The 1 on the right turns to 0 and carries, and so do the next 1s.")
  (wrong-if "1111" "1111 is 15. 0111 is 7, so the next number is 8.")
  (hint "0111 is 7. What is 8 in binary?"))
```

---

## Worked example

```example
(example
  (problem "Count 2 more from 0101.")
  (step "The right bit is 1. It turns to 0 and carries: 0110.")
  (step "The right bit is 0. It turns to 1: 0111.")
  (answer "0110, then 0111."))
```

```example
(example
  (problem "Count 1 more from 1011.")
  (step "The right bit is 1. It turns to 0 and carries.")
  (step "The next bit is 1 too. It turns to 0 and carries again.")
  (step (text (ask "The carry lands on a 0. What is the new number?")
    (accept "1100")
    (wrong-if "1012" "There is no 2 in binary. The carry goes on until it lands on a 0.")))
  (answer "1100."))
```

---

## A fifth bit

With 4 bits the biggest number is 1111, which is 15. To count to 16 you
need a fifth bit: 10000. With 5 bits you can count on, up to 11111.

```check
(number
  (ask "What is the biggest number you can write with 5 bits?")
  (answer 31) (from "16 + 8 + 4 + 2 + 1")
  (wrong-if 32 "32 needs a sixth bit: 100000. With 5 bits the biggest is 11111.")
  (wrong-if 5 "5 is the number of bits. The biggest number is all 1s: 11111.")
  (hint "The biggest is all 1s. Add the place values 16, 8, 4, 2 and 1."))
```

---

## Practice

```check
(number
  (ask "Counting from 0 to 15 uses every pattern of 4 bits. How many numbers is that?")
  (answer 16) (from "15 + 1")
  (wrong-if 15 "Do not forget 0. From 0 to 15 is 16 numbers, the same as the 16 patterns of 4 bits.")
  (hint "Count 0 as well."))
```

```check
(choice
  (ask "Which list counts in binary, from 2 to 5?")
  (right "10, 11, 100, 101")
  (wrong "10, 11, 12, 13"
    "Binary has only the digits 0 and 1. After 11 comes 100.")
  (wrong "10, 100, 1000, 10000"
    "That doubles each time: 2, 4, 8, 16. Counting goes up by 1.")
  (hint "2 is 10. Count up by 1 each time."))
```

So: in binary you count 0, 1, then carry, just as you carry after 9,
and 5 bits count up to 31.
