# A fraction of a number

```lesson
(objective "Find a fraction of a whole number with a tape diagram: (2/3) x 6 means 2 of the 3 equal parts of 6, which is 4.")
(standards "5.NF.B.4a")
(minutes 20)
```

You can find a fraction of a number. "$2/3$ of 6" means: cut 6 into 3
equal parts, and take 2 of them.

We write it as a product:

$$ (2/3) * 6 $$

In a tape diagram, the tape is 6. Cut into 3 equal parts, each part is
$6 ÷ 3 = 2$. Two parts are $2 + 2 = 4$.

```figure
(m5p3-tape 40 90 240 40 3 2 'cool "6" "2")
(text 120 180 "2 parts: 4" 'centre 'body 'bold)
(math 160 215 "(2/3) * 6 = 4" 20)
```

```check
(number
  (ask "Find" (math "(1/3) * 12") ", which is" (math "1/3") "of 12.")
  (answer 4) (from "(1/3) * 12")
  (wrong-if 36 "1/3 of 12 is 1 of 3 equal parts of 12. That is less than 12, not 3 times 12.")
  (wrong-if 9 "That takes 3 away from 12. Cut 12 into 3 equal parts instead: 12 ÷ 3.")
  (hint "Cut 12 into 3 equal parts.")
  (hint "12 ÷ 3 = ?"))
```

---

## More than one part

To find $3/4$ of 20:

1. The denominator says how many equal parts: $20 ÷ 4 = 5$ in each.
2. The numerator says how many parts to take: 3 parts, $3 * 5 = 15$.

$$ (3/4) * 20 = 15 $$

```figure
(define a (slider 'a 0 4 3 "Parts taken" 1))
(m5p3-tape 40 90 240 40 4 a 'cool "20" "5")
(math 160 200 (string-append "(" (m5p3-s a 4) ") * 20 = " (fmt (* 5 a) 0)) 20)
```

```check
(number
  (ask "Move the slider to 2. What is" (math "(2/4) * 20") "?")
  (answer 10) (from "(2/4) * 20")
  (wrong-if 5 "That is 1 part. 2/4 means 2 of the 4 parts: 5 + 5.")
  (hint "Each part is 5."))
```

---

## Using the tape

Some problems give the fraction in words. "Mo spends $2/5$ of 30
dollars." The tape is 30, cut into 5 parts of 6. Two parts are 12. Mo
spends 12 dollars.

```check
(number
  (ask "A class has 28 students." (math "3/7") "of them walk to school. How many walk?")
  (answer 12) (from "(3/7) * 28")
  (wrong-if 4 "4 is 1 part, 1/7 of 28. 3/7 is 3 parts: 3 x 4.")
  (wrong-if 21 "21 is 3/4 of 28. The parts are sevenths: 28 ÷ 7 = 4 in each.")
  (hint "28 ÷ 7 = 4 in each part.")
  (hint "3 parts of 4."))
```

---

## Worked example

```example
(example
  (problem "Find (5/6) x 18.")
  (step "Cut 18 into 6 equal parts: 18 ÷ 6 = 3.")
  (step "Take 5 parts: 5 x 3 = 15.")
  (answer "(5/6) x 18 = 15."))
```

```example
(example
  (problem "Find (2/9) x 27.")
  (step "Cut 27 into 9 equal parts: 27 ÷ 9 = 3.")
  (step (number (ask "Take 2 parts. What is (2/9) x 27?") (answer 6) (from "(2/9) * 27")
    (wrong-if 3 "That is 1 part. 2/9 means 2 parts: 3 + 3.")))
  (answer "(2/9) x 27 = 6."))
```

---

## Practice

```check
(number
  (ask "Find" (math "(3/5) * 25") ".")
  (answer 15) (from "(3/5) * 25")
  (wrong-if 5 "5 is 1 of the 5 parts. Take 3 parts: 3 x 5.")
  (hint "25 ÷ 5 = 5."))
```

```check
(number
  (ask "Find" (math "(7/8) * 16") ".")
  (answer 14) (from "(7/8) * 16")
  (wrong-if 2 "2 is 1 part. 7 parts: 7 x 2.")
  (hint "16 ÷ 8 = 2."))
```

---

```check
(number
  (ask "A garden has 24 plants." (math "5/6") "of them are flowers. How many plants are flowers?")
  (answer 20) (from "(5/6) * 24")
  (wrong-if 4 "4 is 1/6 of 24. 5/6 is 5 parts of 4.")
  (hint "24 ÷ 6 = 4."))
```

```check
(choice
  (ask "Which is the same as" (math "1/4") "of 32?")
  (right "32 ÷ 4" (true "(1/4) * 32 = 32 ÷ 4"))
  (wrong "32 x 4"
    "A fourth of 32 is 1 of 4 equal parts. That is less than 32, so it cannot be 32 x 4.")
  (wrong "32 - 4"
    "Taking a fourth is not taking away 4. Cut 32 into 4 equal parts: 32 ÷ 4.")
  (hint "1/4 of 32 is 1 of 4 equal parts."))
```

To find $a/b$ of a number, cut it into $b$ equal parts and take $a$ of
them.
