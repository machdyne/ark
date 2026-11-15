# Mixed word problems

```lesson
(objective "Solve word problems that need any of adding, subtracting, multiplying and dividing with big numbers.")
(standards "4.OA.A.3" "4.NBT.B.4" "4.NBT.B.5" "4.NBT.B.6")
(minutes 30)
```

You can choose the right operation for a story, and then solve it.

Ask what the story does:

| The story | Use |
|---|---|
| puts amounts together | add |
| takes away, or asks how many more | subtract |
| has equal groups, or times as many as a known amount | multiply |
| shares equally, or asks how many groups or how many times | divide |

```check
(choice
  (ask "A town had 63,275 people. Now it has 100,000. How many more people live there now?")
  (right "Subtract: 100,000 - 63,275" (true "100000 - 63275 = 36725"))
  (wrong "Add: 100,000 + 63,275"
    "\"How many more\" asks for the difference between 2 amounts: subtract.")
  (wrong "Divide: 100,000 ÷ 63,275"
    "Dividing asks how many times as many. \"How many more\" asks for a difference: subtract.")
  (hint "\"How many more\" compares by subtracting."))
```

---

## Solve it

Now work it out. Subtract across the zeros: 100,000 - 63,275.

```check
(number
  (ask "100,000 - 63,275 = ?")
  (answer 36725) (from "100000 - 63275")
  (wrong-if 163275 "0 - 5 is not 5. Regroup across the zeros: 9s, and 10 in the ones.")
  (wrong-if 46725 "You took 1 hundred thousand to regroup, so the ten thousands become 9, not 10.")
  (hint "100,000 is 9 ten thousands, 9 thousands, 9 hundreds, 9 tens, 10 ones.")
  (hint "Then subtract each place."))
```

---

## Equal groups

A factory makes 1,365 toys a day. How many toys does it make in 7
days? Equal groups: multiply.

```check
(number
  (ask "7 × 1,365 = ?")
  (answer 9555) (from "7 * 1000 + 7 * 300 + 7 * 60 + 7 * 5") (true "7 * 1365 = 9555")
  (wrong-if 7365 "That multiplies only the thousands. Each place is multiplied by 7: 7,000 + 2,100 + 420 + 35.")
  (wrong-if 1372 "That adds 7. 7 days of 1,365 toys is 7 × 1,365.")
  (hint "7,000 + 2,100 + 420 + 35 = ?"))
```

---

## Sharing, with a remainder

2,500 stickers go into packs of 8. How many full packs are there?
Divide, then decide what the remainder means.

```check
(number
  (ask "2,500 ÷ 8 = 312 R 4. How many full packs are there?")
  (answer 312) (unit "packs") (from "(2500 - 4) / 8") (true "2500 = 8 * 312 + 4")
  (wrong-if 313 "4 stickers do not fill a pack. Only full packs count: 312.")
  (wrong-if 4 "4 is the stickers left over. The question asks for full packs.")
  (hint "Do the 4 stickers left fill a pack?"))
```

---

## Worked example

```example
(example
  (problem "Two games had 45,872 and 38,659 fans. How many fans in all?")
  (step "Put the amounts together: add.")
  (step "45,872 + 38,659, place by place with regrouping.")
  (step "Estimate: 46,000 + 39,000 = 85,000. Close.")
  (answer "84,531 fans"))
```

```example
(example
  (problem "A shop has 6 boxes of 1,250 nails. It sells 2,875 nails. How many are left?")
  (step "Equal groups first: 6 × 1,250 = 7,500.")
  (step "Then take away: 7,500 - 2,875 = n.")
  (step (number (ask "What is n?") (answer 4625) (unit "nails") (from "6 * 1250 - 2875")
    (wrong-if 5375 "7,500 - 2,875: regroup in each place where the top is smaller. Check by adding back.")))
  (answer "4,625 nails are left."))
```

---

## Practice

```check
(number
  (ask "A ride holds 9 people. 1,000 people want to ride once. How many rides are needed for everyone?")
  (answer 112) (unit "rides") (from "(1000 - 1) / 9 + 1") (true "1000 = 9 * 111 + 1")
  (wrong-if 111 "1,000 ÷ 9 = 111 R 1. 1 person is still waiting and needs a ride too.")
  (hint "1,000 ÷ 9 = 111 R 1."))
```

```check
(number
  (ask "A city plants 12,500 trees, then 8,750 more. Then 4,300 are moved to a park. How many are left?")
  (answer 16950) (unit "trees") (from "12500 + 8750 - 4300")
  (wrong-if 21250 "21,250 is all the trees planted. 4,300 were moved: take them away.")
  (wrong-if 25550 "The 4,300 trees were moved away, so subtract them, not add.")
  (hint "12,500 + 8,750 = 21,250."))
```

---

```check
(number
  (ask "A runner runs 5,280 feet in 4 equal laps. How many feet is each lap?")
  (answer 1320) (unit "feet") (from "5280 / 4") (true "4 * 1320 = 5280")
  (wrong-if 21120 "Each lap is a part of the run, so it is shorter. Divide: 5,280 ÷ 4.")
  (wrong-if 132 "5,280 ÷ 4: 5 thousands ÷ 4 = 1, 1 left. 12 hundreds ÷ 4 = 3. 8 tens ÷ 4 = 2. 0 ones ÷ 4 = 0: 1,320.")
  (hint "Share place by place: thousands, hundreds, tens, ones."))
```

```check
(number
  (ask "A class has 24 children. Each reads 15 books. How many books do they read in all?")
  (answer 360) (unit "books") (from "24 * 15")
  (wrong-if 39 "That adds 24 + 15. 24 children reading 15 books each is equal groups: 24 × 15.")
  (wrong-if 220 "That adds only 20 × 10 and 4 × 5. Add 4 × 10 = 40 and 20 × 5 = 100 too.")
  (hint "The partial products are 200, 40, 100 and 20."))
```

So: choose the operation, solve, and check that the answer makes sense.
