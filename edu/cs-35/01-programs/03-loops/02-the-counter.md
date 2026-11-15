# The loop's counter

```lesson
(objective "Use the loop's variable to count and to print a different number each time.")
(standards "1B-AP-10")
(minutes 20)
```

In this lesson you use the loop's counter to make each time round
different.

In `FOR I = 1 TO 5`, I is a variable. It holds 1 the first time round
the loop, 2 the second time, and so on, up to 5. So printing I counts:

```basic
10 FOR I = 1 TO 5
20 PRINT I
30 NEXT
```

```figure
(cs1-shows '("1" "2" "3" "4" "5"))
(caption "What RUN shows")
```

```check
(choice
  (ask "What does PRINT I show the third time round this loop?")
  (right "3")
  (wrong "I"
    "I has no quotes, so PRINT shows its value. The third time round, the value of I is 3.")
  (wrong "5"
    "5 is the last value of I. The third time round, I is 3.")
  (hint "I is 1 the first time, 2 the second time ..."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: FOR and NEXT")
```

---

## Start and end

The number after = is where I starts. The number after TO is where it
ends.

```basic
10 FOR N = 3 TO 6
20 PRINT N
30 NEXT
```

This prints 3, 4, 5 and 6. The counter can be any letter: here it is N.

```check
(number
  (ask "How many numbers does FOR N = 3 TO 6 print?")
  (answer 4) (from "6 - 3 + 1")
  (wrong-if 3 "6 - 3 is 3, but both 3 and 6 are printed: 3, 4, 5, 6.")
  (wrong-if 6 "The loop starts at 3, not at 1. Count: 3, 4, 5, 6.")
  (hint "Write them out: 3, 4, ..."))
```

---

## Working with the counter

You can work things out with the counter too.

```basic
10 FOR I = 1 TO 5
20 PRINT I * 2
30 NEXT
```

This prints 2, 4, 6, 8 and 10: the first 5 numbers of the 2 times
table.

```check
(number
  (ask "Line 20 is changed to 20 PRINT I * 3. What is the last number printed?")
  (answer 15) (from "5 * 3")
  (wrong-if 3 "3 is the first number, when I is 1. The last time round, I is 5.")
  (wrong-if 8 "8 is 5 + 3. Line 20 multiplies: 5 * 3.")
  (hint "The last time round, I is 5."))
```

---

## On one line

A semicolon at the end of a PRINT line keeps the next thing on the same
line.

```basic
10 FOR I = 1 TO 5
20 PRINT I; " ";
30 NEXT
```

```figure
(cs1-shows '("1 2 3 4 5"))
(caption "What RUN shows")
```

The " " prints a space after each number.

```check
(choice
  (ask "Without the semicolon at the end of line 20, how are the numbers shown?")
  (right "Each number on its own line")
  (wrong "All on one line, with no spaces"
    "The last semicolon is what keeps the line going. Without it, each PRINT ends its line.")
  (wrong "Only the number 5"
    "The loop still runs 5 times and prints each number. They just go on separate lines.")
  (hint "What does PRINT do at the end of a line with no semicolon?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: PRINT")
```

---

## Worked example

```example
(example
  (problem "Write a program that prints the numbers from 1 to 10.")
  (step "The counter goes from 1 to 10: 10 FOR I = 1 TO 10.")
  (step "Print the counter: 20 PRINT I.")
  (step "End the loop: 30 NEXT.")
  (answer "10 FOR I = 1 TO 10, 20 PRINT I, 30 NEXT"))
```

```example
(example
  (problem "Write a program that prints the 10 times table, from 10 to 100.")
  (step "The counter goes from 1 to 10: 10 FOR I = 1 TO 10.")
  (step (choice (ask "What is line 20?")
    (right "20 PRINT I * 10")
    (wrong "20 PRINT I + 10" "I + 10 gives 11, 12, 13 ... The 10 times table is I * 10.")
    (wrong "20 PRINT 10" "That prints 10 every time. Use the counter, I, so each line is different.")))
  (step "30 NEXT")
  (answer "10, 20, 30 ... up to 100"))
```

---

## Practice

```check
(number
  (ask "10 FOR K = 1 TO 4, 20 PRINT K * 5, 30 NEXT. What is the last number printed?")
  (answer 20) (from "4 * 5")
  (hint "The last time round, K is 4."))
```

```check
(number
  (ask "10 FOR I = 1 TO 5, 20 PRINT I, 30 NEXT, 40 PRINT I. What does line 40 print?")
  (answer 5)
  (explain "After the loop, I keeps the last value it had in the loop.")
  (wrong-if 6 "In this BASIC, I keeps the last value used in the loop, 5.")
  (wrong-if 0 "I is not set back to 0 after the loop. It keeps its last value.")
  (hint "What was I the last time round?"))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Write a loop that prints the 7 times table, from 7 to 70. Run it, then come back.")
  (check (number
    (ask "What is the 6th number it printed?")
    (answer 42) (from "6 * 7")
    (wrong-if 13 "13 is 6 + 7. Use PRINT I * 7.")
    (hint "10 FOR I = 1 TO 10, 20 PRINT I * 7, 30 NEXT"))))
```

So: the loop's counter takes each value from the start to the end, and you can print it or work with it.
