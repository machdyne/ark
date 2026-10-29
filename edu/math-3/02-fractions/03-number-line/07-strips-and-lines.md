# Strips and lines

```lesson
(objective "Match a fraction strip to the same fraction on a number line.")
(standards "3.NF.A.2a" "3.NF.A.2b")
(minutes 20)
```

A fraction strip and a number line can show the same fraction.

Lay a strip along the line, from 0 to 1. The shaded parts reach a
point on the line. That point is the same fraction.

```figure
(define c (choice 'b '("2" "3" "4" "6" "8") "Denominator"))
(define b (list-ref '(2 3 4 6 8) c))
(define a (min b (slider 'a 1 b 1 "Shaded" 1)))
(frac-bar-at 40 40 240 36 b a 'warm)
(line (+ 40 (* a (/ 240 b))) 80 (+ 40 (* a (/ 240 b))) 150 'ink 1)
(fr-line 40 280 160 1 b 'whole)
(nl-mark (/ a b) 'warm)
(math 160 205 (fr-s a b) 22)
(caption "The strip above, the number line below.")
```

```check
(choice
  (ask "A strip in sixths has 4 parts shaded. Which point on a number line matches it?")
  (right "4/6, at the end of the 4th part from 0")
  (wrong "4/6, in the middle of the 4th part"
    "On a strip you see the parts. On a line, a fraction is a point: the end of those parts, a distance from 0.")
  (wrong "6/4"
    "The strip is cut into 6 parts, so the denominator is 6. 4 shaded parts make the numerator 4.")
  (hint "Set the figure to 6 parts with 4 shaded. Follow the line down."))
```

---

## A point, not a part

On a strip, $1/4$ is a whole part you can shade. On a number line,
$1/4$ is a point: the end of the first part, $1/4$ of the way from 0
to 1.

```figure
(frac-bar-at 40 40 240 36 4 1 'warm)
(math 70 26 "1/4" 14)
(line 100 80 100 140 'ink 1)
(fr-line 40 280 150 1 4 'frac)
(nl-mark (/ 1 4) 'warm)
(caption "1/4 on a strip and on a number line.")
```

```check
(choice
  (ask "Where is" (math "1/4") "on the number line?")
  (right "At the first mark after 0")
  (wrong "Over the whole first space"
    "The space is the length 1/4. The fraction on the line is the single point where that length ends.")
  (wrong "At 4"
    "4 is the number of parts in 1 whole. 1/4 is between 0 and 1.")
  (hint "A fraction on a number line is a point."))
```

---

## Worked example

```example
(example
(problem "A strip is cut into 8 parts. 3 are shaded. Show the same fraction on a number line.")
(step "The strip shows 3/8.")
(step "Cut 0 to 1 on the line into 8 equal parts.")
(step "Mark the end of the 3rd part from 0.")
(answer "The point 3/8 matches the strip."))
```

```example
(example
(problem "A point on a line from 0 to 1 in thirds is 2 parts from 0. Draw the strip.")
(step "The point is 2/3.")
(step (choice (ask "What strip matches it?")
  (right "A strip in 3 parts with 2 shaded")
  (wrong "A strip in 2 parts with 3 shaded"
    "The denominator, 3, is the number of parts in the strip. The numerator, 2, is how many are shaded.")))
(answer "A strip in thirds with 2 parts shaded."))
```

---

## Practice

```figure
(frac-bar-at 40 30 240 36 8 5 'warm)
(fr-line 40 280 140 1 8 'none)
(text 40 162 "0" 'centre 'body)
(text 280 162 "1" 'centre 'body)
(nl-mark (/ 4 8) 'ink "A")
(nl-mark (/ 5 8) 'ink "B")
(nl-mark (/ 6 8) 'ink "C")
(caption "A strip and a number line, both from 0 to 1.")
```

```check
(choice
  (ask "Which point shows the same fraction as the strip?")
  (right "B")
  (wrong "A"
    "A is at 4/8. If you counted the mark at 0 as 1, you land here. The strip has 5 parts shaded, so its fraction is 5/8.")
  (wrong "C"
    "C is at 6/8, 1 part past the end of the shaded parts. The strip shows 5 parts: 5/8.")
  (hint "Count the shaded parts. Then count the parts from 0 on the line."))
```

```check
(fraction
  (ask "What fraction do the strip and point B show?")
  (answer 5 8) (equivalent) (true "5 * 1/8 = 5/8")
  (wrong-if (5 3) "3 is the number of parts not shaded. The denominator counts all 8 parts.")
  (wrong-if (5 9) "9 is the number of tick marks on the line. There are 8 parts.")
  (hint "Count all the parts, then the shaded ones."))
```

So: a strip with 3 of 4 parts shaded and the point $3/4$ on a number
line show the same fraction.
