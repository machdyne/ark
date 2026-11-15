# If ... then ... else

```lesson
(objective "Choose between two steps with IF ... THEN ... ELSE.")
(standards "1B-AP-10")
(minutes 20)
```

In this lesson your program picks one of two steps.

IF ... THEN does a step or skips it. With ELSE, the program always does
one of two steps:

```basic
10 INPUT "PICK A NUMBER"; N
20 IF N > 50 THEN PRINT "BIG" ELSE PRINT "SMALL"
30 PRINT "END"
```

If the condition is true, the part after THEN runs. If it is false, the
part after ELSE runs. Never both.

```figure
(cs1-shows '("PICK A NUMBER? 80" "BIG" "END"))
(caption "The user typed 80")
```

```check
(choice
  (ask "You type 20. What does line 20 print?")
  (right "SMALL")
  (wrong "BIG"
    "20 > 50 is false, so the part after THEN is skipped. The part after ELSE runs.")
  (wrong "BIG and SMALL"
    "Only one of the two parts runs: THEN when true, ELSE when false.")
  (hint "Is 20 > 50 true or false?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: IF ... THEN ... ELSE")
```

---

## Right on the edge

What if the user types 50? 50 > 50 is false: 50 is not greater than 50.
So the program says SMALL.

```check
(choice
  (ask "You want 50 to count as BIG too. Which condition do you use?")
  (right "N >= 50")
  (wrong "N > 50"
    "That is the condition now, and it is false for 50.")
  (wrong "N < 50"
    "N < 50 is true for small numbers. Then BIG would be printed for the small ones.")
  (hint "Which sign counts equal too?"))
```

---

## Checking an answer

IF ... THEN ... ELSE can check an answer to a question:

```basic
10 INPUT "6 * 2"; A
20 IF A = 12 THEN PRINT "RIGHT!" ELSE PRINT "NOT QUITE"
```

BASIC adds the ? after 6 * 2, so the user sees `6 * 2?`.

```check
(choice
  (ask "The user types 8. What does line 20 print?")
  (right "NOT QUITE")
  (wrong "RIGHT!"
    "A holds 8, and 8 = 12 is false. So the ELSE part runs.")
  (hint "Is 8 = 12 true?"))
```

---

## Worked example

```example
(example
  (problem "Ask for the number of legs a spider has. Print YES if the answer is 8, and NO if it is not.")
  (step "Ask: 10 INPUT \"SPIDER LEGS\"; L.")
  (step "The condition is L = 8.")
  (step "20 IF L = 8 THEN PRINT \"YES\" ELSE PRINT \"NO\"")
  (answer "10 INPUT \"SPIDER LEGS\"; L, 20 IF L = 8 THEN PRINT \"YES\" ELSE PRINT \"NO\""))
```

```example
(example
  (problem "Print PASS when the score S is 7 or more, and FAIL when it is less.")
  (step "7 or more is S >= 7.")
  (step (choice (ask "Which line is it?")
    (right "IF S >= 7 THEN PRINT \"PASS\" ELSE PRINT \"FAIL\"")
    (wrong "IF S >= 7 THEN PRINT \"FAIL\" ELSE PRINT \"PASS\"" "The THEN part runs when the condition is true: 7 or more. That should be PASS.")
    (wrong "IF S > 7 THEN PRINT \"PASS\" ELSE PRINT \"FAIL\"" "S > 7 is false for 7, so a score of 7 would FAIL.")))
  (answer "IF S >= 7 THEN PRINT \"PASS\" ELSE PRINT \"FAIL\""))
```

---

## Practice

```check
(choice
  (ask "10 X = 4, 20 IF X < 3 THEN PRINT \"A\" ELSE PRINT \"B\". What does it print?")
  (right "B")
  (wrong "A"
    "4 is not less than 3, so X < 3 is false and the ELSE part runs.")
  (wrong "A and B"
    "Only one part runs: THEN or ELSE.")
  (hint "Is 4 < 3 true?"))
```

```check
(choice
  (ask "When does the part after ELSE run?")
  (right "When the condition is false")
  (wrong "When the condition is true"
    "When it is true, the THEN part runs. ELSE is for false.")
  (wrong "Always, after the THEN part"
    "ELSE does not run after THEN. Only one of them runs.")
  (hint "ELSE means \"otherwise\"."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the 6 * 2 program above. Run it twice: once with 12, once with a wrong answer. Come back.")
  (check (choice
    (ask "What did it print for the wrong answer?")
    (right "NOT QUITE")
    (wrong "RIGHT!" "A wrong answer makes A = 12 false, so ELSE runs. Check line 20.")
    (hint "The ELSE part runs when the condition is false."))))
```

So: IF ... THEN ... ELSE runs the THEN part when the condition is true, and the ELSE part when it is false.
