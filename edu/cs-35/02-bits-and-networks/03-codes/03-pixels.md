# Pictures are pixels

```lesson
(objective "Say that a picture on a screen is a grid of pixels, and that each pixel of a black-and-white picture is one bit.")
(minutes 15)
```

A black-and-white picture is a grid of pixels, and each pixel is one
bit.

You met pixels in BASIC: the tiny dots that make up the screen. They sit
in rows and columns, like squares on graph paper.

In a black-and-white picture, each pixel is one of two colors. That is
two states, so one bit is enough. In the pictures here, **1 is a filled
square** and **0 is an empty one**.

Click the box to show the bits of each row.

```figure
(define rows '(60 66 165 129 165 153 66 60))
(define show (toggle 'show "Show the bits"))
(cs2-pixels 30 40 8 20 rows)
(if show (cs2-pixel-bits 205 40 8 20 rows))
(caption "8 rows of 8 pixels")
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Pictures and Sound")
```

```check
(choice
  (ask "A pixel in this picture is an empty square. Which bit is it?")
  (right "0")
  (wrong "1"
    "Here 1 is a filled square. An empty square is the other state: 0.")
  (wrong "2"
    "A bit is only 0 or 1. Empty is one of the two states, and here it is 0.")
  (hint "1 is filled. What is empty?"))
```

---

## How many bits?

The smiley is 8 pixels wide and 8 pixels tall. It has 8 rows of 8
pixels: 64 pixels. Each pixel is one bit, so the picture is 64 bits.

```example
(example
  (problem "A black-and-white picture is 5 pixels wide and 3 pixels tall. How many bits is it?")
  (step "It has 3 rows of 5 pixels: 3 times 5 is 15 pixels.")
  (step "Each pixel is one bit.")
  (answer "15 bits."))
```

```check
(number
  (ask "A black-and-white picture is 4 pixels wide and 4 pixels tall. How many bits is it?")
  (answer 16) (from "4 * 4")
  (wrong-if 8 "That adds 4 and 4. The picture has 4 rows of 4 pixels: 4 times 4.")
  (wrong-if 4 "That is just one row. There are 4 rows of 4 pixels.")
  (hint "Count the pixels: 4 rows of 4."))
```

---

## A row is a byte

Each row of the smiley has 8 pixels, so it is 8 bits: one byte. The
whole smiley is 8 rows, so it is 8 bytes.

```check
(number
  (ask "The smiley is 64 bits. How many bytes is that?")
  (answer 8) (from "64 / 8")
  (wrong-if 64 "64 is the number of bits. A byte is 8 bits, so count the groups of 8.")
  (hint "Each row is 8 bits, which is one byte. How many rows are there?"))
```

---

## Which color is 1?

Which color 1 stands for is a rule that people choose. Any rule works
if everyone uses the same one. On the BASIC screen, a dot you draw is
white on black. There, BASIC counts a white pixel as 1 and a black one
as 0. Another computer could choose 1 for black.

```sources
(source "Zeitlos docs: basic_app.md, the screen and POINT")
```

```check
(choice
  (ask "Why can 1 mean black on one computer and white on the BASIC screen?")
  (right "It is a rule that people agree on, like a code")
  (wrong "Because one of them is wrong"
    "Both work. What a bit means is a rule we choose, and it only has to be the same for the writer and the reader.")
  (wrong "Because bits change color by themselves"
    "A bit is just 1 or 0. It is the rule, chosen by people, that says which color 1 means.")
  (hint "Think of the secret code. Who chooses what each number means?"))
```

---

## Practice

```check
(number
  (ask "A black-and-white picture has 10 rows of 8 pixels. How many bytes is it, one byte for each row?")
  (answer 10)
  (wrong-if 80 "80 is the number of bits. Each row of 8 bits is one byte.")
  (wrong-if 8 "8 is the pixels in a row. Count the rows: each row is one byte.")
  (hint "One byte for each row."))
```

So: a black-and-white picture is a grid of pixels, one bit each, and a
rule says which color 1 is.
