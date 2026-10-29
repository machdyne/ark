# Two steps: add and subtract

```lesson
(objective "Solve two-step word problems by adding and subtracting.")
(standards "3.OA.D.8")
(minutes 25)
```

You can solve a story that needs 2 steps, one after the other.

Some stories need 2 steps. Find the first answer. Then use it in the
second step.

A bus has 34 people. At a stop, 12 get off and 9 get on. How many are
on the bus now?

- Step 1: 12 get off. 34 - 12 = 22.
- Step 2: 9 get on. 22 + 9 = ?

```check
(number
  (ask "How many people are on the bus now?")
  (answer 31) (from "34 - 12 + 9")
  (wrong-if 22 "22 is only the first step. Then 9 people get on: 22 + 9.")
  (wrong-if 13 "That takes away the 9 too. The 9 people get on, so add them: 22 + 9.")
  (wrong-if 55 "The 12 people get off, so take them away. 34 - 12 = 22, then 22 + 9.")
  (hint "First 34 - 12. Then add 9."))
```

---

## Find the hidden question

Many 2-step stories hide the first question. Find it before you start.

Mia has 45 stamps. Leo has 18 more than Mia. How many do they have
together?

The hidden question: how many does Leo have? 45 + 18 = 63.

```check
(number
  (ask "How many stamps do Mia and Leo have together?")
  (answer 108) (from "45 + (45 + 18)")
  (wrong-if 63 "63 is how many Leo has. Add Mia's 45 too: 45 + 63.")
  (wrong-if 81 "45 + 18 + 18 adds Leo's extra twice. Leo has 63. Mia has 45. 45 + 63.")
  (hint "Leo has 63. Add Mia's 45."))
```

---

## Write it with a letter

You can write a 2-step story as one equation. Let $p$ be the people on
the bus at the end: 34 - 12 + 9 = p. Work from left to right.

```check
(number
  (ask "200 - 75 - 50 = t. What is t?")
  (answer 75) (from "200 - 75 - 50")
  (wrong-if 175 "Work left to right: 200 - 75 = 125, then 125 - 50 = 75.")
  (wrong-if 225 "Both are take-aways: 200 - 75 = 125, then take away 50 more.")
  (hint "200 - 75 = 125. Then take away 50."))
```

---

## Worked example

```example
(example
  (problem "A shop had 250 hats. It sold 120 on Monday and 85 on Tuesday. How many hats are left?")
  (step "Step 1: 250 - 120 = 130 hats left after Monday.")
  (step "Step 2: 130 - 85 = 45 hats left after Tuesday.")
  (step "Check: 250 - 100 - 100 = 50. 45 is close.")
  (answer "45 hats are left."))
```

```example
(example
  (problem "Jo read 38 pages on Saturday. On Sunday she read 15 more than on Saturday. How many pages did she read in all?")
  (step "Hidden question: Sunday's pages. 38 + 15 = 53.")
  (step "Now add both days: 38 + 53.")
  (step (number (ask "38 + 53 = ?") (answer 91) (from "38 + 53")
    (wrong-if 53 "53 is Sunday only. Add Saturday's 38 too.")))
  (answer "Jo read 91 pages."))
```

---

## Practice

```check
(number
  (ask "Ty has 120 blocks. He uses 45 for a tower and 38 for a wall. How many blocks are left?")
  (answer 37) (from "120 - 45 - 38")
  (wrong-if 75 "75 is the blocks left after the tower. He also uses 38 for the wall: 75 - 38.")
  (wrong-if 203 "He uses the blocks, so take them away. 120 - 45 = 75, then 75 - 38.")
  (hint "120 - 45 = 75. Then take away 38."))
```

```check
(number
  (ask "A red box holds 64 beads. A blue box holds 27 fewer. How many beads are in both boxes?")
  (answer 101) (from "64 + (64 - 27)")
  (wrong-if 37 "37 is the blue box only. Add the red box too: 64 + 37.")
  (wrong-if 91 "64 + 27 adds the difference, not the blue box. The blue box has 64 - 27 = 37.")
  (hint "Blue box: 64 - 27. Then add both boxes."))
```

---

```check
(number
  (ask "A class has 26 children. 4 leave and 7 join. How many children are in the class now?")
  (answer 29) (from "26 - 4 + 7")
  (wrong-if 15 "The 7 children join, so add them. 26 - 4 = 22, then 22 + 7.")
  (wrong-if 37 "The 4 children leave, so take them away. 26 - 4 = 22, then 22 + 7.")
  (hint "26 - 4 first."))
```

So: in a 2-step story, find the first answer, then use it in the second step.
