# From 0 to 1

```lesson
(objective "Cut the interval from 0 to 1 on a number line into equal parts.")
(standards "3.NF.A.2a")
(minutes 20)
(keywords "interval (on a number line)")
```

You can cut the part of a number line from 0 to 1 into equal parts.

The stretch of a number line from one number to another is an
**interval**. The interval from 0 to 1 is 1 whole. Think of it as a
fraction strip laid on the line.

```figure
(frac-bar-at 40 50 240 30 1 0 'cool)
(label 160 70 "1 whole" 'small)
(fr-line 40 280 130 1 1 'whole)
(arrow 160 165 42 165 'ink 1)
(arrow 160 165 278 165 'ink 1)
(caption "The interval from 0 to 1 is 1 whole.")
```

```check
(choice
  (ask "On a number line, what is the interval from 0 to 1?")
  (right "The stretch of the line from 0 to 1")
  (wrong "Just the point at 1"
    "A point is one place on the line. An interval is the whole stretch between two numbers.")
  (wrong "The tick marks at 0 and 1"
    "The tick marks show where the interval starts and ends. The interval is all of the line between them.")
  (hint "An interval goes from one number to another."))
```

---

## Equal parts of the interval

To cut the interval into equal parts, put tick marks the same distance
apart. Choose a number of parts.

```figure
(define c (choice 'parts '("2" "3" "4" "6" "8") "Equal parts"))
(define n (list-ref '(2 3 4 6 8) c))
(fr-line 40 280 90 1 n 'whole)
(for-range 0 n (lambda (i) (rect (+ 42 (* (/ 240 n) i)) 120 (- (/ 240 n) 4) 8 (if (even? i) 'warm 'cool))))
(text 160 165 (string-append (fmt n 0) " equal parts, " (fmt (+ n 1) 0) " tick marks") 'centre 'body 'bold)
(caption "The parts are the spaces between the tick marks.")
```

```check
(number
  (ask "The interval from 0 to 1 is cut into 4 equal parts. How many tick marks are there from 0 to 1, with the marks at 0 and 1?")
  (answer 5) (from "4 + 1")
  (wrong-if 4 "There are 4 parts, but the parts are the spaces. Count the marks: one at 0, then one at the end of each part.")
  (wrong-if 3 "3 marks are the new ones inside the interval. Add the marks at 0 and at 1.")
  (hint "Choose 4 in the figure. Count the tick marks."))
```

---

## Count spaces, not marks

The equal parts are the spaces between the marks. Count the spaces,
not the marks.

```figure
(fr-line 40 280 100 1 6 'whole)
(caption "A number line from 0 to 1.")
```

```check
(number
  (ask "Into how many equal parts is the interval from 0 to 1 cut?")
  (answer 6)
  (wrong-if 7 "7 is the number of tick marks. The parts are the spaces between them: 1 fewer.")
  (wrong-if 5 "5 marks are inside the interval. The parts are the spaces between all 7 marks.")
  (hint "Count the spaces between the marks, from 0 to 1."))
```

---

## Worked example

```example
(example
(problem "Cut the interval from 0 to 1 into 3 equal parts.")
(step "Draw a line. Mark 0 and 1.")
(step "You need 3 equal spaces, so you need 2 new marks inside.")
(step "Put the 2 marks so the 3 spaces are the same length.")
(answer "The interval from 0 to 1 is now in 3 equal parts."))
```

```example
(example
(problem "Cut the interval from 0 to 1 into 8 equal parts.")
(step "Draw a line. Mark 0 and 1.")
(step (choice (ask "How many new marks go inside the interval?")
  (right "7")
  (wrong "8"
    "8 new marks would make 9 spaces. You need 1 mark fewer than the number of parts.")
  (wrong "9"
    "9 is the number of marks in all, with 0 and 1. Only 7 new marks go inside.")))
(answer "With 7 marks inside, the same distance apart, there are 8 equal parts."))
```

---

## Practice

```figure
(label 30 64 "A" 'body 'bold)
(fr-line 50 280 60 1 4 'whole)
(label 30 154 "B" 'body 'bold)
(line 42 150 288 150 'ink 1.5)
(for-each (lambda (x) (line x 145 x 155 'ink 1)) '(50 90 170 220 280))
(text 50 172 "0" 'centre 'body)
(text 280 172 "1" 'centre 'body)
(caption "Two number lines from 0 to 1.")
```

```check
(choice
  (ask "Which number line shows the interval from 0 to 1 in 4 equal parts?")
  (right "A")
  (wrong "B"
    "Line B has 4 parts too, but they are not the same length. Equal parts need marks the same distance apart.")
  (wrong "Both"
    "Both have 4 parts. On line B the spaces have different lengths, so its parts are not equal.")
  (hint "Look at the spaces between the marks. Are they all the same length?"))
```

---

```check
(number
  (ask "Lin wants the interval from 0 to 1 in 6 equal parts. She has drawn the marks at 0 and 1. How many more marks does she draw?")
  (answer 5) (from "6 - 1")
  (wrong-if 6 "6 more marks would make 7 spaces. She needs 1 mark fewer than the number of parts.")
  (wrong-if 7 "7 is all the marks, with 0 and 1. She has drawn those 2 already.")
  (hint "1 mark inside makes 2 parts. 2 marks make 3 parts."))
```

So: to cut the interval from 0 to 1 into equal parts, space the marks
evenly and count the spaces.
