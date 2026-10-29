# Building fractions

```lesson
(objective "Explain a/b as a parts of size 1/b: 3/4 is 3 fourths.")
(standards "3.NF.A.1")
(minutes 20)
```

You can build a fraction from unit fractions: $3/4$ is 3 parts, each
of size $1/4$.

Move the slider to put more fourths into the bar. Count them.

```figure
(define k (slider 'k 1 4 1 "Fourths" 1))
(frac-bar-at 40 50 240 44 4 k 'warm)
(for-range 0 k (lambda (i) (math (+ 70 (* 60 i)) 125 "1/4" 16)))
(math 160 185 (fr-s k 4) 30)
(caption (string-append (fmt k 0) (if (= k 1) " fourth" " fourths") " make " (fr-s k 4) "."))
```

```check
(fraction
  (ask "How do you write 3 fourths as a fraction?")
  (answer 3 4) (true "3/4 = 3 * 1/4")
  (wrong-if (1 4) "1/4 is just 1 fourth. You have 3 of them, so the numerator is 3.")
  (wrong-if (4 3) "The size of each part, fourths, goes below the line. The count, 3, goes above it.")
  (hint "The numerator counts the fourths. The denominator says they are fourths.")
  (hint "3 parts of size 1/4."))
```

---

## Any fraction

Every fraction is built this way. $5/6$ is 5 parts of size $1/6$.
$2/3$ is 2 parts of size $1/3$.

The denominator tells the size of each part. The numerator tells how
many of those parts there are.

```figure
(frac-bar 0 6 5 'warm "5/6")
(fr-names 80 76 216 30 6)
(frame 80 76 216 30 'ink 1)
(frac-bar 2 3 2 'cool "2/3")
(fr-names 80 188 216 30 3)
(frame 80 188 216 30 'ink 1)
```

```check
(choice
  (ask "What is" (math "5/6") "made of?")
  (right "5 parts, each 1/6 of the whole")
  (wrong "6 parts, each 1/5 of the whole"
    "The denominator, 6, gives the size of the parts: sixths. The numerator, 5, says how many sixths.")
  (wrong "5 wholes and 6 parts"
    "5/6 is less than 1 whole. It is 5 small parts, each 1 sixth of the whole.")
  (hint "Which number tells the size of each part?"))
```

---

## Count the unit fractions

To read a fraction, count the unit fractions in it. $4/8$ is 4
eighths: $1/8$, 2 eighths, 3 eighths, 4 eighths.

```check
(number
  (ask "How many parts of size" (math "1/8") "make" (math "7/8") "?")
  (answer 7)
  (wrong-if 8 "8 eighths make the whole bar. 7/8 is 1 eighth less than that.")
  (wrong-if 1 "1 part of size 1/8 is just 1/8. The numerator says how many eighths: 7.")
  (hint "The numerator counts the parts of size 1/8."))
```

---

## Worked example

```example
(example
(problem "Write 2 sixths as a fraction.")
(step "The parts are sixths, so each part is 1/6. The denominator is 6.")
(step "There are 2 of them, so the numerator is 2.")
(answer "2 sixths is 2/6."))
```

```example
(example
(problem "Write 3 eighths as a fraction.")
(step "The parts are eighths, so each part is 1/8.")
(step (choice (ask "What is the fraction?")
  (right "3/8")
  (wrong "8/3"
    "The size of each part, eighths, goes below the line. The count, 3, goes above it.")))
(answer "3 eighths is 3/8."))
```

---

## Practice

```check
(fraction
  (ask "Write 5 eighths as a fraction.")
  (answer 5 8) (true "5/8 = 5 * 1/8")
  (wrong-if (8 5) "The numbers are the wrong way round. Eighths is the size of each part, so 8 goes below the line.")
  (wrong-if (1 8) "1/8 is 1 eighth. You have 5 eighths, so the numerator is 5.")
  (hint "Count: 5. Size of each part: 1/8."))
```

```check
(choice
  (ask "Kim says" (math "2/3") "is 2 parts of size" (math "1/3") ". Ben says it is 3 parts of size" (math "1/2") ". Who is right?")
  (right "Kim")
  (wrong "Ben"
    "Ben swapped the numbers. The denominator, 3, says each part is 1 third. The numerator, 2, says there are 2 of them.")
  (wrong "Both"
    "3 parts of size 1/2 is more than 1 whole, but 2/3 is less than 1 whole. Only Kim is right.")
  (hint "Which number gives the size of each part?"))
```

---

```check
(number
  (ask "How many parts of size" (math "1/4") "make" (math "2/4") "?")
  (answer 2)
  (wrong-if 4 "4 fourths make the whole. 2/4 is only 2 fourths.")
  (hint "The numerator counts the fourths."))
```

So: a fraction like $3/4$ is 3 parts, each of size $1/4$.
