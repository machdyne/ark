# Other ways to add and subtract

```lesson
(objective "Add and subtract within 1000 in more than one way and check with an estimate.")
(standards "3.NBT.A.2")
(minutes 25)
```

You can add and subtract in more than one way, and pick the easiest.

## Break apart by place

Add the hundreds, the tens and the ones on their own. Then put them
together.

236 + 152: 200 + 100 = 300. 30 + 50 = 80. 6 + 2 = 8. So 300 + 80 + 8 =
388.

```check
(number
  (ask "Find 425 + 340 by adding hundreds, tens and ones.")
  (answer 765) (from "425 + 340")
  (wrong-if 665 "400 + 300 is 700, not 600. Then 20 + 40 = 60 and 5 + 0 = 5: 765.")
  (hint "400 + 300, 20 + 40, 5 + 0."))
```

---

## Make a hundred

Some numbers are close to a hundred. 298 is 2 less than 300. So
298 + 145 is 2 less than 300 + 145 = 445. That is 443.

```check
(number
  (ask "Find 399 + 254. Think of 399 as 400 - 1.")
  (answer 653) (from "399 + 254")
  (wrong-if 654 "654 is 400 + 254. But 399 is 1 less than 400, so take 1 away: 653.")
  (wrong-if 655 "399 is 1 less than 400, so the sum is 1 less than 654, not 1 more.")
  (hint "400 + 254 = 654. Then take away 1."))
```

---

## Count up to subtract

When 2 numbers are close, count up from the smaller one. 403 - 396:
from 396 jump 4 to 400, then 3 to 403. That is 4 + 3 = 7.

```figure
(number-line 30 290 110 394 405 1 2)
(nl-jump 396 400 'ink "+4")
(nl-jump 400 403 'ink "+3")
(nl-mark 396 'ink)
(nl-mark 403 'ink)
(caption "From 396 to 403 is 4 + 3 = 7.")
```

```check
(number
  (ask "Count up to find 702 - 695.")
  (answer 7) (from "702 - 695")
  (wrong-if 193 "That is the result of taking smaller digits from bigger ones. The numbers are close: count up from 695.")
  (hint "695 to 700 is 5. 700 to 702 is 2."))
```

---

## Check with an estimate

After you add or subtract, round and estimate. If the answer is far
from the estimate, work it out again.

```check
(choice
  (ask "Ana says 612 - 289 = 423. Round to the nearest hundred to check. Is she likely right?")
  (right "No: 600 - 300 = 300, and 423 is far from it")
  (wrong "Yes: 423 is a 3-digit number"
    "Any answer here could have 3 digits. The estimate, 600 - 300 = 300, is far from 423. The right answer is 323.")
  (hint "Round 612 and 289 to the nearest hundred."))
```

---

## Worked example

```example
(example
  (problem "Find 507 - 198 in 2 ways.")
  (step "Way 1, regroup: 507 is 4 hundreds, 9 tens, 17 ones. 17 - 8 = 9, 9 - 9 = 0, 4 - 1 = 3: 309.")
  (step "Way 2: 198 is 2 less than 200. 507 - 200 = 307. You took away 2 too many, so add 2 back: 309.")
  (step "Check: 500 - 200 = 300. 309 is close.")
  (answer "507 - 198 = 309"))
```

```example
(example
  (problem "Find 345 + 199.")
  (step "199 is 1 less than 200.")
  (step "345 + 200 = 545.")
  (step (number (ask "Take 1 away. What is 345 + 199?") (answer 544) (from "345 + 199")
    (wrong-if 546 "199 is 1 less than 200, so the sum is 1 less than 545, not 1 more.")))
  (answer "345 + 199 = 544"))
```

---

## Practice

```check
(number
  (ask "Find 263 + 524 by adding each place.")
  (answer 787) (from "263 + 524")
  (wrong-if 777 "60 + 20 = 80, not 70. 200 + 500 = 700, then 80, then 3 + 4 = 7.")
  (hint "200 + 500, 60 + 20, 3 + 4."))
```

```check
(number
  (ask "Find 601 - 594 by counting up.")
  (answer 7) (from "601 - 594")
  (wrong-if 193 "The numbers are close, so the difference is small. Count up: 594 to 600 is 6, then 1 more.")
  (hint "594 to 600, then 600 to 601."))
```

---

```check
(number
  (ask "Find 450 - 299. Think of 299 as 300 - 1.")
  (answer 151) (from "450 - 299")
  (wrong-if 149 "450 - 300 = 150. But you took away 1 too many, so add 1 back: 151.")
  (wrong-if 150 "450 - 300 = 150 takes away 1 too many. Add it back: 151.")
  (hint "450 - 300 = 150. You took 1 too many."))
```

So: break apart, make a hundred or count up, and check your answer with an estimate.
