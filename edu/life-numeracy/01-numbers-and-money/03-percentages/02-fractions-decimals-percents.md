# Fractions, decimals and percentages

```lesson
(objective "Change between fractions, decimals and percentages.")
(minutes 20)
```

A half, 0.5 and 50% are three ways to write the same amount, and you
can move between them in one or two steps.

**Percentage to decimal:** a percentage is out of 100, so divide by
100. 35% is $35/100$, which is 0.35. Dividing by 100 moves every digit
two places to the right.

**Decimal to percentage:** multiply by 100. 0.6 is 60%, and 0.075 is
7.5%.

$$ 0.35 = 35/100 = 35% $$

```check
(number
  (ask "Write 8% as a decimal.")
  (answer 0.08) (from "8 / 100")
  (wrong-if 0.8 "0.8 is 80%. 8% is 8 hundredths, so the 8 goes in the second place after the point: 0.08.")
  (wrong-if 8 "8 would be 800%. Divide by 100: 8% is 0.08.")
  (hint "Divide by 100: 8 hundredths."))
```

---

## Fraction to percentage

Divide the top by the bottom to get a decimal, then multiply by 100.
$3/8$ is 3 ÷ 8 = 0.375, which is 37.5%.

When the bottom goes into 100, you can also make it out of 100
directly: $3/20 = 15/100 = 15%$.

```check
(number
  (ask "Write" (math "2/5") "as a percentage.")
  (answer 40) (unit "%") (from "2 / 5 * 100")
  (wrong-if 25 "2/5 is not 2 and 5 put together. Divide 2 by 5 to get 0.4, then multiply by 100: 40%.")
  (wrong-if 0.4 "0.4 is the decimal. As a percentage, multiply by 100: 40%.")
  (hint "2 ÷ 5 = 0.4."))
```

---

## Percentage to fraction

Write the percentage over 100 and simplify. 75% is $75/100$; divide
top and bottom by 25 and it is $3/4$.

```example
(example
  (problem "Write 20% as a fraction in simplest form.")
  (step "20% = 20/100.")
  (step "Divide top and bottom by 20.")
  (answer "1/5"))
```

```example
(example
  (problem "Write 60% as a fraction in simplest form.")
  (step "60% = 60/100.")
  (step (fraction (ask "Simplify it.") (answer 3 5) (simplest)
    (wrong-if (6 10) "6/10 is right but can be simplified: both are even. Divide by 2 again.")))
  (answer "3/5"))
```

---

## The ones to know

| fraction | decimal | percentage |
|---|---|---|
| 1/2 | 0.5 | 50% |
| 1/4 | 0.25 | 25% |
| 3/4 | 0.75 | 75% |
| 1/5 | 0.2 | 20% |
| 1/10 | 0.1 | 10% |
| 1/3 | about 0.33 | about 33% |

```check
(choice
  (ask "Which is the largest?")
  (right "3/4" (true "3/4 > 0.7"))
  (wrong "0.7" (false "0.7 > 3/4") "0.7 is 70%. 3/4 is 75%, a little more.")
  (wrong "65%" "65% is less than 70% (0.7) and less than 75% (3/4).")
  (hint "Write all three as percentages."))
```

---

## Practice

```check
(number
  (ask "Write 0.4 as a percentage.")
  (answer 40) (unit "%") (from "0.4 * 100")
  (wrong-if 4 "4% would be 0.04. 0.4 is 4 tenths, which is 40 hundredths: 40%.")
  (wrong-if 0.4 "Multiply the decimal by 100 to make it a percentage.")
  (hint "Multiply by 100."))
```

```check
(fraction
  (ask "Write 25% as a fraction in simplest form.")
  (answer 1 4) (simplest)
  (wrong-if (25 100) "25/100 is right but can be simplified: divide top and bottom by 25.")
  (wrong-if (1 25) "25% is 25 out of 100, not 1 out of 25. 25/100 simplifies to 1/4.")
  (hint "Start with 25/100."))
```

```check
(choice
  (ask "A test score is 18 out of 20. What percentage is that?")
  (right "90%" (true "18/20 * 100 = 90"))
  (wrong "18%" "18 is out of 20, not out of 100. 18 ÷ 20 = 0.9, which is 90%.")
  (wrong "2%" "2 is the marks missed, and they are out of 20, not 100. The score is 18 ÷ 20 = 0.9, or 90%.")
  (hint "18 ÷ 20, then multiply by 100."))
```

To move between them: a percentage is over 100, a decimal is the top
divided by the bottom, and multiplying a decimal by 100 gives the
percentage.
