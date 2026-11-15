# Math with variables

```lesson
(objective "Work out new numbers from variables with +, -, * and /.")
(standards "1B-AP-09")
(minutes 20)
```

In this lesson you use variables to solve problems.

A garden bed is 6 feet long and 4 feet wide. Its area is length times
width. This program works it out:

```basic
10 L = 6
20 W = 4
30 PRINT L * W
```

It shows 24. A good letter helps you remember: L for length, W for
width.

```check
(number
  (ask "Change line 10 to 10 L = 9. What does the program show now?")
  (answer 36) (from "9 * 4")
  (wrong-if 24 "Line 10 now puts 9 in L, so the program works out 9 * 4.")
  (wrong-if 13 "13 is 9 + 4. Line 30 multiplies.")
  (hint "L is 9 and W is 4."))
```

---

## Keeping an answer

A program can keep an answer in a variable too. Then it can use it
later.

```basic
10 C = 3
20 K = 4
30 T = C * K
40 PRINT T
```

4 kids each have 3 cookies. Line 30 works out 3 * 4 and puts 12 in T,
the total.

```check
(number
  (ask "What does line 40 show?")
  (answer 12) (from "3 * 4")
  (wrong-if 7 "7 is 3 + 4. Line 30 multiplies C by K.")
  (hint "T holds C * K."))
```

---

## Words and a number on one line

A semicolon, ;, joins two things on one line:

```basic
10 T = 12
20 PRINT "TOTAL "; T
```

```figure
(cs1-shows '("TOTAL 12"))
(caption "What RUN shows")
```

The space before the last quote matters. Without it, the line shows
TOTAL12.

```check
(choice
  (ask "10 A = 7, 20 PRINT \"A IS \"; A. What does it show?")
  (right "A IS 7")
  (wrong "A IS A"
    "The second A has no quotes, so the computer shows its value, 7.")
  (wrong "7 IS 7"
    "The A inside the quotes is shown just as it is: the letter A.")
  (hint "The words in quotes come first. Then the value of A."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: PRINT")
```

---

## Sharing

20 stickers are shared by 4 friends. Each friend gets 20 / 4.

```basic
10 N = 20
20 P = 4
30 PRINT "EACH GETS "; N / P
```

It shows EACH GETS 5.

```check
(number
  (ask "Change line 10 to 10 N = 24. How many does each friend get now?")
  (answer 6) (from "24 / 4")
  (wrong-if 20 "20 is 24 - 4. The slash, /, means divided by.")
  (hint "Work out 24 / 4."))
```

---

## Worked example

```example
(example
  (problem "A box holds 6 eggs. Write a program for the eggs in 5 boxes.")
  (step "Keep the eggs in a box in E: 10 E = 6.")
  (step "Keep the boxes in B: 20 B = 5.")
  (step "Work out the total: 30 T = E * B.")
  (step "Show it: 40 PRINT \"EGGS \"; T. It shows EGGS 30.")
  (answer "EGGS 30"))
```

```example
(example
  (problem "You have 15 cents and get 10 more. Write a program for how many you have.")
  (step "10 C = 15")
  (step "20 M = 10")
  (step (choice (ask "What is line 30?")
    (right "30 PRINT C + M")
    (wrong "30 PRINT C * M" "You get 10 more cents, so you add. C * M would be 150.")
    (wrong "30 PRINT \"C + M\"" "With quotes the program shows the words C + M, not the answer.")))
  (answer "25"))
```

---

## Practice

```check
(number
  (ask "10 A = 8, 20 B = 3, 30 C = A - B, 40 PRINT C. What does it show?")
  (answer 5) (from "8 - 3")
  (hint "C holds A - B."))
```

```check
(choice
  (ask "10 X = 4, 20 PRINT X; X. What does it show?")
  (right "44")
  (wrong "4 4"
    "The semicolon puts the next thing straight after, with no space. To get a space, print \" \" between them.")
  (wrong "8"
    "The semicolon does not add. It only puts two things side by side.")
  (hint "A semicolon joins things with nothing between them."))
```

---

```check
(number
  (ask "A bus has 30 seats. 3 buses go on a trip. 10 S = 30, 20 B = 3, 30 PRINT S * B. What does it show?")
  (answer 90) (from "30 * 3")
  (hint "Work out 30 * 3."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. A spider has 8 legs. How many legs do 7 spiders have? Write a program with 10 L = 8, 20 S = 7 and 30 PRINT \"LEGS \"; L * S. Run it, then come back.")
  (check (number
    (ask "How many legs did it show?")
    (answer 56) (from "8 * 7")
    (wrong-if 15 "15 is 8 + 7. Line 30 multiplies L by S.")
    (hint "Work out 8 * 7."))))
```

So: variables can hold the numbers of a problem, and a line like T = C * K works out a new number from them.
