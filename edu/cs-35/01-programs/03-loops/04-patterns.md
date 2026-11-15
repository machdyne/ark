# Patterns

```lesson
(objective "Print rows and stairs of stars with loops.")
(standards "1B-AP-10")
(minutes 25)
```

In this lesson you print patterns with loops.

A loop can print a row. The semicolon after "*" keeps every star on the
same line. PRINT alone, after the loop, ends the line.

```basic
10 FOR I = 1 TO 5
20 PRINT "*";
30 NEXT
40 PRINT
```

```figure
(cs1-shows '("*****"))
(caption "What RUN shows")
```

```check
(choice
  (ask "Line 20 is changed to 20 PRINT \"*\" with no semicolon. What does the program show?")
  (right "5 stars, one under the other")
  (wrong "5 stars in a row"
    "The semicolon is what keeps the stars on one line. Without it, each PRINT ends its line.")
  (wrong "1 star"
    "The loop still runs 5 times, so 5 stars are printed. They just go on separate lines.")
  (hint "What does PRINT do at the end of its line without a semicolon?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: PRINT")
```

---

## A repeating pattern

A pattern is a part that repeats. Print the part inside the loop:

```basic
10 FOR I = 1 TO 6
20 PRINT "<>";
30 NEXT
40 PRINT
```

```figure
(cs1-shows '("<><><><><><>"))
(caption "What RUN shows")
```

```check
(number
  (ask "This program prints X- inside a loop of 3. How many letters X are in the row?")
  (answer 3)
  (explain "The row is X-X-X-: the part X- is printed 3 times.")
  (wrong-if 6 "6 is all the signs, X and - together. Each time round, one X is printed.")
  (hint "Each time round the loop prints one X."))
```

---

## A loop inside a loop

To print a block, print a row, then do that again for each row. That
is a loop inside a loop.

```basic
10 FOR R = 1 TO 3
20 FOR C = 1 TO 6
30 PRINT "#";
40 NEXT C
50 PRINT
60 NEXT R
```

```figure
(cs1-shows '("######" "######" "######"))
(caption "What RUN shows")
```

The inside loop, with C, prints one row of 6. The outside loop, with
R, does that 3 times. NEXT C and NEXT R say which loop each NEXT ends.

```check
(number
  (ask "How many # signs does the program print in all?")
  (answer 18) (from "3 * 6")
  (wrong-if 9 "9 is 3 + 6. There are 3 rows, and each row has 6 signs.")
  (wrong-if 6 "6 is one row. The outside loop prints 3 rows.")
  (hint "3 rows of 6."))
```

---

## Stairs

The inside loop can use the outside counter. Here row R has R stars:

```basic
10 FOR R = 1 TO 4
20 FOR C = 1 TO R
30 PRINT "*";
40 NEXT C
50 PRINT
60 NEXT R
```

```figure
(cs1-shows '("*" "**" "***" "****"))
(caption "What RUN shows")
```

```check
(number
  (ask "Line 10 is changed to 10 FOR R = 1 TO 6. How many stars are in the last row?")
  (answer 6)
  (wrong-if 4 "Line 10 now goes up to 6, so the last row is row 6, with 6 stars.")
  (hint "Row R has R stars. What is R in the last row?"))
```

---

## Worked example

```example
(example
  (problem "Write a program that prints a row of 8 dashes, like --------.")
  (step "Print one dash with a semicolon: PRINT \"-\";.")
  (step "Repeat it 8 times: 10 FOR I = 1 TO 8, 20 PRINT \"-\";, 30 NEXT.")
  (step "End the line: 40 PRINT.")
  (answer "10 FOR I = 1 TO 8, 20 PRINT \"-\";, 30 NEXT, 40 PRINT"))
```

```example
(example
  (problem "Change the block program to print 5 rows of 4 # signs.")
  (step "The outside loop counts rows: 10 FOR R = 1 TO 5.")
  (step (choice (ask "What is the inside loop's line?")
    (right "20 FOR C = 1 TO 4")
    (wrong "20 FOR C = 1 TO 5" "5 is the number of rows. Each row has 4 signs, so the inside loop runs 4 times.")
    (wrong "20 FOR C = 1 TO 20" "20 is all the signs. The inside loop prints only one row of 4.")))
  (answer "10 FOR R = 1 TO 5 and 20 FOR C = 1 TO 4"))
```

---

## Practice

```check
(number
  (ask "10 FOR I = 1 TO 9, 20 PRINT \"*\";, 30 NEXT. How many stars are in the row?")
  (answer 9)
  (hint "The loop runs 9 times."))
```

```check
(choice
  (ask "In the stairs program, what does line 50, PRINT alone, do?")
  (right "It ends the row, so the next row starts on a new line")
  (wrong "It prints a star"
    "PRINT with nothing after it prints nothing. It only ends the line.")
  (wrong "It ends the program"
    "PRINT alone does not stop the program. It only starts a new line.")
  (hint "What would happen to the rows without it?"))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the stairs program above and run it. Then change line 10 so it prints 8 rows. Come back.")
  (check (number
    (ask "How many stars are in all 8 rows together?")
    (answer 36) (from "1 + 2 + 3 + 4 + 5 + 6 + 7 + 8")
    (wrong-if 8 "8 is the stars in the last row. Add the stars of every row: 1 + 2 + 3 ...")
    (hint "Add the rows: 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8."))))
```

So: a loop with PRINT and a semicolon prints a row, and a loop inside a loop prints rows of rows.
