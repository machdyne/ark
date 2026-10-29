# All the facts

```lesson
(objective "Recall any product of two one-digit numbers and its related division facts quickly.")
(standards "3.OA.C.7")
(minutes 25)
```

You can now find every fact up to 9 × 9. Now make them fast.

By the end of grade 3, you should know these facts from memory. That
means you just know the answer, without counting.

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 3, standard 3.OA.C.7")
```

If you get stuck, use a strategy:

| Facts of | Strategy |
| 2 | double |
| 3 | double, plus one more |
| 4 | double the 2s |
| 5 | count by 5s, or half of 10s |
| 6 | 5s plus one more, or double the 3s |
| 7 | swap, or break into 5 + 2 |
| 8 | double the 4s |
| 9 | 10s take away one group |

```check
(number
  (ask "6 × 8 = ?")
  (answer 48) (from "6 * 8")
  (wrong-if 14 "14 is 6 + 8. Double 3 × 8 = 24: 48.")
  (wrong-if 42 "42 is 6 × 7. One more 6 makes 48.")
  (hint "Double 3 × 8."))
```

---

## Mixed facts

```check
(number
  (ask "7 × 4 = ?")
  (answer 28) (from "7 * 4")
  (wrong-if 11 "11 is 7 + 4. Swap to 4 × 7: double 2 × 7 = 14.")
  (hint "Double 14."))
```

```check
(number
  (ask "9 × 6 = ?")
  (answer 54) (from "9 * 6")
  (wrong-if 60 "60 is 10 × 6. Take away one 6: 54.")
  (hint "10 × 6 = 60. Take away 6."))
```

```check
(number
  (ask "3 × 7 = ?")
  (answer 21) (from "3 * 7")
  (wrong-if 10 "10 is 3 + 7. Double 7 is 14, plus one more 7: 21.")
  (hint "14 + 7"))
```

---

## Facts and their divisions

Each fact comes with 2 divisions. 8 × 7 = 56, so 56 ÷ 8 = 7 and
56 ÷ 7 = 8.

```check
(number
  (ask "7 × 9 = 63. What is 63 ÷ 9?")
  (answer 7) (from "63 / 9")
  (wrong-if 54 "54 is 63 - 9. The fact 7 × 9 = 63 gives 63 ÷ 9 = 7.")
  (hint "Use the same 3 numbers: 7, 9 and 63."))
```

```check
(number
  (ask "72 ÷ 8 = ?")
  (answer 9) (from "72 / 8")
  (wrong-if 64 "64 is 72 - 8. Think: 8 × ? = 72.")
  (hint "8 × 9 = 72"))
```

---

## Worked example

```example
(example
  (problem "Find 8 × 9 and its 2 division facts.")
  (step "9s: 10 × 8 = 80, take away 8: 72. So 8 × 9 = 72.")
  (step "The divisions use 8, 9 and 72.")
  (step "72 ÷ 8 = 9 and 72 ÷ 9 = 8.")
  (answer "8 × 9 = 72, 72 ÷ 8 = 9, 72 ÷ 9 = 8"))
```

```example
(example
  (problem "Find 6 × 7 and its 2 division facts.")
  (step "6s: 5 × 7 = 35, plus one more 7: 42.")
  (step "So 42 ÷ 6 = 7.")
  (step (number (ask "42 ÷ 7 = ?") (answer 6) (from "42 / 7")
    (wrong-if 35 "35 is 42 - 7. The fact 6 × 7 = 42 gives 42 ÷ 7 = 6.")))
  (answer "6 × 7 = 42, 42 ÷ 6 = 7, 42 ÷ 7 = 6"))
```

---

## Practice

```check
(number
  (ask "8 × 3 = ?")
  (answer 24) (from "8 * 3")
  (wrong-if 11 "11 is 8 + 3. 3 × 8 is double 8 plus 8: 16 + 8.")
  (hint "Double 8 is 16. Add 8."))
```

```check
(number
  (ask "36 ÷ 6 = ?")
  (answer 6) (from "36 / 6")
  (wrong-if 30 "30 is 36 - 6. Think: 6 × ? = 36.")
  (hint "6 × 6 = ?"))
```

```check
(number
  (ask "4 × 9 = ?")
  (answer 36) (from "4 * 9")
  (wrong-if 13 "13 is 4 + 9. 10 × 4 = 40, take away 4: 36.")
  (hint "The tens digit is 1 less than 4."))
```

---

```check
(number
  (ask "56 ÷ 7 = ?")
  (answer 8) (from "56 / 7")
  (wrong-if 49 "49 is 56 - 7. Think: 7 × ? = 56.")
  (hint "7 × 8 = ?"))
```

```check
(number
  (ask "7 × 7 = ?")
  (answer 49) (from "7 * 7")
  (wrong-if 14 "14 is 7 + 7. 7 × 5 = 35 and 7 × 2 = 14: 35 + 14.")
  (hint "35 + 14"))
```

```check
(number
  (ask "45 ÷ 9 = ?")
  (answer 5) (from "45 / 9")
  (wrong-if 36 "36 is 45 - 9. Think: 9 × ? = 45.")
  (hint "9 × 5 = ?"))
```

---

## Keep practicing

These cards go into your review. Answer each one without counting.

```cards
(card "6 × 7" "42" (typed))
(card "7 × 8" "56" (typed))
(card "8 × 8" "64" (typed))
(card "6 × 9" "54" (typed))
(card "7 × 9" "63" (typed))
(card "8 × 9" "72" (typed))
(card "56 ÷ 8" "7" (typed))
(card "63 ÷ 7" "9" (typed))
(card "48 ÷ 6" "8" (typed))
(card "54 ÷ 9" "6" (typed))
```

```check
(number
  (ask "9 × 8 = ?")
  (answer 72) (from "9 * 8")
  (wrong-if 81 "81 is 9 × 9. 9 × 8 is one 9 less: 72.")
  (hint "10 × 8 = 80. Take away 8."))
```

So: use a strategy when you must, and practice until every fact comes from memory.
