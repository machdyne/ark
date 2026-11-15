# If ... then

```lesson
(objective "Make a step happen only when a condition is true, with IF ... THEN.")
(standards "1B-AP-10")
(minutes 20)
(keywords "condition (in a program)")
```

In this lesson your program makes a choice.

So far, every line of a program ran every time. With IF, a program can
choose: do this step, or skip it.

```basic
10 INPUT "PICK A NUMBER"; N
20 IF N = 7 THEN PRINT "LUCKY 7!"
30 PRINT "THANKS"
```

`N = 7` is a **condition**: a question about the values that is either
true or false. If it is true, the part after THEN runs. If it is false,
the computer skips it and goes on to the next line.

```figure
(cs1-shows '("PICK A NUMBER? 7" "LUCKY 7!" "THANKS"))
(caption "The user typed 7")
```

```check
(choice
  (ask "You run this program and type 3. What does it show after PICK A NUMBER? 3?")
  (right "Only THANKS")
  (wrong "LUCKY 7! and THANKS"
    "The condition N = 7 is false when N is 3. So the PRINT after THEN is skipped.")
  (wrong "Nothing at all"
    "Only the part after THEN is skipped. Line 30 is not part of the IF, so it always runs.")
  (hint "Is 3 = 7 true or false?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: IF")
(source "Timeless Computing (docs/tc.md), Thinking in Programs: Control Flow")
```

---

## True or false

A condition is always true or false, never in between.

| N is | N = 7 is | LUCKY 7! is |
|---|---|---|
| 7 | true | shown |
| 3 | false | skipped |
| 70 | false | skipped |

```check
(choice
  (ask "N holds 10. Is the condition N = 10 true or false?")
  (right "True")
  (wrong "False"
    "N holds 10, and 10 = 10. So the condition is true.")
  (hint "Put 10 in place of N."))
```

---

## Only the IF line

IF decides only about the rest of its own line. The next line runs
anyway.

```basic
10 INPUT "HOW MANY PETS"; P
20 IF P = 0 THEN PRINT "NO PETS"
30 PRINT "PETS ARE FUN"
```

```check
(number
  (ask "You type 0. How many lines does the program print after the question?")
  (answer 2)
  (explain "P = 0 is true, so line 20 prints NO PETS. Line 30 always prints PETS ARE FUN.")
  (wrong-if 1 "Line 30 always runs too. And P = 0 is true here, so line 20 prints as well.")
  (hint "Line 20 prints when P is 0. Line 30 prints every time."))
```

---

## Worked example

```example
(example
  (problem "Write a program that asks for a number and says WOW if it is 100.")
  (step "Ask: 10 INPUT \"NUMBER\"; N.")
  (step "The condition is N = 100.")
  (step "20 IF N = 100 THEN PRINT \"WOW\"")
  (answer "10 INPUT \"NUMBER\"; N, 20 IF N = 100 THEN PRINT \"WOW\""))
```

```example
(example
  (problem "Write a line that prints ZERO only when Z is 0.")
  (step "The condition is Z = 0.")
  (step (choice (ask "Which line is it?")
    (right "IF Z = 0 THEN PRINT \"ZERO\"")
    (wrong "PRINT \"ZERO\"" "This line prints ZERO every time. An IF makes it happen only when Z is 0.")
    (wrong "IF Z = 0 THEN Z = 0" "This sets Z but prints nothing. The step after THEN must be the PRINT.")))
  (answer "IF Z = 0 THEN PRINT \"ZERO\""))
```

---

## Practice

```check
(choice
  (ask "10 A = 5, 20 IF A = 5 THEN PRINT \"FIVE\", 30 PRINT \"DONE\". What does it show?")
  (right "FIVE, then DONE")
  (wrong "Only DONE"
    "A holds 5, so A = 5 is true and FIVE is printed.")
  (wrong "Only FIVE"
    "Line 30 is not part of the IF, so DONE is printed too.")
  (hint "Is A = 5 true?"))
```

```check
(choice
  (ask "What is a condition?")
  (right "A question about values that is true or false")
  (wrong "A line that always runs"
    "A condition decides whether a step runs. It is true or false.")
  (wrong "The number of times a loop runs"
    "That is what FOR ... TO says. A condition is true or false, and IF uses it to choose.")
  (hint "IF looks at it to decide."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the LUCKY 7 program above. Run it 2 times: type 7 the first time and 8 the second time. Come back.")
  (check (choice
    (ask "When you typed 8, what did it show?")
    (right "Only THANKS")
    (wrong "LUCKY 7! and THANKS" "8 = 7 is false, so LUCKY 7! is skipped. Check line 20.")
    (hint "Is 8 = 7 true?"))))
```

So: IF ... THEN runs the rest of its line only when the condition is true.
