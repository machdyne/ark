# Your first program

```lesson
(objective "Type a program of numbered PRINT lines into BASIC and run it.")
(standards "1B-AP-10")
(minutes 20)
(keywords "BASIC" "line number" "run (a program)")
```

In this lesson you write your first program and make the computer
follow it.

You write a program in a language the computer knows. **BASIC** is a
language for writing programs. It is old and simple, and good for
learning.

Your computer has a BASIC computer of its own, in a window. Open it
from the dock: it is in the Tools group. It shows its name, and then
it waits for you.

```try
(try (app "basic")
  (task "Open BASIC. Read what it shows under its name. Then come back to this lesson.")
  (check (text
    (ask "BASIC shows its name, then one short word. What is the word?")
    (accept "READY") (accept "READY.")
    (hint "It means BASIC is waiting for you.")
    (hint "It starts with R: R....."))))
```

```sources
(source "docs/basic_app.md, the start of the page")
(source "sw/data/wm.cfg: basic is in the Tools group")
```

---

## A line of a program

Type this line into BASIC, then press Enter:

```basic
10 PRINT "HELLO"
```

The 10 at the start is the **line number**. Every line of a program
starts with one. BASIC keeps the line and waits for the next one.

`PRINT` is an instruction. It tells the computer to show the words in
the quotes on the screen.

You can type small letters: `print` works too.

```check
(choice
  (ask "In the line 20 PRINT \"CAT\", which part is the line number?")
  (right "20")
  (wrong "PRINT"
    "PRINT is the instruction: it says what to do. The line number is the number at the start.")
  (wrong "CAT"
    "CAT is the word the line will show on the screen. The line number comes first, before PRINT.")
  (hint "Look at the very start of the line."))
```

---

## Running the program

Typing a line does not do it yet. The computer only keeps it.

To **run** a program is to make the computer follow its instructions.
Type `RUN` and press Enter. RUN has no line number.

This program has 3 lines:

```basic
10 PRINT "HELLO"
20 PRINT "I AM A PROGRAM"
30 PRINT "GOODBYE"
```

When you run it, the screen shows:

```figure
(cs1-shows '("HELLO" "I AM A PROGRAM" "GOODBYE"))
(caption "What RUN shows")
```

```check
(choice
  (ask "You typed 10 PRINT \"HELLO\" and pressed Enter. Nothing is printed yet. Why?")
  (right "The computer keeps the line, and does it only when you type RUN")
  (wrong "The line is wrong"
    "The line is fine. A line with a line number is kept for later. RUN makes the computer follow it.")
  (wrong "You must press Enter again"
    "Pressing Enter once is enough to keep the line. To follow the program, type RUN.")
  (hint "What do you type to make the computer follow the program?"))
```

---

## Try it

```try
(try (app "basic")
  (task "In BASIC, type the 3 lines above, pressing Enter after each one. Then type RUN and press Enter. Come back when you have seen what it shows.")
  (check (number
    (ask "How many lines did the program print?")
    (answer 3)
    (wrong-if 1 "Each PRINT line prints one line. Did you type all 3 lines before RUN?")
    (hint "Count the PRINT lines in the program."))))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), sections 1, 5 and 9")
```

---

## Smallest number first

The computer runs the lines in order of their line numbers, smallest
first. Line 10 runs, then line 20, then line 30.

People often number lines in tens: 10, 20, 30. You see why in a later
lesson.

A line with no line number is not kept. `PRINT "HI"` alone, with no
number, makes BASIC say SYNTAX ERROR.

```check
(choice
  (ask "A program has lines 20 PRINT \"B\" and 10 PRINT \"A\". You run it. What is printed first?")
  (right "A")
  (wrong "B"
    "Line 20 is above in the list, but lines run in order of their numbers. 10 is smaller than 20, so line 10 runs first.")
  (wrong "Nothing: the lines are in the wrong order"
    "The order you type the lines in does not matter. The computer sorts them by line number.")
  (hint "Which line number is smaller?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 1")
```

---

## Worked example

```example
(example
  (problem "Write a program that prints MY NAME on one line and then IS SAM on the next.")
  (step "Each line printed needs its own PRINT line.")
  (step "The first: 10 PRINT \"MY NAME\".")
  (step "The second, with a bigger number: 20 PRINT \"IS SAM\".")
  (step "Type RUN to see it.")
  (answer "10 PRINT \"MY NAME\" and 20 PRINT \"IS SAM\""))
```

```example
(example
  (problem "Write a program that prints RED, then GREEN, then BLUE, each on its own line.")
  (step "10 PRINT \"RED\"")
  (step "20 PRINT \"GREEN\"")
  (step (choice (ask "What is the last line?")
    (right "30 PRINT \"BLUE\"")
    (wrong "5 PRINT \"BLUE\"" "Line 5 has the smallest number, so it would run first. BLUE must come last.")
    (wrong "30 \"BLUE\"" "Without PRINT, the computer is not told what to do with BLUE.")))
  (answer "10 PRINT \"RED\", 20 PRINT \"GREEN\", 30 PRINT \"BLUE\""))
```

---

## Practice

```check
(number
  (ask "A program has 4 lines, and each one is a PRINT line. How many lines does it print when you run it?")
  (answer 4)
  (hint "Each PRINT line prints one line."))
```

```check
(choice
  (ask "What do you type to make the computer follow your program?")
  (right "RUN")
  (wrong "PRINT"
    "PRINT is an instruction inside a program. RUN starts the whole program.")
  (wrong "Nothing: it follows each line when you press Enter"
    "A line with a line number is only kept. The computer follows the program when you type RUN.")
  (hint "It is a short word with no line number."))
```

---

```check
(choice
  (ask "A program is 30 PRINT \"GO\", 10 PRINT \"READY\", 20 PRINT \"SET\". What does it print, from top to bottom?")
  (right "READY, SET, GO")
  (wrong "GO, READY, SET"
    "That is the order the lines are written in. The computer runs them in order of their numbers: 10, 20, 30.")
  (wrong "GO, SET, READY"
    "The biggest number does not go first. The smallest line number runs first.")
  (hint "Put the lines in order of their numbers: 10, 20, 30."))
```

So: a BASIC program is lines with line numbers, and RUN makes the computer follow them, smallest number first.
