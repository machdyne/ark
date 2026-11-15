# Choices in loops

```lesson
(objective "Put a choice inside a loop to pick out some of the numbers.")
(standards "1B-AP-10")
(minutes 25)
(keywords "MOD")
```

In this lesson you put an IF inside a loop.

The loop gives the counter every value. The IF picks some of them.

```basic
10 FOR I = 1 TO 10
20 IF I > 7 THEN PRINT I
30 NEXT
```

The loop runs 10 times, but I > 7 is true only 3 times. So the program
prints 8, 9 and 10.

```figure
(cs1-shows '("8" "9" "10"))
(caption "What RUN shows")
```

```check
(choice
  (ask "Line 20 is changed to 20 IF I < 4 THEN PRINT I. What does the program print?")
  (right "1, 2, 3")
  (wrong "1, 2, 3, 4"
    "I < 4 is false when I is 4: 4 is not less than 4.")
  (wrong "4, 5, 6, 7, 8, 9, 10"
    "Those are the numbers where I < 4 is false. IF prints only when it is true.")
  (hint "Which numbers from 1 to 10 are less than 4?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), sections 4 and 5")
```

---

## THEN or ELSE, each time round

With ELSE, each time round the loop does one thing or the other:

```basic
10 FOR I = 1 TO 5
20 IF I = 3 THEN PRINT "THREE" ELSE PRINT I
30 NEXT
```

```figure
(cs1-shows '("1" "2" "THREE" "4" "5"))
(caption "What RUN shows")
```

```check
(number
  (ask "How many lines does this program print?")
  (answer 5)
  (wrong-if 4 "When I is 3, the THEN part prints THREE. So there is a line every time round: 5 lines.")
  (wrong-if 1 "The IF runs every time round the loop, and each time it prints something.")
  (hint "Each time round, either THEN or ELSE prints a line."))
```

---

## What is left over

Remember: BASIC drops the part left over when it divides. **MOD** gives
you that part. 7 MOD 2 is 1: share 7 into 2s, and 1 is left over.

| Sum | Left over |
|---|---|
| 7 MOD 2 | 1 |
| 10 MOD 3 | 1 |
| 12 MOD 3 | 0 |

An even number shared into 2s leaves nothing over. So I MOD 2 = 0 is
true when I is even.

```basic
10 FOR I = 1 TO 10
20 IF I MOD 2 = 0 THEN PRINT I; " ";
30 NEXT
```

This prints 2 4 6 8 10.

```check
(number
  (ask "What is 9 MOD 4?")
  (answer 1) (from "9 - 2 * 4")
  (wrong-if 2 "2 is how many 4s fit in 9. MOD gives what is left over: 9 - 8 = 1.")
  (hint "Two 4s make 8. What is left over from 9?"))
```

---

## Counting with IF

The IF can add to a counter. This program counts the numbers from 1 to
20 that 3 goes into evenly:

```basic
10 C = 0
20 FOR I = 1 TO 20
30 IF I MOD 3 = 0 THEN C = C + 1
40 NEXT
50 PRINT C
```

It finds 3, 6, 9, 12, 15 and 18, so it prints 6.

```check
(choice
  (ask "Why is C = C + 1 after THEN, and not on its own line?")
  (right "So C grows only when the condition is true")
  (wrong "So C grows every time round the loop"
    "On its own line, C would grow every time: 20 times. After THEN, it grows only when I MOD 3 = 0.")
  (wrong "Because C = C + 1 cannot be on its own line"
    "It can be. But then it would count every number, not only the ones 3 goes into.")
  (hint "When does the part after THEN run?"))
```

---

## Worked example

```example
(example
  (problem "Print ODD or EVEN for each number from 1 to 6.")
  (step "Loop: 10 FOR I = 1 TO 6.")
  (step "Even numbers leave 0 over when shared into 2s: I MOD 2 = 0.")
  (step "20 IF I MOD 2 = 0 THEN PRINT \"EVEN\" ELSE PRINT \"ODD\", then 30 NEXT.")
  (answer "ODD, EVEN, ODD, EVEN, ODD, EVEN"))
```

```example
(example
  (problem "Print the numbers from 1 to 30 that 5 goes into evenly.")
  (step "Loop: 10 FOR I = 1 TO 30, and 30 NEXT at the end.")
  (step (choice (ask "What is line 20?")
    (right "20 IF I MOD 5 = 0 THEN PRINT I")
    (wrong "20 IF I MOD 5 = 1 THEN PRINT I" "That picks numbers that leave 1 over: 1, 6, 11 ... 5 goes in evenly when nothing is left over: 0.")
    (wrong "20 IF I = 5 THEN PRINT I" "That picks only the number 5. You want 5, 10, 15 and more.")))
  (answer "5, 10, 15, 20, 25, 30"))
```

---

## Practice

```check
(number
  (ask "10 FOR I = 1 TO 10, 20 IF I >= 6 THEN PRINT I, 30 NEXT. How many numbers does it print?")
  (answer 5) (from "10 - 6 + 1")
  (explain "It prints 6, 7, 8, 9 and 10.")
  (wrong-if 4 ">= counts 6 too: 6, 7, 8, 9, 10.")
  (hint "Which numbers from 1 to 10 are 6 or more?"))
```

```check
(number
  (ask "What is 12 MOD 5?")
  (answer 2) (from "12 - 2 * 5")
  (wrong-if 0 "5 does not go into 12 evenly. Two 5s make 10, and 2 is left over.")
  (hint "Two 5s make 10."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the counting program above, but change line 30 to count the numbers that 4 goes into evenly. Run it, then come back.")
  (check (number
    (ask "What did it print?")
    (answer 5) (from "20 / 4")
    (explain "4, 8, 12, 16 and 20.")
    (hint "30 IF I MOD 4 = 0 THEN C = C + 1"))))
```

So: an IF inside a loop picks out some of the counter's values, and MOD tells you what is left over.
