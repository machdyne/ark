# Decimal problems

```lesson
(objective "Solve word problems that compare decimals and fractions in tenths and hundredths, such as lengths and prices.")
(standards "4.NF.C.7" "4.NF.C.6")
(minutes 25)
```

You can solve word problems that compare decimals and fractions.

Sam's frog jumps 0.8 meter. Tia's frog jumps 0.75 meter. Whose frog
jumps farther? Both are parts of 1 meter. $0.8 = 0.80$, and
$0.80 > 0.75$. Sam's frog jumps farther.

```figure
(m4p3-meter 20 300 80 80 10 'warm)
(m4p3-meter 20 300 170 75 10 'cool)
(text 30 40 "Sam's frog: 0.8 meter" 'left 'small)
(text 30 130 "Tia's frog: 0.75 meter" 'left 'small)
(caption "Each line is 1 meter, with a mark every 5 centimeters.")
```

```check
(choice
  (ask "A green pen costs 0.65 dollar. A red pen costs 0.6 dollar. Which costs more?")
  (right "The green pen" (true "0.65 > 0.6"))
  (wrong "The red pen" (false "0.6 > 0.65")
    "0.6 = 0.60 dollar, which is 60 cents. 65 cents is more.")
  (wrong "They cost the same" (false "0.6 = 0.65")
    "60 cents and 65 cents are not the same.")
  (hint "Write both in cents."))
```

---

## A fraction and a decimal

To compare a fraction and a decimal, write them the same way. Is
$3/10$ meter longer than 0.25 meter? $3/10 = 0.3 = 0.30$, and
$0.30 > 0.25$. So yes.

```check
(choice
  (ask "Ana walks" (math "45/100") "of a path. Ben walks 0.5 of the same path. Who walks farther?")
  (right "Ben" (true "0.5 > 45/100"))
  (wrong "Ana" (false "45/100 > 0.5")
    "45/100 = 0.45. Ben's 0.5 = 0.50, and 50 > 45.")
  (wrong "They walk the same" (false "45/100 = 0.5")
    "0.5 = 50/100, not 45/100.")
  (hint "Write 45/100 as a decimal."))
```

---

## Worked example

```example
(example
  (problem "A snack costs 1.25 dollars. Lee has 1.3 dollars. Does he have enough?")
  (step "Both are dollars: the same whole.")
  (step "1.3 = 1.30. The ones are both 1.")
  (step "Hundredths: 30 > 25, so 1.30 > 1.25.")
  (answer "Yes: he has 5 cents more than he needs."))
```

```example
(example
  (problem "A plant is 0.4 meter tall. Another is 38/100 meter tall. Which is taller?")
  (step "38/100 = 0.38.")
  (step (choice (ask "0.40 or 0.38: which is greater?")
    (right "0.40" (true "0.4 > 0.38"))
    (wrong "0.38" "38 < 40.")))
  (answer "The 0.4 meter plant is taller."))
```

---

## Practice

```check
(choice
  (ask "Three ribbons are 0.7, 0.07 and 0.17 meter long. Which is the shortest?")
  (right "0.07 meter" (true "0.07 < 0.17") (true "0.07 < 0.7"))
  (wrong "0.17 meter" (false "0.17 < 0.07")
    "0.17 has 1 tenth. 0.07 has 0 tenths, so it is shorter.")
  (wrong "0.7 meter" (false "0.7 < 0.07")
    "0.7 = 0.70 meter, the longest of the three.")
  (hint "Write each in hundredths."))
```

```check
(choice
  (ask "A book costs 4.09 dollars. A game costs 4.9 dollars. Which is true?")
  (right "4.09 < 4.9" (true "4.09 < 4.9"))
  (wrong "4.09 > 4.9" (false "4.09 > 4.9")
    "4.9 = 4.90. The tenths: 0 < 9, so 4.09 is less.")
  (wrong "4.09 = 4.9" (false "4.09 = 4.9")
    "4.09 is 4 dollars and 9 cents. 4.9 is 4 dollars and 90 cents.")
  (hint "Compare the tenths digits."))
```

---

```check
(choice
  (ask "Kim fills" (math "6/10") "of a jug. Leo fills 0.58 of a bigger jug. Can you tell who has more water from the numbers alone?")
  (right "No: the jugs are not the same size")
  (wrong "Yes: Kim, as 0.6 > 0.58"
    "0.6 > 0.58 is true for the same whole. Here the jugs differ, so you cannot tell.")
  (wrong "Yes: Leo, as 58 > 6"
    "58 hundredths is less than 6 tenths for the same whole. And the wholes are not the same.")
  (hint "Are the wholes the same?"))
```

So: check that the wholes match, write the numbers the same way, and
compare place by place.
