# Pattern problems

```lesson
(objective "Solve word problems with patterns, such as money saved by the same amount each week.")
(standards "4.OA.C.5")
(minutes 25)
```

You can solve word problems by finding the pattern in them.

Leo has 5 dollars. He saves 3 dollars more each week. His money makes
a pattern: start at 5, add 3.

| Weeks | 0 | 1 | 2 | 3 | 4 |
| Dollars | 5 | 8 | 11 | 14 | 17 |

```figure
(m4p2-terms 70 '(5 8 11 14 17) "+3")
(caption "Leo's dollars, week 0 to week 4")
```

```check
(number
  (ask "How many dollars does Leo have after 6 weeks?")
  (answer 23) (from "5 + 6 * 3") (unit "dollars")
  (wrong-if 18 "18 is 6 × 3, the money he saves. He also had 5 dollars at the start: 5 + 18.")
  (wrong-if 20 "20 is after 5 weeks: 5 + 15. After 6 weeks it is 3 more.")
  (hint "After 4 weeks he has 17. Add 3 for each more week."))
```

---

## When is the goal reached?

Leo wants 20 dollars. Keep adding 3: 5, 8, 11, 14, 17, 20. He has 20
dollars after 5 weeks.

```check
(number
  (ask "Eva has 2 dollars and saves 4 dollars each week. After how many weeks does she have 30 dollars?")
  (answer 7) (from "(30 - 2) / 4") (unit "weeks")
  (wrong-if 8 "Week 0 is the start, with 2 dollars. Count the weeks after it: 6, 10, 14, 18, 22, 26, 30. That is 7.")
  (wrong-if 28 "28 is the money she still needs. Each week she saves 4, so divide: 28 ÷ 4.")
  (hint "Write 2, 6, 10, 14 ... and count the steps to 30."))
```

---

## Patterns that go down

Mia has 40 stickers. She gives away 5 each day: 40, 35, 30, 25 ... The
rule is "start at 40, subtract 5".

```check
(number
  (ask "How many stickers does Mia have after 6 days?")
  (answer 10) (from "40 - 6 * 5") (unit "stickers")
  (wrong-if 15 "15 is after 5 days. Subtract 5 once more.")
  (wrong-if 30 "30 is the stickers she gives away in 6 days. She has 40 - 30 left.")
  (hint "Write 40, 35, 30 ... one term for each day."))
```

---

## A multiplying problem

A club has 4 members in week 1. Each week, the number of members
doubles. The rule is "start at 4, multiply by 2": 4, 8, 16 ...

```check
(number
  (ask "How many members does the club have in week 4?")
  (answer 32) (from "4 * 2 * 2 * 2")
  (wrong-if 10 "10 adds 2 each week. The rule doubles: 4, 8, 16, 32.")
  (wrong-if 16 "16 is week 3. Week 1 is 4, week 2 is 8, week 3 is 16, week 4 is 32.")
  (hint "Write 4 for week 1, then double for each week."))
```

---

## Use a feature

Can Leo ever have exactly 30 dollars? His money is 5, 8, 11, 14 ...
What he saves after the start is always a multiple of 3. 30 - 5 = 25, and 25 is
not a multiple of 3. So no.

```check
(choice
  (ask "Ben has 1 dollar and saves 2 dollars each week. Can he ever have exactly 20 dollars?")
  (right "No: he always has an odd number of dollars")
  (wrong "Yes, after 10 weeks"
    "After 10 weeks he has 1 + 20 = 21 dollars. 1 is odd and 2 is even, so his money is always odd.")
  (wrong "Yes, because 20 is even and he saves 2"
    "He saves an even amount, but he starts with 1, an odd amount. Odd + even is odd, so he never has 20.")
  (hint "Write 1, 3, 5, 7 ... Are these odd or even?"))
```

---

## Worked example

```example
(example
  (problem "A plant is 6 cm tall. It grows 2 cm each week. How tall is it after 5 weeks?")
  (step "The pattern is start at 6, add 2.")
  (step "After 5 weeks it has grown 5 × 2 = 10 cm.")
  (step "6 + 10 = 16.")
  (answer "16 cm."))
```

```example
(example
  (problem "A tank holds 50 liters. 8 liters are used each day. How many liters are left after 4 days?")
  (step "The pattern is start at 50, subtract 8.")
  (step "In 4 days, 4 × 8 = 32 liters are used.")
  (step (number (ask "50 - 32 = ?")
    (answer 18) (from "50 - 32")
    (wrong-if 22 "Subtract with care: 50 - 30 = 20, then 20 - 2 = 18.")))
  (answer "18 liters."))
```

---

## Practice

```check
(number
  (ask "A theater has 12 seats in row 1. Each row has 3 more seats than the row in front. How many seats are in row 8?")
  (answer 33) (from "12 + 7 * 3") (unit "seats")
  (wrong-if 36 "36 is row 9. Row 8 is 7 rows after row 1: 12 + 7 × 3.")
  (wrong-if 24 "24 is 8 × 3. Row 1 already has 12 seats, and 7 more rows each add 3.")
  (hint "Row 1 has 12. From row 1 to row 8 is 7 steps of 3."))
```

```check
(number
  (ask "Sara reads 15 pages a day. After how many days has she read 90 pages?")
  (answer 6) (from "90 / 15") (unit "days")
  (wrong-if 75 "75 is 90 - 15. Each day adds 15 pages: 15, 30, 45 ... Count the days to 90.")
  (wrong-if 5 "After 5 days she has read 75 pages. One more day makes 90.")
  (hint "Count by 15s to 90."))
```

---

```check
(choice
  (ask "Tom has 20 dollars and spends 3 dollars a day. Can he have exactly 0 dollars left?")
  (right "No: 20 is not a multiple of 3")
  (wrong "Yes, after 7 days"
    "After 6 days he has 2 dollars, and he cannot spend 3. 20 - 21 would be below 0. 20 is not a multiple of 3.")
  (wrong "Yes, after 20 days"
    "He spends 3 dollars a day, not 1. After 6 days he has 2 dollars left, and 20 is not a multiple of 3.")
  (hint "Write 20, 17, 14 ... Do you reach 0?"))
```

```check
(number
  (ask "A pattern of savings doubles each month. It is 3 dollars in month 1. How much is it in month 5?")
  (answer 48) (from "3 * 2 * 2 * 2 * 2") (unit "dollars")
  (wrong-if 15 "15 is 3 × 5 or 3 + 3 + 3 + 3 + 3. The rule doubles: 3, 6, 12, 24, 48.")
  (wrong-if 24 "24 is month 4. Double once more.")
  (hint "Write 3, 6, 12 ... one term a month."))
```

So: find the rule in the story and write the terms. Then use the
pattern or its features to answer.
