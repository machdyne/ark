# A quiz

```lesson
(objective "Build and test a number quiz that asks questions and keeps a score.")
(standards "1B-AP-09" "1B-AP-10" "1B-AP-15")
(minutes 30)
```

In this lesson you build a quiz, one part at a time, and test it.

This BASIC keeps only numbers. So every answer in your quiz is a
number: a sum, or a fact like the legs on a spider.

Part 1 sets the score, S, to 0. Part 2 is the first question:

```basic
10 REM A NUMBER QUIZ
20 S = 0
30 REM QUESTION 1
40 INPUT "3 * 4"; A
50 IF A = 12 THEN PRINT "RIGHT!": S = S + 1 ELSE PRINT "IT IS 12"
```

A colon, :, puts 2 instructions on one line. Here, after THEN, the
program prints RIGHT! and also adds 1 to the score.

```check
(choice
  (ask "The user types 12. What happens in line 50?")
  (right "It prints RIGHT! and S grows by 1")
  (wrong "It prints RIGHT! only"
    "After THEN there are 2 instructions, joined by a colon. Both run: PRINT and S = S + 1.")
  (wrong "It prints IT IS 12"
    "12 = 12 is true, so the THEN part runs. IT IS 12 is the ELSE part, for a wrong answer.")
  (hint "Is A = 12 true? What comes after THEN?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), sections 1 (the colon) and 5 (IF ... THEN ... ELSE)")
```

---

## More questions

Each question is the same pattern: a REM, an INPUT, and an IF.

```basic
60 REM QUESTION 2
70 INPUT "10 - 7"; A
80 IF A = 3 THEN PRINT "RIGHT!": S = S + 1 ELSE PRINT "IT IS 3"
90 REM QUESTION 3
100 INPUT "LEGS ON A SPIDER"; A
110 IF A = 8 THEN PRINT "RIGHT!": S = S + 1 ELSE PRINT "IT IS 8"
120 PRINT "YOU GOT "; S; " OUT OF 3"
```

Every question can use A for the answer. Each IF checks A before the
next INPUT puts a new answer in it.

```check
(choice
  (ask "Why can all 3 questions use the same variable, A?")
  (right "Each answer is checked before the next question puts a new one in A")
  (wrong "Because A can hold 3 numbers at once"
    "A variable holds one number at a time. It works because each answer is checked before the next one comes.")
  (wrong "They cannot: it is a bug"
    "It is fine here. A is checked right after each INPUT, so no answer is lost before it is used.")
  (hint "When is each answer checked?"))
```

---

## Testing

To test a program, try it with input whose result you know. For a quiz,
try:

| Test | Answers | Score |
|---|---|---|
| all right | 12, 3, 8 | 3 |
| all wrong | 1, 2, 3 | 0 |
| mixed | 7, 3, 6 | 1 |

```figure
(cs1-shows '("3 * 4? 7" "IT IS 12" "10 - 7? 3" "RIGHT!" "LEGS ON A SPIDER? 6" "IT IS 8" "YOU GOT 1 OUT OF 3"))
(caption "The test with 7, 3 and 6")
```

```check
(number
  (ask "You test with the answers 12, 2 and 8. What score should the quiz show?")
  (answer 2) (from "1 + 0 + 1")
  (wrong-if 3 "10 - 7 is 3, not 2. So the second answer is wrong.")
  (hint "Check each answer: 3 * 4, 10 - 7, legs on a spider."))
```

---

## A bug in the quiz

Max wrote question 2 like this:

```basic
80 IF A = 3 THEN PRINT "RIGHT!" ELSE PRINT "IT IS 3"
```

He tests with 12, 3 and 8. The quiz says RIGHT! 3 times, but then
YOU GOT 2 OUT OF 3.

```check
(choice
  (ask "What is Max's bug?")
  (right "Line 80 does not add 1 to S for a right answer")
  (wrong "The answer to 10 - 7 is wrong"
    "10 - 7 is 3, and the quiz said RIGHT!. The problem is the score: S never grows in line 80.")
  (wrong "PRINT \"YOU GOT\" is in the wrong place"
    "The score line is fine. It shows S, and S is 1 too small.")
  (hint "Compare line 80 with line 50."))
```

---

## Worked example

```example
(example
  (problem "Add a question 4 to the quiz: How many days are in a week?")
  (step "Add a REM: 112 REM QUESTION 4.")
  (step "Ask: 114 INPUT \"DAYS IN A WEEK\"; A.")
  (step "Check: 116 IF A = 7 THEN PRINT \"RIGHT!\": S = S + 1 ELSE PRINT \"IT IS 7\".")
  (step "Change line 120 to say OUT OF 4.")
  (answer "Lines 112, 114 and 116, and OUT OF 4 in line 120"))
```

```example
(example
  (problem "Your quiz should say WELL DONE when the score is 3.")
  (step "The score is in S, after the last question.")
  (step (choice (ask "Which line do you add after line 120?")
    (right "130 IF S = 3 THEN PRINT \"WELL DONE\"")
    (wrong "130 PRINT \"WELL DONE\"" "This prints WELL DONE every time, even for a score of 0.")
    (wrong "15 IF S = 3 THEN PRINT \"WELL DONE\"" "Line 15 runs before any question, when S is still 0.")))
  (answer "130 IF S = 3 THEN PRINT \"WELL DONE\""))
```

---

## Practice

```check
(choice
  (ask "Why does line 20 set S = 0?")
  (right "The score must start at 0 before any question")
  (wrong "Because S must always be 0"
    "S changes: it grows by 1 for each right answer. It only starts at 0.")
  (wrong "To end the quiz"
    "S = 0 does not end anything. It sets the score at the start.")
  (hint "What is your score before you answer anything?"))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the quiz from this lesson, lines 10 to 120. Run it 3 times, with the 3 tests in the table. Then change the questions to your own, and SAVE QUIZ. Come back.")
  (check (choice
    (ask "Your quiz passed the 3 tests. What does that tell you?")
    (right "It works for those answers; more tests could still find bugs")
    (wrong "It has no bugs at all"
      "Tests show it works for the answers you tried. Other answers could still find a bug, so more tests help.")
    (wrong "Nothing, tests do not help"
      "Tests do help: Max found his bug with a test.")
    (hint "Can 3 tests try every possible answer?"))))
```

So: a quiz asks with INPUT, checks with IF and adds to a score. Test it with answers whose score you know.
