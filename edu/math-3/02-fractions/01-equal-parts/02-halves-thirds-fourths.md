# Halves, thirds and fourths

```lesson
(objective "Name one part of a shape cut into 2, 3 or 4 equal parts.")
(standards "3.G.A.2")
(minutes 15)
```

You can name 1 part of a shape cut into 2, 3 or 4 equal parts.

The name of a part comes from how many equal parts there are. Move
the slider and watch the name change.

```figure
(define n (slider 'parts 2 4 2 "Equal parts" 1))
(define nm (cond ((= n 2) "1 half") ((= n 3) "1 third") (else "1 fourth")))
(frac-bar-at 40 30 240 40 n 1 'warm)
(frac-circle 160 140 48 n 1 'warm)
(caption (string-append (fmt n 0) " equal parts: each part is " nm))
```

```check
(choice
  (ask "A bar is cut into 3 equal parts. What is 1 part called?")
  (right "1 third")
  (wrong "1 half"
    "A half is 1 of 2 equal parts. This bar has 3 equal parts, so each part is a third.")
  (wrong "1 fourth"
    "A fourth is 1 of 4 equal parts. Count again: this bar has 3 equal parts.")
  (hint "Count the equal parts. 3 parts give the name third."))
```

---

## Halves

When a whole is cut into 2 equal parts, each part is **1 half**.
2 halves make the whole.

```figure
(frac-bar-at 40 40 240 40 2 1 'warm)
(label 100 110 "1 half" 'body)
(label 220 110 "1 half" 'body)
(fr-square 120 130 80 2 'tri 1 'cool)
(caption "Each shape is cut into 2 equal parts.")
```

```check
(number
  (ask "How many halves make 1 whole?")
  (answer 2)
  (wrong-if 1 "1 half is only 1 of the 2 equal parts. You need both parts to make the whole.")
  (wrong-if 4 "4 equal parts are fourths, not halves. A whole has 2 halves.")
  (hint "Halves come from cutting a whole into how many equal parts?"))
```

---

## Thirds and fourths

When a whole is cut into 3 equal parts, each part is **1 third**.
3 thirds make the whole.

When a whole is cut into 4 equal parts, each part is **1 fourth**.
You can also say **1 quarter**. 4 fourths make the whole.

```figure
(frac-bar-at 40 30 240 36 3 1 'warm)
(label 80 86 "1 third" 'small)
(frac-bar-at 40 120 240 36 4 1 'cool)
(label 70 176 "1 fourth" 'small)
(caption "1 part of each bar is shaded.")
```

```check
(number
  (ask "How many fourths make 1 whole?")
  (answer 4)
  (wrong-if 3 "3 equal parts are thirds. Fourths come from 4 equal parts, so 4 fourths make the whole.")
  (wrong-if 1 "1 fourth is just 1 part. The whole has 4 of them.")
  (hint "A fourth is 1 of how many equal parts?"))
```

---

## Only equal parts get these names

A part is a third only if all 3 parts are the same size. Look at
this circle. It has 3 parts, but they are not equal.

```figure
(fr-pie 160 110 80 '(0.5 0.75) 1 'warm)
(caption "A circle cut into 3 parts that are not equal.")
```

```check
(choice
  (ask "Is the shaded part 1 third of the circle?")
  (right "No: the 3 parts are not the same size")
  (wrong "Yes: the circle has 3 parts"
    "Counting 3 parts is not enough. A third is 1 of 3 equal parts, and these parts are not equal.")
  (hint "Is the shaded part the same size as each other part?"))
```

---

## Worked example

```example
(example
(problem "A square is cut into 4 equal parts. 1 part is shaded. Name the shaded part.")
(step "Check that the parts are equal: they are all the same size.")
(step "Count the equal parts: there are 4.")
(step "1 of 4 equal parts is 1 fourth.")
(answer "The shaded part is 1 fourth (or 1 quarter) of the square."))
```

```example
(example
(problem "A circle is cut into 2 equal parts. 1 part is shaded. Name the shaded part.")
(step "Check that the parts are equal: they are the same size.")
(step "Count the equal parts: there are 2.")
(step (choice (ask "So what is the shaded part?")
  (right "1 half")
  (wrong "1 second"
    "We do not say second for this. 1 of 2 equal parts is called 1 half.")))
(answer "The shaded part is 1 half of the circle."))
```

---

## Practice

```figure
(label 60 40 "A" 'body 'bold)
(frac-circle 60 105 45 4 1 'warm)
(label 160 40 "B" 'body 'bold)
(fr-cuts 120 60 80 90 (fr-even 3) 1 'warm #f)
(label 260 40 "C" 'body 'bold)
(fr-cuts 220 60 80 90 '(0.5) 1 'warm #t)
```

```check
(choice
  (ask "Which shape has 1 third shaded?")
  (right "B")
  (wrong "A"
    "Shape A is cut into 4 equal parts. Its shaded part is 1 fourth, not 1 third.")
  (wrong "C"
    "Shape C is cut into 2 equal parts. Its shaded part is 1 half.")
  (hint "A third is 1 of 3 equal parts. Which shape has 3 equal parts?"))
```

---

```check
(text
  (ask "A pizza is cut into 4 equal parts. You eat 1 part. What do you call the part you ate? (1 ...)")
  (accept "fourth") (accept "1 fourth") (accept "one fourth") (accept "a fourth")
  (accept "quarter") (accept "1 quarter") (accept "one quarter") (accept "a quarter") (accept "1/4")
  (wrong-if "third" "A third is 1 of 3 equal parts. The pizza has 4 equal parts.")
  (wrong-if "1 third" "A third is 1 of 3 equal parts. The pizza has 4 equal parts.")
  (wrong-if "half" "A half is 1 of 2 equal parts. The pizza has 4 equal parts.")
  (wrong-if "1 half" "A half is 1 of 2 equal parts. The pizza has 4 equal parts.")
  (hint "Count the equal parts of the pizza.")
  (hint "4 equal parts: each one is called a ..."))
```

```check
(number
  (ask "A ribbon is cut into thirds. How many equal parts are there?")
  (answer 3)
  (wrong-if 2 "2 equal parts are halves. Thirds means 3 equal parts.")
  (wrong-if 4 "4 equal parts are fourths. Thirds means 3 equal parts.")
  (hint "The word third sounds like which number?"))
```

So: 1 of 2 equal parts is 1 half, 1 of 3 is 1 third, and 1 of 4 is 1
fourth.
