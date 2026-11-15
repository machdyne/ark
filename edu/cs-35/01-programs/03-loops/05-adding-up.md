# Adding up

```lesson
(objective "Add up numbers with a loop and a total, and compare it with writing every step.")
(standards "1B-AP-08" "1B-AP-10")
(minutes 25)
```

In this lesson a loop adds up numbers for you.

You save 3 cents a day for 7 days. How much is that? A loop can add 3
each day to a total, T:

```basic
10 T = 0
20 FOR D = 1 TO 7
30 T = T + 3
40 NEXT
50 PRINT "SAVED "; T
```

T starts at 0. Each time round, line 30 adds 3 to it. It shows SAVED 21.

```check
(number
  (ask "Line 20 is changed to 20 FOR D = 1 TO 10. What does it show after SAVED?")
  (answer 30) (from "10 * 3")
  (wrong-if 13 "13 is 10 + 3. The loop adds 3 each time, 10 times: 3 + 3 + ... + 3.")
  (hint "3 cents, 10 times."))
```

---

## Adding the counter

Line 30 can add the counter instead. Then T adds up 1 + 2 + 3. Move the
slider to follow it.

```figure
(cs1-trace '("10 T = 0" "20 FOR I = 1 TO 3" "30 T = T + I" "40 NEXT" "50 PRINT T")
  '((0 "T = 0" () "T starts at 0")
    (1 "T = 0  I = 1" () "the loop starts with I = 1")
    (2 "T = 1  I = 1" () "0 + 1 is 1")
    (3 "T = 1  I = 2" () "NEXT: I is 2, back to 30")
    (2 "T = 3  I = 2" () "1 + 2 is 3")
    (3 "T = 3  I = 3" () "NEXT: I is 3, back to 30")
    (2 "T = 6  I = 3" () "3 + 3 is 6")
    (3 "T = 6  I = 3" () "NEXT: 3 times done, go on")
    (4 "T = 6  I = 3" ("6") "print T")
    (-1 "T = 6  I = 3" ("6") "the program ends")))
```

```check
(number
  (ask "Line 20 is changed to 20 FOR I = 1 TO 5. What does the program show?")
  (answer 15) (from "1 + 2 + 3 + 4 + 5")
  (wrong-if 5 "5 is the last value of I. T adds up every value: 1 + 2 + 3 + 4 + 5.")
  (hint "Add 1 + 2 + 3 + 4 + 5."))
```

```sources
(source "Timeless Computing (docs/tc.md), Thinking in Programs: State; Control Flow")
```

---

## Start the total at 0

The total must start at 0 before the loop. RUN sets every variable to
0. But if the program puts a number in T first, the loop adds to that
number.

```basic
10 T = 50
20 FOR I = 1 TO 3
30 T = T + I
40 NEXT
50 PRINT T
```

```check
(number
  (ask "What does this program show?")
  (answer 56) (from "50 + 1 + 2 + 3")
  (wrong-if 6 "T starts at 50 here, not at 0. The loop adds 1 + 2 + 3 to 50.")
  (hint "Start at 50, then add 1, 2 and 3."))
```

---

## Two ways to add

To add 1 to 100, you could write one long line: PRINT 1 + 2 + 3 and so
on, up to 100. That is a very long line to type, and easy to get wrong.

Or you can write a loop:

```basic
10 T = 0
20 FOR I = 1 TO 100
30 T = T + I
40 NEXT
50 PRINT T
```

It shows 5050. Both ways are algorithms for the same job. The loop is
much shorter. To add up to 200 instead, you change only line 20.

```check
(choice
  (ask "Why is the loop a better way to add 1 to 100?")
  (right "It is 5 short lines, and you change one number to add more")
  (wrong "It gets a different answer"
    "Both ways get 5050. The loop is better because it is short and easy to change.")
  (wrong "Loops make the computer add without using numbers"
    "The loop still adds every number. It just does not need you to type them all.")
  (hint "Think about typing 100 numbers."))
```

---

## Worked example

```example
(example
  (problem "Write a program that adds 10 four times.")
  (step "Start the total at 0: 10 T = 0.")
  (step "Loop 4 times: 20 FOR I = 1 TO 4.")
  (step "Add 10 each time: 30 T = T + 10, then 40 NEXT.")
  (step "Show it: 50 PRINT T. It shows 40.")
  (answer "40"))
```

```example
(example
  (problem "Add up 2 + 4 + 6 + 8 + 10 with a loop.")
  (step "Start at 0: 10 T = 0.")
  (step "Count by 2s: 20 FOR I = 2 TO 10 STEP 2.")
  (step "Add the counter: 30 T = T + I, then 40 NEXT and 50 PRINT T.")
  (step (number (ask "What does it show?") (answer 30) (from "2 + 4 + 6 + 8 + 10")
    (wrong-if 10 "10 is the last number. T adds up all of them: 2 + 4 + 6 + 8 + 10.")))
  (answer "30"))
```

---

## Practice

```check
(number
  (ask "10 T = 0, 20 FOR I = 1 TO 10, 30 T = T + I, 40 NEXT, 50 PRINT T. What does it show?")
  (answer 55) (from "1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10")
  (wrong-if 10 "10 is the last value of I. T adds up every value from 1 to 10.")
  (hint "1 + 2 + 3 + ... + 10. Pairs help: 1 + 10, 2 + 9 ..."))
```

```check
(choice
  (ask "A program should add 5 for each of 6 days. Which line goes inside the loop?")
  (right "T = T + 5")
  (wrong "T = 5"
    "T = 5 puts 5 in T every time, so T stays 5. To add up, add 5 to the old total: T = T + 5.")
  (wrong "PRINT T + 5"
    "This shows a number but does not change T. The total must grow each time.")
  (hint "The total must grow each time round."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the program that adds 1 to 100, and run it. Then change line 20 to add 1 to 20. Come back.")
  (check (number
    (ask "What is 1 + 2 + ... + 20?")
    (answer 210) (from "20 * 21 / 2")
    (wrong-if 20 "20 is the last number. The total adds them all.")
    (hint "Change line 20 to 20 FOR I = 1 TO 20 and run it."))))
```

So: a loop and a total, T = T + something, add up many numbers in a few lines.
