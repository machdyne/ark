# Changing a value

```lesson
(objective "Follow a program that changes a variable's value, such as A = A + 1.")
(standards "1B-AP-09")
(minutes 20)
```

In this lesson you change the value in a variable, and follow a program
step by step.

Look at this line:

```basic
20 A = A + 1
```

In math, A = A + 1 can never be true. In BASIC it is not a math
sentence. It is an instruction with two parts:

1. Work out A + 1, using the value A has now.
2. Put the answer into A.

So if A is 5, the line makes A 6.

```check
(number
  (ask "A holds 5. Then the line A = A + 1 runs. What is the value of A now?")
  (answer 6) (from "5 + 1")
  (wrong-if 5 "The line changes A. It works out 5 + 1 and puts the answer back into A.")
  (wrong-if 1 "A = A + 1 does not put 1 in A. It adds 1 to the value A has now.")
  (hint "Work out A + 1 first, with A = 5."))
```

```sources
(source "Timeless Computing (docs/tc.md), Thinking in Programs: State")
```

---

## Step by step

Here a program adds 5 to S two times. Move the slider to follow it one
line at a time. The arrow shows the line that just ran.

```basic
10 S = 0
20 S = S + 5
30 S = S + 5
40 PRINT S
```

```figure
(cs1-trace '("10 S = 0" "20 S = S + 5" "30 S = S + 5" "40 PRINT S")
  '((0 "S = 0" () "S starts at 0")
    (1 "S = 5" () "0 + 5 is 5")
    (2 "S = 10" () "5 + 5 is 10")
    (3 "S = 10" ("10") "PRINT shows S")
    (-1 "S = 10" ("10") "the program ends")))
```

```check
(number
  (ask "What does this program show?")
  (answer 10) (from "0 + 5 + 5")
  (wrong-if 5 "Line 30 adds 5 again. After line 20 S is 5, and after line 30 it is 10.")
  (hint "Follow S line by line: 0, then 5, then ..."))
```

---

## Other changes

A variable can change in other ways too.

| Line | Does |
|---|---|
| A = A - 1 | makes A 1 less |
| A = A * 2 | doubles A |
| A = A + B | adds the value of B to A |

```basic
10 X = 3
20 X = X * 2
30 PRINT X
```

This shows 6: X was 3, and line 20 doubled it.

```check
(number
  (ask "10 N = 10, 20 N = N - 3, 30 PRINT N. What does it show?")
  (answer 7) (from "10 - 3")
  (wrong-if 10 "Line 20 changes N. It takes 3 away from 10, and puts 7 back into N.")
  (wrong-if 3 "N = N - 3 does not put 3 in N. It takes 3 away from the value N has.")
  (hint "Work out 10 - 3."))
```

---

## Keep a table

To follow a program on paper, make a table. Write each line, and the
value of each variable after it runs.

| Line | A |
|---|---|
| 10 A = 2 | 2 |
| 20 A = A + 3 | 5 |
| 30 A = A * 2 | 10 |

```check
(number
  (ask "One more line comes after line 30: 40 A = A - 4. What is A after line 40?")
  (answer 6) (from "10 - 4")
  (wrong-if 2 "Use the value A has after line 30, which is 10, not the first value 2.")
  (hint "After line 30, A is 10."))
```

---

## Worked example

```example
(example
  (problem "What does this show? 10 B = 1, 20 B = B * 2, 30 B = B * 2, 40 B = B * 2, 50 PRINT B")
  (step "Line 10: B is 1.")
  (step "Line 20: B is 1 * 2 = 2.")
  (step "Line 30: B is 2 * 2 = 4.")
  (step "Line 40: B is 4 * 2 = 8.")
  (answer "8"))
```

```example
(example
  (problem "What does this show? 10 C = 20, 20 C = C - 5, 30 C = C - 5, 40 PRINT C")
  (step "Line 10: C is 20.")
  (step "Line 20: C is 20 - 5 = 15.")
  (step (number (ask "What is C after line 30?") (answer 10) (from "15 - 5")
    (wrong-if 15 "Line 30 takes 5 away again, from 15.")))
  (answer "10"))
```

---

## Practice

```check
(number
  (ask "10 A = 4, 20 A = A + A, 30 PRINT A. What does it show?")
  (answer 8) (from "4 + 4")
  (wrong-if 4 "Line 20 changes A: it works out 4 + 4 and puts 8 back.")
  (hint "A + A with A = 4 is 4 + 4."))
```

```check
(number
  (ask "10 X = 5, 20 Y = 2, 30 X = X + Y, 40 PRINT X. What does it show?")
  (answer 7) (from "5 + 2")
  (wrong-if 5 "Line 30 adds the value of Y to X, so X changes.")
  (hint "Line 30 adds Y, which is 2, to X."))
```

---

```check
(choice
  (ask "What does 20 T = T + 1 do?")
  (right "It makes T one more than it was")
  (wrong "It puts 1 in T"
    "It adds 1 to the value T has now. If T was 4, it becomes 5.")
  (wrong "Nothing, because T can never equal T + 1"
    "In BASIC this is an instruction, not a math sentence. It works out T + 1 and puts the answer in T.")
  (hint "Work out the right side first, then put it in T."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type 10 S = 0, then 20 S = S + 5 and 30 S = S + 5. Add a line 35 S = S + 5, and 40 PRINT S. Run it, then come back.")
  (check (number
    (ask "What did it show?")
    (answer 15) (from "5 + 5 + 5")
    (wrong-if 10 "Line 35 adds 5 a third time. Did you type it before RUN?")
    (hint "5 is added 3 times."))))
```

So: A = A + 1 works out A + 1 with the old value, then puts the answer back into A.
