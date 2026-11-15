# Outline: Programs

Part `01-programs` of `cs-35`, First Programs (grades 3-5, CSTA level 1B): 6 units, 28 lessons. This file has no number, so learn ignores it. Each lesson has exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

The language is the BASIC of the Zeitlos BASIC computer (Machdyne BASIC 1 with the graphics statements: docs/basic_app.md, sw/ext/basic/docs/basic1.md). Every program shown was run with the host BASIC (`/tmp/basrun`) first, and what a lesson says it prints or draws is what it did. Programs are 3-12 lines, for children to type. `try` blocks open `basic`.

## What BASIC has, and what that means here

- Only whole numbers, -32768 to 32767; `7 / 2` is 3. Lessons use small whole numbers and do not divide where it leaves a remainder, except to show that it is dropped.
- 26 variables, `A` to `Z`, each holding one number. No text variables: a program cannot keep a name. `INPUT` reads numbers only. So the quiz asks number questions.
- No random numbers (no `RND`): the guessing game's secret number is written into the program.
- No immediate mode: `PRINT 1` without a line number is a `SYNTAX ERROR`. Every program has line numbers.
- Drawing: `PLOT`, `LINE`, `BOX` (filled with `, 1`), `CIRCLE`, `CLS`, `COLOR 0/1`, `WAIT` (milliseconds). Screen 320 x 240, y counts down.
- Colour: `INK c` (0-15). In the window most boards show every colour but black as white; full screen (F11) shows colours on a computer with game-mode colour. Lessons say so and never depend on seeing colours. The figures are black and white.

## Figures

Own procedures in `lib/cs1.scm` only, every name starting with `cs1-` (part 2 has its own file and prefix):

- `cs1-screen`, `cs1-plot`, `cs1-line`, `cs1-box`, `cs1-fill`, `cs1-circle` -- BASIC's screen and its drawing statements, to scale (three quarters size)
- `cs1-shows` -- a screen with lines of printed text
- `cs1-trace` -- a program run one line at a time with a Step slider: the line, the variables, the screen
- `cs1-walk` -- a robot on a grid following steps in order

Built-in procedures that suit: `grid`, `label`, `caption`, `number-line` (counting by steps).

## Words

- Grade 3-4 words: sentences of 15 words or fewer, one new term a step, "you", present tense, numbers as digits, US spelling ("color", "center").
- Part 2 teaches bits, binary numbers, networks and online safety: this part does not use "bit", "byte", "binary", "data", "network", "internet", "packet", "router", "address", "password" or "online".
- Within this part, a term is used only after the lesson that teaches it: "variable" from 02-variables/01, "loop" from 03-loops/01, "condition" from 04-choices/01, "pixel" and "coordinates" from 05-drawing/01.

## 01-what-is-a-program/ -- What a program is

Write and run short BASIC programs whose steps run in order, and find and fix bugs in them. Standards: 1B-AP-10, 1B-AP-15, 1B-AP-08.

1. `01-steps-in-order.md` -- Follow and write a list of exact steps in order, and say why a computer needs exact steps.  
   Standards: "1B-AP-08", "1B-AP-10". Keywords: "algorithm", "program", "instruction".
2. `02-first-program.md` -- Type a program of numbered PRINT lines into BASIC and run it.  
   Standards: "1B-AP-10". Keywords: "BASIC", "line number", "run (a program)".
3. `03-print-and-sums.md` -- Use PRINT to show words in quotes and the answers of sums.  
   Standards: "1B-AP-10". Keywords: (none new).
4. `04-changing-a-program.md` -- List a program, and change, add and delete its lines to change what it does.  
   Standards: "1B-AP-10". Keywords: (none new).
5. `05-bugs.md` -- Find and fix a bug from an error message or from wrong output.  
   Standards: "1B-AP-15". Keywords: "bug (in a program)", "debug", "error message".

## 02-variables/ -- Variables and INPUT

Keep numbers in variables, change them, and ask the user for them with INPUT. Standards: 1B-AP-09.

1. `01-variables.md` -- Store a number in a variable and print it.  
   Standards: "1B-AP-09". Keywords: "variable", "value (of a variable)".
2. `02-changing-values.md` -- Follow a program that changes a variable's value, such as A = A + 1.  
   Standards: "1B-AP-09". Keywords: (none new).
3. `03-math-with-variables.md` -- Work out new numbers from variables with +, -, * and /.  
   Standards: "1B-AP-09". Keywords: (none new).
4. `04-input.md` -- Use INPUT to ask the user for a number and keep it in a variable.  
   Standards: "1B-AP-09", "1B-AP-10". Keywords: "input (to a program)", "user (of a program)".
5. `05-asking-and-answering.md` -- Write a program that asks for numbers, works with them and prints an answer.  
   Standards: "1B-AP-09". Keywords: (none new).

## 03-loops/ -- Loops

Repeat steps with FOR ... NEXT to count, add up and print patterns. Standards: 1B-AP-10, 1B-AP-08.

1. `01-repeating.md` -- Make steps run several times with FOR ... NEXT.  
   Standards: "1B-AP-10". Keywords: "loop".
2. `02-the-counter.md` -- Use the loop's variable to count and to print a different number each time.  
   Standards: "1B-AP-10". Keywords: (none new).
3. `03-counting-by-steps.md` -- Count by 2s, 5s and 10s, and count down, with STEP.  
   Standards: "1B-AP-10". Keywords: (none new).
4. `04-patterns.md` -- Print rows and stairs of stars with loops.  
   Standards: "1B-AP-10". Keywords: (none new).
5. `05-adding-up.md` -- Add up numbers with a loop and a total, and compare it with writing every step.  
   Standards: "1B-AP-08", "1B-AP-10". Keywords: (none new).

## 04-choices/ -- Choices

Make a program choose what to do with IF ... THEN and comparisons. Standards: 1B-AP-10.

1. `01-if-then.md` -- Make a step happen only when a condition is true, with IF ... THEN.  
   Standards: "1B-AP-10". Keywords: "condition (in a program)".
2. `02-comparing.md` -- Compare numbers with =, <, >, <> , <= and >= in a condition.  
   Standards: "1B-AP-10". Keywords: (none new).
3. `03-else.md` -- Choose between two steps with IF ... THEN ... ELSE.  
   Standards: "1B-AP-10". Keywords: (none new).
4. `04-choices-in-loops.md` -- Put a choice inside a loop to pick out some of the numbers.  
   Standards: "1B-AP-10". Keywords: "MOD".
5. `05-guessing-game.md` -- Write a guessing game that says "too small" or "too big" and goes back with GOTO until the guess is right.  
   Standards: "1B-AP-10", "1B-AP-15". Keywords: (none new).

## 05-drawing/ -- Drawing with BASIC

Draw points, lines, boxes and circles on BASIC's screen, and draw patterns and moving pictures with loops. Standards: 1B-AP-10, 1B-AP-12.

1. `01-pixels.md` -- Find a point on the screen by its x and y, and light it with PLOT.  
   Standards: "1B-AP-10". Keywords: "pixel (on the screen)", "coordinates (on the screen)".
2. `02-lines.md` -- Draw lines between two points, and shapes made of lines.  
   Standards: "1B-AP-10". Keywords: (none new).
3. `03-boxes-and-circles.md` -- Draw boxes, filled boxes and circles, and pick ink colors.  
   Standards: "1B-AP-10". Keywords: "radius (of a circle)", "center (of a circle)".
4. `04-loops-that-draw.md` -- Draw rows of shapes, rings and fans of lines with a loop.  
   Standards: "1B-AP-10", "1B-AP-12". Keywords: (none new).
5. `05-moving-pictures.md` -- Make a shape move by drawing, waiting, erasing and drawing it again.  
   Standards: "1B-AP-10", "1B-AP-12". Keywords: "animation".

## 06-project/ -- A project

Plan, build, test and save a program of your own: a quiz or a drawing. Standards: 1B-AP-09, 1B-AP-10, 1B-AP-11, 1B-AP-12, 1B-AP-14, 1B-AP-15, 1B-AP-17.

1. `01-planning.md` -- Break a program into small parts, write REM comments, and save and load it.  
   Standards: "1B-AP-11", "1B-AP-17". Keywords: "comment (in a program)".
2. `02-quiz.md` -- Build and test a number quiz that asks questions and keeps a score.  
   Standards: "1B-AP-09", "1B-AP-10", "1B-AP-15". Keywords: (none new).
3. `03-drawing-project.md` -- Build a drawing from parts and loops, and change it to make it your own.  
   Standards: "1B-AP-11", "1B-AP-12", "1B-AP-14". Keywords: (none new).
