# Asking and answering

```lesson
(objective "Write a program that asks for numbers, works with them and prints an answer.")
(standards "1B-AP-09")
(minutes 25)
```

In this lesson you write programs that ask, work something out, and
answer.

Many programs do three things, in this order:

1. Ask the user for numbers, with INPUT.
2. Work something out, with the variables.
3. Show the answer, with PRINT.

```basic
10 INPUT "HOW OLD ARE YOU"; A
20 PRINT "NEXT YEAR YOU WILL BE "; A + 1
```

```figure
(cs1-shows '("HOW OLD ARE YOU? 9" "NEXT YEAR YOU WILL BE 10"))
(caption "The user typed 9")
```

```check
(number
  (ask "You run this program and type 11. What number does it show?")
  (answer 12) (from "11 + 1")
  (wrong-if 11 "Line 20 shows A + 1, not A.")
  (hint "A gets 11. Line 20 shows A + 1."))
```

---

## Two questions

A program can ask more than once. Each INPUT needs its own variable.

```basic
10 INPUT "FIRST NUMBER"; A
20 INPUT "SECOND NUMBER"; B
30 PRINT "THE SUM IS "; A + B
```

```check
(number
  (ask "You type 8 for the first number and 5 for the second. What sum does it show?")
  (answer 13) (from "8 + 5")
  (wrong-if 85 "The program adds the values of A and B. It does not put the digits side by side.")
  (hint "A is 8 and B is 5."))
```

---

## Same letter, lost number

What if both lines used A?

```basic
10 INPUT "FIRST NUMBER"; A
20 INPUT "SECOND NUMBER"; A
30 PRINT "THE SUM IS "; A + A
```

That is a bug. Line 20 puts the second number into A, so the first one
is gone. With 8 and 5, it shows THE SUM IS 10.

```check
(choice
  (ask "Why does this program show 10, not 13, for 8 and 5?")
  (right "The second INPUT put 5 into A, so the 8 was gone")
  (wrong "The computer added wrong"
    "The computer added exactly what it had: 5 + 5. The bug is that A no longer held 8.")
  (wrong "INPUT can be used only once"
    "A program can use INPUT many times. The bug is using the same variable for both numbers.")
  (hint "A variable holds one value at a time."))
```

---

## Plan first

Before you type, plan the three parts:

| Part | For "how many wheels on C cars?" |
|---|---|
| Ask | INPUT "HOW MANY CARS"; C |
| Work out | W = C * 4 |
| Show | PRINT "WHEELS "; W |

```basic
10 INPUT "HOW MANY CARS"; C
20 W = C * 4
30 PRINT "WHEELS "; W
```

```check
(number
  (ask "You run it and type 3. How many wheels does it show?")
  (answer 12) (from "3 * 4")
  (wrong-if 7 "7 is 3 + 4. Line 20 multiplies.")
  (hint "W = C * 4, and C is 3."))
```

---

## Worked example

```example
(example
  (problem "Write a program that asks for a number of weeks and shows the number of days.")
  (step "Ask: 10 INPUT \"WEEKS\"; W.")
  (step "Work out: a week has 7 days, so 20 D = W * 7.")
  (step "Show: 30 PRINT \"DAYS \"; D.")
  (step "Test it: type 2. It shows DAYS 14, and 2 weeks are 14 days.")
  (answer "10 INPUT \"WEEKS\"; W, 20 D = W * 7, 30 PRINT \"DAYS \"; D"))
```

```example
(example
  (problem "Write a program that asks how many apples you have and how many you eat, and shows how many are left.")
  (step "Ask: 10 INPUT \"APPLES\"; A, then 20 INPUT \"EATEN\"; E.")
  (step (choice (ask "What do you work out?")
    (right "30 L = A - E")
    (wrong "30 L = A + E" "Eating apples leaves fewer, so you take away.")
    (wrong "30 L = E - A" "Start with the apples you have, A, and take away the ones eaten, E.")))
  (step "Show: 40 PRINT \"LEFT \"; L.")
  (answer "With 10 apples and 3 eaten, it shows LEFT 7."))
```

---

## Practice

```check
(number
  (ask "10 INPUT \"FEET\"; F, 20 PRINT \"INCHES \"; F * 12. The user types 3. What number does it show?")
  (answer 36) (from "3 * 12")
  (wrong-if 15 "15 is 3 + 12. Line 20 multiplies.")
  (hint "A foot is 12 inches. Work out 3 * 12."))
```

```check
(choice
  (ask "A program asks for the length and the width of a rug, and shows its area. Which plan fits?")
  (right "INPUT L, INPUT W, then PRINT L * W")
  (wrong "PRINT L * W, then INPUT L, INPUT W"
    "The program must ask before it works things out. When PRINT runs first, L and W are still 0.")
  (wrong "INPUT L, then PRINT L * W"
    "The program never asks for the width, so W is 0 and the area shows 0.")
  (hint "Ask, then work out, then show."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Write a program that asks for a number of weeks and shows the number of days, as in the worked example. Run it and type 3. Come back.")
  (check (number
    (ask "How many days did it show?")
    (answer 21) (from "3 * 7")
    (hint "3 weeks of 7 days each."))))
```

So: a program can ask for numbers with INPUT, work with them in variables, and show the answer with PRINT.
