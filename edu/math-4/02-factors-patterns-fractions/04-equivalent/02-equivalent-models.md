# Equivalent models

```lesson
(objective "Show with fraction bars and area models that two fractions are equivalent although the number and the size of the parts differ.")
(standards "4.NF.A.1")
(minutes 25)
```

You can show with models that 2 fractions are equivalent.

Equivalent fractions are the same amount of the same whole. Here are 2
bars of the same length. $2/3$ has 2 big parts shaded. $8/12$ has 8
small parts shaded. The shading ends at the same place.

```figure
(frac-bar 0 3 2 'warm "2/3")
(frac-bar 1 12 8 'cool "8/12")
(line 224 14 224 132 'ink 1)
(caption "2/3 and 8/12 of the same bar")
```

```check
(choice
  (ask "What is the same about" (math "2/3") "and" (math "8/12") "on these bars?")
  (right "The amount of the bar that is shaded" (true "2/3 = 8/12"))
  (wrong "The number of shaded parts"
    "2/3 has 2 shaded parts and 8/12 has 8. The number of parts is different. The amount shaded is the same.")
  (wrong "The size of the parts"
    "A third is much bigger than a twelfth. The parts differ, but both shadings end at the same place.")
  (hint "Look where the shading ends on each bar."))
```

---

## More parts, smaller parts

The twelfths bar has 4 times as many parts as the thirds bar. So each
twelfth is a quarter of the size of a third. 4 twelfths fill 1 third.

$8/12$ has 4 times as many shaded parts, each a quarter of the size. So
it is the same amount.

```check
(number
  (ask "How many twelfths fill one third of the same whole?")
  (answer 4) (from "12 / 3")
  (wrong-if 3 "3 is the number of thirds in the whole. Each third holds 12 ÷ 3 = 4 twelfths.")
  (wrong-if 9 "9 is 12 - 3. Look at the bars: one third lines up with 4 twelfths.")
  (hint "12 twelfths fill 3 thirds. Share them out."))
```

---

## An area model

This rectangle is cut into 5 equal columns. 2 are shaded: $2/5$. Now
cut it across into 2 equal rows. There are 10 equal parts, and 4 are
shaded: $4/10$. The shaded area did not change.

```figure
(define on (toggle 'cut "Cut across" #f))
(m4p2-area 60 30 200 140 2 5 (if on 2 1) 'warm)
(math 160 205 (if on "4/10" "2/5") 26)
```

```check
(fraction
  (ask "A rectangle in 3 columns has 1 column shaded. It is cut across into 4 equal rows. What fraction is shaded now? Count the small parts.")
  (answer 4 12) (true "1/3 = 4/12")
  (wrong-if (1 12) "The shaded column is now cut into 4 parts, so 4 parts are shaded, not 1.")
  (wrong-if (4 3) "Each column now has 4 parts, so the whole has 3 × 4 = 12 parts, not 3.")
  (hint "Parts in the whole: 3 columns × 4 rows. Shaded parts: 1 column × 4 rows."))
```

---

## Try some pairs

Choose a pair. The bars are the same length. When the shadings end at
the same place, the fractions are equivalent.

```figure
(define c (choice 'pair '("1/2 5/10" "3/4 9/12" "2/5 4/10" "1/3 3/12") "Pair"))
(define p (list-ref '((1 2 5 10) (3 4 9 12) (2 5 4 10) (1 3 3 12)) c))
(define a (car p)) (define b (cadr p)) (define d (caddr p)) (define e (cadddr p))
(frac-bar 0 b a 'warm (m4p2-s a b))
(frac-bar 1 e d 'cool (m4p2-s d e))
(label 188 170 (if (= (* a e) (* b d)) "Same place: equivalent" "Not the same: not equivalent") 'small 'bold)
```

```check
(choice
  (ask "Which pair is NOT equivalent?")
  (right "1/3 and 3/12" (false "1/3 = 3/12"))
  (wrong "1/2 and 5/10" (true "1/2 = 5/10")
    "5 tenths fill exactly half the bar. So 1/2 = 5/10.")
  (wrong "3/4 and 9/12" (true "3/4 = 9/12")
    "Each fourth is 3 twelfths, so 3 fourths are 9 twelfths. They are equivalent.")
  (hint "Choose each pair in the figure."))
```

---

## Worked example

```example
(example
  (problem "Show with bars that 3/5 = 6/10.")
  (step "Draw a bar in fifths. Shade 3.")
  (step "Draw a bar of the same length in tenths. Shade 6.")
  (step "Each fifth lines up with 2 tenths, so the shadings end at the same place.")
  (answer "3/5 = 6/10: twice as many parts, each half the size."))
```

```example
(example
  (problem "Show with an area model that 1/4 = 3/12.")
  (step "Cut a rectangle into 4 columns. Shade 1.")
  (step "Cut it across into 3 rows. Now there are 12 equal parts.")
  (step (number (ask "How many of the 12 parts are shaded?")
    (answer 3) (from "1 * 3")
    (wrong-if 1 "The 1 shaded column is now cut into 3 parts. Count them.")))
  (answer "1/4 = 3/12."))
```

---

## Practice

```check
(fraction
  (ask "A bar in halves has 1 part shaded. A bar of the same length is in tenths. How many tenths match the shading? Write the fraction in tenths.")
  (answer 5 10)
  (wrong-if (2 10) "2/10 is less than half. Half of 10 tenths is 5 tenths.")
  (wrong-if (1 10) "1 tenth is much smaller than a half. 5 tenths fill a half.")
  (hint "10 tenths fill the whole bar. How many fill half of it?"))
```

```check
(choice
  (ask "Lin says" (math "4/12") "is more than" (math "1/3") "because 4 parts are more than 1 part. What is wrong?")
  (right "Twelfths are smaller: 4 twelfths fill exactly 1 third" (true "4/12 = 1/3"))
  (wrong "Nothing: 4/12 is more"
    "4 parts are more parts, but each twelfth is a quarter of a third. 4 twelfths fill 1 third exactly.")
  (wrong "1/3 is more, because 3 is less than 12"
    "1/3 is not more. The bars show the shadings end at the same place: they are equal.")
  (hint "How many twelfths fill a third?"))
```

---

```check
(number
  (ask "A rectangle in 3 columns has 2 shaded. You cut it across into 4 rows. How many parts are shaded now?")
  (answer 8) (from "2 * 4")
  (wrong-if 6 "6 is 2 + 4. Each shaded column is cut into 4 parts: 2 × 4 = 8.")
  (wrong-if 12 "12 is all the parts: 3 × 4. Only the 2 shaded columns count: 2 × 4.")
  (hint "Each shaded column now has 4 parts."))
```

```check
(choice
  (ask "You show" (math "3/4 = 6/8") "with 2 bars. What must be true of the bars?")
  (right "They are the same length")
  (wrong "The 6/8 bar is longer, because 6 is more than 3"
    "If the 6/8 bar were longer, its whole would be bigger. To compare, both fractions must be of the same whole.")
  (wrong "They have the same number of parts"
    "One bar is in fourths and one is in eighths: 4 parts and 8 parts. Only the wholes must match.")
  (hint "Equivalent fractions are the same amount of the same whole."))
```

So: equivalent fractions shade the same amount of the same whole. The
number and the size of the parts differ.
