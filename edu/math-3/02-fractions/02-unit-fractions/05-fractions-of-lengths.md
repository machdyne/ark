# Fractions of lengths

```lesson
(objective "Show a fraction of a length with a fraction strip.")
(standards "3.NF.A.1")
(minutes 20)
(keywords "fraction strip")
```

You can show a fraction of a length with a fraction strip.

A **fraction strip** is a strip of paper, 1 whole long, folded or
cut into equal parts. Each part is the same length.

```figure
(frac-bar-at 40 40 240 36 1 0 'warm)
(label 160 63 "1 whole" 'small)
(frac-bar-at 40 100 240 36 4 0 'warm)
(fr-names 40 100 240 36 4)
(frac-bar-at 40 160 240 36 6 0 'warm)
(fr-names 40 160 240 36 6)
(caption "Strips of the same length, folded into 4 and 6 parts.")
```

```check
(choice
  (ask "A fraction strip is folded into 6 parts. How long is each part?")
  (right "Each part is 1/6 of the strip")
  (wrong "Each part is 6 inches"
    "The 6 counts the parts, not inches. 6 equal parts each make 1/6 of the strip's length.")
  (wrong "The parts can be any length"
    "A fraction strip has equal parts. All 6 parts are the same length: 1/6 of the strip.")
  (hint "The parts of a fraction strip are equal."))
```

---

## A fraction of the length

Move the slider. The arrow shows a length along the strip, from its
left end. Read how many parts it covers.

```figure
(define b 8)
(define k (slider 'k 1 8 3 "Eighths" 1))
(frac-bar-at 40 60 240 44 b k 'warm)
(arrow 40 130 (+ 40 (* 30 k)) 130 'ink 2)
(line 40 122 40 138 'ink 1)
(math 160 175 (fr-s k b) 26)
(caption (string-append (fmt k 0) " of 8 equal parts of the length"))
```

```check
(fraction
  (ask "Set the slider to 5. What fraction of the strip's length does the arrow show?")
  (answer 5 8) (true "5/8 = 5 * 1/8")
  (wrong-if (5 3) "3 is the part of the strip the arrow does not cover. The denominator counts all 8 equal parts.")
  (wrong-if (3 8) "3/8 is the part the arrow does not reach. The arrow covers 5 parts.")
  (hint "Count all the parts of the strip, then the parts under the arrow."))
```

---

## Lengths in inches

A strip 8 inches long is folded into 4 equal parts. Each part is 2
inches long, because $8 ÷ 4 = 2$. So $1/4$ of the strip is 2 inches.

```figure
(frac-bar-at 40 60 240 44 4 1 'cool)
(fr-names 40 60 240 44 4)
(for-range 0 9 (lambda (i) (line (+ 40 (* 30 i)) 110 (+ 40 (* 30 i)) (if (even? i) 120 116) 'ink 1)))
(text 40 134 "0" 'centre 'small)
(text 100 134 "2" 'centre 'small)
(text 160 134 "4" 'centre 'small)
(text 220 134 "6" 'centre 'small)
(text 280 134 "8" 'centre 'small)
(caption "An 8-inch strip in 4 equal parts. Marks are inches.")
```

```check
(number
  (ask "How long is" (math "3/4") "of the 8-inch strip?")
  (answer 6) (unit "inches") (from "3 * 8 / 4")
  (wrong-if 3 "3 is the number of parts. Each part is 2 inches long, so 3 parts are longer.")
  (wrong-if 2 "2 inches is 1/4 of the strip. 3/4 is 3 of those parts.")
  (hint "Each fourth of the strip is 2 inches.")
  (hint "3 parts of 2 inches each."))
```

---

## Worked example

```example
(example
(problem "Show 2/3 of a fraction strip.")
(step "The denominator is 3: fold the strip into 3 equal parts.")
(step "The numerator is 2: shade 2 of the parts, starting at one end.")
(answer "The 2 shaded parts are 2/3 of the strip's length."))
```

```example
(example
(problem "Show 3/6 of a fraction strip.")
(step "The denominator is 6: fold the strip into 6 equal parts.")
(step (choice (ask "How many parts do you shade?")
  (right "3")
  (wrong "6"
    "6 parts is the whole strip. The numerator, 3, says how many parts to shade.")))
(answer "The 3 shaded parts are 3/6 of the strip's length."))
```

---

## Practice

```figure
(frac-bar-at 40 70 240 44 3 2 'warm)
(caption "A fraction strip.")
```

```check
(fraction
  (ask "What fraction of the strip's length is shaded?")
  (answer 2 3) (equivalent) (true "2/3 = 2 * 1/3")
  (wrong-if (2 1) "1 is the part that is not shaded. The denominator counts all 3 equal parts.")
  (wrong-if (1 3) "1/3 is the part that is not shaded. Count the shaded parts.")
  (hint "Count the equal parts of the strip."))
```

---

```check
(number
  (ask "A strip is 6 inches long. It is folded into 3 equal parts. How long is 1/3 of the strip?")
  (answer 2) (unit "inches") (from "6 / 3")
  (wrong-if 3 "3 is the number of parts. The 6 inches are shared into 3 equal parts.")
  (wrong-if 6 "6 inches is the whole strip. 1/3 of it is shorter.")
  (hint "Share 6 inches into 3 equal parts."))
```

So: a fraction strip shows a fraction of a length, with every part
the same length.
