# Estimating

```lesson
(objective "Estimate a sum or a product by rounding first, and use it to check a calculator answer.")
(minutes 20)
(keywords "estimate")
```

Before you trust a calculator or a bill, you can tell in your head
whether its answer is about right.

An **estimate** is a rough answer, worked out from rounded numbers.
It is not exact, but it is quick, and it shows when an answer is far
off.

To estimate 389 + 512: round each number first, to 400 and 500. Then
400 + 500 = 900. The exact answer, 901, is close.

$$ 400 + 500 = 900 $$

```check
(number
  (ask "Estimate 298 + 703 by rounding each number to the nearest 100 first.")
  (answer 1000) (from "300 + 700")
  (wrong-if 1001 "1001 is the exact answer. An estimate uses the rounded numbers: 300 + 700.")
  (hint "298 is about 300. 703 is about 700."))
```

---

## Round to one digit for products

For multiplying, round each number so it has just one digit that is
not zero. Then multiply the digits and count the zeros.

To estimate 48 * 21: round to 50 and 20. 5 times 2 is 10, and there
are two zeros to add, so the estimate is 1000. The exact answer is
1008.

```example
(example
  (problem "Estimate 32 boxes at 19 dollars each.")
  (step "Round: 32 is about 30, 19 is about 20.")
  (step "3 times 2 is 6. Add the two zeros: 600.")
  (answer "About 600 dollars (exactly 608)."))
```

```example
(example
  (problem "Estimate 61 hours at 22 dollars an hour.")
  (step "Round: 61 is about 60, 22 is about 20.")
  (step (number (ask "So the estimate is?") (answer 1200) (from "60 * 20")
    (wrong-if 120 "6 times 2 is 12, but there are two zeros to add back, one from 60 and one from 20: 1200.")))
  (answer "About 1200 dollars (exactly 1342)."))
```

---

## Checking a calculator

A calculator does exactly what you type. If you miss a button or press
one twice, it gives a wrong answer without a warning. An estimate
catches that.

```try
(try (app "calc")
  (task "Press Open calc (or open calc from the dock's Desk group). Type 47 * 31 and press Enter. Then come back to the lesson.")
  (check (number (ask "What did the calculator show?") (answer 1457) (from "47 * 31"))))
```

```check
(choice
  (ask "Someone works out 47 * 31 and gets 14,570. Which estimate shows that this is wrong?")
  (right "50 * 30 = 1500, so the answer should be about 1500" (true "50 * 30 = 1500"))
  (wrong "40 * 30 = 1200, so the answer should be less than 1200" "47 rounds to 50, not 40: 7 is 5 or more. With 50 * 30 = 1500, the exact answer 1457 is close.")
  (wrong "An estimate cannot help with multiplying" "It can: 50 * 30 = 1500 is quick, and it shows the answer should be in the thousands.")
  (hint "Round 47 and 31 to one digit each."))
```

---

## Practice

```check
(choice
  (ask "A shop bill adds 19 + 42 + 61 and says the total is 212. Is that about right?")
  (right "No: the estimate is 20 + 40 + 60 = 120" (true "20 + 40 + 60 = 120"))
  (wrong "Yes: it is in the hundreds" "The estimate 20 + 40 + 60 = 120 is a long way from 212. The exact total is 122; perhaps a digit was swapped.")
  (wrong "Yes: a bill is always right" "Machines and people make mistakes. 20 + 40 + 60 = 120 shows 212 is far too much.")
  (hint "Round each number to the nearest 10 and add."))
```

```check
(number
  (ask "Estimate 395 * 8 by rounding 395 to the nearest 100.")
  (answer 3200) (from "400 * 8")
  (wrong-if 320 "4 times 8 is 32, and 400 has two zeros: 3200.")
  (wrong-if 3160 "3160 is the exact answer. The estimate uses 400 * 8.")
  (hint "395 is about 400."))
```

```check
(choice
  (ask "Someone works out 52 * 98 and gets 50,960. What should the answer be near?")
  (right "5000" (true "50 * 100 = 5000"))
  (wrong "500" "50 * 100 is 5000, not 500: count the zeros, one from 50 and two from 100.")
  (wrong "50000" "50 * 100 has three zeros in all, so it is 5000.")
  (hint "52 is about 50 and 98 is about 100."))
```

Round first, then work it out in your head: if the real answer is far
from the estimate, check it again.
