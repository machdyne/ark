# The same whole

```lesson
(objective "Explain with fraction models why a comparison holds only when both fractions refer to the same whole.")
(standards "4.NF.A.2")
(minutes 20)
```

You can explain why 2 fractions can be compared only when they are of
the same whole.

$1/2 > 1/4$ is true for one whole. But look at these 2 strips. The top
strip is short. The bottom strip is 3 times as long. $1/4$ of the long
strip is longer than $1/2$ of the short one. Then toggle the figure to
make the strips the same length.

```figure
(define same (toggle 'same "Same whole" #f))
(frac-bar-at 80 50 (if same 216 72) 30 2 1 'warm)
(math 40 71 "1/2" 22)
(frac-bar-at 80 130 216 30 4 1 'cool)
(math 40 151 "1/4" 22)
(caption (if same "Same whole: 1/2 is more" "Different wholes"))
```

```check
(choice
  (ask "With the strips of different lengths, which shaded part is longer?")
  (right "1/4 of the long strip")
  (wrong "1/2 of the short strip, because 1/2 > 1/4"
    "1/2 > 1/4 holds for the same whole. Here the long strip is 3 times as long, so a fourth of it is longer.")
  (wrong "They are the same length"
    "Look where each shading ends. The fourth of the long strip reaches farther than the half of the short one.")
  (hint "Look at the figure before you toggle it."))
```

---

## Fractions name parts of a whole

A fraction says how much of a whole. It does not say how big the whole
is. So $1/2 > 1/4$ means: half of a whole is more than a quarter of the
same whole. With strips of the same length, $1/2$ is more.

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.NF.A.2: comparisons are valid only when the two fractions refer to the same whole")
```

```check
(choice
  (ask "When is" (math "3/4 > 2/3") "true?")
  (right "When both are fractions of the same whole, or of wholes of the same size")
  (wrong "Always, for any 2 wholes"
    "2/3 of a big cake can be more than 3/4 of a small one. The wholes must be the same size.")
  (wrong "Never: 3 and 4 are bigger numbers"
    "For the same whole, 3/4 = 9/12 and 2/3 = 8/12. So 3/4 > 2/3 is true then.")
  (hint "Think of a big cake and a small cake."))
```

---

## A fair model

A fair model of a comparison uses one whole for both: strips of the same
length, or 2 number lines with the same length from 0 to 1.

```check
(choice
  (ask "Kim draws" (math "2/3") "on a strip 6 cm long and" (math "5/6") "on a strip 12 cm long. Is this a fair model to compare them?")
  (right "No: the strips must be the same length")
  (wrong "Yes: any strips will do"
    "On a longer strip every part is longer. To compare the fractions, the wholes must match.")
  (wrong "Yes: sixths need a longer strip"
    "Sixths can go on a strip of any length: just cut it into 6 equal parts. Use the same length for both.")
  (hint "Are the 2 wholes the same size?"))
```

---

## In word problems

Before you compare, check the wholes. Is it one pizza, or 2 pizzas of
the same size? Then you can compare the fractions. If the pizzas differ
in size, the fractions alone cannot tell you who ate more.

```check
(choice
  (ask "Ali drinks" (math "1/2") "of a small bottle. Bo drinks" (math "1/3") "of a big bottle. Who drinks more?")
  (right "You cannot tell from the fractions: the bottles differ")
  (wrong "Ali: 1/2 > 1/3"
    "1/2 > 1/3 is true for the same whole. Bo's bottle is bigger, so his third might be more.")
  (wrong "Bo: his bottle is bigger"
    "His bottle is bigger, but you do not know by how much. You cannot tell without more facts.")
  (hint "Are the 2 bottles the same size?"))
```

---

## Worked example

```example
(example
  (problem "Mo eats 3/8 of a pizza. Jo eats 1/4 of the same pizza. Who eats more?")
  (step "It is the same pizza, so the whole is the same.")
  (step "1/4 = 2/8.")
  (step "3/8 > 2/8.")
  (answer "Mo eats more."))
```

```example
(example
  (problem "Pam paints 2/3 of a small wall. Tim paints 1/2 of a big wall. Can you say Pam paints more?")
  (step "The walls are not the same size.")
  (step (choice (ask "So can 2/3 > 1/2 tell you who paints more?")
    (right "No: the wholes differ")
    (wrong "Yes: 2/3 is more than 1/2"
      "That is true of the same whole. Tim's wall is bigger, so his half might be more.")))
  (answer "No. The fractions are of different wholes."))
```

---

## Practice

```check
(choice
  (ask "Two equal pans of corn bread. Lee eats" (math "2/6") "of one. Kai eats" (math "1/2") "of the other. Who eats more?")
  (right "Kai" (true "1/2 > 2/6"))
  (wrong "Lee"
    "Lee eats 2 pieces, but 2/6 is less than a half. The pans are the same size, so compare the fractions.")
  (wrong "You cannot tell"
    "Here you can: the pans are the same size. 1/2 = 3/6, which is more than 2/6.")
  (hint "Are the wholes the same size? Then compare 2/6 and 1/2."))
```

```check
(choice
  (ask "A long rope and a short rope. Which could be true?")
  (right "1/4 of the long rope is longer than 1/2 of the short rope")
  (wrong "1/4 of any rope is always shorter than 1/2 of any rope"
    "That is true for the same rope. A fourth of a very long rope can be longer than half of a short one.")
  (wrong "1/2 of the short rope is the same as 1/2 of the long rope"
    "Halves of different ropes are different lengths. The long rope's half is longer.")
  (hint "Think of the 2 strips at the start of the lesson."))
```

---

```check
(choice
  (ask "Eva says" (math "3/5 > 2/5") ". When is she right?")
  (right "When both are fifths of the same whole")
  (wrong "Always, even for wholes of different sizes"
    "2/5 of a long ribbon can be longer than 3/5 of a short one. The wholes must match.")
  (wrong "Never: they are both fifths"
    "For the same whole, 3 fifths are more than 2 fifths. So she is right then.")
  (hint "Fractions compare parts of one whole."))
```

```check
(choice
  (ask "Which model fairly shows" (math "2/3 < 3/4") "?")
  (right "2 strips of the same length, one in thirds, one in fourths")
  (wrong "A strip of 3 cm in thirds and a strip of 4 cm in fourths"
    "The strips are different lengths, so the wholes differ. Use the same length for both.")
  (wrong "3 dots and 4 dots"
    "Dots count parts, not their size. Use one whole cut 2 ways: strips of the same length.")
  (hint "A fair model uses the same whole."))
```

So: a comparison of fractions holds only for the same whole. A fair
model uses one whole, or wholes of the same size.
