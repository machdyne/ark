# Like denominators

```lesson
(objective "Add fractions with like denominators by adding the numerators and keeping the denominator, and explain why the denominator stays the same.")
(standards "4.NF.B.3a")
(minutes 20)
(keywords "like denominators")
```

There is a quick way to add fractions when the bottom numbers match.

Two fractions with the same bottom number have **like denominators**.
$2/7$ and $3/7$ do. $2/7$ and $2/5$ do not.

$$ 2/7 + 3/7 = (2 + 3)/7 = 5/7 $$

```check
(choice
  (ask "Which two fractions have like denominators?")
  (right "3/10 and 6/10")
  (wrong "3/10 and 3/5"
    "These have the same numerator, 3. Like denominators means the bottom numbers are the same.")
  (wrong "1/4 and 4/1"
    "The denominators are 4 and 1. They are not the same.")
  (hint "Look at the bottom numbers."))
```

---

## Why the denominator stays

The bottom number tells the size of the parts. When you join parts,
they do not get smaller or bigger. So $2/7 + 3/7$ is 5 parts. Each
part is still a seventh. Move the sliders.

```figure
(define a (slider 'a 0 4 2 "First" 1))
(define b (slider 'b 0 3 3 "Second" 1))
(frac-bar-at 40 40 240 36 7 a 'warm)
(frac-bar-at 40 96 240 36 7 b 'cool)
(math 160 180 (string-append (m4p3-s a 7) " + " (m4p3-s b 7) " = " (m4p3-s (+ a b) 7)) 22)
```

```check
(choice
  (ask "Why is" (math "2/7 + 3/7") "not" (math "5/14") "?")
  (right "The parts are still sevenths: no new cuts are made")
  (wrong "Because 7 + 7 is not 14"
    "7 + 7 is 14. But adding the denominators says each part got smaller, and joining does not cut any part.")
  (wrong "Because you must multiply the denominators"
    "You do not change the denominator at all. The parts keep their size: sevenths.")
  (hint "Does joining parts change their size?"))
```

---

## Add the numerators

To add them:

1. Add the top numbers.
2. Keep the bottom number.

$$ 4/12 + 5/12 = 9/12 $$

```check
(fraction
  (ask "Find" (math "3/8 + 4/8") ".")
  (answer 7 8) (equivalent) (true "3/8 + 4/8 = 7/8")
  (wrong-if (7 16) "You added the denominators. Keep the 8: the parts are still eighths.")
  (wrong-if (12 8) "You multiplied the numerators. Add them: 3 + 4.")
  (hint "3 + 4 = ? Keep the 8."))
```

---

## Worked example

```example
(example
  (problem "Find 1/5 + 2/5 + 1/5.")
  (step "The denominators are all 5: like denominators.")
  (step "Add the numerators: 1 + 2 + 1 = 4.")
  (step "Keep the denominator 5.")
  (answer "1/5 + 2/5 + 1/5 = 4/5."))
```

```example
(example
  (problem "Find 5/12 + 4/12.")
  (step "Like denominators: twelfths.")
  (step (number (ask "Add the numerators: 5 + 4 = ?")
    (answer 9) (from "5 + 4")
    (wrong-if 20 "That is 5 × 4. Add: 5 + 4.")))
  (answer "5/12 + 4/12 = 9/12."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "2/6 + 3/6") ".")
  (answer 5 6) (equivalent) (true "2/6 + 3/6 = 5/6")
  (wrong-if (5 12) "Keep the denominator 6. The parts are sixths.")
  (hint "2 + 3 sixths."))
```

```check
(fraction
  (ask "Find" (math "3/10 + 2/10 + 4/10") ".")
  (answer 9 10) (equivalent) (true "3/10 + 2/10 + 4/10 = 9/10")
  (wrong-if (9 30) "You added the 3 denominators. Keep one 10: the parts are tenths.")
  (hint "Add all 3 numerators."))
```

---

```check
(fraction
  (ask "Find" (math "4/8 + 4/8") ". You may write it as a fraction.")
  (answer 8 8) (equivalent) (true "4/8 + 4/8 = 8/8")
  (wrong-if (8 16) "Keep the denominator 8. 8 eighths is the whole bar.")
  (hint "4 + 4 eighths."))
```

```check
(choice
  (ask "Which sum has like denominators?")
  (right "1/3 + 1/3" (true "1/3 + 1/3 = 2/3"))
  (wrong "1/3 + 1/4"
    "Thirds and fourths are different sizes. Like denominators are the same number.")
  (wrong "2/5 + 2/6"
    "The numerators are the same, but the denominators are 5 and 6.")
  (hint "Find the pair with the same bottom number."))
```

So: with like denominators, add the tops and keep the bottom. The
parts keep their size.
