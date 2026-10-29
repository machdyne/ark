# Fractions

```lesson
(objective "Write 1/b for 1 of b equal parts of a whole.")
(standards "3.NF.A.1")
(minutes 20)
(keywords "fraction" "unit fraction")
```

You can write a number for 1 of the equal parts of a whole.

A **fraction** is a number that names equal parts of a whole. You
write 1 fourth as $1/4$. The 4 under the line says the whole has 4
equal parts. The 1 above it says you mean 1 of them.

```figure
(frac-bar-at 80 50 216 44 4 1 'warm)
(math 40 74 "1/4" 22)
(fr-names 80 130 216 30 4)
(frame 80 130 216 30 'ink 1)
(caption "1 of 4 equal parts is 1/4 of the bar.")
```

```check
(choice
  (ask "What does the 4 in" (math "1/4") "tell you?")
  (right "The whole has 4 equal parts")
  (wrong "You take 4 parts"
    "The 4 is under the line. It counts all the equal parts of the whole. The 1 above the line says you take 1.")
  (wrong "The part is 4 inches long"
    "The 4 is not a length. It counts how many equal parts the whole is cut into.")
  (hint "Look at the bar. How many equal parts does it have?"))
```

---

## Writing 1 part

Choose how many equal parts. The figure writes the fraction for 1
part.

```figure
(define c (choice 'parts '("2" "3" "4" "6" "8") "Equal parts"))
(define n (list-ref '(2 3 4 6 8) c))
(define nm (list-ref '("half" "third" "fourth" "sixth" "eighth") c))
(frac-bar-at 80 40 216 44 n 1 'warm)
(math 40 64 (fr-s 1 n) 22)
(frac-circle 160 150 45 n 1 'warm)
(caption (string-append "1 " nm " is written " (fr-s 1 n) "."))
```

```check
(fraction
  (ask "A bar is cut into 6 equal parts. Write the fraction for 1 part.")
  (answer 1 6) (true "1/6 * 6 = 1")
  (wrong-if (6 1) "That has the numbers the wrong way round. The number of equal parts, 6, goes under the line.")
  (wrong-if (1 5) "Count the equal parts again: there are 6. The 6 goes under the line.")
  (hint "The number under the line is the number of equal parts.")
  (hint "1 part, out of 6 equal parts."))
```

---

## Unit fractions

A fraction with 1 above the line is a **unit fraction**. It names 1
equal part of the whole.

$1/2$, $1/3$, $1/4$, $1/6$ and $1/8$ are all unit fractions.

```figure
(frac-bar 0 2 1 'warm "1/2")
(frac-bar 1 3 1 'warm "1/3")
(frac-bar 2 6 1 'warm "1/6")
(frac-bar 3 8 1 'warm "1/8")
```

```check
(choice
  (ask "Which of these is a unit fraction?")
  (right "1/3")
  (wrong "3/4"
    "3/4 has a 3 above the line, so it names 3 parts. A unit fraction names just 1 part.")
  (wrong "4/1"
    "A unit fraction has 1 above the line, not under it. 4/1 has 4 above the line.")
  (hint "A unit fraction names 1 equal part. Look for 1 above the line."))
```

---

## Worked example

```example
(example
(problem "A circle is cut into 8 equal parts. 1 part is shaded. Write the fraction for the shaded part.")
(step "Check that the parts are equal: they are.")
(step "Count all the equal parts: 8. Write 8 under the line.")
(step "You mean 1 part. Write 1 above the line.")
(answer "The shaded part is 1/8 of the circle."))
```

```example
(example
(problem "A square is cut into 3 equal parts. 1 part is shaded. Write the fraction.")
(step "Count all the equal parts: 3. Write 3 under the line.")
(step (choice (ask "What goes above the line?")
  (right "1, for the 1 shaded part")
  (wrong "2, for the parts that are not shaded"
    "Above the line goes the number of parts you mean. You mean the 1 shaded part.")))
(answer "The shaded part is 1/3 of the square."))
```

---

## Practice

```figure
(frac-circle 160 105 85 4 1 'cool)
(caption "A circle cut into equal parts.")
```

```check
(fraction
  (ask "Write the fraction for the shaded part of the circle.")
  (answer 1 4) (equivalent) (true "1/4 * 4 = 1")
  (wrong-if (1 3) "There are 3 parts that are not shaded. But under the line goes all the equal parts: 4.")
  (wrong-if (4 1) "The numbers are the wrong way round. All 4 equal parts go under the line, and the 1 shaded part above it.")
  (hint "Count all the equal parts, shaded or not.")
  (hint "1 part is shaded, out of 4 equal parts."))
```

---

```check
(fraction
  (ask "A ribbon is cut into 2 equal parts. Write the fraction for 1 part.")
  (answer 1 2) (true "1/2 * 2 = 1")
  (wrong-if (2 1) "The numbers are the wrong way round. The 2 equal parts go under the line.")
  (hint "1 of 2 equal parts is 1 half."))
```

```check
(choice
  (ask "A cookie is broken into 3 parts. 1 part is much bigger than the others. Is each part" (math "1/3") "of the cookie?")
  (right "No: the parts are not equal")
  (wrong "Yes: there are 3 parts"
    "A fraction names equal parts. These 3 parts are not the same size, so they are not thirds.")
  (hint "Are all the parts the same size?"))
```

So: 1 of 4 equal parts of a whole is the unit fraction $1/4$, and 1
of 8 equal parts is $1/8$.
