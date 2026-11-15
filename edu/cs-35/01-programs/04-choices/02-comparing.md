# Comparing

```lesson
(objective "Compare numbers with =, <, >, <>, <= and >= in a condition.")
(standards "1B-AP-10")
(minutes 20)
```

In this lesson you compare numbers in a condition.

A condition can ask more than "is it equal?". BASIC has 6 ways to
compare:

| Sign | Means | True for A = 5 |
|---|---|---|
| = | is equal to | A = 5 |
| < | is less than | A < 9 |
| > | is greater than | A > 2 |
| <> | is not equal to | A <> 4 |
| <= | is less than or equal to | A <= 5 |
| >= | is greater than or equal to | A >= 5 |

In math, "not equal" is an = sign with a line through it. A keyboard
has no such sign. So BASIC writes <>: less than or greater than.

```check
(choice
  (ask "A holds 6. Which condition is true?")
  (right "A > 4")
  (wrong "A < 4"
    "< means less than. 6 is not less than 4, so A < 4 is false.")
  (wrong "A = 4"
    "A holds 6, not 4, so A = 4 is false.")
  (hint "6 is greater than 4."))
```

```sources
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 4")
```

---

## The open side

The open side of < and > faces the bigger number. A < 9 says A is
smaller than 9.

```basic
10 INPUT "SCORE"; S
20 IF S < 10 THEN PRINT "TRY AGAIN"
30 IF S >= 10 THEN PRINT "YOU WIN"
```

```check
(choice
  (ask "You type 10. What does this program show?")
  (right "YOU WIN")
  (wrong "TRY AGAIN"
    "10 is not less than 10, so S < 10 is false. But 10 >= 10 is true, because >= counts equal too.")
  (wrong "Both lines"
    "S cannot be less than 10 and at least 10 at the same time. Only one condition is true.")
  (hint ">= means greater than or equal to."))
```

---

## Equal counts or not

< and > are false when the numbers are equal. <= and >= are true when
they are equal.

| A is 5 | A < 5 | A <= 5 |
|---|---|---|
| is it true? | false | true |

```check
(choice
  (ask "B holds 3. Is B <= 3 true or false?")
  (right "True")
  (wrong "False"
    "<= means less than or equal to. B is equal to 3, so B <= 3 is true.")
  (hint "Is B equal to 3?"))
```

---

## Not equal

```basic
10 INPUT "HOW MANY PETS"; P
20 IF P <> 0 THEN PRINT "SAY HI TO THEM"
```

`P <> 0` is true for every number but 0.

```check
(choice
  (ask "You type 2. Is P <> 0 true or false?")
  (right "True: 2 is not equal to 0")
  (wrong "False: 2 is not 0"
    "<> asks \"is it not equal?\". 2 is not equal to 0, so the answer is yes: true.")
  (hint "<> means not equal."))
```

---

## Worked example

```example
(example
  (problem "A ride needs you to be at least 48 inches tall. Write a line that prints YOU CAN RIDE.")
  (step "Keep the height in H.")
  (step "At least 48 means 48 or more: H >= 48.")
  (step "IF H >= 48 THEN PRINT \"YOU CAN RIDE\"")
  (answer "IF H >= 48 THEN PRINT \"YOU CAN RIDE\""))
```

```example
(example
  (problem "Print COLD when T is less than 10.")
  (step "Less than 10 is T < 10.")
  (step (choice (ask "Which line is it?")
    (right "IF T < 10 THEN PRINT \"COLD\"")
    (wrong "IF T > 10 THEN PRINT \"COLD\"" "> means greater than. Less than is <.")
    (wrong "IF T <= 10 THEN PRINT \"COLD\"" "<= is true for 10 too. 10 is not less than 10.")))
  (answer "IF T < 10 THEN PRINT \"COLD\""))
```

---

## Practice

```check
(choice
  (ask "X holds 7. Which condition is false?")
  (right "X <> 7")
  (wrong "X >= 7"
    ">= is true when X is equal to 7, and it is.")
  (wrong "X > 1"
    "7 is greater than 1, so this one is true.")
  (wrong "X < 8"
    "7 is less than 8, so this one is true.")
  (hint "One of them says X is not 7."))
```

```check
(number
  (ask "Which whole number N makes both N > 4 and N < 6 true?")
  (answer 5)
  (wrong-if 4 "N > 4 is false for 4: 4 is not greater than 4.")
  (wrong-if 6 "N < 6 is false for 6: 6 is not less than 6.")
  (hint "It is bigger than 4 and smaller than 6."))
```

---

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the SCORE program above. Run it 3 times, and type 9, 10 and 11. Come back.")
  (check (number
    (ask "For how many of the 3 numbers did it show YOU WIN?")
    (answer 2)
    (explain "10 and 11 are greater than or equal to 10. 9 is not.")
    (wrong-if 1 ">= counts equal too, so 10 wins as well as 11.")
    (hint "Which of 9, 10 and 11 are >= 10?"))))
```

So: =, <, >, <>, <= and >= compare numbers, and each comparison is true or false.
