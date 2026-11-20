# Why common denominators

```lesson
(objective "Explain with fraction bars why 1/2 + 1/3 is not 2/5, and why the parts must be the same size before you add them.")
(standards "5.NF.A.1")
(minutes 20)
(keywords "unlike denominators")
```

To add fractions, you count parts. The parts must be the same size.

What is $1/2 + 1/3$? Some people add the tops and the bottoms and get
$2/5$. Look at the bars. All three bars are the same whole.

```figure
(frac-bar 0 2 1 'cool "1/2")
(frac-bar 1 3 1 'cool "1/3")
(frac-bar 2 5 2 'warm "2/5")
(caption "2/5 is less than 1/2 alone.")
```

```check
(choice
  (ask "Can" (math "1/2 + 1/3") "be" (math "2/5") "?")
  (right "No: 2/5 is less than 1/2, and the sum must be more than 1/2" (true "2/5 < 1/2"))
  (wrong "Yes: 1 + 1 = 2 and 2 + 3 = 5"
    "Adding the denominators changes the size of the parts. Fifths are smaller than halves and thirds. Look: 2/5 is less than the 1/2 you started with.")
  (wrong "Yes, the bars show it"
    "Compare the bars. The 2/5 bar has less shaded than the 1/2 bar. Adding 1/3 to 1/2 must give more than 1/2.")
  (hint "Is 2/5 more or less than 1/2?")
  (hint "Adding 1/3 makes 1/2 bigger, not smaller."))
```

---

## Unlike denominators

$1/2$ and $1/3$ have different denominators. Fractions with different
denominators have **unlike denominators**. Their parts are different
sizes: a half is bigger than a third.

You cannot count halves and thirds together, just as you cannot add 1
foot and 1 inch and say "2".

$3/4$ and $1/4$ have like denominators. $3/4$ and $1/8$ have unlike
denominators.

```check
(choice
  (ask "Which pair has unlike denominators?")
  (right "2/5 and 2/3")
  (wrong "3/8 and 5/8"
    "The denominators are both 8. These are like denominators, even though the numerators differ.")
  (wrong "1/6 and 5/6"
    "Both are sixths: 6 and 6. These are like denominators.")
  (hint "Look only at the bottom numbers."))
```

---

## Make the parts the same size

Cut each half into 3 parts, and each third into 2 parts. Now both
bars are cut into sixths.

$$ 1/2 = 3/6 $$

$$ 1/3 = 2/6 $$

These are equivalent fractions: the shaded amount does not change.

```figure
(define cut (toggle 'cut "Cut into sixths" #f))
(frac-bar 0 (if cut 6 2) (if cut 3 1) 'cool (if cut "3/6" "1/2"))
(frac-bar 1 (if cut 6 3) (if cut 2 1) 'warm (if cut "2/6" "1/3"))
(caption (if cut "Now the parts are the same size." "Tick the box to cut the bars."))
```

```check
(fraction
  (ask "Write" (math "1/3") "in sixths.")
  (answer 2 6) (true "1/3 = 2/6")
  (wrong-if (1 6) "1/6 is smaller than 1/3. Each third is cut into 2 sixths, so 1 third is 2 sixths.")
  (wrong-if (3 6) "3/6 is a half. Thirds are cut into 2 parts each: 1/3 = 2/6.")
  (hint "Each third is cut into 2 sixths.")
  (hint "1 x 2 = 2 and 3 x 2 = 6."))
```

---

## Now add

The parts are all sixths. Count them: 3 sixths and 2 sixths.

$$ 1/2 + 1/3 = 3/6 + 2/6 = 5/6 $$

```figure
(frac-bar 0 6 3 'cool "3/6")
(frac-bar 1 6 2 'warm "2/6")
(m5p3-sum 80 132 216 30 6 3 2)
(math 40 153 "5/6" 22)
(caption "5/6 is more than 1/2: that makes sense.")
```

```check
(fraction
  (ask "Find" (math "1/2 + 1/4") ". Hint: a half is 2 fourths.")
  (answer 3 4) (equivalent) (true "1/2 + 1/4 = 3/4")
  (wrong-if (2 6) "Adding the denominators makes sixths, which are the wrong size. Write 1/2 as 2/4 first.")
  (wrong-if (2 4) "1/2 is 2 fourths, not 1. So 2/4 + 1/4 = 3/4.")
  (hint "Write 1/2 in fourths.")
  (hint "2/4 + 1/4 = ?"))
```

---

## Worked example

```example
(example
  (problem "Find 1/3 + 1/6.")
  (step "The denominators are unlike: thirds and sixths.")
  (step "Cut each third into 2 parts: 1/3 = 2/6.")
  (step "Add the sixths: 2/6 + 1/6 = 3/6.")
  (answer "1/3 + 1/6 = 3/6, which is also 1/2."))
```

```example
(example
  (problem "Find 1/4 + 1/8.")
  (step "Cut each fourth into 2 parts: 1/4 = 2/8.")
  (step (fraction (ask "2/8 + 1/8 = ?") (answer 3 8) (equivalent) (true "2/8 + 1/8 = 3/8")
    (wrong-if (3 16) "The parts are eighths. Keep the denominator 8 and add the numerators.")))
  (answer "1/4 + 1/8 = 3/8."))
```

---

## Practice

```check
(choice
  (ask "Leo says" (math "1/3 + 1/4 = 2/7") ". What is wrong?")
  (right "Thirds and fourths are different sizes: he must make the parts the same first")
  (wrong "Nothing: he added the tops and the bottoms"
    "Adding the bottoms gives sevenths, a new size. And 2/7 is less than 1/3, so it cannot be the sum.")
  (wrong "He should multiply the tops"
    "Adding fractions does not multiply the numerators. First write both with parts of the same size.")
  (hint "Is 2/7 bigger than 1/3?"))
```

```check
(fraction
  (ask "Find" (math "1/2 + 1/6") ".")
  (answer 4 6) (equivalent) (true "1/2 + 1/6 = 4/6")
  (wrong-if (2 8) "Do not add the denominators. Write 1/2 as 3/6, then add the sixths.")
  (wrong-if (2 6) "1/2 is 3 sixths, not 1. So 3/6 + 1/6 = 4/6.")
  (hint "1/2 = 3/6.")
  (hint "3/6 + 1/6 = ?"))
```

---

```check
(fraction
  (ask "Find" (math "1/5 + 1/10") ".")
  (answer 3 10) (equivalent) (true "1/5 + 1/10 = 3/10")
  (wrong-if (2 15) "Fifteenths come from adding the denominators. Write 1/5 as 2/10 first.")
  (wrong-if (2 10) "1/5 is 2 tenths. So 2/10 + 1/10 = 3/10.")
  (hint "Cut each fifth into 2 tenths."))
```

```check
(choice
  (ask "Which sum can you find by just adding the numerators?")
  (right "3/8 + 2/8" (true "3/8 + 2/8 = 5/8"))
  (wrong "3/8 + 1/4"
    "Eighths and fourths are unlike denominators. Write 1/4 as 2/8 first.")
  (wrong "1/2 + 1/5"
    "Halves and fifths are different sizes. You must make the parts the same size first.")
  (hint "Find the pair whose parts are already the same size."))
```

So: with unlike denominators, first cut the parts to the same size,
then add.
