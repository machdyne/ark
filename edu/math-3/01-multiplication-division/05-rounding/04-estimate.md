# Estimate a sum or difference

```lesson
(objective "Estimate a sum or difference by rounding first.")
(standards "3.NBT.A.1")
(minutes 20)
(keywords "estimate")
```

You can find about how much a sum is, fast, by rounding first.

Sometimes you do not need the exact answer. An **estimate** is a number
close to the exact answer that you can find quickly. To estimate, round
each number, then add or subtract the rounded numbers.

```figure
(label 90 50 "382" 'big)
(arrow 120 44 180 44 'ink 1.5)
(label 215 50 "400" 'big)
(label 90 100 "214" 'big)
(arrow 120 94 180 94 'ink 1.5)
(label 215 100 "200" 'big)
(line 60 120 260 120 'ink 1.5)
(label 160 160 "400 + 200 = 600" 'big 'bold)
(caption "Round to the nearest hundred, then add.")
```

```check
(number
  (ask "Estimate 382 + 214 by rounding each number to the nearest hundred.")
  (answer 600) (from "400 + 200")
  (wrong-if 500 "382 rounds to 400, not 300: it is closer to 400. Then 400 + 200 = 600.")
  (wrong-if 596 "596 is the exact sum. An estimate uses rounded numbers: 400 + 200.")
  (hint "382 rounds to 400. 214 rounds to 200."))
```

---

## Estimate a difference

Subtracting works the same way. Round each number, then subtract.

To estimate 712 - 289, round to the nearest hundred: 700 - 300 = 400.

```check
(number
  (ask "Estimate 812 - 395 by rounding to the nearest hundred.")
  (answer 400) (from "800 - 400")
  (wrong-if 500 "395 rounds to 400, not 300: it is closer to 400. 800 - 400 = 400.")
  (wrong-if 1200 "That adds. The problem subtracts: 800 - 400.")
  (hint "812 rounds to 800. 395 rounds to 400."))
```

---

## Tens for a closer estimate

Rounding to the nearest ten gives an estimate closer to the exact
answer. It takes a little more work.

47 + 38: round to tens, 50 + 40 = 90. The exact sum is 85.

```check
(number
  (ask "Estimate 63 + 29 by rounding each number to the nearest ten.")
  (answer 90) (from "60 + 30")
  (wrong-if 80 "29 rounds to 30, not 20. 60 + 30 = 90.")
  (wrong-if 92 "92 is the exact sum. An estimate adds the rounded numbers: 60 + 30.")
  (hint "63 rounds to 60. 29 rounds to 30."))
```

---

## When to estimate

An estimate is good when "about how many" is enough. It is also good for
checking an exact answer. If they are far apart, check your work.

```check
(choice
  (ask "Ben adds 489 + 302 and gets 591. Use an estimate to check. Is his answer likely right?")
  (right "No: the estimate is 500 + 300 = 800, far from 591")
  (wrong "Yes: 591 is close to 489"
    "The answer should be close to the estimate of the sum, not to one number. 500 + 300 = 800, so 591 is too small.")
  (hint "Round 489 and 302 to the nearest hundred and add."))
```

---

## Worked example

```example
(example
  (problem "A shop sold 278 apples on Monday and 415 on Tuesday. About how many is that?")
  (step "Round to the nearest hundred: 278 rounds to 300.")
  (step "415 rounds to 400.")
  (step "Add: 300 + 400 = 700.")
  (answer "About 700 apples."))
```

```example
(example
  (problem "A school has 534 children. 187 are at a game. About how many are at school?")
  (step "Round to the nearest hundred: 534 rounds to 500.")
  (step "187 rounds to 200.")
  (step (number (ask "500 - 200 = ?") (answer 300) (from "500 - 200")
    (wrong-if 700 "That adds. Some children left, so subtract: 500 - 200.")))
  (answer "About 300 children."))
```

---

## Practice

```check
(number
  (ask "Estimate 248 + 461 by rounding to the nearest hundred.")
  (answer 700) (from "200 + 500")
  (wrong-if 600 "461 rounds to 500, not 400: its tens digit is 6. 200 + 500 = 700.")
  (hint "248 rounds to 200. 461 rounds to 500."))
```

```check
(number
  (ask "Estimate 91 - 48 by rounding to the nearest ten.")
  (answer 40) (from "90 - 50")
  (wrong-if 50 "48 rounds to 50, not 40. 90 - 50 = 40.")
  (wrong-if 43 "43 is the exact difference. Estimate with the rounded numbers: 90 - 50.")
  (hint "91 rounds to 90. 48 rounds to 50."))
```

So: to estimate, round the numbers first, then add or subtract them.
