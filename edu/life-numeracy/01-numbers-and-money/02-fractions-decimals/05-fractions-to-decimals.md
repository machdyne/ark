# Fractions to decimals

```lesson
(objective "Change a fraction to a decimal by dividing, and compare decimals.")
(minutes 20)
```

A fraction is a division waiting to be done: divide the top by the
bottom and you have its decimal.

$3/4$ is 3 divided by 4. On a calculator, 3 ÷ 4 = 0.75. So $3/4$ is
0.75, which is 75 hundredths.

$$ 3/4 = 3 ÷ 4 = 0.75 $$

```check
(number
  (ask "Change" (math "1/2") "to a decimal.")
  (answer 0.5) (from "1 / 2")
  (wrong-if 1.2 "1/2 is not 1 and 2 written with a point. It is 1 divided by 2, which is 5 tenths: 0.5.")
  (wrong-if 2 "Divide the top by the bottom, 1 ÷ 2, not the bottom by the top.")
  (hint "Divide 1 by 2."))
```

---

## Fractions worth knowing

These come up so often that it helps to know them by heart.

| fraction | decimal |
|---|---|
| 1/2 | 0.5 |
| 1/4 | 0.25 |
| 3/4 | 0.75 |
| 1/5 | 0.2 |
| 1/10 | 0.1 |

Tenths and hundredths change at once: $7/10$ is 0.7, and $23/100$ is
0.23.

```check
(number
  (ask "Write" (math "9/100") "as a decimal.")
  (answer 0.09) (from "9 / 100")
  (wrong-if 0.9 "0.9 is 9 tenths. 9 hundredths needs the 9 in the second place after the point: 0.09.")
  (hint "Hundredths are the second place after the point."))
```

---

## When the digits go on

Some fractions never come out exactly. $1/3$ is 0.333..., with the 3s
going on for ever; a calculator shows as many as it has room for. For everyday use,
round it: to two places, $1/3$ is about 0.33.

To round a decimal, use the same rule as for whole numbers: look at
the next digit; 5 or more rounds up.

```try
(try (app "calc")
  (task "Press Open calc (or open calc from the dock's Desk group). Type 2 / 3 and press Enter. Then come back to the lesson.")
  (check (number (ask "Round the answer to two places after the point.") (answer 0.67) (from "2 / 3") (within 0.005))))
```

```check
(number
  (ask "Change" (math "5/8") "to a decimal. Give the exact answer.")
  (answer 0.625) (from "5 / 8")
  (wrong-if 1.6 "That is 8 ÷ 5. Divide the top by the bottom: 5 ÷ 8.")
  (wrong-if 0.58 "5/8 is not 5 and 8 after a point. Work out 5 ÷ 8.")
  (hint "Work out 5 ÷ 8 on paper or the calculator."))
```

---

## Comparing fractions as decimals

Two fractions with different bottoms are easy to compare as decimals.

```example
(example
  (problem "Which is more: 3/5 or 5/8?")
  (step "3/5 = 3 ÷ 5 = 0.6.")
  (step "5/8 = 5 ÷ 8 = 0.625.")
  (step "0.625 is more than 0.600.")
  (answer "5/8 is a little more."))
```

```example
(example
  (problem "Which is more: 2/5 or 3/8?")
  (step "2/5 = 2 ÷ 5 = 0.4. 3/8 = 3 ÷ 8 = 0.375.")
  (step (choice (ask "Which is more?") (right "2/5" (true "2/5 > 3/8"))
    (wrong "3/8" (false "3/8 > 2/5") "0.375 has more digits, but compare the tenths: 4 tenths against 3 tenths. 0.4 is more.")))
  (answer "2/5 is more."))
```

---

## Practice

```check
(number
  (ask "Write" (math "3/10") "as a decimal.")
  (answer 0.3) (from "3 / 10")
  (wrong-if 0.03 "0.03 is 3 hundredths. 3 tenths has the 3 in the first place after the point.")
  (wrong-if 3.1 "3/10 is 3 divided by 10, less than one: 0.3.")
  (hint "Tenths are the first place after the point."))
```

```check
(choice
  (ask "A survey: 7 of 20 people walk to work. As a decimal, what part is that?")
  (right "0.35" (true "7/20 = 0.35"))
  (wrong "0.7" (false "7/20 = 0.7") "0.7 would be 7 out of 10. Out of 20, each person is half as much: 7 ÷ 20 = 0.35.")
  (wrong "2.86" "That is 20 ÷ 7. The part is 7 out of 20, so divide 7 by 20.")
  (hint "Divide 7 by 20."))
```

```check
(number
  (ask "Change" (math "1/6") "to a decimal, rounded to two places after the point.")
  (answer 0.17) (from "1 / 6") (within 0.005)
  (wrong-if 0.16 "1 ÷ 6 = 0.1666..., and the third digit is 6, which is 5 or more. So round up to 0.17.")
  (wrong-if 6 "Divide the top by the bottom: 1 ÷ 6, not 6 ÷ 1.")
  (hint "1 ÷ 6 = 0.1666... Look at the third digit."))
```

To change a fraction to a decimal, divide the top by the bottom, and
round when the digits go on.
