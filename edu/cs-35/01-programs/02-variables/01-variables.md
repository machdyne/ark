# Variables

```lesson
(objective "Store a number in a variable and print it.")
(standards "1B-AP-09")
(minutes 20)
(keywords "variable" "value (of a variable)")
```

In this lesson you teach the computer to keep a number.

A program can keep a number in a **variable**. A variable is like a box
with a name on it. In BASIC, the names are single letters, A to Z.

This line puts 5 into the variable A:

```basic
10 A = 5
```

The number in a variable is its **value**. Now the value of A is 5.

```figure
(frame 50 50 90 70 'ink 2)
(text 95 40 "A" 'big 'centre)
(text 95 98 "5" 'big 'centre 'bold)
(frame 180 50 90 70 'ink 2)
(text 225 40 "B" 'big 'centre)
(text 225 98 "0" 'big 'centre)
(caption "Two variables: A holds 5, B holds 0")
```

```check
(choice
  (ask "What does the line 10 B = 8 do?")
  (right "It puts 8 into the variable B")
  (wrong "It checks whether B is 8"
    "In BASIC, B = 8 on its own line is an instruction. It puts the value 8 into B.")
  (wrong "It prints B and 8"
    "It does not print anything. Only PRINT shows things on the screen.")
  (hint "Think of B as a box. What goes into it?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 3")
(source "Timeless Computing (docs/tc.md), Thinking in Programs: State")
```

---

## Printing a variable

PRINT can show a variable's value. Look at lines 20 and 30:

```basic
10 A = 5
20 PRINT A
30 PRINT "A"
```

Line 20 has no quotes, so it shows the value of A: 5. Line 30 has
quotes, so it shows the letter A.

```figure
(cs1-shows '("5" "A"))
(caption "What RUN shows")
```

```check
(choice
  (ask "10 B = 4, then 20 PRINT B. What does the program show?")
  (right "4")
  (wrong "B"
    "B has no quotes, so the computer shows the value in B. PRINT \"B\" would show the letter.")
  (wrong "B = 4"
    "PRINT B shows only the value of B, the number in the box.")
  (hint "Are there quotes around B?"))
```

---

## Using two variables

You can use variables in sums, just like numbers.

```basic
10 A = 5
20 B = 3
30 PRINT A + B
```

The computer looks in A and finds 5. It looks in B and finds 3. It
works out 5 + 3 and shows 8.

```check
(number
  (ask "10 X = 6, 20 Y = 7, 30 PRINT X * Y. What does it show?")
  (answer 42) (from "6 * 7")
  (wrong-if 13 "13 is 6 + 7. The star means times.")
  (hint "X holds 6 and Y holds 7. Work out 6 * 7."))
```

---

## A new value takes the place of the old one

A variable holds one value at a time. Put a new value in, and the old
one is gone.

```basic
10 A = 5
20 A = 9
30 PRINT A
```

This shows 9. Line 20 put 9 in A, and the 5 is gone.

A variable you never set has the value 0. RUN sets every variable to 0
at the start.

```check
(number
  (ask "10 N = 2, 20 N = 7, 30 PRINT N. What does it show?")
  (answer 7)
  (wrong-if 2 "Line 20 puts 7 in N. The old value, 2, is gone.")
  (wrong-if 9 "A variable does not add up its values. It holds one at a time: the last one put in.")
  (hint "Which value was put in last?"))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 3: variables start at 0")
```

---

## Worked example

```example
(example
  (problem "What does this show? 10 A = 4, 20 B = 6, 30 PRINT A + B")
  (step "Line 10: A holds 4.")
  (step "Line 20: B holds 6.")
  (step "Line 30: 4 + 6 is 10.")
  (answer "10"))
```

```example
(example
  (problem "What does this show? 10 C = 3, 20 C = 8, 30 PRINT C * 2")
  (step "Line 10: C holds 3.")
  (step "Line 20: C now holds 8. The 3 is gone.")
  (step (number (ask "What does line 30 show?") (answer 16) (from "8 * 2")
    (wrong-if 6 "6 is 3 * 2. But line 20 put 8 in C, so C holds 8.")))
  (answer "16"))
```

---

## Practice

```check
(number
  (ask "10 P = 9, 20 Q = 4, 30 PRINT P - Q. What does it show?")
  (answer 5) (from "9 - 4")
  (wrong-if 13 "13 is 9 + 4. The sign here is minus.")
  (hint "P holds 9 and Q holds 4."))
```

```check
(choice
  (ask "10 A = 5, then 20 PRINT \"A\". What does it show?")
  (right "A")
  (wrong "5"
    "A is in quotes, so the computer shows the letter A, not the value of A.")
  (hint "Look for quotes."))
```

---

```check
(number
  (ask "A program has only one line: 10 PRINT Z. What does it show?")
  (answer 0)
  (wrong-if 26 "Z is the 26th letter, but that is not its value. A variable you never set holds 0.")
  (hint "What is in a variable you never put anything in?"))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Write a program that puts 12 in A, puts 3 in B, and prints A * B. Run it, then come back.")
  (check (number
    (ask "What did it show?")
    (answer 36) (from "12 * 3")
    (wrong-if 15 "15 is 12 + 3. Did you use the star, *, for times?")
    (hint "10 A = 12, 20 B = 3, 30 PRINT A * B"))))
```

So: a variable is a box with a letter for a name, and it holds one value at a time.
