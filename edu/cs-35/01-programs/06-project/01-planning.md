# Planning a program

```lesson
(objective "Break a program into small parts, write REM comments, and save and load it.")
(standards "1B-AP-11" "1B-AP-17")
(minutes 25)
(keywords "comment (in a program)")
```

In this unit you make a program of your own: a quiz or a drawing. In
this lesson you learn to plan it, label it and keep it.

A big job is easier in small parts. Before you type, write the parts
as a list, in order. Then do one part at a time, and test each part.

A plan for a quiz of 3 questions:

1. Set the score to 0.
2. Ask question 1, check it, add to the score.
3. Ask question 2, check it, add to the score.
4. Ask question 3, check it, add to the score.
5. Show the score.

```check
(choice
  (ask "Why break a program into small parts?")
  (right "Each small part is easy to write and to test")
  (wrong "The computer can only run small programs"
    "BASIC can run long programs. Small parts help you, the programmer: each one is easy to get right.")
  (wrong "Small parts run faster"
    "Speed is not the reason. Small parts are easier to write, test and fix.")
  (hint "Think about finding a bug in 5 lines or in 50."))
```

```sources
(source "Timeless Computing (docs/tc.md), Thinking in Programs: \"divide a task into steps\"")
```

---

## Comments

`REM` starts a **comment**: a note in a program for people to read.
The computer skips it.

```basic
10 REM A NUMBER QUIZ, BY SAM
20 S = 0
30 REM QUESTION 1
40 INPUT "3 * 4"; A
```

Comments say what each part does, and who wrote the program. They help
you, and others, read it later.

```check
(choice
  (ask "What does the computer do with 30 REM QUESTION 1?")
  (right "It skips it: the line is a note for people")
  (wrong "It prints QUESTION 1"
    "REM does not print. Only PRINT shows things on the screen. REM is a note for people reading the program.")
  (wrong "It shows SYNTAX ERROR, because QUESTION 1 is not BASIC"
    "After REM you can write anything. The computer skips the rest of the line.")
  (hint "REM is short for remark: a note."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 1: REM")
```

---

## Saving your program

To keep a program for another day, save it to a file. Type `SAVE` and a
name:

```basic
SAVE QUIZ
```

Like RUN, SAVE has no line number. A name is up to 8 letters and
digits.

Later, `LOAD QUIZ` brings the program back. `DIR` lists your saved
files.

```check
(choice
  (ask "You saved your program as QUIZ yesterday. Today BASIC is empty. What do you type?")
  (right "LOAD QUIZ")
  (wrong "RUN QUIZ"
    "RUN runs the program that is in BASIC now, and there is none. LOAD QUIZ brings yours back first.")
  (wrong "SAVE QUIZ"
    "SAVE would save the empty program over your quiz! LOAD QUIZ brings it back.")
  (hint "Which word brings a saved program back?"))
```

```sources
(source "docs/basic_app.md, Files")
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 9: SAVE, LOAD, DIR and file names")
```

---

## Save often

Save each time a part works. SAVE with the same name puts the new
program in place of the old one in the file.

```check
(choice
  (ask "Your quiz has 2 questions that work. You want to add a third. What is a good thing to do first?")
  (right "SAVE QUIZ, so the 2 working questions are kept")
  (wrong "NEW, to start with a clean page"
    "NEW deletes the program. You would lose the 2 questions that work.")
  (wrong "Nothing: saving is only for finished programs"
    "Saving often means a mistake later cannot cost you the parts that work.")
  (hint "What keeps the work you have done?"))
```

---

## Worked example

```example
(example
  (problem "Plan a program that asks for a number and draws that many circles in a row.")
  (step "Part 1: clear the screen. (CLS)")
  (step "Part 2: ask how many circles. (INPUT)")
  (step "Part 3: draw them in a row. (a FOR loop with CIRCLE)")
  (step "Each part gets a REM, then its lines.")
  (answer "3 parts: clear, ask, draw"))
```

```example
(example
  (problem "Plan a program that shows the 5 times table, then says THE END.")
  (step "Part 1: print a title, 5 TIMES TABLE.")
  (step (choice (ask "What is part 2?")
    (right "Print 5, 10, 15 ... 50 with a loop")
    (wrong "Print THE END" "THE END comes last. First comes the table.")
    (wrong "Ask the user for a number" "This program does not need to ask: the table is always the 5s.")))
  (step "Part 3: print THE END.")
  (answer "Title, table, THE END"))
```

---

## Practice

```check
(choice
  (ask "Which line is a comment?")
  (right "10 REM DRAW THE SUN")
  (wrong "10 PRINT \"DRAW THE SUN\""
    "This line prints words on the screen for the user. A comment is a REM line, for people reading the program.")
  (wrong "10 CIRCLE 270, 50, 30"
    "This line draws. A comment starts with REM.")
  (hint "Look for REM."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type 10 REM MY FIRST SAVE and 20 PRINT \"I WAS SAVED\". Type SAVE MYSAVE. Then type NEW, then LOAD MYSAVE, then RUN. Come back.")
  (check (choice
    (ask "What did RUN show after LOAD?")
    (right "I WAS SAVED")
    (wrong "MY FIRST SAVE" "Line 10 is a comment, so it is not shown. Line 20 prints I WAS SAVED.")
    (wrong "Nothing" "Did you type LOAD MYSAVE before RUN? NEW empties BASIC, and LOAD brings the program back.")
    (hint "The REM line is skipped."))))
```

So: plan a program as small parts in order, label the parts with REM comments, and SAVE your work often.
