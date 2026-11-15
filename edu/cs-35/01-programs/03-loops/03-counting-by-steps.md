# Counting by steps

```lesson
(objective "Count by 2s, 5s and 10s, and count down, with STEP.")
(standards "1B-AP-10")
(minutes 20)
```

In this lesson you make a loop count by 2s, by 5s, and backward.

STEP says how much to add to the counter each time. Without STEP, it
adds 1.

```basic
10 FOR I = 2 TO 10 STEP 2
20 PRINT I; " ";
30 NEXT
```

This prints 2 4 6 8 10.

```figure
(number-line 20 300 110 0 10 1 1)
(nl-mark 2 'ink)
(nl-jump 2 4 'ink "+2")
(nl-jump 4 6 'ink "+2")
(nl-jump 6 8 'ink "+2")
(nl-jump 8 10 'ink "+2")
(nl-mark 4 'ink)
(nl-mark 6 'ink)
(nl-mark 8 'ink)
(nl-mark 10 'ink)
(caption "FOR I = 2 TO 10 STEP 2")
```

```check
(choice
  (ask "What does FOR I = 5 TO 20 STEP 5 count?")
  (right "5, 10, 15, 20")
  (wrong "5, 6, 7 ... up to 20"
    "That is counting by 1. STEP 5 adds 5 each time.")
  (wrong "5, 10, 15, 20, 25"
    "The loop stops at 20. 25 is past 20, so it is not printed.")
  (hint "Start at 5 and add 5 each time, up to 20."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: FOR and NEXT")
```

---

## Not landing on the end

The loop stops when the next number would go past the end.

```basic
10 FOR I = 1 TO 9 STEP 3
20 PRINT I; " ";
30 NEXT
```

This prints 1 4 7. The next number would be 10, and 10 is past 9.

```check
(number
  (ask "FOR I = 1 TO 10 STEP 3 prints 1, 4, 7 and one more number. What is it?")
  (answer 10) (from "7 + 3")
  (wrong-if 9 "The counter goes up by 3: 7 + 3 is 10, not 9.")
  (hint "Add 3 to 7. Is that past 10?"))
```

---

## Counting down

STEP can take away, too: `STEP -1` counts down by 1.

```basic
10 FOR I = 10 TO 1 STEP -1
20 PRINT I; " ";
30 NEXT
40 PRINT
50 PRINT "LIFT OFF"
```

```figure
(cs1-shows '("10 9 8 7 6 5 4 3 2 1" "LIFT OFF"))
(caption "What RUN shows")
```

PRINT alone, in line 40, ends the line of numbers. So LIFT OFF goes on
a new line.

Without STEP -1, the loop would add 1 to 10. That is past 1 at once,
so the loop would run only one time.

```check
(choice
  (ask "Which line counts down from 5 to 1?")
  (right "FOR I = 5 TO 1 STEP -1")
  (wrong "FOR I = 5 TO 1"
    "Without STEP -1, the loop adds 1 each time. It runs once, with I = 5, and stops.")
  (wrong "FOR I = 1 TO 5 STEP -1"
    "This starts at 1. To count down from 5, start at 5 and end at 1.")
  (hint "Start at 5, end at 1, and take away 1 each time."))
```

---

## Worked example

```example
(example
  (problem "Write a loop that prints 10, 20, 30, 40, 50.")
  (step "It starts at 10 and ends at 50.")
  (step "It goes up by 10 each time, so STEP 10.")
  (step "10 FOR I = 10 TO 50 STEP 10, 20 PRINT I, 30 NEXT.")
  (answer "FOR I = 10 TO 50 STEP 10"))
```

```example
(example
  (problem "Write a loop that prints 3, 6, 9, 12, 15.")
  (step "It starts at 3 and ends at 15.")
  (step (number (ask "What number goes after STEP?") (answer 3) (from "6 - 3")
    (wrong-if 1 "With STEP 1 it would print 3, 4, 5 ... Each number is 3 more than the one before.")))
  (answer "FOR I = 3 TO 15 STEP 3"))
```

---

## Practice

```check
(number
  (ask "FOR I = 0 TO 20 STEP 4. How many numbers does it print?")
  (answer 6) (from "20 / 4 + 1")
  (explain "It prints 0, 4, 8, 12, 16 and 20.")
  (wrong-if 5 "Count 0 too: 0, 4, 8, 12, 16, 20.")
  (hint "Write them out: 0, 4, 8 ..."))
```

```check
(choice
  (ask "FOR I = 5 TO 0 STEP -1. What is the last number printed?")
  (right "0")
  (wrong "1"
    "The loop ends at 0, not 1. 0 is not past 0, so it is printed too.")
  (wrong "5"
    "5 is the first number. The loop counts down from 5 to 0.")
  (hint "The number after TO is the last one, if the loop lands on it."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Write a loop that counts down from 10 to 1 and then prints LIFT OFF. Run it, then come back.")
  (check (choice
    (ask "What did you write after STEP?")
    (right "-1")
    (wrong "1" "STEP 1 adds 1, so the loop stops after one time. To count down, take away 1: STEP -1.")
    (wrong "Nothing" "Without STEP, the loop adds 1, and FOR I = 10 TO 1 runs only once.")
    (hint "Counting down takes away 1 each time."))))
```

So: STEP says how much the counter changes each time, and a minus step counts down.
