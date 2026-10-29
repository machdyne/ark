# Finding the whole

```lesson
(objective "Draw the whole when you are shown a unit fraction of it.")
(standards "3.NF.A.1")
(minutes 20)
```

If you see 1 part of a whole, you can draw the whole.

This piece is $1/3$ of a whole. The denominator says the whole has 3
of these parts. Move the slider to put pieces end to end.

```figure
(define k (slider 'k 1 6 1 "Pieces" 1))
(frac-bar-at 40 30 40 36 1 1 'warm)
(math 100 48 "1/3" 18)
(frac-bar-at 40 110 (* 40 k) 36 k k 'cool)
(text 160 190 (cond ((< k 3) "Not yet the whole.") ((= k 3) "3 pieces: this is the whole.") (else "Too long: more than the whole.")) 'centre 'body 'bold)
(caption "Each piece is 1/3 of the whole.")
```

```check
(number
  (ask "A piece is" (math "1/3") "of a whole. How many pieces make the whole?")
  (answer 3)
  (wrong-if 1 "1 piece is only 1/3. The denominator says the whole has 3 equal parts.")
  (wrong-if 4 "4 pieces would be more than the whole. 3 thirds make 1 whole.")
  (hint "Set the slider until the figure says it is the whole."))
```

---

## Any unit fraction

The same works for any unit fraction. If a piece is $1/4$, the whole
is 4 pieces. If a piece is $1/6$, the whole is 6 pieces.

```figure
(frac-bar-at 40 30 30 30 1 1 'warm)
(math 100 45 "1/4" 18)
(frac-bar-at 40 70 120 30 4 4 'warm)
(label 230 90 "1 whole" 'small)
(frac-bar-at 40 130 20 30 1 1 'cool)
(math 90 145 "1/6" 18)
(frac-bar-at 40 170 120 30 6 6 'cool)
(label 230 190 "1 whole" 'small)
```

```check
(number
  (ask "A strip is" (math "1/8") "of a whole. How many strips like it make the whole?")
  (answer 8)
  (wrong-if 1 "1 strip is just 1/8. The whole has 8 equal parts.")
  (hint "The denominator tells how many parts make the whole."))
```

---

## How long is the whole?

A piece is $1/4$ of a ribbon. The piece is 2 inches long. The whole
ribbon is 4 pieces of 2 inches: $4 * 2 = 8$ inches.

```check
(number
  (ask "A piece is" (math "1/3") "of a rope. The piece is 5 feet long. How long is the whole rope?")
  (answer 15) (unit "feet") (from "3 * 5")
  (wrong-if 5 "5 feet is just 1 piece. The whole rope is 3 pieces of that length.")
  (wrong-if 8 "That adds 3 and 5. The whole is 3 pieces, each 5 feet: 3 groups of 5.")
  (hint "The whole is 3 pieces.")
  (hint "3 pieces, each 5 feet long."))
```

---

## Worked example

```example
(example
(problem "This bar is 1/2 of a whole. Draw the whole.")
(step "The denominator is 2, so the whole has 2 equal parts.")
(step "Draw a second bar of the same size next to it.")
(answer "The 2 bars together are the whole."))
```

```example
(example
(problem "This bar is 1/6 of a whole. Draw the whole.")
(step "The denominator is 6, so the whole has 6 equal parts.")
(step (choice (ask "How many bars of this size do you draw in all?")
  (right "6")
  (wrong "5"
    "5 more bars and the first one make 6. In all, the whole is 6 bars of this size.")
  (wrong "1"
    "1 bar is only 1/6. The whole is 6 of them.")))
(answer "6 bars of this size, end to end, are the whole."))
```

---

## Practice

```figure
(frac-bar-at 20 30 40 30 1 1 'warm)
(math 85 45 "1/4" 18)
(label 20 100 "A" 'body 'bold)
(frac-bar-at 40 85 120 30 3 0 'cool)
(label 20 150 "B" 'body 'bold)
(frac-bar-at 40 135 160 30 4 0 'cool)
(label 20 200 "C" 'body 'bold)
(frac-bar-at 40 185 240 30 6 0 'cool)
(caption "The small shaded bar is 1/4 of a whole.")
```

```check
(choice
  (ask "The small shaded bar is" (math "1/4") "of a whole. Which bar is the whole?")
  (right "B")
  (wrong "A"
    "Bar A is only 3 pieces long. A whole made of fourths has 4 pieces.")
  (wrong "C"
    "Bar C is 6 pieces long. That is more than the whole, which has 4 fourths.")
  (hint "Each long bar is cut into pieces the size of the small bar.")
  (hint "Which bar has exactly 4 of those pieces?"))
```

---

```check
(number
  (ask "A piece is" (math "1/2") "of a board. The piece is 3 feet long. How long is the whole board?")
  (answer 6) (unit "feet") (from "2 * 3")
  (wrong-if 3 "3 feet is half of the board. The whole board is 2 halves.")
  (wrong-if 1.5 "That cuts the piece in half. But the piece is already half: the whole is 2 pieces.")
  (hint "The whole is 2 pieces of 3 feet."))
```

So: if a piece is $1/4$ of a whole, the whole is 4 pieces of that size.
