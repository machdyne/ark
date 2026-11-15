# Changing a program

```lesson
(objective "List a program, and change, add and delete its lines to change what it does.")
(standards "1B-AP-10")
(minutes 20)
```

In this lesson you look at your program and change it.

`LIST` shows the program the computer keeps. Like RUN, you type it with
no line number.

LIST shows the lines in order of their line numbers. If you type line
30 first, then 10, then 20, LIST still shows 10, 20, 30.

```basic
10 PRINT "A"
20 PRINT "B"
30 PRINT "C"
```

```check
(choice
  (ask "You type 20 PRINT \"B\", then 10 PRINT \"A\". Then you type LIST. What do you see?")
  (right "Line 10 first, then line 20")
  (wrong "Line 20 first, then line 10"
    "That is the order you typed them. The computer keeps the lines in order of their numbers.")
  (wrong "A and B"
    "LIST shows the lines of the program, not what they print. RUN shows what they print.")
  (hint "LIST shows lines in order of their numbers."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), sections 1 and 9")
```

---

## Changing a line

To change a line, type it again with the same line number. The new
line takes the place of the old one.

The program above has `20 PRINT "B"`. Now you type:

```basic
20 PRINT "BEE"
```

The old line 20 is gone. When you run the program, it shows A, BEE, C.

```check
(choice
  (ask "A program has 10 PRINT \"HI\". You type 10 PRINT \"BYE\". What does the program have now?")
  (right "Only 10 PRINT \"BYE\"")
  (wrong "Both lines, so it prints HI and BYE"
    "A program can have only one line 10. The new line 10 takes the place of the old one.")
  (wrong "Only 10 PRINT \"HI\""
    "The new line is not thrown away. It takes the place of the old line 10.")
  (hint "Can a program have two lines with the same number?"))
```

---

## Deleting a line

To delete a line, type its line number alone and press Enter.

Typing `30` alone deletes line 30.

```check
(choice
  (ask "Your program has a line 20. You type 20 alone and press Enter. What happens?")
  (right "Line 20 is deleted")
  (wrong "Line 20 runs"
    "Lines run only when you type RUN. A line number alone deletes that line.")
  (wrong "Nothing happens"
    "Something does happen: the line number alone deletes line 20.")
  (hint "There is nothing after the number. What could the new line 20 be?"))
```

---

## Adding a line in between

To add a line between line 10 and line 20, give it a number between
them, like 15.

That is why people number lines in tens. It leaves room for new lines.

```check
(number
  (ask "Your program has lines 10, 20 and 30. You want a new line to run just after line 20. Give a line number for it.")
  (answer 25) (within 4)
  (wrong-if 15 "15 is between 10 and 20, so it would run before line 20.")
  (wrong-if 35 "35 is after 30, so it would run last.")
  (explain "Any number from 21 to 29 runs between line 20 and line 30.")
  (hint "Pick a number between 20 and 30."))
```

---

## Starting again

`NEW` deletes the whole program, so you can start a new one. Be
careful: after NEW, the old program is gone.

```check
(choice
  (ask "You want to write a new program. The old one is still there. What do you type first?")
  (right "NEW")
  (wrong "LIST"
    "LIST only shows the old program. NEW deletes it so you can start again.")
  (wrong "RUN"
    "RUN follows the old program. NEW deletes it.")
  (hint "Which word deletes the whole program?"))
```

---

## Worked example

```example
(example
  (problem "The program is 10 PRINT \"A\", 20 PRINT \"B\", 30 PRINT \"C\". You type 20 PRINT \"BEE\", then 15 PRINT \"X\", then 30. What does RUN show?")
  (step "20 PRINT \"BEE\" takes the place of line 20.")
  (step "15 PRINT \"X\" is a new line, between 10 and 20.")
  (step "30 alone deletes line 30.")
  (step "The program is now 10, 15 and 20.")
  (answer "A, then X, then BEE"))
```

```example
(example
  (problem "The program is 10 PRINT \"ONE\", 20 PRINT \"TWO\". You type 5 PRINT \"ZERO\", then 20. What does RUN show?")
  (step "5 PRINT \"ZERO\" is a new line. 5 is smaller than 10, so it runs first.")
  (step "20 alone deletes line 20.")
  (step (choice (ask "What does RUN show?")
    (right "ZERO, then ONE")
    (wrong "ONE, then ZERO" "Line 5 runs before line 10, because 5 is smaller.")
    (wrong "ZERO, ONE, TWO" "Line 20 was deleted when you typed 20 alone.")))
  (answer "ZERO, then ONE"))
```

---

## Practice

```check
(number
  (ask "A program has lines 10, 20, 30 and 40. You type 20 alone, then 25 PRINT \"X\". How many lines does the program have now?")
  (answer 4) (from "4 - 1 + 1")
  (wrong-if 5 "Typing 20 alone deleted a line, and 25 added one.")
  (wrong-if 3 "25 is a new line number, so it adds a line.")
  (hint "One deletes a line, one adds a line."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type 10 PRINT \"A\", 20 PRINT \"B\" and 30 PRINT \"C\". Then change line 20 to 20 PRINT \"BEE\", and delete line 30. Type LIST, then RUN. Come back.")
  (check (choice
    (ask "What did RUN show?")
    (right "A, then BEE")
    (wrong "A, B, C" "Did you type the new line 20 and then 30 alone? LIST shows the program as it is now.")
    (wrong "A, BEE, C" "Typing 30 alone deletes line 30. Did you press Enter after it?")
    (hint "LIST shows which lines are left."))))
```

So: LIST shows the program. A line typed again replaces the old one, a number alone deletes it, and NEW starts again.
