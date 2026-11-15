# Fifths, tenths and twelfths

```lesson
(objective "Name and show fractions with the denominators 5, 10 and 12 with bars and number lines.")
(standards "4.NF.A.1")
(minutes 20)
(keywords "fifth (of a whole)" "tenth (of a whole)" "twelfth (of a whole)")
```

You can name fractions with 5, 10 and 12 equal parts.

Cut a whole into 5 equal parts. Each part is a **fifth** of the whole,
written $1/5$. This bar has 3 fifths shaded: $3/5$.

```figure
(frac-bar 1 5 3 'warm "3/5")
(caption "A whole cut into 5 equal parts")
```

```check
(fraction
  (ask "A bar is cut into 5 equal parts. 4 parts are shaded. What fraction is shaded?")
  (answer 4 5)
  (wrong-if (1 5) "1/5 is one part. 4 parts are shaded, so the numerator is 4.")
  (wrong-if (5 4) "The denominator is the number of equal parts, 5. The numerator is the parts shaded, 4.")
  (hint "Equal parts in the whole: 5. Parts shaded: 4."))
```

---

## Tenths

Cut a whole into 10 equal parts. Each part is a **tenth** of the whole,
written $1/10$. 10 tenths make 1 whole.

```figure
(frac-bar 1 10 7 'warm "7/10")
(caption "7 of 10 equal parts")
```

```check
(fraction
  (ask "What fraction of the bar in the figure is shaded?")
  (answer 7 10)
  (wrong-if (3 10) "3/10 is the part that is not shaded. Count the shaded parts: 7.")
  (wrong-if (7 3) "The denominator is all the parts, 10. The numerator is the shaded parts, 7.")
  (hint "Count the shaded parts. Then count all the parts."))
```

---

## Twelfths

Cut a whole into 12 equal parts. Each part is a **twelfth** of the
whole, written $1/12$.

```figure
(frac-bar 1 12 5 'warm "5/12")
(caption "5 of 12 equal parts")
```

```check
(number
  (ask "How many twelfths make 1 whole?")
  (answer 12)
  (wrong-if 1 "1 twelfth is one part. The whole is all the equal parts: 12 of them.")
  (wrong-if 10 "10 tenths make a whole. A whole cut into twelfths has 12 parts.")
  (hint "A twelfth is 1 of how many equal parts?"))
```

---

## On a number line

Cut the line from 0 to 1 into equal parts. Choose fifths, tenths or
twelfths.

```figure
(define c (choice 'parts '("fifths" "tenths" "twelfths")))
(define b (list-ref '(5 10 12) c))
(m4p2-line 30 290 110 1 b (if (= b 5) 'frac 'whole))
(nl-mark (/ 3 b) 'warm "A")
(caption (string-append "A is at 3/" (fmt b 0)))
```

```check
(fraction
  (ask "A number line from 0 to 1 is cut into tenths. A point is 7 marks after 0. What fraction is it at?")
  (answer 7 10)
  (wrong-if (7 1) "7 marks after 0, each mark is 1/10, not 1. The point is at 7/10.")
  (wrong-if (3 10) "3/10 is how far the point is from 1. From 0, it is 7 tenths.")
  (hint "Each interval is 1/10. Count 7 of them from 0."))
```

---

## Which part is bigger?

The more equal parts a whole has, the smaller each part is. A fifth is
bigger than a tenth, and a tenth is bigger than a twelfth.

```figure
(frac-bar 0 5 1 'warm "1/5")
(frac-bar 1 10 1 'warm "1/10")
(frac-bar 2 12 1 'warm "1/12")
```

```check
(choice
  (ask "Which is greatest:" (math "1/5") "," (math "1/10") "or" (math "1/12") "?")
  (right "1/5" (true "1/5 > 1/10") (true "1/5 > 1/12"))
  (wrong "1/12" (false "1/12 > 1/5")
    "12 is the biggest number, but a whole cut into 12 parts has the smallest parts. 1/12 is the least.")
  (wrong "1/10"
    "1/10 is bigger than 1/12, but a fifth is bigger still. Fewer parts means bigger parts.")
  (hint "Look at the shaded part of each bar."))
```

---

## Worked example

```example
(example
  (problem "Place 5/12 on a number line from 0 to 1.")
  (step "The denominator is 12: cut 0 to 1 into 12 equal parts.")
  (step "Each interval is 1/12.")
  (step "Count 5 intervals from 0 and mark the point.")
  (answer "5/12 is 5 twelfths from 0."))
```

```example
(example
  (problem "Place 4/5 on a number line from 0 to 1.")
  (step "Cut 0 to 1 into 5 equal parts. Each interval is 1/5.")
  (step (number (ask "How many intervals do you count from 0?")
    (answer 4)
    (wrong-if 5 "5 intervals reach 5/5, which is 1. The numerator, 4, says how many to count.")))
  (answer "4/5 is 4 fifths from 0, 1 fifth before 1."))
```

---

## Practice

```check
(fraction
  (ask "A pizza is cut into 12 equal slices. Ana eats 5. What fraction of the pizza does she eat?")
  (answer 5 12)
  (wrong-if (7 12) "7/12 is what is left. Ana eats 5 of the 12 slices.")
  (wrong-if (5 7) "The denominator is all the equal slices, 12, not the slices left.")
  (hint "Slices she eats over all the slices."))
```

```check
(choice
  (ask "Which is less:" (math "3/5") "or" (math "3/10") "?")
  (right "3/10" (true "3/10 < 3/5"))
  (wrong "3/5" (false "3/5 < 3/10")
    "Both are 3 parts. A tenth is smaller than a fifth, so 3 tenths are less than 3 fifths.")
  (wrong "They are equal" (false "3/5 = 3/10")
    "Both have 3 parts, but the parts are different sizes. 3 tenths are less.")
  (hint "Same numerator. Which parts are smaller?"))
```

---

```check
(number
  (ask "How many fifths make 1 whole?")
  (answer 5)
  (wrong-if 1 "1 fifth is one part. The whole is all 5 parts: 5/5.")
  (hint "A whole cut into fifths has how many parts?"))
```

```check
(fraction
  (ask "A ribbon is cut into 10 equal pieces. 9 pieces are used. What fraction of the ribbon is used?")
  (answer 9 10)
  (wrong-if (1 10) "1/10 is the piece that is left. 9 of the 10 pieces are used.")
  (wrong-if (9 1) "The denominator is the number of equal pieces, 10.")
  (hint "Pieces used over all the pieces."))
```

So: fifths, tenths and twelfths are 5, 10 and 12 equal parts of a whole.
