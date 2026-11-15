# Greater than 1

```lesson
(objective "Compare fractions greater than 1 by writing them as mixed numbers and comparing the wholes, then the parts.")
(standards "4.NF.A.2")
(minutes 25)
```

You can compare fractions greater than 1 by writing them as mixed
numbers.

$7/4$ is 7 fourths. 4 fourths make 1 whole. That leaves 3 fourths. So
$7/4 = 1 3/4$.

```figure
(frac-bar 0 4 4 'warm "4/4")
(frac-bar 1 4 3 'warm "3/4")
(text 188 130 "1 whole and 3 fourths" 'centre 'body 'bold)
(math 188 175 "7/4 = 1 3/4" 24)
```

```check
(choice
  (ask "Which mixed number is equal to" (math "9/4") "?")
  (right "2 1/4" (true "9/4 = 2 1/4"))
  (wrong "1 1/4" (false "9/4 = 1 1/4")
    "1 1/4 is 5 fourths. 9 fourths make 2 wholes (8 fourths) and 1 fourth more.")
  (wrong "9 1/4" (false "9/4 = 9 1/4")
    "9 is the number of fourths, not of wholes. Every 4 fourths make 1 whole: 9 fourths are 2 wholes and 1 fourth.")
  (hint "How many groups of 4 fourths are in 9 fourths?"))
```

---

## Compare the wholes first

Compare $7/4$ and $11/5$. $7/4 = 1 3/4$. $11/5 = 2 1/5$, as 10 fifths
make 2 wholes. 2 wholes are more than 1 whole, so $11/5 > 7/4$. The
parts do not matter.

```check
(choice
  (ask "Which is greater:" (math "5/2") "or" (math "13/12") "?")
  (right "5/2: it is 2 1/2, and 13/12 is only 1 1/12" (true "5/2 > 13/12"))
  (wrong "13/12: 13 is more than 5"
    "13 twelfths is a lot of small parts: 12 make just 1 whole, so 13/12 = 1 1/12. 5 halves make 2 1/2.")
  (wrong "They are equal"
    "5/2 = 2 1/2 and 13/12 = 1 1/12. The wholes are different, so they are not equal.")
  (hint "Write each as a mixed number. Compare the wholes."))
```

---

## Same wholes: compare the parts

$7/4 = 1 3/4$ and $9/8 = 1 1/8$. Both have 1 whole. So compare the
parts: $3/4 > 1/2$ and $1/8 < 1/2$. So $7/4 > 9/8$.

You can use any way you know to compare the parts: a half, or what each
part is missing.

```check
(choice
  (ask "Which sign makes this true?" (math "7/6") "?" (math "8/5"))
  (right "<" (true "7/6 < 8/5"))
  (wrong ">" (false "7/6 > 8/5")
    "7/6 = 1 1/6 and 8/5 = 1 3/5. The wholes match. 1/6 is less than 1/2 and 3/5 is more.")
  (wrong "=" (false "7/6 = 8/5")
    "Both have 1 whole, but the parts differ: 1/6 and 3/5.")
  (hint "Write each as a mixed number. The wholes are the same. Compare the parts with 1/2."))
```

---

## On a number line

Choose a pair. Each point is placed by its wholes and then its part.

```figure
(define c (choice 'pair '("7/4 11/5" "7/4 9/8" "5/2 13/12") "Pair"))
(define p (list-ref '((7 4 11 5) (7 4 9 8) (5 2 13 12)) c))
(number-line 30 290 120 0 3 1)
(nl-mark (/ (car p) (cadr p)) 'warm)
(math (nl-x (/ (car p) (cadr p))) 90 (m4p2-s (car p) (cadr p)) 18)
(nl-mark (/ (caddr p) (cadddr p)) 'cool)
(math (nl-x (/ (caddr p) (cadddr p))) 172 (m4p2-s (caddr p) (cadddr p)) 18)
```

```check
(choice
  (ask "Between which 2 whole numbers is" (math "11/5") "?")
  (right "2 and 3" (true "2 < 11/5 < 3"))
  (wrong "1 and 2"
    "10 fifths make 2 wholes, so 11/5 is past 2. It is 2 1/5.")
  (wrong "10 and 11"
    "11 is the number of fifths, not of wholes. 11 fifths are 2 wholes and 1 fifth.")
  (hint "Choose the first pair. Where is 11/5?"))
```

---

## Worked example

```example
(example
  (problem "Compare 10/3 and 13/4 of a lap.")
  (step "10/3: 9 thirds make 3 wholes, with 1 third left. 10/3 = 3 1/3.")
  (step "13/4: 12 fourths make 3 wholes, with 1 fourth left. 13/4 = 3 1/4.")
  (step "The wholes are both 3. Compare 1/3 and 1/4: thirds are bigger.")
  (answer "10/3 > 13/4."))
```

```example
(example
  (problem "Compare 9/5 and 12/10 of a meter.")
  (step "9/5 = 1 4/5, as 5 fifths make 1 whole.")
  (step "12/10 = 1 2/10, as 10 tenths make 1 whole.")
  (step (choice (ask "Both have 1 whole. Which part is greater?")
    (right "4/5: it is more than 1/2, and 2/10 is less")
    (wrong "2/10: tenths have bigger numbers"
      "Half of 10 is 5, so 2/10 is less than 1/2. Half of 5 is 2 and a half, so 4/5 is more.")))
  (answer "9/5 > 12/10."))
```

---

## Practice

```check
(choice
  (ask "Which mixed number is equal to" (math "11/3") "?")
  (right "3 2/3" (true "11/3 = 3 2/3"))
  (wrong "3 1/3" (false "11/3 = 3 1/3")
    "3 1/3 is 10 thirds. 11 thirds are 9 thirds (3 wholes) and 2 thirds more.")
  (wrong "2 2/3" (false "11/3 = 2 2/3")
    "2 2/3 is 8 thirds. 9 thirds make 3 wholes, so 11 thirds are 3 wholes and 2 thirds.")
  (hint "How many groups of 3 thirds are in 11 thirds?"))
```

```check
(choice
  (ask "Which sign makes this true?" (math "17/8") "?" (math "7/6"))
  (right ">" (true "17/8 > 7/6"))
  (wrong "<" (false "17/8 < 7/6")
    "17/8 = 2 1/8 and 7/6 = 1 1/6. 2 wholes are more than 1, so 17/8 is greater.")
  (wrong "=" (false "17/8 = 7/6")
    "17/8 = 2 1/8 and 7/6 = 1 1/6. The wholes are different.")
  (hint "Write each as a mixed number. Compare the wholes first."))
```

---

```check
(choice
  (ask "Which is greater:" (math "11/4") "or" (math "13/5") "?")
  (right "11/4" (true "11/4 > 13/5"))
  (wrong "13/5"
    "13/5 = 2 3/5 and 11/4 = 2 3/4. The wholes match. Both parts are 3 pieces, and fourths are bigger than fifths.")
  (wrong "They are equal"
    "Both are 2 and 3 parts, but fourths and fifths differ. 2 3/4 is greater than 2 3/5.")
  (hint "Write each as a mixed number. Compare 3/4 and 3/5."))
```

```check
(choice
  (ask "Which fraction is between 1 and 2?")
  (right "7/5" (true "1 < 7/5 < 2"))
  (wrong "11/5" (false "11/5 < 2")
    "11/5 = 2 1/5. It is past 2.")
  (wrong "4/5" (false "4/5 > 1")
    "4/5 is less than 1: it is 4 of the 5 parts of 1 whole.")
  (hint "Write each as a mixed number or compare the numerator with 5 and 10."))
```

So: write fractions greater than 1 as mixed numbers. Compare the wholes
first, then the parts.
