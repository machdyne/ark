# Mix it up

```lesson
(objective "Explain what the mixed math practice experiment found, and why mixing helps.")
(minutes 20)
(keywords "interleaving" "blocked practice")
```

Mixing different kinds of problems in one practice session can teach
more than doing one kind at a time, even though it feels harder. The
best evidence for this comes from math.

Doing many problems of one kind in a row, then many of the next kind,
is **blocked practice**. Mixing the kinds together, so you never know
which kind comes next, is **interleaving**.

In the figure, each letter is one kind of problem.

```figure
(st-seq 40 60 "AAABBBCCC" "Blocked")
(st-seq 40 140 "ABCBACCAB" "Interleaved")
(caption "The same 9 problems, in 2 orders")
```

```check
(choice
  (ask "A worksheet has 10 adding problems, then 10 subtracting, then 10 multiplying. What kind of practice is it?")
  (right "Blocked practice")
  (wrong "Interleaving"
    "Interleaving mixes the kinds together. Here each kind comes in one block of 10.")
  (wrong "Spaced practice"
    "Spacing is about time between sessions. This is one session, with the problems in blocks.")
  (hint "Is there any doubt which kind of problem comes next?"))
```

---

## The experiment

In 2007, college students learned to find the volume of 4 kinds of
unusual solid shapes. Each shape had its own formula.

Some students practiced in blocks: all the problems for one shape, then
the next. Others did the same problems, mixed.

During practice, the blocked group got more right. But on a test a
week later, the mixed group did much better.

```sources
(source "Rohrer and Taylor, The Shuffling of Mathematics Problems Improves Learning, Instructional Science 35, 2007")
```

```check
(choice
  (ask "In the experiment, which group did better on the test a week later?")
  (right "The group that practiced the problems mixed")
  (wrong "The group that practiced in blocks"
    "The blocked group did better during practice, but not a week later. Mixing won on the test.")
  (wrong "Both groups did the same"
    "They did the same problems, but in a different order, and the mixed group did much better on the test.")
  (hint "Practice and the test gave different winners."))
```

---

## Why mixing helps

Researchers think one reason is this. In a block, you know which
method to use before you read the problem:
it is the same as the last one. On most tests, the problems are mixed.
You first have to work out what kind each one is.

Interleaving makes you practice that choice. It feels harder and
slower, which makes it another desirable difficulty.

```sources
(source "Rohrer and Taylor, The Shuffling of Mathematics Problems Improves Learning, Instructional Science 35, 2007")
(source "Brown, Roediger and McDaniel, Make It Stick (Harvard University Press, 2014), chapter 3")
```

```check
(choice
  (ask "What does interleaving practice that blocked practice skips?")
  (right "Working out which kind of problem it is and which method to use")
  (wrong "Doing the same method many times quickly"
    "That is what blocked practice gives you. Interleaving adds the step of choosing the method.")
  (wrong "Nothing: it is the same practice in another order"
    "The problems are the same, but mixing means you have to choose the method each time. That is the extra practice.")
  (hint "On a mixed test, what do you have to do before you can solve a problem?"))
```

---

## How learn does it

When you press R for review, learn takes questions from your courses in
turn. So review mixes subjects and lessons, and it also puts a
question's answers in a new order.

```example
(example
  (problem "Your math homework is 5 area problems and 5 perimeter problems. How can you interleave them?")
  (step "Mix the order: area, perimeter, perimeter, area, and so on.")
  (step "Before you solve each one, say which kind it is.")
  (step "Then solve it, and check your answer.")
  (answer "The same 10 problems, mixed, and each one starts with a choice."))
```

```check
(choice
  (ask "Why does learn's review take questions from your courses in turn?")
  (right "To mix the kinds of questions, so you practice choosing each answer fresh")
  (wrong "To make sure every course gets the same time"
    "That is a side effect. The point is the mixing, which makes review work better.")
  (wrong "Because it cannot keep the courses apart"
    "learn knows which course each question comes from. It mixes them on purpose.")
  (hint "Which kind of practice is in this lesson's title?"))
```

---

## Practice

```check
(choice
  (ask "Interleaving feels harder than blocked practice. What does that mean?")
  (right "Nothing bad: the extra effort is part of why it works")
  (wrong "It is a worse way to practice"
    "In the experiment, the mixed group did worse during practice, but much better a week later.")
  (wrong "You should switch back to blocks when it feels hard"
    "Feeling hard is not a sign that it is failing. Choosing the method each time is the useful part.")
  (hint "Think of desirable difficulties."))
```

```check
(choice
  (ask "Which practice set is interleaved?")
  (right "Fractions, decimals, percents, decimals, fractions, percents")
  (wrong "6 fraction problems, then 6 decimal problems"
    "Each kind comes in its own block. Interleaving mixes them.")
  (wrong "12 fraction problems, from easy to hard"
    "That is all one kind. Interleaving needs different kinds, mixed.")
  (hint "Look for a list where the kind changes from one problem to the next."))
```

---

## This week

The next time you have practice problems of 2 or more kinds, mix them
up. Before each one, say what kind it is.

So: mixing kinds of problems makes you practice choosing the method,
and that helps you on a real test.
