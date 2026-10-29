# Numerator and denominator

```lesson
(objective "Name the numerator and the denominator of a fraction and say what each one counts.")
(standards "3.NF.A.1")
(minutes 20)
(keywords "numerator" "denominator")
```

You can name the 2 numbers of a fraction and say what each one
counts.

The number below the line is the **denominator**. It counts how many
equal parts the whole is cut into.

$$ 1/6 $$

In $1/6$, the denominator is 6. The whole has 6 equal parts.

```figure
(frac-bar-at 40 60 240 44 6 1 'warm)
(math 100 160 "1/6" 30)
(text 130 176 "denominator: 6 equal parts" 'small 'left)
(caption "The denominator counts the equal parts of the whole.")
```

```check
(number
  (ask "What is the denominator of" (math "1/8") "?")
  (answer 8)
  (wrong-if 1 "1 is the number above the line. The denominator is the number below the line.")
  (hint "Look below the line."))
```

---

## The numerator

The number above the line is the **numerator**. It counts how many of
those equal parts you mean.

In $3/4$, the numerator is 3. The whole has 4 equal parts, and you
mean 3 of them.

```figure
(frac-bar-at 40 50 240 44 4 3 'warm)
(math 100 160 "3/4" 30)
(text 130 150 "numerator: 3 parts" 'small 'left)
(text 130 176 "denominator: 4 equal parts" 'small 'left)
(caption "3 of 4 equal parts are shaded.")
```

```check
(number
  (ask "What is the numerator of" (math "5/6") "?")
  (answer 5)
  (wrong-if 6 "6 is below the line, so it is the denominator. The numerator is above the line.")
  (hint "The numerator is the number above the line."))
```

---

## Which is which?

Choose a fraction. Read the numerator and the denominator, and match
them to the bar.

```figure
(define c (choice 'f '("1/2" "2/3" "3/4" "5/6" "3/8") "Fraction"))
(define a (list-ref '(1 2 3 5 3) c))
(define b (list-ref '(2 3 4 6 8) c))
(frac-bar-at 40 40 240 44 b a 'warm)
(math 160 130 (fr-s a b) 30)
(text 160 185 (string-append "numerator " (fmt a 0) ": parts shaded") 'centre 'small)
(text 160 205 (string-append "denominator " (fmt b 0) ": equal parts in all") 'centre 'small)
```

```check
(choice
  (ask "A whole is cut into 8 equal parts. In the fraction, which number is the 8?")
  (right "The denominator")
  (wrong "The numerator"
    "The numerator counts the parts you mean. The number of equal parts in the whole is the denominator.")
  (hint "Which number counts all the equal parts of the whole?"))
```

---

## Worked example

```example
(example
(problem "A bar has 6 equal parts. 5 are shaded. Write the fraction shaded and name its parts.")
(step "Count all the equal parts: 6. That is the denominator.")
(step "Count the shaded parts: 5. That is the numerator.")
(step "Write the numerator above the line and the denominator below it.")
(answer "5/6: the numerator is 5 and the denominator is 6."))
```

```example
(example
(problem "A circle has 8 equal parts. 3 are shaded. Write the fraction shaded.")
(step "Count all the equal parts: 8. That is the denominator.")
(step (choice (ask "What is the numerator?")
  (right "3, the shaded parts")
  (wrong "5, the parts not shaded"
    "The numerator counts the parts you mean. Here you mean the shaded parts: 3.")))
(answer "3/8 of the circle is shaded."))
```

---

## Practice

```check
(choice
  (ask "In" (math "2/3") ", what does the 3 count?")
  (right "The equal parts in the whole")
  (wrong "The shaded parts"
    "The shaded parts are counted by the numerator, 2. The 3 is the denominator: the equal parts in the whole.")
  (wrong "The parts not shaded"
    "A fraction does not count the parts left over. The 3 counts all the equal parts of the whole.")
  (hint "3 is below the line."))
```

```check
(number
  (ask "A pizza is cut into 6 equal slices. You write the fraction for 1 slice. What is its denominator?")
  (answer 6)
  (wrong-if 1 "1 is the numerator: the 1 slice you mean. The denominator counts all 6 equal slices.")
  (hint "The denominator counts all the equal parts."))
```

---

```figure
(frac-bar-at 40 70 240 50 8 3 'cool)
(caption "A bar cut into equal parts.")
```

```check
(fraction
  (ask "Write the fraction of the bar that is shaded.")
  (answer 3 8) (true "3/8 = 3 * 1/8")
  (wrong-if (3 5) "5 is the number of parts not shaded. The denominator counts all the equal parts: 8.")
  (wrong-if (5 8) "5/8 is the part that is not shaded. Count the shaded parts for the numerator.")
  (wrong-if (8 3) "The numbers are the wrong way round. The 8 equal parts are the denominator, below the line.")
  (hint "Count all the equal parts for the denominator.")
  (hint "Count the shaded parts for the numerator."))
```

So: the denominator counts the equal parts of the whole, and the
numerator counts the parts you mean.
