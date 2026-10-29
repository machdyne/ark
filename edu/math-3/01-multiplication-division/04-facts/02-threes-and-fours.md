# Threes and fours

```lesson
(objective "Know the multiplication facts of 3 and 4.")
(standards "3.OA.C.7")
(minutes 20)
```

You can learn the facts of 3 and 4 by counting and doubling.

## Threes

Count by 3s: 3, 6, 9, 12, 15, 18, 21, 24, 27, 30. These are the first
10 multiples of 3. Each one is 3 more than the one before.

Pick 3 or 4 to see its facts in the table.

```figure
(define i (choice 'k '("3" "4") "Facts of"))
(md-table 50 8 1 10 20 (+ 3 i) 0 #f)
```

```check
(number
  (ask "3 × 6 = ?")
  (answer 18) (from "3 * 6")
  (wrong-if 9 "9 is 3 + 6. 3 × 6 is 3 groups of 6, or 6 threes: 3, 6, 9, 12, 15, 18.")
  (wrong-if 15 "15 is 3 × 5. One more 3 makes 18.")
  (hint "Count by 3s, 6 times."))
```

---

## A trick for 3s

3 × a number is double the number, plus the number once more.

3 × 7: double 7 is 14, and 14 + 7 = 21. So 3 × 7 = 21.

```check
(number
  (ask "3 × 8 = ?")
  (answer 24) (from "3 * 8") (true "8 + 8 + 8 = 24")
  (wrong-if 16 "16 is double 8, which is 2 × 8. Add one more 8: 16 + 8 = 24.")
  (wrong-if 11 "11 is 3 + 8. 3 × 8 is 8 + 8 + 8.")
  (hint "Double 8 is 16. Add 8 more."))
```

---

## Fours

4 is double 2. So 4 × a number is double the 2s fact. 4 × 7: 2 × 7 = 14,
and 14 + 14 = 28.

The first 10 multiples of 4 are 4, 8, 12, 16, 20, 24, 28, 32, 36, 40. They are all
even.

```check
(number
  (ask "4 × 6 = ?")
  (answer 24) (from "4 * 6")
  (wrong-if 10 "10 is 4 + 6. Double 2 × 6 = 12: 12 + 12 = 24.")
  (wrong-if 20 "20 is 4 × 5. One more 4 makes 24.")
  (hint "2 × 6 = 12. Double 12."))
```

---

## Worked example

```example
(example
  (problem "Find 4 × 9.")
  (step "4 is double 2. First find 2 × 9 = 18.")
  (step "Double 18: 18 + 18.")
  (step "10 + 10 = 20 and 8 + 8 = 16. 20 + 16 = 36.")
  (answer "4 × 9 = 36"))
```

```example
(example
  (problem "Find 3 × 9.")
  (step "Double 9 is 18.")
  (step "Add one more 9: 18 + 9.")
  (step (number (ask "18 + 9 = ?") (answer 27) (from "18 + 9") (true "3 * 9 = 27")
    (wrong-if 26 "18 + 9: 18 + 2 = 20, then 7 more is 27.")))
  (answer "3 × 9 = 27"))
```

---

## Practice

```check
(number
  (ask "4 × 8 = ?")
  (answer 32) (from "4 * 8")
  (wrong-if 12 "12 is 4 + 8. Double 2 × 8 = 16: 16 + 16 = 32.")
  (hint "2 × 8 = 16. Double it."))
```

```check
(number
  (ask "3 × 4 = ?")
  (answer 12) (from "3 * 4")
  (wrong-if 7 "7 is 3 + 4. 3 × 4 is 4 + 4 + 4.")
  (hint "Count by 4s, 3 times."))
```

```check
(number
  (ask "4 × 4 = ?")
  (answer 16) (from "4 * 4")
  (wrong-if 8 "8 is 4 + 4, which is only 2 fours. 4 × 4 is 4 fours: 4, 8, 12, 16.")
  (hint "2 × 4 = 8. Double it."))
```

---

```check
(number
  (ask "Each table in a room has 4 legs. How many legs do 7 tables have?")
  (answer 28) (unit "legs") (from "7 * 4")
  (wrong-if 11 "11 is 7 + 4. 7 tables of 4 legs is 7 × 4, the same as 4 × 7.")
  (hint "4 × 7: double 2 × 7 = 14."))
```

```check
(choice
  (ask "Which number is a multiple of 3?")
  (right "21" (true "3 * 7 = 21"))
  (wrong "13"
    "13 has a 3 in it, but the 3s count goes 12, 15. It skips 13.")
  (wrong "20"
    "The 3s count goes 18, 21. It skips 20.")
  (hint "Count by 3s: 3, 6, 9, 12, 15, 18, 21 ..."))
```

So: count by 3s or use double plus one more for 3s, and double the 2s for 4s.
