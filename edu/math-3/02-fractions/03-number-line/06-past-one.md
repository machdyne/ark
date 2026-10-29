# Past 1

```lesson
(objective "Place fractions greater than 1, such as 5/4, on a number line.")
(standards "3.NF.A.2b")
(minutes 20)
```

Fractions can be greater than 1. You place them the same way: count
parts from 0.

Keep counting by fourths past 1: $4/4$ is at 1, then $5/4$, $6/4$,
$7/4$, $8/4$. Move the slider.

```figure
(define k (slider 'k 1 8 5 "Fourths" 1))
(fr-line 30 290 130 2 4 'whole)
(for-range 0 k (lambda (i) (nl-jump (/ i 4) (/ (+ i 1) 4) 'warm)))
(nl-mark (/ k 4) 'warm)
(math 160 50 (fr-s k 4) 28)
(caption (string-append (fmt k 0) " jumps of 1/4 from 0"))
```

```check
(fraction
  (ask "You count by fourths from 0. Where are you after 7 jumps?")
  (answer 7 4) (true "7 * 1/4 = 7/4")
  (wrong-if (7 8) "The line from 0 to 2 has 8 parts, but each part is still 1/4 of 1 whole. The denominator is 4.")
  (wrong-if (3 4) "3/4 is 3 parts from 0. After 4 fourths you are at 1, and you keep counting: 5, 6, 7.")
  (hint "Count on from 4/4 at 1: 5/4, 6/4, ...")
  (hint "7 jumps of 1/4."))
```

---

## The whole is still 0 to 1

On a line from 0 to 2, each whole is cut into 4 parts. That makes 8
parts in all. But each part is still $1/4$, because the whole is 0 to
1.

```figure
(fr-line 30 290 120 2 4 'frac)
(rect 30 85 130 8 'cool)
(frame 30 85 130 8 'ink 1)
(label 95 78 "1 whole" 'small)
(caption "From 0 to 2 in fourths.")
```

```check
(choice
  (ask "A line from 0 to 2 has 8 equal parts. What is the size of each part?")
  (right "1/4: each whole has 4 parts")
  (wrong "1/8: there are 8 parts"
    "The denominator counts the parts in 1 whole, from 0 to 1. Here 1 whole has 4 parts, so each part is 1/4.")
  (hint "How many parts are there from 0 to 1?"))
```

---

## Worked example

```example
(example
(problem "Place 5/3 on a number line.")
(step "The denominator is 3: cut each whole into 3 equal parts.")
(step "5 parts is more than 3 parts, so you need a line past 1. Draw 0 to 2.")
(step "Count 5 parts of 1/3 from 0. You pass 1 at 3/3, then go 2 more.")
(answer "5/3 is 2 parts past 1."))
```

```example
(example
(problem "Place 3/2 on a number line.")
(step "Cut each whole into 2 equal parts.")
(step (choice (ask "Count 3 parts of 1/2 from 0. Where do you land?")
  (right "Halfway between 1 and 2")
  (wrong "Between 0 and 1"
    "2 halves already reach 1. The 3rd half goes past 1.")
  (wrong "At 3"
    "Each part is only 1/2. 3 halves is much less than 3 wholes.")))
(answer "3/2 is halfway between 1 and 2."))
```

---

## Practice

```figure
(fr-line 30 290 120 2 3 'whole)
(nl-mark (/ 4 3) 'warm "K")
(caption "A number line from 0 to 2 in equal parts.")
```

```check
(fraction
  (ask "What fraction is at point K?")
  (answer 4 3) (equivalent) (true "4 * 1/3 = 4/3")
  (wrong-if (4 6) "There are 6 parts from 0 to 2. But the denominator counts the parts in 1 whole: 3.")
  (wrong-if (1 3) "K is 1 part past 1. Count all the parts from 0, not from 1.")
  (wrong-if (5 3) "That counts the mark at 0. Count the parts from 0 to K: 4.")
  (hint "How many parts are there from 0 to 1?")
  (hint "Count the parts from 0 to K."))
```

---

```check
(choice
  (ask "Is" (math "7/6") "less than 1 or greater than 1?")
  (right "Greater than 1")
  (wrong "Less than 1"
    "6/6 is at 1. 7/6 is 1 more sixth, so it is past 1.")
  (hint "Where is 6/6?"))
```

```check
(number
  (ask "How many parts of" (math "1/8") "do you count from 0 to reach" (math "10/8") "?")
  (answer 10)
  (wrong-if 2 "2 is how many eighths past 1. Count from 0: 8 to reach 1, then 2 more.")
  (hint "The numerator counts the parts from 0."))
```

So: to place a fraction greater than 1, like $5/4$, count parts of
$1/4$ from 0 and keep going past 1.
