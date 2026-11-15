# A drawing project

```lesson
(objective "Build a drawing from parts and loops, and change it to make it your own.")
(standards "1B-AP-11" "1B-AP-12" "1B-AP-14")
(minutes 30)
```

In this lesson you build a picture, part by part, and then make it your
own.

The plan for a picture: a house in the sun.

1. The sun: a circle.
2. The house: a box, a roof of 2 lines, a filled door.
3. A fence: a loop of lines.
4. A tree: a filled box and a circle.
5. The ground: a line.

Here is the finished picture:

```figure
(cs1-screen)
(cs1-circle 50 40 25)
(cs1-box 100 120 220 200)
(cs1-line 100 120 160 60)
(cs1-line 160 60 220 120)
(cs1-fill 145 160 175 200)
(for-range 1 10 (lambda (i) (cs1-line (* 10 i) 170 (* 10 i) 200)))
(cs1-line 0 180 95 180)
(cs1-fill 265 150 275 200)
(cs1-circle 270 125 25)
(cs1-line 0 200 319 200)
(caption "A house in the sun")
```

```check
(choice
  (ask "Which part of the plan needs a loop?")
  (right "The fence: it is many lines, the same but moved along")
  (wrong "The sun"
    "The sun is one circle, so one CIRCLE line draws it.")
  (wrong "The ground"
    "The ground is one line. A loop helps when something repeats.")
  (hint "Which part repeats?"))
```

```sources
(source "docs/basic_app.md, Beyond BASIC 1: CLS, LINE, BOX, CIRCLE")
```

---

## Parts 1 and 2: the sun and the house

Start with a REM for the whole program. Then a REM for each part.

```basic
10 REM A HOUSE IN THE SUN
20 CLS
30 REM THE SUN
40 CIRCLE 50, 40, 25
50 REM THE HOUSE
60 BOX 100, 120, 220, 200
70 LINE 100, 120, 160, 60
80 LINE 160, 60, 220, 120
90 BOX 145, 160, 175, 200, 1
```

Run it after each part. If a part looks wrong, you know where to look.

```check
(choice
  (ask "You run parts 1 and 2, and the roof points down, not up. Where is the bug?")
  (right "In lines 70 and 80, the roof lines")
  (wrong "In line 40, the sun"
    "The sun is a circle and has nothing to do with the roof. Look at the lines that draw the roof.")
  (wrong "In line 20, CLS"
    "CLS only clears the screen. The roof is drawn by lines 70 and 80.")
  (hint "Which lines are under REM THE HOUSE and draw the roof?"))
```

---

## Parts 3, 4 and 5

```basic
100 REM THE FENCE
110 FOR X = 10 TO 90 STEP 10
120 LINE X, 170, X, 200
130 NEXT
140 LINE 0, 180, 95, 180
150 REM THE TREE
160 BOX 265, 150, 275, 200, 1
170 CIRCLE 270, 125, 25
180 REM THE GROUND
190 LINE 0, 200, 319, 200
```

```check
(number
  (ask "How many fence posts does the loop in lines 110 to 130 draw?")
  (answer 9) (from "(90 - 10) / 10 + 1")
  (wrong-if 8 "Count both ends: 10, 20, 30 ... 90 is 9 posts.")
  (wrong-if 90 "90 is the x of the last post. STEP 10 draws one post every 10 pixels.")
  (hint "X is 10, 20, 30 ... up to 90."))
```

---

## Make it your own

Now change the program. Change one thing at a time, and run it each
time.

- Move the sun: change x and y in line 40.
- More posts: a smaller STEP in line 110.
- A window: add a BOX inside the house, under REM THE HOUSE.
- A second tree: copy lines 160 and 170 with a new x.

```check
(choice
  (ask "You want a window in the house. Which line could draw it?")
  (right "95 BOX 190, 140, 210, 160")
  (wrong "95 BOX 20, 20, 40, 40"
    "This box is at the top left, where the sun is. The house is from x = 100 to 220 and y = 120 to 200.")
  (wrong "95 CIRCLE 160, 60, 40"
    "This circle is around the top of the roof, not inside the house.")
  (hint "A window must be inside the house: x between 100 and 220, y between 120 and 200."))
```

---

## Using someone else's program

You may start from a friend's program, or from one in this lesson, and
change it. That is a good way to learn. When you do, say so in a REM:

```basic
10 REM A HOUSE IN THE SUN, BY JO
15 REM BASED ON A PROGRAM BY SAM
```

It is fair to the person who wrote the first program. And people
reading yours know where it came from.

```check
(choice
  (ask "Jo starts from Sam's drawing and adds a tree. What should Jo do?")
  (right "Add a REM that says the program is based on Sam's")
  (wrong "Delete Sam's name, because Jo changed it"
    "Jo changed it, but Sam wrote the first program. A REM gives Sam credit.")
  (wrong "Nothing: programs do not belong to anyone"
    "People who write programs deserve credit for their work, just like people who write stories.")
  (hint "Who wrote the first program?"))
```

---

## Worked example

```example
(example
  (problem "Move the sun to the top right, above the tree.")
  (step "REM THE SUN shows that line 40 draws the sun.")
  (step "The tree is at x = 270, so the sun goes to x = 270 too.")
  (step "Keep y = 40: the top of the tree is at y = 100, so they do not touch.")
  (step "Type 40 CIRCLE 270, 40, 25. It takes the place of the old line 40.")
  (answer "40 CIRCLE 270, 40, 25"))
```

```example
(example
  (problem "Put the fence posts closer together: one every 5 pixels.")
  (step "REM THE FENCE shows that the loop is in lines 110 to 130.")
  (step (choice (ask "What do you change?")
    (right "Line 110: FOR X = 10 TO 90 STEP 5")
    (wrong "Line 110: FOR X = 10 TO 90 STEP 20" "A bigger step puts the posts further apart.")
    (wrong "Line 120: LINE X, 170, X, 205" "That makes each post longer, not closer to the next one.")))
  (answer "FOR X = 10 TO 90 STEP 5: 17 posts"))
```

---

## Practice

```check
(choice
  (ask "Why do the REM lines help in a long drawing program?")
  (right "They show which lines draw which part, so you can find and change a part")
  (wrong "They draw the parts"
    "REM lines draw nothing. The computer skips them. They are labels for people.")
  (wrong "They make the program run faster"
    "REM lines do not change speed. They help people read the program.")
  (hint "What does a REM line do for the person reading?"))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the house program, part by part, running it after each part. Then make it your own: move the sun, add a window, or add a tree. Add a REM with your name, and SAVE it as HOUSE. Come back.")
  (check (choice
    (ask "Which command keeps your picture's program for another day?")
    (right "SAVE HOUSE")
    (wrong "RUN" "RUN draws the picture, but does not keep the program. SAVE HOUSE keeps it.")
    (wrong "LIST" "LIST shows the lines. SAVE HOUSE keeps them in a file.")
    (hint "Which word puts a program in a file?"))))
```

So: plan a picture in parts, and build and test one part at a time. Label the parts with REM, and give credit to others.
