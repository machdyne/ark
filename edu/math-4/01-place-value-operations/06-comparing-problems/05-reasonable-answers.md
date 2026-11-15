# Does the answer make sense?

```lesson
(objective "Check the answer to a multi-step problem with mental math and an estimate made by rounding.")
(standards "4.OA.A.3")
(minutes 25)
```

You can check the answer to a long problem with a quick estimate.

A store gets 3 boxes of 248 shirts. It sells 389 shirts. How many are
left? The answer is 3 × 248 - 389 = 355.

Estimate each step with rounded numbers: 248 is about 250, and 389 is
about 400.

3 × 250 - 400 = 750 - 400 = 350. The answer 355 is close to 350, so it
is reasonable.

```check
(number
  (ask "Estimate 4 × 296 + 512. Round 296 and 512 to the nearest hundred.")
  (answer 1700) (from "4 * 300 + 500")
  (wrong-if 800 "300 + 500 = 800 leaves out the 4. 4 × 300 = 1,200 first, then add 500.")
  (wrong-if 1200 "1,200 is only 4 × 300. Add the 500 too.")
  (hint "296 is about 300, and 512 is about 500.")
  (hint "4 × 300 + 500 = ?"))
```

---

## Spot an answer that is far off

If the answer is far from the estimate, look for a mistake.

```check
(choice
  (ask "Zoe says 2 × 1,498 + 350 = 1,848. Estimate: 2 × 1,500 + 350 is about 3,350. What do you think?")
  (right "1,848 is far from 3,350, so Zoe made a mistake." (true "2 * 1498 + 350 = 3346"))
  (wrong "1,848 is fine, because estimates are never close." (false "2 * 1498 + 350 = 1848")
    "A good estimate is close. 1,848 is about 1,500 away from 3,350. It looks like Zoe did not multiply by 2.")
  (wrong "Zoe is right, because both numbers have 4 digits."
    "The number of digits is not enough. Compare with the estimate: 1,848 is far from 3,350.")
  (hint "How far is 1,848 from 3,350?"))
```

---

## Mental math

You can also work out an exact answer in your head. This is mental
math. A number close to a round one makes it easy.

744 - 389: 389 is 11 less than 400. Take away 400, then add back 11.
744 - 400 = 344, and 344 + 11 = 355.

So 355 checks out exactly.

```check
(number
  (ask "Find 625 - 298 in your head. 298 is 2 less than 300.")
  (answer 327) (from "625 - 298")
  (wrong-if 323 "Taking away 300 takes away 2 too many. Add 2 back: 325 + 2 = 327.")
  (wrong-if 325 "625 - 300 = 325 takes away 2 too many. Add them back.")
  (hint "625 - 300 = 325.")
  (hint "You took 2 too many. Add 2 back."))
```

---

## Mental math for products

5 × 199: 199 is 1 less than 200. 5 × 200 = 1,000. You multiplied one
extra 5, so take it away: 1,000 - 5 = 995.

```check
(number
  (ask "Find 7 × 98 in your head. 98 is 2 less than 100.")
  (answer 686) (from "7 * 100 - 7 * 2") (true "7 * 98 = 686")
  (wrong-if 698 "7 × 100 has 7 extra 2s, not one. Take away 7 × 2 = 14: 700 - 14.")
  (wrong-if 700 "700 is 7 × 100. 98 is less than 100, so take away 7 × 2 = 14.")
  (hint "7 × 100 = 700.")
  (hint "You added 7 groups of 2 too many."))
```

---

## Worked example

```example
(example
  (problem "Ivy has 6 bags of 42 beads. She uses 98. She says 154 are left. Check it.")
  (step "Estimate: 6 × 40 - 100 = 240 - 100 = 140. 154 is close.")
  (step "Mental math: 6 × 42 = 240 + 12 = 252. 252 - 98 = 252 - 100 + 2 = 154.")
  (step "Both checks agree.")
  (answer "154 is right."))
```

```example
(example
  (problem "Max finds 8 × 51 - 199 = 209. Check it.")
  (step "Estimate: 8 × 50 - 200 = 400 - 200 = 200. 209 is close.")
  (step "Mental math: 8 × 51 = 400 + 8 = 408.")
  (step (number (ask "408 - 199 = ? Take away 200, then add 1.") (answer 209) (from "408 - 199")
    (wrong-if 207 "Taking away 200 takes 1 too many. Add 1 back: 208 + 1 = 209.")))
  (answer "209 is right."))
```

---

## Practice

```check
(number
  (ask "Estimate 4 × 1,205 - 2,980. Round 1,205 and 2,980 to the nearest hundred.")
  (answer 1800) (from "4 * 1200 - 3000")
  (wrong-if 7800 "Take 3,000 away, do not add it: 4 × 1,200 = 4,800, and 4,800 - 3,000 = 1,800.")
  (wrong-if 1900 "2,980 rounds to 3,000, not 2,900: its tens digit is 8.")
  (hint "1,205 is about 1,200. 2,980 is about 3,000.")
  (hint "4 × 1,200 = 4,800."))
```

```check
(number
  (ask "Find 803 - 497 in your head. 497 is 3 less than 500.")
  (answer 306) (from "803 - 497")
  (wrong-if 300 "803 - 500 = 303 takes away 3 too many. Add 3 back: 306.")
  (wrong-if 303 "803 - 500 takes away 3 too many. Add 3 back.")
  (hint "803 - 500 = 303."))
```

---

```check
(choice
  (ask "A farm has 3 fields of 2,950 plants. 1,200 plants die. Which answer for the plants left is reasonable?")
  (right "7,650" (true "3 * 2950 - 1200 = 7650"))
  (wrong "1,750"
    "Estimate: 3 × 3,000 - 1,000 = 8,000. 1,750 forgot to multiply by 3.")
  (wrong "10,050"
    "Estimate: 3 × 3,000 - 1,000 = 8,000. 10,050 adds the 1,200 instead of taking it away.")
  (hint "Estimate: 3 × 3,000 - 1,000."))
```

```check
(number
  (ask "Find 4 × 99 in your head.")
  (answer 396) (from "4 * 100 - 4") (true "4 * 99 = 396")
  (wrong-if 399 "4 × 100 has 4 extra ones, not 1. 400 - 4 = 396.")
  (hint "4 × 100 = 400. Take away 4 × 1."))
```

So: estimate to check the size, and use mental math to check it exactly.
