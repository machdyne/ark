# Sixes and eights

```lesson
(objective "Know the multiplication facts of 6 and 8.")
(standards "3.OA.C.7")
(minutes 20)
```

You can learn the facts of 6 and 8 from facts you already know.

## Sixes: 5s and 1 more

6 is 5 + 1. So 6 × a number is 5 × the number, plus the number once
more. 6 × 7: 5 × 7 = 35, and 35 + 7 = 42.

```figure
(define i (choice 'k '("6" "8") "Facts of"))
(md-table 50 8 1 10 20 (+ 6 (* 2 i)) 0 #f)
```

```check
(number
  (ask "6 × 4 = ?")
  (answer 24) (from "6 * 4") (true "5 * 4 + 4 = 24")
  (wrong-if 10 "10 is 6 + 4. Find 5 × 4 = 20, then add one more 4.")
  (wrong-if 20 "20 is 5 × 4. 6 fours is one more 4: 20 + 4 = 24.")
  (hint "5 × 4 = 20. Add 4."))
```

---

## Sixes: double the 3s

6 is double 3. So 6 × a number is double the 3s fact. 6 × 8: 3 × 8 = 24,
and 24 + 24 = 48.

When you multiply 6 by an even number, the product ends in the same
digit: 6 × 2 = 12, 6 × 4 = 24, 6 × 6 = 36, 6 × 8 = 48.

```check
(number
  (ask "6 × 6 = ?")
  (answer 36) (from "6 * 6")
  (wrong-if 12 "12 is 6 + 6. 6 × 6 is double 3 × 6 = 18: 18 + 18 = 36.")
  (wrong-if 30 "30 is 5 × 6. Add one more 6: 30 + 6 = 36.")
  (hint "3 × 6 = 18. Double it."))
```

---

## Eights: double, double, double

8 is double 4, and 4 is double 2. So you can find an 8s fact by doubling
3 times. 8 × 3: double 3 is 6, double 6 is 12, double 12 is 24.

The first 10 multiples of 8 are 8, 16, 24, 32, 40, 48, 56, 64, 72, 80.

```check
(number
  (ask "8 × 4 = ?")
  (answer 32) (from "8 * 4")
  (wrong-if 12 "12 is 8 + 4. Double 4 three times: 8, 16, 32.")
  (wrong-if 16 "16 is 4 × 4: you doubled only twice. Double once more: 32.")
  (hint "Double 4 three times: 8, 16, ..."))
```

---

## Worked example

```example
(example
  (problem "Find 8 × 7.")
  (step "8 is double 4. First find 4 × 7 = 28.")
  (step "Double 28: 28 + 28.")
  (step "20 + 20 = 40 and 8 + 8 = 16. 40 + 16 = 56.")
  (answer "8 × 7 = 56"))
```

```example
(example
  (problem "Find 6 × 9.")
  (step "6 is 5 + 1. First find 5 × 9 = 45.")
  (step "Add one more 9: 45 + 9.")
  (step (number (ask "45 + 9 = ?") (answer 54) (from "45 + 9") (true "6 * 9 = 54")
    (wrong-if 44 "45 + 9 is more than 50: 45 + 5 = 50, then 4 more is 54.")))
  (answer "6 × 9 = 54"))
```

---

## Practice

```check
(number
  (ask "8 × 6 = ?")
  (answer 48) (from "8 * 6")
  (wrong-if 14 "14 is 8 + 6. Swap to 6 × 8: double 3 × 8 = 24, so 48.")
  (wrong-if 42 "42 is 6 × 7. 8 × 6 is 6 eights: 8, 16, 24, 32, 40, 48.")
  (hint "4 × 6 = 24. Double it."))
```

```check
(number
  (ask "6 × 3 = ?")
  (answer 18) (from "6 * 3")
  (wrong-if 9 "9 is 6 + 3. 6 × 3 is 3 + 3 + 3 + 3 + 3 + 3.")
  (hint "Double 3 × 3 = 9."))
```

```check
(number
  (ask "8 × 8 = ?")
  (answer 64) (from "8 * 8")
  (wrong-if 16 "16 is 8 + 8. 8 × 8 is double 4 × 8 = 32: 32 + 32 = 64.")
  (wrong-if 56 "56 is 7 × 8. One more 8 makes 64.")
  (hint "4 × 8 = 32. Double it."))
```

---

```check
(number
  (ask "A box holds 8 crayons. How many crayons are in 9 boxes?")
  (answer 72) (unit "crayons") (from "9 * 8")
  (wrong-if 17 "17 is 9 + 8. There are 9 groups of 8: 9 × 8.")
  (wrong-if 64 "64 is 8 boxes. Add one more 8: 72.")
  (hint "Think 8 × 9: 8 × 10 = 80, take away one 8."))
```

```check
(number
  (ask "6 × 7 = ?")
  (answer 42) (from "6 * 7")
  (wrong-if 13 "13 is 6 + 7. 5 × 7 = 35, then one more 7: 42.")
  (hint "5 × 7 = 35. Add 7."))
```

So: find 6s as 5s plus 1 more or double 3s, and find 8s by doubling 4s.
