# A guessing game

```lesson
(objective "Write a guessing game that says \"too small\" or \"too big\" and goes back with GOTO until the guess is right.")
(standards "1B-AP-10" "1B-AP-15")
(minutes 30)
```

In this lesson you write a game: guess the secret number.

`GOTO` sends the program to another line. `GOTO 20` means: go on from
line 20. With GOTO, a program can go back and ask again.

```basic
10 S = 7
20 INPUT "GUESS"; G
30 IF G < S THEN PRINT "TOO SMALL"
40 IF G > S THEN PRINT "TOO BIG"
50 IF G <> S THEN GOTO 20
60 PRINT "YOU GOT IT!"
```

S is the secret number. Line 50 goes back to line 20 while the guess
is not right.

```figure
(cs1-shows '("GUESS? 3" "TOO SMALL" "GUESS? 9" "TOO BIG" "GUESS? 7" "YOU GOT IT!"))
(caption "The user guessed 3, then 9, then 7")
```

```check
(choice
  (ask "The user guesses 5. What happens?")
  (right "It prints TOO SMALL and asks again")
  (wrong "It prints TOO BIG and asks again"
    "5 is less than the secret, 7. So G < S is true, and line 30 prints TOO SMALL.")
  (wrong "It prints YOU GOT IT!"
    "5 is not 7, so G <> S is true. Line 50 sends the program back to line 20.")
  (hint "Compare 5 with 7."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: GOTO, IF")
```

---

## Following the game

Each time round, the program checks the guess 3 times: too small? too
big? not right?

| Guess | Line 30 | Line 40 | Line 50 |
|---|---|---|---|
| 3 | TOO SMALL | skipped | back to 20 |
| 9 | skipped | TOO BIG | back to 20 |
| 7 | skipped | skipped | goes on to 60 |

```check
(number
  (ask "The user guesses 2, then 10, then 6, then 7. How many times does the program ask GUESS?")
  (answer 4)
  (wrong-if 3 "The 4th guess, 7, is asked for too. Every guess is typed at line 20.")
  (hint "Each guess needs a GUESS question."))
```

---

## A program that never ends

GOTO can make a program run for ever. This one prints HI again and
again:

```basic
10 PRINT "HI"
20 GOTO 10
```

To stop a running program, press Esc. BASIC stops it and waits for you
again.

```check
(choice
  (ask "Your program keeps printing and never ends. What do you do?")
  (right "Press Esc to stop it")
  (wrong "Type NEW"
    "While the program runs, BASIC does not read new lines. Press Esc first to stop it.")
  (wrong "Wait: every program ends by itself"
    "A program with GOTO can go back for ever. You must stop it with Esc.")
  (hint "One key stops a running program."))
```

```sources
(source "docs/basic_app.md, Using it: Escape stops a running program")
```

---

## Counting the guesses

Add a counter, N, to the game. Line 25 adds 1 for each guess:

```basic
10 S = 7
15 N = 0
20 INPUT "GUESS"; G
25 N = N + 1
30 IF G < S THEN PRINT "TOO SMALL"
40 IF G > S THEN PRINT "TOO BIG"
50 IF G <> S THEN GOTO 20
60 PRINT "YOU GOT IT IN "; N
```

```check
(number
  (ask "The user guesses 5, 8, 6, 7. What number does line 60 print?")
  (answer 4)
  (wrong-if 3 "The right guess counts too. Line 25 runs for every guess: 4 times.")
  (hint "Line 25 runs once for each guess."))
```

---

## Debugging the game

Testing means trying the program with different input to find bugs.
Try a guess that is too small, one that is too big, and the right one.

Ben wrote line 30 as `30 IF G > S THEN PRINT "TOO SMALL"`. He tests it
with 3. It says nothing! Then with 9, it says TOO SMALL and TOO BIG.

```check
(choice
  (ask "What is the bug in Ben's line 30?")
  (right "The sign should be <, not >")
  (wrong "The secret number is wrong"
    "The secret is fine. With 9, both TOO SMALL and TOO BIG show, so line 30 and line 40 test the same thing.")
  (wrong "Line 50 should say GOTO 30"
    "Going back to 20 is right: the program must ask for a new guess.")
  (hint "TOO SMALL should show when the guess is less than the secret."))
```

---

## Worked example

```example
(example
  (problem "Change the game so the secret number is 42.")
  (step "The secret is set in line 10.")
  (step "Type 10 S = 42. The new line 10 takes the place of the old one.")
  (step "Run it and test: 20 is too small, 50 is too big, 42 is right.")
  (answer "10 S = 42"))
```

```example
(example
  (problem "The game should go back to the question while G is not S. Which line does that?")
  (step "\"Not equal\" is <>.")
  (step (choice (ask "Which line is it?")
    (right "50 IF G <> S THEN GOTO 20")
    (wrong "50 IF G = S THEN GOTO 20" "This goes back when the guess is right, and ends when it is wrong.")
    (wrong "50 GOTO 20" "This always goes back, even after a right guess. The game would never end.")))
  (answer "50 IF G <> S THEN GOTO 20"))
```

---

## Practice

```check
(choice
  (ask "What does GOTO 20 do?")
  (right "The program goes on from line 20")
  (wrong "It deletes line 20"
    "Typing 20 alone deletes a line. GOTO 20 in a program jumps to line 20.")
  (wrong "It runs line 20 and then stops"
    "The program goes on from line 20, to 30, 40 and so on.")
  (hint "GO TO a line."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the game that counts guesses. While you look away, ask a friend to change line 10 to a secret number from 1 to 100, to add the line 5 CLS, and to type RUN. CLS clears the screen, so the secret line is gone. Then play. Come back when you win.")
  (check (choice
    (ask "To find the number in few guesses, which is the best first guess?")
    (right "50, because it cuts the numbers in half")
    (wrong "1, because it is the smallest"
      "If the answer is TOO SMALL, you have ruled out only one number. 50 rules out half of them.")
    (wrong "100, because it is the biggest"
      "If the answer is TOO BIG, you have ruled out only one number. 50 rules out half of them.")
    (hint "Which guess tells you the most?"))))
```

So: GOTO sends a program back to ask again. Esc stops a program that never ends. Testing finds bugs.
