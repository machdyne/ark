# Shaded parts

```lesson
(objective "Write the fraction of a bar or a circle that is shaded.")
(standards "3.NF.A.1")
(minutes 20)
```

You can write the fraction of a bar or a circle that is shaded.

Do it in 3 steps:

1. Check that the parts are equal.
2. Count all the equal parts. That is the denominator.
3. Count the shaded parts. That is the numerator.

```figure
(frac-circle 160 110 90 6 4 'warm)
(caption "A circle cut into 6 equal parts.")
```

```check
(fraction
  (ask "What fraction of the circle is shaded?")
  (answer 4 6) (equivalent) (true "4/6 = 4 * 1/6")
  (wrong-if (4 2) "That compares the shaded parts with the parts that are not shaded. The denominator counts all 6 equal parts.")
  (wrong-if (2 6) "2/6 is the part that is not shaded. Count the shaded parts for the numerator.")
  (hint "Count all the equal parts first.")
  (hint "There are 6 equal parts. How many are shaded?"))
```

---

## All the parts, not the rest

The denominator counts all the equal parts: the shaded ones and the
others. A common mistake is to count only the parts that are not
shaded.

```figure
(frac-bar-at 40 60 240 50 8 3 'warm)
(label 85 135 "3 shaded" 'small)
(label 205 135 "5 not shaded" 'small)
(caption "8 equal parts in all.")
```

```check
(choice
  (ask "What fraction of this bar is shaded?")
  (right "3/8")
  (wrong "3/5"
    "5 counts only the parts that are not shaded. The denominator counts all the equal parts, and there are 8.")
  (wrong "5/8"
    "5/8 is the part that is not shaded. The numerator counts the shaded parts: 3.")
  (hint "How many equal parts are there in all?"))
```

---

## Shaded parts in any place

The shaded parts do not have to be side by side. Count them wherever
they are.

```figure
(frac-circle 90 110 75 4 0 'warm)
(wedge 90 110 75 90 0 'warm)
(wedge 90 110 75 -90 -180 'warm)
(ring 90 110 75 'ink 1.5)
(line 15 110 165 110 'paper 3)
(line 90 35 90 185 'paper 3)
(line 15 110 165 110 'ink 1)
(line 90 35 90 185 'ink 1)
(frac-bar-at 190 40 40 160 1 0 'warm)
(rect 190 40 40 40 'warm)
(rect 190 120 40 40 'warm)
(rect 190 160 40 40 'warm)
(frame 190 40 40 160 'ink 1.5)
(for-range 1 4 (lambda (i) (line 190 (+ 40 (* 40 i)) 230 (+ 40 (* 40 i)) 'paper 3) (line 190 (+ 40 (* 40 i)) 230 (+ 40 (* 40 i)) 'ink 1)))
(label 90 210 "A" 'body 'bold)
(label 210 220 "B" 'body 'bold)
```

```check
(fraction
  (ask "What fraction of circle A is shaded?")
  (answer 2 4) (equivalent) (true "2/4 = 2 * 1/4")
  (wrong-if (2 2) "The denominator counts all the equal parts, shaded or not: 4.")
  (hint "Count all the equal parts of circle A, then the shaded ones."))
```

```check
(fraction
  (ask "What fraction of bar B is shaded?")
  (answer 3 4) (equivalent) (true "3/4 = 3 * 1/4")
  (wrong-if (1 4) "1/4 is the part that is not shaded. Count every shaded part, even when they are apart.")
  (wrong-if (3 1) "The denominator counts all the equal parts: 4. The 3 shaded parts go above the line.")
  (hint "Bar B stands up. Count all its equal parts.")
  (hint "4 equal parts. How many are shaded?"))
```

---

## Worked example

```example
(example
(problem "A circle is cut into 8 equal parts. 5 are shaded. What fraction is shaded?")
(step "The parts are equal.")
(step "Count all the equal parts: 8. The denominator is 8.")
(step "Count the shaded parts: 5. The numerator is 5.")
(answer "5/8 of the circle is shaded."))
```

```example
(example
(problem "A bar is cut into 3 equal parts. 2 are shaded. What fraction is shaded?")
(step "Count all the equal parts: 3. The denominator is 3.")
(step (choice (ask "What fraction is shaded?")
  (right "2/3")
  (wrong "2/1"
    "1 is the part that is not shaded. The denominator counts all 3 equal parts.")))
(answer "2/3 of the bar is shaded."))
```

---

## Practice

```figure
(frac-circle 160 110 90 8 7 'cool)
(caption "A circle cut into equal parts.")
```

```check
(fraction
  (ask "What fraction of the circle is shaded?")
  (answer 7 8) (equivalent) (true "7/8 = 7 * 1/8")
  (wrong-if (7 1) "1 is the part that is not shaded. Count all the equal parts for the denominator.")
  (wrong-if (1 8) "1/8 is the part that is not shaded. Count the shaded parts.")
  (hint "There are 8 equal parts."))
```

---

```figure
(fr-cuts 40 60 240 60 '(0.5 0.75) 2 'warm #f)
(caption "A bar cut into 3 parts. 2 are shaded.")
```

```check
(choice
  (ask "Can you say 2/3 of this bar is shaded?")
  (right "No: the 3 parts are not equal")
  (wrong "Yes: 2 of 3 parts are shaded"
    "A fraction counts equal parts. Here 1 part is half the bar, so the parts are not thirds.")
  (hint "Is every part the same size?"))
```

So: count all the equal parts for the denominator and the shaded
parts for the numerator.
