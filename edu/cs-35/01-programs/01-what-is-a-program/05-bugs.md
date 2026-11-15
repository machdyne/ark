# Bugs

```lesson
(objective "Find and fix a bug from an error message or from wrong output.")
(standards "1B-AP-15")
(minutes 25)
(keywords "bug (in a program)" "debug" "error message")
```

In this lesson you find mistakes in programs and fix them.

A mistake in a program is a **bug**. Everyone who writes programs makes
bugs. Finding them is part of the job.

To **debug** a program is to find its bugs and fix them.

```check
(choice
  (ask "Your program has a bug. What does that mean?")
  (right "There is a mistake in it")
  (wrong "The computer is broken"
    "A bug is in the program, not in the computer. You fix it by changing the program.")
  (wrong "You are bad at programming"
    "Everyone makes bugs, even people who program every day. Finding and fixing them is part of programming.")
  (hint "A bug is a kind of mistake."))
```

---

## When BASIC cannot read a line

Here the word PRINT is spelled wrong:

```basic
10 PRNT "HELLO"
```

When you press Enter, BASIC shows SYNTAX ERROR. That is an
**error message**: words the computer shows when something is wrong. SYNTAX
ERROR means BASIC cannot read the line. It does not keep the line.

To fix it, press Up. The line comes back, so you can fix it and press
Enter again. Backspace erases one letter. Esc erases the whole line.

```check
(choice
  (ask "You type 10 PRNT \"HI\" and BASIC shows SYNTAX ERROR. What is the bug?")
  (right "PRINT is spelled wrong")
  (wrong "HI is spelled wrong"
    "The computer does not check words inside quotes. It shows them just as they are. The bug is in the instruction.")
  (wrong "The line number must be 1"
    "Any line number from 1 up works. The bug is the word PRNT, which BASIC does not know.")
  (hint "Is PRNT a word BASIC knows?"))
```

```sources
(source "docs/basic_app.md, Using it (the keys)")
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), sections 6 and 13")
```

---

## A missing quote

Quotes come in pairs: one before the words and one after. This line
has only one:

```basic
10 PRINT "HI
```

BASIC shows SYNTAX ERROR here too.

```check
(choice
  (ask "Which line is right?")
  (right "10 PRINT \"GOOD DAY\"")
  (wrong "10 PRINT \"GOOD DAY"
    "This line has a quote before the words but none after. Quotes come in pairs.")
  (wrong "10 PRINT GOOD DAY\""
    "This line has a quote after the words but none before. Quotes come in pairs.")
  (hint "Count the quotes in each line."))
```

---

## A bug found while running

Some bugs show only when the program runs. Nobody can divide by 0, so
this program has a bug:

```basic
10 PRINT "TEN DIVIDED BY ZERO"
20 PRINT 10 / 0
30 PRINT "THE END"
```

```figure
(cs1-shows '("TEN DIVIDED BY ZERO" "DIV BY 0 IN 20"))
(caption "What RUN shows")
```

The error message ends with IN 20. That tells you the bug is in
line 20. The program stops there, so line 30 never runs.

```check
(number
  (ask "A program stops with DIV BY 0 IN 40. Which line has the bug?")
  (answer 40)
  (wrong-if 0 "0 is the number the program tried to divide by. The line number comes after IN.")
  (hint "Look at the number after IN."))
```

---

## A bug with no error message

Some bugs give no error message at all. The program runs, but it shows
the wrong thing.

Sam wants to show 3 times 4. Sam writes:

```basic
10 PRINT 3 + 4
```

It shows 7, not 12. The sign is wrong: + should be *.

To find a bug like this, think of what the program should show. Then
run it, and compare.

```check
(choice
  (ask "Mia wants to show 10 take away 2. Her line is 10 PRINT 10 + 2. It shows 12. What is the fix?")
  (right "10 PRINT 10 - 2")
  (wrong "10 PRINT \"10 - 2\""
    "This shows the words 10 - 2, not the answer. Mia wants the answer, 8.")
  (wrong "Nothing: 12 is right"
    "10 take away 2 is 8, not 12. The program runs, but its answer is wrong. That is a bug too.")
  (hint "Which sign means take away?"))
```

---

## Worked example

```example
(example
  (problem "This program should show 2 times 5 IS, then 10. It shows 2 times 5 IS, then 7. Debug it: 10 PRINT \"2 TIMES 5 IS\", 20 PRINT 2 + 5.")
  (step "Run it and compare: it shows 7, but it should show 10.")
  (step "Line 10 shows the right words. The wrong number comes from line 20.")
  (step "Line 20 adds. It should multiply: 20 PRINT 2 * 5.")
  (step "Run it again: now it shows 10.")
  (answer "Change line 20 to 20 PRINT 2 * 5"))
```

```example
(example
  (problem "This program stops with DIV BY 0 IN 20: 10 PRINT \"HALF OF 8 IS\", 20 PRINT 8 / 0.")
  (step "The error message names line 20.")
  (step "Line 20 divides by 0. Half of 8 is 8 divided by 2.")
  (step (choice (ask "What is the fixed line 20?")
    (right "20 PRINT 8 / 2")
    (wrong "20 PRINT 8 / 8" "8 / 8 is 1, not half of 8. Half means divide by 2.")
    (wrong "30 PRINT 8 / 2" "A new line 30 adds a line. Line 20 is still there and still stops the program.")))
  (answer "20 PRINT 8 / 2"))
```

---

## Practice

```check
(choice
  (ask "A program stops and shows DIV BY 0 IN 30. What does IN 30 tell you?")
  (right "The bug is in line 30")
  (wrong "The program has 30 lines"
    "IN 30 does not count lines. It names the line where the program stopped.")
  (wrong "30 lines ran before it stopped"
    "IN 30 names one line: the line where the program stopped.")
  (hint "The number after IN is a line number."))
```

```check
(choice
  (ask "You typed a long line and BASIC shows SYNTAX ERROR. What is the quickest way to fix it?")
  (right "Press Up, fix the mistake, and press Enter")
  (wrong "Type NEW and write the whole program again"
    "NEW deletes the whole program, not just the bad line. Up brings back the line, so you only fix the mistake.")
  (wrong "Type RUN"
    "The bad line was not kept, so RUN cannot fix it. Bring the line back with Up and fix it.")
  (hint "One key brings back the line you just typed."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Then type 10 PRINT \"3 TIMES 3 IS\" and 20 PRINT 3 + 3. Run it. It has a bug: debug it so it shows the right answer. Come back.")
  (check (number
    (ask "What does the fixed program show after 3 TIMES 3 IS?")
    (answer 9) (from "3 * 3")
    (wrong-if 6 "6 is 3 + 3. That is the bug. Change the + in line 20 to a *.")
    (hint "Change line 20 so it multiplies."))))
```

So: a bug is a mistake in a program. To debug, read the error message, or compare what it shows with what it should show.
