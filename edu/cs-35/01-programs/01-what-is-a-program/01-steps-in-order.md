# Steps in order

```lesson
(objective "Follow and write a list of exact steps in order, and say why a computer needs exact steps.")
(standards "1B-AP-08" "1B-AP-10")
(minutes 20)
(keywords "algorithm" "instruction" "program")
```

In this lesson you follow steps and write your own steps for a robot.

A robot stands on a grid of squares, on the square marked S. It can
move one square at a time: R is right, L is left, U is up, D is down.

A list of steps, in order, that does a job is an **algorithm**. This
algorithm is R, R, D. Move the slider to see each step.

```figure
(define k (slider 'k 0 3 0 "Steps done" 1))
(cs1-walk 6 4 0 0 '("R" "R" "D") k)
(caption "The steps: R, R, D")
```

```check
(choice
  (ask "The robot starts on S and follows R, R, D. Where does it end?")
  (right "2 squares right of S and 1 square down")
  (wrong "1 square right of S and 2 squares down"
    "There are 2 R steps and only 1 D step. Each R moves the robot 1 square right, so it goes 2 right and 1 down.")
  (wrong "Back on S"
    "None of the steps goes left or up. The robot moves away from S and never comes back.")
  (hint "Count the R steps and the D steps."))
```

```sources
(source "Timeless Computing (docs/tc.md), Thinking in Programs: Algorithms")
```

---

## Order matters

The steps of an algorithm happen in order: first step first, then the
next one.

Sometimes the order changes the result. Think of getting dressed. You
put on socks first, then shoes. Shoes first, then socks, does not work!

```check
(choice
  (ask "Which list of steps makes a glass of juice?")
  (right "Take a glass, pour the juice into it, drink")
  (wrong "Pour the juice, take a glass, drink"
    "If you pour before you take the glass, the juice goes on the table. Each step needs the step before it.")
  (wrong "Drink, take a glass, pour the juice"
    "You cannot drink juice that is not poured yet. The steps must come in the right order.")
  (hint "What do you need before you can pour?"))
```

---

## A computer follows steps exactly

A computer is like the robot. It follows its steps exactly. It does not
guess what you meant.

One step for a computer is an **instruction**. A **program** is a list
of instructions for a computer, written in a way the computer can
follow.

If a program has a wrong step, the computer does the wrong step. So
every instruction must say exactly what you mean.

```check
(choice
  (ask "You want the robot to move 2 squares right. By mistake you write R, R, R. What does the robot do?")
  (right "It moves 3 squares right")
  (wrong "It moves 2 squares right, because it knows what you meant"
    "A robot or a computer cannot know what you meant. It follows the steps exactly as they are written: 3 R steps.")
  (wrong "It stops and asks you"
    "The robot does not check your plan. It just follows each step it is given.")
  (hint "Does the robot follow what you meant, or what you wrote?"))
```

```sources
(source "Timeless Computing (docs/tc.md), Thinking in Programs")
```

---

## Reaching a goal

The shaded square is the goal. This algorithm takes the robot there:
R, R, R, D, D.

```figure
(rect 162 80 28 28 'good)
(define k (slider 'k 0 5 0 "Steps done" 1))
(cs1-walk 6 4 0 0 '("R" "R" "R" "D" "D") k)
(caption "The steps: R, R, R, D, D")
```

```check
(number
  (ask "How many steps are in the algorithm R, R, R, D, D?")
  (answer 5) (from "3 + 2")
  (wrong-if 3 "3 is only the R steps. Count the D steps too.")
  (wrong-if 2 "2 is only the D steps. Count every step in the list.")
  (hint "Count each letter in the list."))
```

---

## Two ways to the same place

Here is another algorithm for the same goal: R, D, R, D, R. Move the
slider and watch. It ends on the same square.

```figure
(rect 162 80 28 28 'good)
(define k (slider 'k 0 5 0 "Steps done" 1))
(cs1-walk 6 4 0 0 '("R" "D" "R" "D" "R") k)
(caption "The steps: R, D, R, D, R")
```

There is often more than one algorithm for a job. You can compare them.
One may be shorter, or easier to read.

```check
(choice
  (ask "Algorithm 1 is R, R, R, D, D. Algorithm 2 is R, R, R, R, L, D, D. Both reach the goal. Which is shorter?")
  (right "Algorithm 1: it has 5 steps, and Algorithm 2 has 7" (true "5 < 7"))
  (wrong "Algorithm 2, because it has more R steps"
    "More steps make an algorithm longer, not shorter. Algorithm 2 goes right 4 times, then back left once: 2 steps wasted.")
  (wrong "They are the same length, because they end in the same place"
    "Ending in the same place does not make them the same length. Count the steps: 5 and 7.")
  (hint "Count the steps in each list."))
```

---

## Worked example

```example
(example
  (problem "The goal is 1 square right of S and 3 squares down. Write an algorithm to reach it.")
  (step "The robot must go right 1 time: R.")
  (step "Then it must go down 3 times: D, D, D.")
  (step "Put the steps in one list, in order.")
  (answer "R, D, D, D. (D, D, D, R reaches the same square too.)"))
```

```example
(example
  (problem "The goal is 2 squares right of S. Then the robot must come back to S.")
  (step "To reach the goal, it goes right 2 times: R, R.")
  (step (choice (ask "Which steps bring it back to S?")
    (right "L, L")
    (wrong "R, R" "R moves right, away from S. To come back, the robot must move left.")
    (wrong "L" "One L moves only 1 square. The robot is 2 squares away.")))
  (answer "R, R, L, L"))
```

---

## Practice

```check
(choice
  (ask "The robot follows U, U, L. Where does it end?")
  (right "2 squares up and 1 square left of where it started")
  (wrong "2 squares down and 1 square left"
    "U means up, not down. Each U moves the robot 1 square up.")
  (wrong "1 square up and 2 squares left"
    "There are 2 U steps and 1 L step, so it goes 2 up and 1 left.")
  (hint "Count the U steps and the L steps."))
```

```check
(number
  (ask "The robot follows R, D, R, D. How many squares right of S does it end?")
  (answer 2) (from "1 + 1")
  (wrong-if 4 "4 is all the steps. Only the R steps move the robot right.")
  (hint "Count only the R steps."))
```

---

```check
(choice
  (ask "Why must a program's instructions be exact?")
  (right "A computer does exactly what the instructions say, even if they are wrong")
  (wrong "A computer guesses the steps you leave out"
    "A computer does not guess. If a step is missing or wrong, the computer does not fix it.")
  (wrong "Long instructions make a computer slow"
    "Being exact is not about speed. It is about the computer doing exactly what it is told.")
  (hint "Think about the robot that was told R, R, R."))
```

```check
(choice
  (ask "Which of these is an algorithm?")
  (right "Fill the pot with water, heat it, put in the pasta, wait 10 minutes")
  (wrong "Pasta"
    "One word is not a list of steps. An algorithm says what to do, in order.")
  (wrong "A pot, water and pasta"
    "This lists things you need, not steps. An algorithm is steps in order that do a job.")
  (hint "Look for steps in order that do a job."))
```

So: an algorithm is a list of steps in order, and a computer follows a program's instructions exactly.
