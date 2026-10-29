# Does it make sense?

```lesson
(objective "Check the answer to a two-step problem with mental math and an estimate.")
(standards "3.OA.D.8")
(minutes 20)
```

You can check an answer before you trust it.

After you solve a story, ask: does this answer make sense? Two quick
checks help:

- **Estimate.** Round the numbers and work out the story again. The
  answer should be close.
- **Think about the story.** Should the answer be more or less than the
  numbers you started with?

```check
(choice
  (ask "A shop had 412 cups. It sold 198. Then it got 305 more. Jo says the shop now has 1 cup. Does that make sense?")
  (right "No: the estimate is 400 - 200 + 300 = 500")
  (wrong "Yes: cups were sold"
    "Cups were sold, but more came in too. Estimate: 400 - 200 + 300 = 500. 1 is far from 500.")
  (hint "Round each number to the nearest hundred."))
```

```check
(number
  (ask "Work out the exact answer: 412 - 198 + 305.")
  (answer 519) (from "412 - 198 + 305")
  (wrong-if 509 "412 - 198 = 214, not 204. Then 214 + 305 = 519.")
  (hint "412 - 198 = 214. Then add 305."))
```

---

## More or less?

Think about what the story does. Sharing makes each part smaller than
the total. Equal groups make the total bigger than one group.

```check
(choice
  (ask "4 friends share 36 grapes, then each eats 3. Sam says each friend has 33 left. Does that make sense?")
  (right "No: each friend gets only part of 36, so less than 9 is left")
  (wrong "Yes: 36 - 3 = 33"
    "36 - 3 takes 3 from all the grapes, not from one share. Each gets 36 ÷ 4 = 9. Then 9 - 3 = 6.")
  (hint "How many does each friend get before eating?"))
```

---

## Mental math

Some steps are easy to do in your head. Use them to check.

Kai says 6 × 8 + 7 = 58. Check: 6 × 8 = 48. 48 + 7 = 55, not 58.

```check
(number
  (ask "Mia says 9 × 4 - 6 = 32. Check it in your head. What is the right answer?")
  (answer 30) (from "9 * 4 - 6")
  (wrong-if 32 "That is Mia's answer. 9 × 4 = 36. Then 36 - 6.")
  (hint "9 × 4 = 36."))
```

---

## Worked example

```example
(example
  (problem "A school buys 8 boxes of 9 balls. 15 balls are lost. Tom says 57 are left. Check his answer.")
  (step "Estimate: 8 × 9 = 72, which is about 70. 15 rounds to 20. 70 - 20 = 50.")
  (step "Exact: 72 - 15 = 57.")
  (step "57 is close to the estimate of 50, and the exact steps agree.")
  (answer "Tom's answer of 57 makes sense."))
```

```example
(example
  (problem "Ana has 7 packs of 6 stickers. She gives 12 away. She says 54 are left. Check.")
  (step "7 × 6 = 42 stickers in all.")
  (step "She gave some away, so she must have fewer than 42.")
  (step (number (ask "What is the right answer, 42 - 12?") (answer 30) (from "7 * 6 - 12")
    (wrong-if 54 "54 is 42 + 12. She gave stickers away, so subtract.")))
  (answer "54 does not make sense. 30 are left."))
```

---

## Practice

```check
(choice
  (ask "A farmer has 3 rows of 20 trees. He plants 15 more. He says he has 75 trees. Does it make sense?")
  (right "Yes: 3 × 20 = 60, and 60 + 15 = 75" (true "3 * 20 + 15 = 75"))
  (wrong "No: 75 is too many"
    "3 rows of 20 is 60, and 60 + 15 = 75. The answer is right.")
  (hint "3 × 20 = 60."))
```

```check
(number
  (ask "A bus has 48 seats. 5 rows of 6 seats are full. How many seats are empty?")
  (answer 18) (from "48 - 5 * 6")
  (wrong-if 30 "30 is the full seats. The empty seats are what is left: 48 - 30.")
  (wrong-if 78 "That adds. The full seats are part of the 48: 48 - 30.")
  (hint "5 × 6 = 30 full seats."))
```

So: check every answer with an estimate or mental math, and ask if it fits the story.
