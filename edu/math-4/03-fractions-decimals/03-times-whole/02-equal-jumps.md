# Equal jumps and groups

```lesson
(objective "Show a whole number times a unit fraction as equal jumps on a number line and as equal groups of bars.")
(standards "4.NF.B.4a" "4.NF.B.4b")
(minutes 20)
```

You can show a whole number times a fraction with jumps or with equal
groups.

$3 * (1/4)$ means 3 jumps of $1/4$. Start at 0 and jump 3 times. You
land on $3/4$.

```figure
(m4p3-line 30 290 110 1 4 'frac)
(m4p3-jumps 0 3 4 'warm)
(nl-mark (/ 3 4) 'warm)
(caption "3 × 1/4 = 3/4")
```

```check
(fraction
  (ask "You make 5 jumps of" (math "1/6") "from 0. Where do you land?")
  (answer 5 6) (equivalent) (true "5 * 1/6 = 5/6")
  (wrong-if (5 30) "Each jump is 1/6, so each one moves 1 sixth. 5 jumps reach 5 sixths.")
  (wrong-if (6 5) "That swaps the numbers. 5 jumps of 1/6 is 5 sixths.")
  (hint "Count sixths: 1/6, 2/6, ..."))
```

---

## Equal groups

$3 * (1/4)$ is also 3 equal groups, each $1/4$ of a bar. Put the pieces
together: $3/4$.

```figure
(m4p3-groups 20 40 86 30 3 1 4 14 'warm)
(math 160 120 "1/4 + 1/4 + 1/4 = 3/4" 20)
(frac-bar-at 70 160 180 30 4 3 'warm)
(caption "3 groups of 1/4 make 3/4.")
```

```check
(choice
  (ask "Which model shows" (math "4 * (1/5)") "?")
  (right "4 bars, each with 1 fifth shaded" (true "4 * 1/5 = 4/5"))
  (wrong "1 bar with 4 parts, 1 part shaded"
    "That shows 1/4. You need 4 groups of 1 fifth.")
  (wrong "5 bars, each with 1 fourth shaded"
    "That is 5 groups of 1/4. The groups are fifths, and there are 4.")
  (hint "4 groups. What is in each group?"))
```

---

## Groups of a fraction

The groups can hold more than 1 part. Move the sliders: the groups
each hold $a/5$.

```figure
(define n (slider 'n 1 4 2 "Groups" 1))
(define a (slider 'a 1 4 2 "Fifths each" 1))
(m4p3-groups 10 40 68 26 n a 5 8 'warm)
(math 160 140 (string-append (fmt n 0) " * (" (m4p3-s a 5) ") = " (m4p3-s (* n a) 5)) 22)
```

```check
(fraction
  (ask "3 groups, each" (math "2/5") ". How much in all?")
  (answer 6 5) (equivalent) (true "3 * 2/5 = 6/5")
  (wrong-if (6 15) "Each part is still a fifth. 3 groups of 2 fifths is 6 fifths.")
  (wrong-if (5 5) "You added 3 + 2. There are 3 groups of 2 fifths: 2 + 2 + 2.")
  (hint "2/5 + 2/5 + 2/5"))
```

---

## Worked example

```example
(example
  (problem "Show 4 × 1/3 on a number line.")
  (step "Cut each whole into thirds.")
  (step "Start at 0. Make 4 jumps of 1/3.")
  (answer "You land on 4/3, which is 1 1/3."))
```

```example
(example
  (problem "Find 2 × 3/8 with equal groups.")
  (step "2 bars, each with 3 eighths shaded.")
  (step (fraction (ask "How many eighths in all?")
    (answer 6 8) (equivalent) (true "2 * 3/8 = 6/8")
    (wrong-if (6 16) "The parts are eighths. Count them: 6 eighths.")))
  (answer "2 × 3/8 = 6/8."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "6 * (1/8)") ".")
  (answer 6 8) (equivalent) (true "6 * 1/8 = 6/8")
  (wrong-if (6 48) "Only the number of parts grows. Each part is still 1/8.")
  (hint "6 jumps of 1/8."))
```

```check
(fraction
  (ask "Find" (math "4 * (2/3)") ". Write it as a fraction.")
  (answer 8 3) (equivalent) (true "4 * 2/3 = 8/3")
  (wrong-if (8 12) "The parts are thirds. 4 groups of 2 thirds is 8 thirds.")
  (wrong-if (6 3) "You added 4 + 2. Make 4 groups of 2/3: 2 + 2 + 2 + 2.")
  (hint "2/3 + 2/3 + 2/3 + 2/3"))
```

So: a whole number times a fraction is equal jumps on a number line,
or equal groups of the fraction.
