# Doing it again

```lesson
(objective "Make steps run several times with FOR ... NEXT.")
(standards "1B-AP-10")
(minutes 20)
(keywords "loop")
```

In this lesson you make the computer do something again and again.

To print HELLO 3 times, you could write 3 PRINT lines. To print it 100
times, you would need 100 lines! There is a better way.

```basic
10 FOR I = 1 TO 3
20 PRINT "HELLO"
30 NEXT
40 PRINT "DONE"
```

The lines between FOR and NEXT run 3 times. Then the program goes on to
line 40.

A part of a program that runs again and again is a **loop**.

```figure
(cs1-shows '("HELLO" "HELLO" "HELLO" "DONE"))
(caption "What RUN shows")
```

```check
(number
  (ask "Line 10 is changed to 10 FOR I = 1 TO 5. How many times is HELLO printed?")
  (answer 5)
  (wrong-if 3 "The 3 in line 10 is now a 5, so the loop runs 5 times.")
  (wrong-if 6 "DONE is printed once, after the loop. HELLO is printed 5 times.")
  (hint "The number after TO says how many times."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: FOR and NEXT")
```

---

## Follow the loop

Move the slider to follow the program one line at a time. I counts the
times round the loop: 1, 2, 3.

```figure
(cs1-trace '("10 FOR I = 1 TO 3" "20 PRINT \"HELLO\"" "30 NEXT" "40 PRINT \"DONE\"")
  '((0 "I = 1" () "the loop starts with I = 1")
    (1 "I = 1" ("HELLO") "print HELLO")
    (2 "I = 2" ("HELLO") "NEXT: I is 2, back to 20")
    (1 "I = 2" ("HELLO" "HELLO") "print HELLO")
    (2 "I = 3" ("HELLO" "HELLO") "NEXT: I is 3, back to 20")
    (1 "I = 3" ("HELLO" "HELLO" "HELLO") "print HELLO")
    (2 "I = 3" ("HELLO" "HELLO" "HELLO") "NEXT: 3 times done, go on")
    (3 "I = 3" ("HELLO" "HELLO" "HELLO" "DONE") "print DONE")
    (-1 "I = 3" ("HELLO" "HELLO" "HELLO" "DONE") "the program ends")))
```

At NEXT, the computer works out I + 1. If that is not past 3, I gets
it, and the program goes back to the line after FOR. If it is past 3,
the loop is done and I stays 3.

```check
(choice
  (ask "What does NEXT do?")
  (right "It goes back to the start of the loop, until the loop has run enough times")
  (wrong "It goes to the next program"
    "NEXT works inside one program. It sends the computer back to the line after FOR.")
  (wrong "It ends the program"
    "After NEXT the program goes on. It goes back into the loop, or on to the line after NEXT.")
  (hint "Watch the arrow when it reaches line 30."))
```

---

## Inside and outside the loop

Only the lines between FOR and NEXT repeat. A line before FOR or after
NEXT runs once.

```basic
10 PRINT "START"
20 FOR I = 1 TO 4
30 PRINT "HOP"
40 NEXT
50 PRINT "STOP"
```

```check
(number
  (ask "How many lines does this program print in all?")
  (answer 6) (from "1 + 4 + 1")
  (wrong-if 4 "HOP is printed 4 times. START and STOP are printed once each, too.")
  (wrong-if 12 "Only line 30 is inside the loop. START and STOP are printed only once.")
  (hint "START once, HOP 4 times, STOP once."))
```

---

## Worked example

```example
(example
  (problem "Write a program that prints GO TEAM 4 times.")
  (step "The line to repeat: PRINT \"GO TEAM\".")
  (step "Put it inside a loop that runs 4 times: 10 FOR I = 1 TO 4.")
  (step "20 PRINT \"GO TEAM\"")
  (step "30 NEXT")
  (answer "10 FOR I = 1 TO 4, 20 PRINT \"GO TEAM\", 30 NEXT"))
```

```example
(example
  (problem "Write a program that prints CLAP 10 times, then THE END once.")
  (step "10 FOR I = 1 TO 10, 20 PRINT \"CLAP\", 30 NEXT.")
  (step (choice (ask "Where does PRINT \"THE END\" go?")
    (right "40 PRINT \"THE END\", after NEXT")
    (wrong "25 PRINT \"THE END\", before NEXT" "Line 25 is inside the loop, so THE END would be printed 10 times.")
    (wrong "5 PRINT \"THE END\", before FOR" "Line 5 runs first, before the claps.")))
  (answer "40 PRINT \"THE END\""))
```

---

## Practice

```check
(number
  (ask "10 FOR I = 1 TO 7, 20 PRINT \"YES\", 30 NEXT. How many times is YES printed?")
  (answer 7)
  (hint "Look at the number after TO."))
```

```check
(choice
  (ask "A program should print A, then B 3 times, then C. Which is right?")
  (right "10 PRINT \"A\", 20 FOR I = 1 TO 3, 30 PRINT \"B\", 40 NEXT, 50 PRINT \"C\"")
  (wrong "10 FOR I = 1 TO 3, 20 PRINT \"A\", 30 PRINT \"B\", 40 NEXT, 50 PRINT \"C\""
    "Here PRINT \"A\" is inside the loop too, so A is printed 3 times.")
  (wrong "10 PRINT \"A\", 20 FOR I = 1 TO 3, 30 PRINT \"B\", 40 PRINT \"C\", 50 NEXT"
    "Here PRINT \"C\" is inside the loop, so C is printed 3 times.")
  (hint "Only B should be between FOR and NEXT."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Write a loop that prints your favorite animal 6 times, in capitals. Run it, then come back.")
  (check (number
    (ask "How many times did the word show?")
    (answer 6)
    (hint "Use 10 FOR I = 1 TO 6, then a PRINT line, then NEXT."))))
```

So: a loop runs the lines between FOR and NEXT again and again, as many times as FOR says.
