# Words and sums

```lesson
(objective "Use PRINT to show words in quotes and the answers of sums.")
(standards "1B-AP-10")
(minutes 20)
```

In this lesson you make the computer show words, and work out sums.

Look at these two lines. They look nearly the same.

```basic
10 PRINT "2 + 3"
20 PRINT 2 + 3
```

Line 10 has quotes. The computer shows what is inside them, just as it
is: 2 + 3.

Line 20 has no quotes. So the computer works out the sum, and shows
the answer: 5.

```figure
(cs1-shows '("2 + 3" "5"))
(caption "What RUN shows")
```

```check
(choice
  (ask "What does 10 PRINT \"4 + 4\" show?")
  (right "4 + 4")
  (wrong "8"
    "The sum is inside quotes. The computer shows what is in quotes just as it is, and does not work it out.")
  (wrong "\"4 + 4\""
    "The quotes tell the computer where the words start and end. They are not shown.")
  (hint "Are there quotes around the sum?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: PRINT")
```

---

## Plus, minus, times, divide

BASIC uses these signs for sums:

| Sign | Means | Example | Shows |
|---|---|---|---|
| + | plus | PRINT 2 + 3 | 5 |
| - | minus | PRINT 10 - 4 | 6 |
| * | times | PRINT 4 * 3 | 12 |
| / | divided by | PRINT 12 / 3 | 4 |

A keyboard has no times sign, so BASIC uses the star, *. It has no
divide sign either, so BASIC uses the slash, /.

```check
(number
  (ask "What does 10 PRINT 6 * 7 show?")
  (answer 42) (from "6 * 7")
  (wrong-if 13 "13 is 6 + 7. The star, *, means times: 6 times 7.")
  (wrong-if 67 "The computer does not put 6 and 7 side by side. The star means times.")
  (hint "The star means times."))
```

---

## Only whole numbers

This BASIC knows only whole numbers. When a divide does not come out
even, it drops the part left over.

```basic
10 PRINT 7 / 2
```

7 divided by 2 is 3 and a half. But this line shows 3.

```check
(number
  (ask "What does 10 PRINT 9 / 2 show in BASIC?")
  (answer 4) (from "(9 - 1) / 2")
  (wrong-if 4.5 "4 and a half is right in math. But this BASIC keeps only whole numbers, so it drops the half.")
  (wrong-if 5 "BASIC does not round up. It drops the part left over, so 4 and a half becomes 4.")
  (hint "9 divided by 2 is 4 and a half. What does BASIC do with the half?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 2 (only whole numbers) and section 4 (/)")
```

---

## Words, then the answer

A program can show words and then an answer.

```basic
10 PRINT "4 * 3 IS"
20 PRINT 4 * 3
```

```figure
(cs1-shows '("4 * 3 IS" "12"))
(caption "What RUN shows")
```

```check
(choice
  (ask "Which line shows the words 10 - 4 on the screen?")
  (right "PRINT \"10 - 4\"")
  (wrong "PRINT 10 - 4"
    "Without quotes, the computer works out the sum and shows 6. To show the words, put them in quotes.")
  (wrong "PRINT 6"
    "This shows the answer, 6, not the words 10 - 4.")
  (hint "Quotes show things just as they are."))
```

---

## Worked example

```example
(example
  (problem "Write a program that shows 5 * 8 IS and then the answer.")
  (step "The words go in quotes: 10 PRINT \"5 * 8 IS\".")
  (step "The sum has no quotes, so the computer works it out: 20 PRINT 5 * 8.")
  (step "RUN shows 5 * 8 IS, then 40.")
  (answer "10 PRINT \"5 * 8 IS\" and 20 PRINT 5 * 8"))
```

```example
(example
  (problem "Write a program that shows 20 / 4 IS and then the answer.")
  (step "The words: 10 PRINT \"20 / 4 IS\".")
  (step "The sum: 20 PRINT 20 / 4.")
  (step (number (ask "What number does line 20 show?") (answer 5) (from "20 / 4")
    (wrong-if 16 "16 is 20 - 4. The slash, /, means divided by.")))
  (answer "20 / 4 IS, then 5"))
```

---

## Practice

```check
(number
  (ask "What does 10 PRINT 100 - 1 show?")
  (answer 99) (from "100 - 1")
  (hint "The minus sign takes away."))
```

```check
(choice
  (ask "What does 10 PRINT \"5 * 5\" show?")
  (right "5 * 5")
  (wrong "25"
    "The sum is in quotes, so the computer shows it just as it is.")
  (wrong "10"
    "The star means times, not plus. But here the sum is in quotes, so it is not worked out at all.")
  (hint "Look for the quotes."))
```

---

```check
(number
  (ask "What does 10 PRINT 5 * 5 show?")
  (answer 25) (from "5 * 5")
  (wrong-if 10 "10 is 5 + 5. The star means times.")
  (hint "There are no quotes, so the computer works it out. The star means times."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW and press Enter to start a new program. Write a program that shows 12 * 12 IS and then the answer. Run it, then come back.")
  (check (number
    (ask "What answer did it show?")
    (answer 144) (from "12 * 12")
    (wrong-if 24 "24 is 12 + 12. Use the star, *, for times.")
    (hint "Line 20 can be 20 PRINT 12 * 12."))))
```

So: words in quotes are shown just as they are, and a sum without quotes is worked out, with whole numbers only.
