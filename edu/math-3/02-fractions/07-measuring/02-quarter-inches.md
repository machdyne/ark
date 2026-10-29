# Quarter inches

```lesson
(objective "Measure a length to the nearest quarter inch with a ruler.")
(standards "3.MD.B.4")
(minutes 20)
(keywords "quarter inch")
```

You can measure a length to the nearest quarter inch.

Many rulers cut each inch into 4 equal parts. The length of 1 of those
parts is a **quarter inch**: $1/4$ inch.

The marks have 3 lengths. The longest mark is the inch. The middle
mark is the half inch. The short marks are the quarters.

```figure
(fr-ruler 40 100 4 60 4)
(line 100 60 100 98 'ink 1)
(label 100 52 "1 inch" 'small)
(line 130 75 130 98 'ink 1)
(label 130 67 "1 1/2" 'small)
(line 175 85 175 98 'ink 1)
(label 175 77 "2 1/4" 'small)
(caption "A ruler in quarter inches.")
```

```check
(number
  (ask "How many quarter inches make 1 inch?")
  (answer 4) (true "4 * 1/4 = 1")
  (wrong-if 2 "2 parts make halves. A quarter is 1 of 4 equal parts, so 4 quarters make an inch.")
  (wrong-if 3 "There are 3 short and middle marks inside an inch, but 4 spaces. Count the spaces.")
  (hint "Count the spaces from 0 to 1, not the marks."))
```

---

## Reading quarters

Count the quarters past the last whole inch. 1 quarter past 2 is
$2 1/4$. 2 quarters past 2 is the half mark: $2 1/2$. 3 quarters past
2 is $2 3/4$.

```figure
(fr-ruler 40 110 4 60 4)
(rect 40 80 165 20 'cool)
(frame 40 80 165 20 'ink 1)
(caption "A bar on a ruler, starting at 0.")
```

```check
(number
  (ask "How long is this bar, in inches?")
  (answer 2.75) (unit "inches") (from "2 + 3/4")
  (wrong-if 3 "The bar does not reach the 3. It stops 1 quarter before it.")
  (wrong-if 2.5 "2 1/2 is the middle mark. The bar goes 1 more quarter past it.")
  (wrong-if 2.3 "2.3 is not 2 and 3 quarters. Write the quarters as a fraction: 2 3/4 inches.")
  (hint "Count the quarters past 2.")
  (hint "Type it as a mixed number, like 2 1/4."))
```

---

## To the nearest quarter inch

Find the quarter-inch mark nearest to the end. Move the slider.

```figure
(define L (slider 'len 1.1 3.9 1.6 "Length" 0.1))
(define q (/ (round (* 4 L)) 4))
(fr-ruler 40 110 4 60 4)
(rect 40 80 (* 60 L) 20 'warm)
(frame 40 80 (* 60 L) 20 'ink 1)
(arrow (+ 40 (* 60 q)) 60 (+ 40 (* 60 q)) 78 'ink 1.5)
(text 160 190 (string-append "Nearest quarter inch: " (fr-mixed (round (* 4 q)) 4)) 'centre 'body 'bold)
```

```check
(number
  (ask "A bar ends a little past the 1 1/2 mark, nearer to it than to 1 3/4. What is its length to the nearest quarter inch?")
  (answer 1.5) (unit "inches")
  (wrong-if 1.75 "1 3/4 is farther from the end. The nearest mark is the half mark, 1 1/2.")
  (wrong-if 2 "2 is much farther away. Choose the mark nearest the end.")
  (hint "Which mark is the end closest to?")
  (hint "Type it as a mixed number, like 2 1/4."))
```

---

## Worked example

```example
(example
(problem "A pencil starts at 0 and ends at the 1st short mark after 3. How long is it?")
(step "The last whole inch it passes is 3.")
(step "The 1st short mark after 3 is 1 quarter past 3.")
(answer "The pencil is 3 1/4 inches long."))
```

```example
(example
(problem "A feather starts at 0. Its tip is between 1 1/2 and 1 3/4, closer to 1 3/4. How long is it, to the nearest quarter inch?")
(step "The marks around the tip are 1 1/2 and 1 3/4.")
(step (choice (ask "Which mark is nearer?")
  (right "1 3/4")
  (wrong "1 1/2"
    "The tip is closer to 1 3/4. Choose the nearest mark.")))
(answer "The feather is about 1 3/4 inches long."))
```

---

## Practice

```figure
(fr-ruler 40 110 4 60 4)
(rect 40 80 74 20 'warm)
(frame 40 80 74 20 'ink 1)
(caption "A twig on a ruler, starting at 0.")
```

```check
(number
  (ask "How long is the twig, to the nearest quarter inch?")
  (answer 1.25) (unit "inches")
  (wrong-if 1 "The twig goes past 1, near the first short mark after it.")
  (wrong-if 1.5 "1 1/2 is the middle mark. The twig ends before it, near 1 1/4.")
  (hint "Count the quarters past 1.")
  (hint "Type it as a mixed number, like 2 3/4."))
```

```check
(choice
  (ask "Which is longer:" (math "2 1/4") "inches or" (math "2 3/4") "inches?")
  (right "2 3/4 inches" (true "2 3/4 > 2 1/4"))
  (wrong "2 1/4 inches" (false "2 1/4 > 2 3/4")
    "Both are 2 inches and some quarters. 3 quarters are more than 1 quarter.")
  (hint "Count the quarters past 2."))
```

So: on a ruler in quarters, count the quarter inches past the last
whole inch, and choose the mark nearest the end.
