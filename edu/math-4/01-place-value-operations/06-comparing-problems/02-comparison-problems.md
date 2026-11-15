# Comparison problems

```lesson
(objective "Solve comparison word problems by multiplying or dividing with a tape diagram, and tell them apart from problems that compare by adding or subtracting.")
(standards "4.OA.A.2")
(minutes 25)
```

You can solve stories that compare 2 amounts by "times as many".

A blue rope is 6 feet long. A red rope is 4 times as long. How long is
the red rope?

Draw a tape for each rope. The red tape is 4 copies of the blue one.
The bigger amount is unknown, so multiply: r = 4 × 6.

```figure
(text 60 72 "blue" 'right 'body 'bold)
(m4p1-tape 70 52 50 30 1 "6" "")
(text 60 152 "red" 'right 'body 'bold)
(m4p1-tape 70 132 200 30 4 "6" "r")
(caption "r = 4 × 6")
```

```check
(number
  (ask "How long is the red rope?")
  (answer 24) (unit "feet") (from "4 * 6")
  (wrong-if 10 "That adds 6 + 4. \"4 times as long\" means 4 copies of 6: multiply.")
  (wrong-if 2 "Dividing makes it shorter. The red rope is longer: 4 × 6.")
  (hint "The red tape is 4 copies of 6 feet."))
```

---

## The smaller amount unknown

A tree is 32 feet tall. It is 4 times as tall as a bush. How tall is
the bush?

Now the bigger amount is known. The tree's tape is 4 equal parts, and
one part is the bush. Divide: b = 32 ÷ 4 = 8.

```figure
(text 60 72 "bush" 'right 'body 'bold)
(m4p1-tape 70 52 50 30 1 "b" "")
(text 60 152 "tree" 'right 'body 'bold)
(m4p1-tape 70 132 200 30 4 "b" "32")
(caption "4 × b = 32, so b = 32 ÷ 4")
```

```check
(number
  (ask "A house is 45 feet tall. It is 5 times as tall as a fence. How tall is the fence?")
  (answer 9) (unit "feet") (from "45 / 5") (true "5 * 9 = 45")
  (wrong-if 225 "The fence is the smaller amount, so the answer must be less than 45. Divide: 45 ÷ 5.")
  (wrong-if 40 "That subtracts 45 - 5. The house is 5 fences tall: 45 ÷ 5.")
  (hint "The house's tape has 5 equal parts. One part is the fence.")
  (hint "45 ÷ 5 = ?"))
```

---

## How many times?

Sam has 45 cards. Lia has 9 cards. How many times as many cards does
Sam have?

Ask: 45 = ? × 9. Divide: 45 ÷ 9 = 5. Sam has 5 times as many.

```check
(number
  (ask "A school has 56 computers and 8 printers. How many times as many computers as printers are there?")
  (answer 7) (from "56 / 8") (true "56 = 7 * 8")
  (wrong-if 48 "48 is how many more: 56 - 8. The question asks how many times as many: 56 = ? × 8.")
  (wrong-if 448 "56 is the bigger amount already. Find how many 8s make 56: 56 ÷ 8.")
  (hint "56 = ? × 8"))
```

---

## Times as many or more than?

Some stories compare by adding. "How many more?" or "how many fewer?"
asks for a difference: subtract.

- Sam has 45 cards and Lia has 9. Sam has 45 - 9 = 36 more cards.
- Sam has 45 ÷ 9 = 5 times as many cards.

```check
(choice
  (ask "Jen reads 24 pages. Max reads 3 times as many. Which equation finds m, Max's pages?")
  (right "m = 3 × 24" (true "3 * 24 = 72"))
  (wrong "m = 24 + 3"
    "That is 3 more pages, not 3 times as many. Times as many means 3 copies of 24.")
  (wrong "m = 24 ÷ 3"
    "Max reads more than Jen, so his amount is bigger. Multiply: 3 × 24.")
  (hint "\"Times as many\": multiply or divide. \"More\": add or subtract."))
```

```check
(choice
  (ask "Jen reads 24 pages. Max reads 3 more pages than Jen. Which equation finds m?")
  (right "m = 24 + 3" (true "24 + 3 = 27"))
  (wrong "m = 3 × 24"
    "\"3 more\" adds 3 pages. \"3 times as many\" would multiply.")
  (wrong "m = 24 - 3"
    "Max reads more, so add: 24 + 3.")
  (hint "\"More than\" compares by adding."))
```

---

## Worked example

```example
(example
  (problem "A cat is 9 years old. Its owner is 4 times as old. How old is the owner?")
  (step "The owner's age is the bigger amount, and it is unknown.")
  (step "Its tape is 4 copies of 9: a = 4 × 9.")
  (step "4 × 9 = 36.")
  (answer "The owner is 36 years old."))
```

```example
(example
  (problem "A bike costs 120 dollars. That is 3 times as much as a helmet. How much is the helmet?")
  (step "The bike is the bigger amount, and it is known.")
  (step "The bike's tape is 3 equal parts. One part is the helmet: h = 120 ÷ 3.")
  (step (number (ask "What is h?") (answer 40) (unit "dollars") (from "120 / 3") (true "3 * 40 = 120")
    (wrong-if 360 "The helmet costs less than the bike, so divide: 120 ÷ 3.")))
  (answer "The helmet costs 40 dollars."))
```

---

## Practice

```check
(number
  (ask "A van holds 8 people. A bus holds 7 times as many. How many people does the bus hold?")
  (answer 56) (unit "people") (from "7 * 8")
  (wrong-if 15 "That adds 8 + 7. 7 times as many means 7 × 8.")
  (hint "The bus is 7 vans' worth of people."))
```

```check
(number
  (ask "Kim has 63 marbles. That is 9 times as many as Tom has. How many marbles does Tom have?")
  (answer 7) (unit "marbles") (from "63 / 9") (true "9 * 7 = 63")
  (wrong-if 567 "Tom has fewer: Kim's 63 is 9 times Tom's. Divide: 63 ÷ 9.")
  (wrong-if 54 "That subtracts 63 - 9. Kim has 9 times as many, not 9 more.")
  (hint "9 × ? = 63"))
```

---

```check
(number
  (ask "A whale is 60 feet long. A dolphin is 10 feet long. How many more feet long is the whale?")
  (answer 50) (unit "feet") (from "60 - 10")
  (wrong-if 6 "6 is how many times as long. \"How many more\" asks for the difference: 60 - 10.")
  (hint "\"How many more\" means subtract."))
```

```check
(number
  (ask "A whale is 60 feet long. A dolphin is 10 feet long. How many times as long as the dolphin is the whale?")
  (answer 6) (from "60 / 10") (true "60 = 6 * 10")
  (wrong-if 50 "50 is how many feet more. \"How many times\" asks 60 = ? × 10.")
  (hint "60 = ? × 10"))
```

So: for "times as many", multiply or divide; for "more", add or subtract.
