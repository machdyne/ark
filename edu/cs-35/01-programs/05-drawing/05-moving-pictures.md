# Moving pictures

```lesson
(objective "Make a shape move by drawing, waiting, erasing and drawing it again.")
(standards "1B-AP-10" "1B-AP-12")
(minutes 25)
(keywords "animation")
```

In this lesson you make a ball roll across the screen.

A picture that moves is an **animation**. It is really many pictures,
each a little different, shown one after another. They change so fast
that your eyes see movement.

To move a ball, a program does 4 steps, again and again:

1. Draw the ball.
2. Wait a moment, so you can see it.
3. Erase it.
4. Move it a little, and go back to step 1.

```figure
(still (cs1-screen))
(define k (modulo (floor (/ (seconds) 0.05)) 57))
(cs1-circle (+ 20 (* 5 k)) 120 15)
(caption "Draw, wait, erase, move: again and again")
```

```check
(choice
  (ask "Why does the program wait before it erases the ball?")
  (right "So the ball stays on the screen long enough to be seen")
  (wrong "To make the computer rest"
    "The computer does not need a rest. The wait is for your eyes: without it, the ball is erased almost at once.")
  (wrong "Because erasing is slow"
    "Erasing is as fast as drawing. The wait gives your eyes time to see the ball.")
  (hint "What would you see if the ball were erased at once?"))
```

---

## Erasing

`COLOR 0` makes the next drawing black, the color of the screen. So
drawing the same circle again in black erases it. `COLOR 1` goes back
to drawing in white.

`WAIT 50` waits 50 thousandths of a second. WAIT 1000 waits a whole
second.

```basic
10 CLS
20 FOR X = 20 TO 300 STEP 5
30 CIRCLE X, 120, 15
40 WAIT 50
50 COLOR 0
60 CIRCLE X, 120, 15
70 COLOR 1
80 NEXT
90 CIRCLE X, 120, 15
```

Line 90 draws the ball one last time, where it stopped: after the loop,
X keeps its last value, 300.

```check
(choice
  (ask "Which line erases the ball?")
  (right "Line 60: it draws the same circle while the color is black")
  (wrong "Line 50"
    "COLOR 0 only picks black for the next drawing. Line 60 draws the circle in black.")
  (wrong "Line 10"
    "CLS clears the whole screen once, at the start. Line 60 erases the ball each time round.")
  (hint "Erasing is drawing the same circle in black."))
```

```sources
(source "docs/basic_app.md, Beyond BASIC 1: COLOR, CIRCLE")
(source "Machdyne BASIC 1 reference (sw/ext/basic/docs/basic1.md), section 5: WAIT")
```

---

## Faster and slower

Two numbers set the speed:

- the STEP, how far the ball moves each time;
- the WAIT, how long it stays before it moves.

```check
(choice
  (ask "You change WAIT 50 to WAIT 200. What happens?")
  (right "The ball moves more slowly")
  (wrong "The ball moves faster"
    "A longer wait means the ball stays longer in each place. So it takes longer to cross.")
  (wrong "The ball gets bigger"
    "WAIT does not change the size. The size is the radius, 15.")
  (hint "Does the ball stay longer or shorter in each place?"))
```

---

## A bug to find

Lea forgot line 70, COLOR 1. Her ball shows for a moment, then nothing
more. The screen stays black.

```check
(choice
  (ask "Why does the ball vanish?")
  (right "After the first COLOR 0, every circle is drawn in black")
  (wrong "The WAIT is too long"
    "The wait only slows the ball down. Without COLOR 1, the program never draws in white again.")
  (wrong "CLS erases the ball each time"
    "CLS is in line 10, before the loop, so it runs only once.")
  (hint "Which color is used to draw the ball the second time round?"))
```

---

## Worked example

```example
(example
  (problem "Make the ball fall from the top to the bottom, in the middle of the screen.")
  (step "Falling means y changes, and x stays 160.")
  (step "Loop on y: 20 FOR Y = 20 TO 220 STEP 5.")
  (step "Draw and erase at 160, Y: 30 CIRCLE 160, Y, 15 and 60 CIRCLE 160, Y, 15.")
  (step "Keep 40 WAIT 50, 50 COLOR 0, 70 COLOR 1 and 80 NEXT as before.")
  (answer "The ball moves down from y = 20 to y = 220."))
```

```example
(example
  (problem "Make the ball in the first program roll faster, but keep the wait at 50.")
  (step "With the same wait, the ball must move further each time.")
  (step (choice (ask "What do you change?")
    (right "STEP 5 to STEP 10")
    (wrong "STEP 5 to STEP 2" "A smaller step moves the ball less each time, so it is slower.")
    (wrong "The radius 15 to 30" "That makes a bigger ball, not a faster one.")))
  (answer "Line 20: FOR X = 20 TO 300 STEP 10"))
```

---

## Practice

```check
(number
  (ask "WAIT 50 waits 50 thousandths of a second. How many does WAIT take to wait 2 whole seconds?")
  (answer 2000) (from "2 * 1000")
  (wrong-if 2 "WAIT counts in thousandths of a second. 2 seconds are 2000 of them.")
  (hint "1 second is WAIT 1000."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the rolling ball program and run it. Then make it your own: make it slower, faster, or bigger. Come back.")
  (check (choice
    (ask "Which change makes the ball bigger?")
    (right "Change 15 to 25 in both CIRCLE lines")
    (wrong "Change 15 to 25 in line 30 only" "Then line 60 erases a smaller circle. The big circles are never erased, and they leave a long smear behind the ball.")
    (wrong "Change STEP 5 to STEP 25" "That makes the ball move further each time, not grow.")
    (hint "The draw and the erase must be the same circle."))))
```

So: an animation draws, waits, erases and moves, again and again, and COLOR 0 draws in black to erase.
