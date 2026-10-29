# Equal parts

```lesson
(objective "Tell whether a shape is cut into equal parts or not.")
(standards "3.G.A.2")
(minutes 15)
```

You can tell if a shape is cut into equal parts.

Equal parts are all the same size. Look at bars A and B. Each one is
cut into 4 parts. Are the parts the same size?

```figure
(label 20 46 "A" 'body 'bold)
(frac-bar-at 40 25 240 36 4 0 'warm)
(label 20 136 "B" 'body 'bold)
(fr-cuts 40 115 240 36 '(0.15 0.55 0.7) 0 'warm #f)
(caption "Two bars, each cut into 4 parts.")
```

```check
(choice
  (ask "Which bar is cut into 4 equal parts?")
  (right "Bar A")
  (wrong "Bar B"
    "Bar B has 4 parts too, but some are wide and some are thin. Counting the parts does not tell you if they are equal.")
  (wrong "Both bars"
    "Both bars have 4 parts. But in bar B the parts are not the same size, so they are not equal.")
  (hint "Equal parts are all the same size. In which bar are all 4 parts the same width?"))
```

---

## Count, then compare

To check a shape, do 2 things.

1. Count the parts.
2. Look at the size of each part. Are they all the same?

This shape has 4 parts. Look at their sizes before you answer.

```figure
(fr-cuts 60 40 200 140 '(0.64) 0 'warm #t)
(line 160 40 160 180 'ink 1)
(caption "1 shape, cut into 4 parts.")
```

```check
(choice
  (ask "Is this shape cut into 4 equal parts?")
  (right "No: the 2 top parts are bigger than the 2 bottom parts")
  (wrong "Yes: it has 4 parts"
    "It has 4 parts, but look at their sizes. The 2 top parts are taller than the 2 bottom parts.")
  (wrong "No: equal parts must be squares"
    "Equal parts do not have to be squares. They only have to be the same size. Here the top parts are bigger.")
  (hint "Compare a top part with a bottom part.")
  (hint "Which parts are taller: the top ones or the bottom ones?"))
```

---

## Circles

A circle can be cut into equal parts too. Each cut goes from the
middle to the edge.

Circle A has 3 equal parts. Circle B has 3 parts, but one part is as
big as the other two together.

```figure
(label 85 30 "A" 'body 'bold)
(frac-circle 85 120 70 3 1 'cool)
(label 235 30 "B" 'body 'bold)
(fr-pie 235 120 70 '(0.5 0.75) 1 'cool)
(caption "Each circle is cut into 3 parts. One part is shaded.")
```

```check
(choice
  (ask "Look at circle B. Is the shaded part one of 3 equal parts?")
  (right "No: it is half the circle, so the parts are not equal")
  (wrong "Yes: the circle has 3 parts"
    "The circle has 3 parts, but they are not the same size. The shaded part is as big as the other 2 together.")
  (hint "Is the shaded part the same size as each of the other parts?"))
```

---

## Make the parts equal

Move the slider to move the cut. The bar is 8 inches long. Find the
place where the 2 parts are equal.

```figure
(define c (slider 'cut 1 7 2 "Cut at (inches)" 1))
(fr-cuts 40 50 240 50 (list (/ c 8)) 1 'warm #f)
(for-range 0 9 (lambda (i) (line (+ 40 (* 30 i)) 106 (+ 40 (* 30 i)) 112 'ink 1)))
(text 40 128 "0" 'centre 'small)
(text 280 128 "8" 'centre 'small)
(text 160 165 (string-append (fmt c 0) " inches and " (fmt (- 8 c) 0) " inches") 'centre 'body)
(text 160 195 (if (= c 4) "The parts are equal." "The parts are not equal.") 'centre 'body 'bold)
```

```check
(number
  (ask "When the 2 parts are equal, how long is each part?")
  (answer 4) (unit "inches") (from "8 / 2")
  (wrong-if 2 "With the cut at 2, the parts are 2 inches and 6 inches. They are not the same size.")
  (wrong-if 8 "8 inches is the whole bar. Each of the 2 equal parts is shorter.")
  (hint "The 2 parts must be the same length.")
  (hint "Which number plus itself makes 8?"))
```

---

## Worked example

```example
(example
(problem "A square is cut into 2 parts. One is 3 inches wide. The other is 5 inches wide. Are the parts equal?")
(step "Count the parts: there are 2.")
(step "Compare the sizes: 3 inches wide and 5 inches wide.")
(step "3 and 5 are not the same, so one part is bigger.")
(answer "No. The parts are not equal."))
```

```example
(example
(problem "A rectangle is cut into 3 parts. Each part is 2 inches wide. Are the parts equal?")
(step "Count the parts: there are 3.")
(step "Compare the sizes: each part is 2 inches wide.")
(step (choice (ask "So, are the parts equal?")
  (right "Yes: all 3 parts are the same size")
  (wrong "No: 3 parts cannot be equal"
    "Any number of parts can be equal. Here all 3 are 2 inches wide, so they are the same size.")))
(answer "Yes. The 3 parts are equal."))
```

---

## Practice

```figure
(label 50 40 "A" 'body 'bold)
(frac-circle 50 105 42 4 0 'warm)
(label 160 40 "B" 'body 'bold)
(fr-cuts 115 63 90 84 '(0.25 0.75) 0 'warm #f)
(label 270 40 "C" 'body 'bold)
(fr-square 228 63 84 2 'tri 0 'warm)
(label 50 190 "4 parts" 'small)
(label 160 190 "3 parts" 'small)
(label 270 190 "2 parts" 'small)
```

```check
(choice (several)
  (ask "Which shapes are cut into equal parts? Choose all that are.")
  (right "A")
  (right "C")
  (wrong "B"
    "Shape B has 3 parts, but the middle one is wider than the others. Its parts are not equal.")
  (hint "Look at each shape. Are all its parts the same size?")
  (hint "In C, the cut goes from corner to corner. The 2 triangles are the same size."))
```

---

```check
(choice
  (ask "Sam cuts a sandwich into 2 parts. One part is much bigger. Sam says, \"I cut it in half.\" Is Sam right?")
  (right "No: halves are 2 equal parts, and these are not equal")
  (wrong "Yes: there are 2 parts"
    "Halves are 2 parts of the same size. A big part and a small part are not halves.")
  (hint "Are the 2 parts the same size?"))
```

```check
(number
  (ask "A ribbon is 6 inches long. You cut it into 2 equal parts. How long is each part?")
  (answer 3) (unit "inches") (from "6 / 2")
  (wrong-if 6 "6 inches is the whole ribbon. Each of the 2 equal parts is shorter.")
  (wrong-if 2 "2 is the number of parts. Each part is 6 inches shared into 2 equal lengths.")
  (hint "The 2 parts are the same length, and together they make 6 inches."))
```

So: a shape is cut into equal parts only when every part is the same
size.
