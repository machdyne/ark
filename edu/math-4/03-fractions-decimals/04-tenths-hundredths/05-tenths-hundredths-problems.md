# Tenths and hundredths problems

```lesson
(objective "Solve word problems that add a fraction in tenths and one in hundredths.")
(standards "4.NF.C.5")
(minutes 25)
```

You can solve word problems that add tenths and hundredths.

1 meter is 100 centimeters. So 1 centimeter is $1/100$ of a meter, and
10 centimeters are $1/10$ of a meter.

A snail crawls $3/10$ of a meter. Then it crawls $25/100$ of a meter.
How far does it crawl?

$$ 3/10 + 25/100 = 30/100 + 25/100 = 55/100 $$

It crawls $55/100$ of a meter.

```check
(fraction
  (ask "A bug walks" (math "4/10") "meter, then" (math "8/100") "meter. How far does it walk? Write it in hundredths of a meter.")
  (answer 48 100) (true "4/10 + 8/100 = 48/100")
  (wrong-if (12 100) "4/10 is 40/100. 40 + 8 = 48.")
  (wrong-if (12 110) "Write the tenths as hundredths first.")
  (hint "4/10 = 40/100."))
```

---

## Money

1 dollar is 100 cents. A dime is 10 cents: $1/10$ of a dollar. A penny
is 1 cent: $1/100$ of a dollar.

```check
(fraction
  (ask "Ana has 6 dimes and 7 pennies. What fraction of a dollar is that? Write it in hundredths.")
  (answer 67 100) (true "6/10 + 7/100 = 67/100")
  (wrong-if (13 100) "6 dimes are 60 cents, not 6. 60 + 7 = 67.")
  (hint "6 dimes = 6/10 = 60/100 of a dollar."))
```

---

## Worked example

```example
(example
  (problem "A jug has 7/10 liter of water. Sam adds 15/100 liter. How much water is in the jug?")
  (step "Water is added: add.")
  (step "7/10 = 70/100.")
  (step "70/100 + 15/100 = 85/100.")
  (answer "85/100 liter."))
```

```example
(example
  (problem "Tom runs 9/10 of a lap, then 30/100 of a lap. How far does he run?")
  (step "9/10 = 90/100.")
  (step (number (ask "90/100 + 30/100 = ? Type a fraction or a mixed number.")
    (answer 1.2) (from "9/10 + 30/100")
    (wrong-if 0.39 "9/10 is 90 hundredths, not 9.")))
  (answer "120/100 = 1 20/100 laps."))
```

---

## Practice

```check
(fraction
  (ask "A plant grows" (math "2/10") "meter in May and" (math "35/100") "meter in June. How much does it grow? Write it in hundredths.")
  (answer 55 100) (true "2/10 + 35/100 = 55/100")
  (wrong-if (37 100) "2/10 is 20/100. 20 + 35 = 55.")
  (hint "2/10 = 20/100."))
```

```check
(number
  (ask "Kim has 8 dimes. She finds 45 pennies. What part of a dollar does she have? Type a fraction or a mixed number.")
  (answer 1.25) (from "8/10 + 45/100")
  (wrong-if 0.53 "8 dimes are 80 cents. 80 + 45 = 125 cents.")
  (hint "8/10 = 80/100."))
```

---

```check
(choice
  (ask "A board is" (math "5/10") "meter long. Another is" (math "50/100") "meter long. Ben puts them end to end. How long is that?")
  (right "100/100 meter: 1 meter" (true "5/10 + 50/100 = 1"))
  (wrong "55/100 meter"
    "5/10 is 50/100, not 5/100. 50 + 50 = 100.")
  (wrong "55/110 meter"
    "Never add the denominators. Write the tenths as hundredths.")
  (hint "5/10 = 50/100."))
```

So: in a word problem, write the tenths as hundredths, then add.
