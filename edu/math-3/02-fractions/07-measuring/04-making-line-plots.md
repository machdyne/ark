# Making line plots

```lesson
(objective "Make a line plot from a set of measured lengths.")
(standards "3.MD.B.4")
(minutes 25)
```

You can make a line plot from lengths you have measured.

Kim measured 8 crayons to the nearest quarter inch:

$1 1/4$, 2, $1 1/2$, 2, $1 3/4$, $1 1/2$, 2, $1 1/2$ inches.

To make a line plot:

1. Draw a number line that covers the shortest and longest lengths,
   marked in quarters.
2. Put 1 X over the right mark for each crayon.

```figure
(define n (slider 'n 0 8 0 "Crayons placed" 1))
(define data '(5 8 6 8 7 6 8 6))
(define (cnt k l i) (if (or (null? l) (>= i n)) 0 (+ (if (= (car l) k) 1 0) (cnt k (cdr l) (+ i 1)))))
(fr-plot 30 290 170 4 8 4 (list (cnt 4 data 0) (cnt 5 data 0) (cnt 6 data 0) (cnt 7 data 0) (cnt 8 data 0)))
(text 160 220 "Length of crayons (inches)" 'centre 'small)
(if (< n 8) (text 160 40 (string-append "Next: " (fr-mixed (list-ref data n) 4) " inches") 'centre 'body 'bold))
```

```check
(number
  (ask "Place all 8 crayons. How many X marks are over" (math "1 1/2") "?")
  (answer 3)
  (wrong-if 2 "Look again at the list: 1 1/2 comes 3 times.")
  (wrong-if 1 "1 X is over 1 1/4 and 1 over 1 3/4. Over 1 1/2 there are more.")
  (hint "Count how many times 1 1/2 is in the list."))
```

---

## A mark with no X

Every mark between the ends stays on the number line, even when no
length landed there. Kim's plot starts at 1. No crayon is exactly 1
inch, so the mark at 1 has no X.

```check
(choice
  (ask "Lee's line plot goes from 1 to 2 in quarters. None of his crayons is" (math "1 3/4") "inches long. What should the plot show at" (math "1 3/4") "?")
  (right "The mark, with no X above it")
  (wrong "Leave the mark 1 3/4 out of the number line"
    "A number line keeps every mark, the same distance apart. Without 1 3/4, the space from 1 1/2 to 2 would be twice as long as the others.")
  (wrong "1 X, so the mark is not empty"
    "Each X is 1 crayon. No crayon is 1 3/4 inches, so the mark gets no X.")
  (hint "Each X stands for 1 crayon."))
```

---

## Worked example

```example
(example
(problem "Make a line plot of these lengths in half inches: 3, 3 1/2, 3, 4, 3.")
(step "The shortest is 3 and the longest is 4. Mark 3, 3 1/2 and 4.")
(step "3 comes 3 times: 3 X marks over 3.")
(step "3 1/2 comes once and 4 comes once: 1 X over each.")
(answer "3 X over 3, 1 X over 3 1/2, 1 X over 4."))
```

```example
(example
(problem "Make a line plot of these lengths in quarter inches: 2 1/4, 2 3/4, 2 1/4, 2 1/2.")
(step "Mark the number line from 2 1/4 to 2 3/4 in quarters.")
(step (choice (ask "How many X marks go over 2 1/4?")
  (right "2")
  (wrong "1"
    "2 1/4 is in the list twice. Each one gets its own X.")))
(answer "2 X over 2 1/4, 1 X over 2 1/2, 1 X over 2 3/4."))
```

---

## Practice

Leo measured 6 twigs: $2 1/2$, 3, $2 1/2$, $3 1/2$, $2 1/2$, 3 inches.

```check
(number
  (ask "On Leo's line plot, how many X marks go over" (math "2 1/2") "?")
  (answer 3)
  (wrong-if 1 "Each twig gets its own X. 2 1/2 is in the list 3 times.")
  (hint "Count how many times 2 1/2 is in the list."))
```

```check
(number
  (ask "How many X marks are on Leo's line plot in all?")
  (answer 6) (from "3 + 2 + 1")
  (wrong-if 3 "3 is the number of different lengths. Every twig gets an X: 6 twigs.")
  (hint "1 X for each twig."))
```

So: mark the number line in halves or quarters, and put 1 X over the
mark for each length.
