# Cutting shapes

```lesson
(objective "Cut a rectangle or a circle into a given number of equal parts.")
(standards "3.G.A.2")
(minutes 20)
```

You can cut a rectangle or a circle into any number of equal parts.

To cut a bar into equal parts, put the cuts the same distance apart.
Move the slider to add cuts.

```figure
(define k (slider 'cuts 1 7 1 "Cuts" 1))
(frac-bar-at 40 50 240 50 (+ k 1) 0 'warm)
(label 160 140 (string-append (fmt k 0) (if (= k 1) " cut makes " " cuts make ") (fmt (+ k 1) 0) " equal parts") 'body 'bold)
(caption "The cuts are the same distance apart.")
```

```check
(number
  (ask "You want a bar in 4 equal parts. How many cuts do you make?")
  (answer 3) (from "4 - 1")
  (wrong-if 4 "Try it with the slider. 4 cuts make 5 parts. The ends of the bar are not cuts.")
  (wrong-if 5 "5 cuts make 6 parts. You need 1 cut fewer than the number of parts.")
  (hint "Move the slider until you see 4 equal parts.")
  (hint "1 cut makes 2 parts. 2 cuts make 3 parts."))
```

---

## Cut, then cut again

Here is an easy way to make equal parts. Cut the whole in half. Then
cut each half in half. Now you have 4 equal parts.

Cut each of those in half, and you have 8 equal parts.

```figure
(frac-bar-at 40 20 240 36 2 0 'warm)
(label 300 43 "2" 'body)
(frac-bar-at 40 85 240 36 4 0 'warm)
(label 300 108 "4" 'body)
(frac-bar-at 40 150 240 36 8 0 'warm)
(label 300 173 "8" 'body)
(caption "Each part cut in half again.")
```

```check
(number
  (ask "You cut a bar into 3 equal parts. Then you cut each part in half. How many equal parts do you have now?")
  (answer 6) (from "3 * 2")
  (wrong-if 5 "Each of the 3 parts becomes 2 parts. That is 2 + 2 + 2.")
  (wrong-if 4 "Cutting in half does not add just 1 part. Every one of the 3 parts becomes 2.")
  (hint "Each of the 3 parts becomes 2 parts.")
  (hint "3 groups of 2."))
```

---

## Circles

To cut a circle into equal parts, draw lines from the middle to the
edge. Space them evenly, so all the parts are the same size.

Choose a number of parts.

```figure
(define c (choice 'parts '("2" "3" "4" "6" "8") "Equal parts"))
(define n (list-ref '(2 3 4 6 8) c))
(frac-circle 160 105 85 n 0 'warm)
(caption (string-append (fmt n 0) " lines from the middle make " (fmt n 0) " equal parts."))
```

```check
(number
  (ask "You cut a circle into 6 equal parts with lines from the middle to the edge. How many lines do you draw?")
  (answer 6)
  (wrong-if 5 "On a bar, 5 cuts make 6 parts. A circle has no ends: each line from the middle starts a new part, so 6 lines make 6 parts.")
  (wrong-if 3 "3 lines from the middle make 3 parts. You need 1 line for each part.")
  (hint "Choose 6 in the figure. Count the lines from the middle."))
```

---

## Worked example

```example
(example
(problem "Cut a rectangle into 8 equal parts.")
(step "Cut it in half: 2 equal parts.")
(step "Cut each half in half: 4 equal parts.")
(step "Cut each of the 4 parts in half: 8 equal parts.")
(answer "3 rounds of cutting in half give 8 equal parts."))
```

```example
(example
(problem "Cut a rectangle into 6 equal parts.")
(step "Cut it into 3 equal parts, with 2 cuts the same distance apart.")
(step (choice (ask "What do you do next?")
  (right "Cut each of the 3 parts in half")
  (wrong "Cut just 1 part in half"
    "Then you have 4 parts, and 2 of them are smaller. Cut every part in half to keep them equal.")))
(answer "3 parts, each cut in half, make 6 equal parts."))
```

---

## Practice

```check
(choice
  (ask "Lee wants 4 equal parts of a square. Which way works?")
  (right "Cut it in half, then cut each half in half")
  (wrong "Make 4 cuts across it"
    "4 cuts across make 5 parts, not 4. You need 3 cuts the same distance apart.")
  (wrong "Make 3 cuts anywhere"
    "3 cuts make 4 parts, but only if they are the same distance apart. Cuts anywhere make parts of different sizes.")
  (hint "Equal parts must be the same size."))
```

```check
(number
  (ask "How many cuts across a bar make 8 equal parts?")
  (answer 7) (from "8 - 1")
  (wrong-if 8 "8 cuts make 9 parts. The ends of the bar are not cuts.")
  (hint "1 cut makes 2 parts. Each cut adds 1 part."))
```

---

```check
(number
  (ask "You cut a bar into 2 equal parts. Then you cut each part into 4 equal parts. How many equal parts are there?")
  (answer 8) (from "2 * 4")
  (wrong-if 6 "That adds 2 and 4. But each of the 2 parts becomes 4 parts: 2 groups of 4.")
  (hint "Each of the 2 parts becomes 4 parts."))
```

So: make the cuts the same distance apart, or cut every part in half
again, and all the parts stay equal.
