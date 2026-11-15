# Asking for a number

```lesson
(objective "Use INPUT to ask the user for a number and keep it in a variable.")
(standards "1B-AP-09" "1B-AP-10")
(minutes 20)
(keywords "user (of a program)" "input (to a program)")
```

In this lesson your program asks a person for a number.

The person who uses a program is its **user**. So far, your programs
did the same thing every time. Now the user can choose a number while
the program runs.

What the user gives a program while it runs is **input**. The
instruction `INPUT` waits for the user to type a number and press Enter. Then it
puts the number into a variable.

```basic
10 INPUT A
20 PRINT A * 2
```

Line 10 shows a question mark, ?, and waits. If the user types 7 and
presses Enter, A gets the value 7. Line 20 shows 14.

```figure
(cs1-shows '("? 7" "14"))
(caption "The user typed 7")
```

```check
(number
  (ask "You run this program and type 9, then Enter. What does it show?")
  (answer 18) (from "9 * 2")
  (wrong-if 9 "Line 20 does not show A. It shows A * 2.")
  (hint "A gets 9. Line 20 shows A * 2."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: INPUT")
```

---

## Waiting for the user

The program waits at INPUT until the user presses Enter. Nothing after
it runs before then.

```check
(choice
  (ask "A program reaches 10 INPUT A. What happens?")
  (right "It waits for the user to type a number and press Enter")
  (wrong "It puts a number of its own choice into A"
    "The program does not choose the number. The user types it.")
  (wrong "It shows the value of A"
    "That is what PRINT A does. INPUT A waits for the user and puts their number into A.")
  (hint "Who chooses the number?"))
```

---

## A question with the ?

A ? alone does not tell the user what to type. You can put words in
quotes before the variable, with a semicolon:

```basic
10 INPUT "HOW MANY CATS"; C
20 PRINT "THAT IS "; C * 4; " LEGS"
```

```figure
(cs1-shows '("HOW MANY CATS? 3" "THAT IS 12 LEGS"))
(caption "The user typed 3")
```

BASIC puts the ? after the words for you.

```check
(number
  (ask "You run this program and type 5. How many legs does it say?")
  (answer 20) (from "5 * 4")
  (wrong-if 9 "9 is 5 + 4. Line 20 works out C * 4.")
  (hint "C gets 5. Each cat has 4 legs."))
```

---

## Numbers only

This BASIC can keep only numbers. If the user types a word, such as
CAT, INPUT gets no number, and the variable gets 0.

```check
(choice
  (ask "A program says HOW OLD ARE YOU? The user types TEN. What does the variable get?")
  (right "0, because INPUT reads only digits")
  (wrong "10, because the computer reads the word"
    "This BASIC does not read number words. It looks for digits like 1 and 0, and finds none.")
  (wrong "The word TEN"
    "A variable here can hold only a number, not a word.")
  (hint "INPUT reads digits."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), sections 2 and 5: a line with no digits gives 0")
```

---

## Worked example

```example
(example
  (problem "Write a program that asks for a number and shows the number 10 more.")
  (step "Ask, with words: 10 INPUT \"NUMBER\"; N.")
  (step "Show 10 more: 20 PRINT N + 10.")
  (step "Run it and type 5: it shows NUMBER? 5, then 15.")
  (answer "10 INPUT \"NUMBER\"; N, 20 PRINT N + 10"))
```

```example
(example
  (problem "Write a program that asks how many bikes, and shows how many wheels.")
  (step "Ask: 10 INPUT \"HOW MANY BIKES\"; B.")
  (step "A bike has 2 wheels.")
  (step (choice (ask "What is line 20?")
    (right "20 PRINT B * 2")
    (wrong "20 PRINT B + 2" "Each bike has 2 wheels, so you multiply: B * 2.")
    (wrong "20 INPUT B * 2" "INPUT asks for a number. To show the answer, use PRINT.")))
  (answer "10 INPUT \"HOW MANY BIKES\"; B, 20 PRINT B * 2"))
```

---

## Practice

```check
(number
  (ask "10 INPUT X, 20 PRINT X - 1. The user types 30. What does it show?")
  (answer 29) (from "30 - 1")
  (hint "X gets 30."))
```

```check
(choice
  (ask "Which line asks the user for a number and keeps it in D?")
  (right "10 INPUT D")
  (wrong "10 PRINT D"
    "PRINT shows the value of D. It does not ask the user for anything.")
  (wrong "10 D = INPUT"
    "That is not how INPUT is written. Write INPUT, then the variable.")
  (hint "Which word waits for the user?"))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type 10 INPUT \"HOW MANY CATS\"; C and 20 PRINT \"THAT IS \"; C * 4; \" LEGS\". Run it and type 6. Come back.")
  (check (number
    (ask "How many legs did it say?")
    (answer 24) (from "6 * 4")
    (hint "Each cat has 4 legs: 6 * 4."))))
```

So: INPUT waits for the user to type a number, and puts it into a variable.
