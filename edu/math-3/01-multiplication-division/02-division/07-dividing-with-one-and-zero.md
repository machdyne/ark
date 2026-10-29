# Dividing with 1 and 0

```lesson
(objective "Divide by 1, divide a number by itself and divide 0, and explain why no number can be divided by 0.")
(standards "3.OA.B.6")
(minutes 20)
```

You can divide with 1 and 0 without counting, once you know the rules
and why they work.

## Divide by 1

Share 6 apples into 1 group. That 1 group gets all 6. So 6 ÷ 1 = 6.
Any number divided by 1 is that same number.

```figure
(md-groups 125 70 1 6 36 1 'ink)
(label 160 180 "6 ÷ 1 = 6" 'big)
```

```check
(number
  (ask "9 ÷ 1 = ?")
  (answer 9) (from "9 / 1")
  (wrong-if 1 "With 1 group, that group gets everything. All 9 go into it, so 9 ÷ 1 = 9.")
  (wrong-if 8 "8 is 9 - 1. Dividing by 1 does not take 1 away. It puts all 9 into 1 group.")
  (hint "Put 9 things into 1 group. How many are in it?"))
```

---

## Divide a number by itself

Share 6 apples among 6 children. Each child gets 1. So 6 ÷ 6 = 1. Any
number except 0, divided by itself, is 1.

```check
(number
  (ask "8 ÷ 8 = ?")
  (answer 1) (from "8 / 8")
  (wrong-if 0 "0 is 8 - 8. Sharing 8 among 8 does not leave each one with nothing. Each one gets 1.")
  (wrong-if 8 "If each of 8 children got 8, you would need 64. With 8 to share, each gets 1.")
  (hint "8 children share 8 apples. How many does each get?"))
```

---

## Divide 0

You have 0 apples to share among 5 children. Each child gets 0. So
0 ÷ 5 = 0. 0 divided by any number except 0 is 0.

You can check with the related fact: 5 × 0 = 0.

```check
(number
  (ask "0 ÷ 7 = ?")
  (answer 0) (from "0 / 7")
  (wrong-if 7 "There is nothing to share. 7 children sharing 0 apples each get 0.")
  (wrong-if 1 "Each child gets 1 only when there are as many apples as children. Here there are 0 apples.")
  (hint "How much does each child get when there is nothing to share?"))
```

---

## You cannot divide by 0

What is 6 ÷ 0? Think of the related multiplication: 0 × ? = 6.

But 0 groups of any size hold nothing. 0 times any number is 0,
never 6. No number works. So 6 ÷ 0 has no
answer. You cannot divide a number by 0.

In words: you cannot share 6 apples into 0 groups. There is no group
to put them in.

```check
(choice
  (ask "What is 4 ÷ 0?")
  (right "It has no answer: you cannot divide by 0")
  (wrong "0"
    "If 4 ÷ 0 were 0, then 0 × 0 would be 4. But 0 × 0 = 0. No number works.")
  (wrong "4"
    "If 4 ÷ 0 were 4, then 0 × 4 would be 4. But 0 × 4 = 0. No number works.")
  (hint "Think: 0 × ? = 4. Is there a number that works?"))
```

---

## Worked example

```example
(example
  (problem "Find 0 ÷ 3, 3 ÷ 3 and 3 ÷ 1.")
  (step "0 ÷ 3: 0 shared by 3 is 0 each. 0 ÷ 3 = 0.")
  (step "3 ÷ 3: 3 shared by 3 is 1 each. 3 ÷ 3 = 1.")
  (step "3 ÷ 1: 3 in 1 group is 3. 3 ÷ 1 = 3.")
  (answer "0, 1 and 3"))
```

```example
(example
  (problem "Find 10 ÷ 10 and 10 ÷ 1.")
  (step "10 ÷ 10: 10 shared by 10 is 1 each. 10 ÷ 10 = 1.")
  (step (number (ask "10 ÷ 1 = ?") (answer 10) (from "10 / 1")
    (wrong-if 1 "With 1 group, all 10 go into it. 10 ÷ 1 = 10.")))
  (answer "1 and 10"))
```

---

## Practice

```check
(number
  (ask "25 ÷ 25 = ?")
  (answer 1) (from "25 / 25")
  (wrong-if 0 "0 is 25 - 25. Dividing a number by itself shares it out 1 each: the answer is 1.")
  (hint "A number divided by itself ..."))
```

```check
(number
  (ask "0 ÷ 9 = ?")
  (answer 0) (from "0 / 9")
  (wrong-if 9 "There is nothing to share, so each of 9 groups gets 0.")
  (hint "Think: 9 × ? = 0."))
```

---

```check
(choice (several)
  (ask "Which of these have an answer? Choose all.")
  (right "5 ÷ 1")
  (right "0 ÷ 5")
  (right "5 ÷ 5")
  (wrong "5 ÷ 0"
    "Think: 0 × ? = 5. 0 times any number is 0, so no number works. 5 ÷ 0 has no answer.")
  (hint "Only one of them divides by 0."))
```

So: a number divided by 1 stays the same. A number (not 0) divided by itself is 1. 0 divided by a number (not 0) is 0. Dividing by 0 has no answer.
