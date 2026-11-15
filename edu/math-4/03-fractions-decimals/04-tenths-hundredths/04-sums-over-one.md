# Sums greater than 1

```lesson
(objective "Add tenths and hundredths whose sum is greater than 1, such as 7/10 + 45/100 = 115/100 = 1 15/100.")
(standards "4.NF.C.5")
(minutes 20)
```

You can add tenths and hundredths even when the sum is more than 1.

$$ 7/10 + 45/100 = 70/100 + 45/100 = 115/100 $$

100 hundredths make 1 whole. $115/100$ is 1 whole and 15 hundredths
more:

$$ 115/100 = 1 15/100 $$

```figure
(m4p3-hund 10 30 14 100 'warm)
(m4p3-hund 170 30 14 15 'warm)
(math 80 205 "100/100 = 1" 18)
(math 240 205 "15/100" 18)
(caption "115/100 = 1 15/100")
```

```check
(number
  (ask "Write" (math "130/100") "as a mixed number. Type it like 2 1/4.")
  (answer 1.3) (from "130/100")
  (wrong-if 130 "130 is the number of hundredths. 100 of them make 1 whole.")
  (wrong-if 13 "13/10 is not 13 wholes. 130/100 = 1 30/100.")
  (hint "100/100 = 1. What is left?"))
```

---

## Add, then take out the whole

1. Write the tenths as hundredths.
2. Add the numerators.
3. If the sum is 100 or more, take out 1 whole.

$9/10 + 36/100 = 90/100 + 36/100 = 126/100 = 1 26/100$.

```check
(number
  (ask "Find" (math "8/10 + 50/100") ". Type a fraction or a mixed number.")
  (answer 1.3) (from "8/10 + 50/100")
  (wrong-if 0.58 "8/10 is 80/100, not 8/100. 80 + 50 = 130.")
  (wrong-if 1.03 "80 + 50 = 130 hundredths: 1 and 30 hundredths.")
  (hint "8/10 = 80/100."))
```

---

## Worked example

```example
(example
  (problem "Find 6/10 + 75/100.")
  (step "6/10 = 60/100.")
  (step "60/100 + 75/100 = 135/100.")
  (step "135/100 = 1 35/100.")
  (answer "6/10 + 75/100 = 1 35/100."))
```

```example
(example
  (problem "Find 9/10 + 9/100.")
  (step "9/10 = 90/100.")
  (step (choice (ask "90/100 + 9/100 = 99/100. Is it more than 1?")
    (right "No: 99 hundredths is 1 short of 100" (true "99/100 < 1"))
    (wrong "Yes: 99 is a big number" "1 whole is 100 hundredths. 99 is less.")))
  (answer "9/10 + 9/100 = 99/100, less than 1."))
```

---

## Practice

```check
(number
  (ask "Find" (math "5/10 + 70/100") ". Type a fraction or a mixed number.")
  (answer 1.2) (from "5/10 + 70/100")
  (wrong-if 0.75 "5/10 is 50/100. 50 + 70 = 120.")
  (hint "50/100 + 70/100"))
```

```check
(number
  (ask "Find" (math "4/10 + 65/100") ". Type a fraction or a mixed number.")
  (answer 1.05) (from "4/10 + 65/100")
  (wrong-if 0.69 "4/10 is 40/100. 40 + 65 = 105.")
  (wrong-if 1.5 "105/100 = 1 and 5 hundredths, not 5 tenths.")
  (hint "40/100 + 65/100 = 105/100."))
```

---

```check
(choice
  (ask "Which is equal to" (math "1 8/100") "?")
  (right "108/100" (true "1 8/100 = 108/100"))
  (wrong "18/100" (false "1 8/100 = 18/100")
    "18/100 is less than 1. The 1 whole is 100 hundredths: 100 + 8 = 108.")
  (wrong "180/100" (false "1 8/100 = 180/100")
    "180/100 is 1 80/100. Here there are only 8 extra hundredths.")
  (hint "1 = 100/100."))
```

So: add the tenths and hundredths as hundredths; 100 hundredths make
1 whole.
