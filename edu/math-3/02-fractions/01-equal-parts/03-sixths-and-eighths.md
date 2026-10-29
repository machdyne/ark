# Sixths and eighths

```lesson
(objective "Name one part of a shape cut into 6 or 8 equal parts.")
(standards "3.G.A.2")
(minutes 15)
(keywords "sixth (of a whole)" "eighth (of a whole)")
```

You can name 1 part of a shape cut into 6 or 8 equal parts.

This bar is cut into 6 equal parts. Each part is **1 sixth** of the
whole. 6 sixths make the whole bar.

```figure
(frac-bar-at 40 40 240 40 6 1 'warm)
(label 60 100 "1 sixth" 'small)
(frac-circle 160 165 45 6 1 'warm)
(caption "Each shape is cut into 6 equal parts. 1 is shaded.")
```

```check
(number
  (ask "How many sixths make 1 whole?")
  (answer 6)
  (wrong-if 1 "1 sixth is only 1 part. The whole has 6 equal parts, so 6 sixths make it.")
  (wrong-if 3 "3 equal parts are thirds. Sixths come from 6 equal parts.")
  (hint "A sixth is 1 of how many equal parts?"))
```

---

## Eighths

This bar is cut into 8 equal parts. Each part is **1 eighth** of the
whole. 8 eighths make the whole bar.

```figure
(frac-bar-at 40 40 240 40 8 1 'cool)
(label 55 100 "1 eighth" 'small)
(fr-square 115 125 90 8 'tri 1 'cool)
(caption "Each shape is cut into 8 equal parts. 1 is shaded.")
```

```check
(choice
  (ask "A square is cut into 8 equal parts. What is 1 part called?")
  (right "1 eighth")
  (wrong "1 sixth"
    "A sixth is 1 of 6 equal parts. This square has 8 equal parts, so each part is an eighth.")
  (wrong "1 fourth"
    "A fourth is 1 of 4 equal parts. Count again: there are 8 equal parts.")
  (hint "The name of the part comes from the number of equal parts."))
```

---

## Which name?

Choose a number of equal parts under the figure. The name of each
part follows the number of equal parts.

```figure
(define c (choice 'parts '("2" "3" "4" "6" "8") "Equal parts"))
(define n (list-ref '(2 3 4 6 8) c))
(define nm (list-ref '("half" "third" "fourth" "sixth" "eighth") c))
(frac-bar-at 40 50 240 44 n 1 'warm)
(label 160 140 (string-append "Each part is 1 " nm ".") 'body 'bold)
(caption (string-append (fmt n 0) " " (if (= n 2) "halve" nm) "s make 1 whole."))
```

```check
(choice
  (ask "A whole is cut into 6 equal parts. What is each part called?")
  (right "1 sixth")
  (wrong "1 eighth"
    "An eighth is 1 of 8 equal parts. Here there are 6 equal parts, so each part is a sixth.")
  (wrong "1 third"
    "A third is 1 of 3 equal parts. 6 equal parts make sixths.")
  (hint "6 equal parts. Which name sounds like six?"))
```

---

## Worked example

```example
(example
(problem "A rectangle is cut into 8 parts. All 8 parts are the same size. 1 part is shaded. Name it.")
(step "Check that the parts are equal: they are all the same size.")
(step "Count the equal parts: there are 8.")
(step "1 of 8 equal parts is 1 eighth.")
(answer "The shaded part is 1 eighth of the rectangle."))
```

```example
(example
(problem "A circle is cut into 6 equal parts. 1 part is shaded. Name it.")
(step "Check that the parts are equal: they are all the same size.")
(step "Count the equal parts: there are 6.")
(step (choice (ask "So what is the shaded part?")
  (right "1 sixth")
  (wrong "1 eighth"
    "An eighth is 1 of 8 equal parts. This circle has 6 equal parts.")))
(answer "The shaded part is 1 sixth of the circle."))
```

---

## Practice

```figure
(label 60 30 "A" 'body 'bold)
(frac-circle 60 100 50 8 1 'warm)
(label 160 30 "B" 'body 'bold)
(fr-pie 160 100 45 '(0.1 0.3 0.5 0.6 0.8) 1 'warm)
(label 260 30 "C" 'body 'bold)
(frac-circle 260 100 45 6 1 'warm)
(label 60 175 "8 parts" 'small)
(label 160 175 "6 parts" 'small)
(label 260 175 "6 parts" 'small)
```

```check
(choice
  (ask "Which circle has 1 sixth shaded?")
  (right "C")
  (wrong "A"
    "Circle A has 8 equal parts. Its shaded part is 1 eighth.")
  (wrong "B"
    "Circle B has 6 parts, but they are not the same size. A sixth must be 1 of 6 equal parts.")
  (hint "A sixth is 1 of 6 equal parts. Look at the sizes too."))
```

---

```check
(text
  (ask "A pie is cut into 8 equal parts. What is 1 part called? (1 ...)")
  (accept "eighth") (accept "1 eighth") (accept "one eighth") (accept "an eighth") (accept "1/8")
  (wrong-if "sixth" "A sixth is 1 of 6 equal parts. The pie has 8 equal parts.")
  (wrong-if "1 sixth" "A sixth is 1 of 6 equal parts. The pie has 8 equal parts.")
  (wrong-if "fourth" "A fourth is 1 of 4 equal parts. The pie has 8 equal parts.")
  (wrong-if "1 fourth" "A fourth is 1 of 4 equal parts. The pie has 8 equal parts.")
  (hint "Count the equal parts: 8.")
  (hint "8 equal parts: each one is called an ..."))
```

```check
(number
  (ask "How many eighths make 1 whole?")
  (answer 8)
  (wrong-if 1 "1 eighth is only 1 part. The whole has 8 equal parts.")
  (wrong-if 6 "6 equal parts are sixths. Eighths come from 8 equal parts.")
  (hint "An eighth is 1 of how many equal parts?"))
```

So: 1 of 6 equal parts is 1 sixth, and 1 of 8 equal parts is 1
eighth.
