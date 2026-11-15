# Fractions

```lesson
(objective "Write a fraction for part of a whole and say what its two numbers stand for.")
(minutes 20)
(keywords "fraction" "numerator" "denominator")
```

A fraction says how much of a whole you have, using two numbers.

A **fraction** names part of a whole that is cut into equal parts. A
pizza cut into 8 equal slices, with 3 slices left, has $3/8$ left:
"three eighths".

```figure
(define s (slider 's 0 8 3 "Parts shaded" 1))
(frac-bar 0 8 s 'warm (string-append (fmt s 0) "/8"))
(caption "A whole cut into 8 equal parts.")
```

```check
(fraction
  (ask "A bar of 5 equal pieces. You eat 2. What fraction of the bar did you eat?")
  (answer 2 5)
  (wrong-if (3 5) "3/5 is the part that is left. You ate 2 of the 5 pieces: 2/5.")
  (wrong-if (2 3) "The bottom number counts all the pieces in the whole bar, 5, not the pieces left over.")
  (hint "How many pieces in the whole bar? How many did you eat?"))
```

---

## The top and the bottom

The bottom number is the **denominator**: how many equal parts the
whole is cut into. The top number is the **numerator**: how many of
those parts you have.

$$ 3/8 $$

In $3/8$, the numerator is 3 and the denominator is 8.

```check
(choice
  (ask "In the fraction" (math "5/12") ", what does the 12 tell you?")
  (right "The whole is cut into 12 equal parts")
  (wrong "You have 12 parts" "The number of parts you have is the top number, 5. The bottom number, 12, says how many equal parts make the whole.")
  (wrong "There are 12 parts left over" "The 12 counts every part of the whole, not what is left. 12 - 5 = 7 parts are left.")
  (hint "The bottom number is the denominator."))
```

---

## Bigger denominator, smaller parts

Cut the same whole into more parts and each part is smaller. One
quarter ($1/4$) of a pizza is more than one eighth ($1/8$), though 8 is
more than 4.

```figure
(frac-bar 0 4 1 'warm "1/4")
(frac-bar 1 8 1 'cool "1/8")
(caption "The same whole: a quarter and an eighth.")
```

```check
(choice
  (ask "Which is more:" (math "1/3") "of a bill or" (math "1/5") "of the same bill?")
  (right "1/3" (true "1/3 > 1/5"))
  (wrong "1/5" (false "1/5 > 1/3") "5 is more than 3, but cutting into 5 parts makes each part smaller. A third is a bigger share than a fifth.")
  (wrong "They are the same" (false "1/3 = 1/5") "Both are 1 part, but the parts are different sizes: thirds are bigger than fifths.")
  (hint "Split one bill among 3 people, or among 5. Who gets more each?"))
```

---

## A whole, and more than a whole

When the top and bottom are the same, you have the whole: $4/4 = 1$.
When the top is bigger, you have more than one whole: $5/4$ is one
whole and a quarter, written $1 1/4$.

```check
(choice
  (ask "A recipe uses" (math "6/6") "of a bag of flour. How much is that?")
  (right "The whole bag" (true "6/6 = 1"))
  (wrong "6 bags" "6/6 is 6 parts out of 6 equal parts: all of one bag, not 6 bags.")
  (wrong "None of the bag" "6 parts are used, out of 6. That is all of it, not none.")
  (hint "What do you have when you take every part?"))
```

---

## Practice

```check
(fraction
  (ask "A week has 7 days. You work 4 of them. What fraction of the week do you work?")
  (answer 4 7)
  (wrong-if (3 7) "3/7 is the days you do not work. You work 4 of the 7 days.")
  (wrong-if (7 4) "The whole goes on the bottom: 7 days. The part you work goes on top: 4/7.")
  (hint "The whole week is the denominator."))
```

```check
(choice
  (ask "A tank holds 10 equal measures. It has 7 in it. What fraction is empty?")
  (right "3/10" (true "10 - 7 = 3"))
  (wrong "7/10" "7/10 is the part that is full. The empty part is 10 - 7 = 3 measures: 3/10.")
  (wrong "3/7" "The whole tank is 10 measures, so the denominator is 10, not 7.")
  (hint "How many measures are empty, out of how many?"))
```

```check
(fraction
  (ask "Two friends split a bill equally. What fraction does each pay?")
  (answer 1 2)
  (wrong-if (2 1) "The whole bill is split into 2 equal parts, so the bottom number is 2. Each pays 1 part: 1/2.")
  (hint "Into how many equal parts is the bill cut?"))
```

A fraction is parts you have over the number of equal parts in the
whole: numerator over denominator.
