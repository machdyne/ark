# Loops that draw

```lesson
(objective "Draw rows of shapes, rings and fans of lines with a loop.")
(standards "1B-AP-10" "1B-AP-12")
(minutes 25)
```

In this lesson a few lines of BASIC draw a big picture.

Put the loop's counter into a CIRCLE, and each time round draws a
different circle. Here the counter is the radius:

```basic
10 CLS
20 FOR R = 10 TO 100 STEP 10
30 CIRCLE 160, 120, R
40 NEXT
```

```figure
(cs1-screen)
(for-range 1 11 (lambda (i) (cs1-circle 160 120 (* 10 i))))
(caption "Rings around one center")
```

```check
(number
  (ask "How many circles does this program draw?")
  (answer 10) (from "(100 - 10) / 10 + 1")
  (wrong-if 9 "Count 10 and 100 too: 10, 20, 30 ... 100 is 10 circles.")
  (wrong-if 100 "100 is the biggest radius. STEP 10 makes the loop run once for each 10.")
  (hint "R is 10, 20, 30 ... up to 100."))
```

```sources
(source "docs/basic_app.md, the start of the page (a loop of circles)")
```

---

## A row of shapes

Here the counter is x, so each circle is further right:

```basic
10 CLS
20 FOR X = 40 TO 280 STEP 60
30 CIRCLE X, 120, 25
40 NEXT
```

```figure
(cs1-screen)
(for-range 0 5 (lambda (i) (cs1-circle (+ 40 (* 60 i)) 120 25)))
(caption "5 circles in a row")
```

```check
(choice
  (ask "Line 30 is changed to 30 CIRCLE 160, X, 25. What does the program draw?")
  (right "Circles in a line going down")
  (wrong "Circles in a row across"
    "Now X is the second number, the y. A changing y moves the circles down.")
  (wrong "One circle"
    "The loop still runs 5 times, so it draws 5 circles.")
  (hint "Which number is y in CIRCLE x, y, r?"))
```

---

## A fan of lines

Every line starts at the same point, at the bottom. Its end moves along
the top:

```basic
10 CLS
20 FOR X = 0 TO 320 STEP 20
30 LINE 160, 239, X, 0
40 NEXT
```

```figure
(cs1-screen)
(for-range 0 17 (lambda (i) (cs1-line 160 239 (min 319 (* 20 i)) 0)))
(caption "17 lines, from one point")
```

x = 320 is just past the right edge. That is not a mistake in BASIC:
the part of a line that is on the screen is drawn.

```check
(choice
  (ask "You change STEP 20 to STEP 10. What happens?")
  (right "About twice as many lines, closer together")
  (wrong "Half as many lines"
    "A smaller step means the counter takes more values, so there are more lines, not fewer.")
  (wrong "The lines get longer"
    "Each line still goes from the bottom to the top. Only the number of lines changes.")
  (hint "With a smaller step, does the loop run more times or fewer?"))
```

```sources
(source "docs/basic_app.md, Beyond BASIC 1: drawing beyond the screen is not an error")
```

---

## Make it your own

A good way to learn is to change a program and see what happens. Try
changing one number at a time:

- the STEP, to get more or fewer shapes;
- the start or end of the loop, to fill more or less of the screen;
- the radius, or where the lines start.

```check
(choice
  (ask "You want the rings program to draw rings up to radius 50 only. What do you change?")
  (right "Line 20: FOR R = 10 TO 50 STEP 10")
  (wrong "Line 30: CIRCLE 160, 120, 50"
    "This draws the same circle of radius 50 every time. Change where the loop ends instead.")
  (wrong "Line 20: FOR R = 10 TO 100 STEP 50"
    "This draws only 2 rings, radius 10 and 60. Change the end of the loop to 50.")
  (hint "The number after TO is the biggest radius."))
```

---

## Worked example

```example
(example
  (problem "Draw 4 boxes in a row, each 40 wide, with 20 between them.")
  (step "A box from X to X + 40 is 40 wide.")
  (step "With 20 between, each box starts 60 after the last: STEP 60.")
  (step "10 CLS, 20 FOR X = 20 TO 200 STEP 60, 30 BOX X, 100, X + 40, 140, 40 NEXT.")
  (answer "Boxes start at x = 20, 80, 140 and 200."))
```

```example
(example
  (problem "Draw lines down the screen like a fence, every 40 pixels across.")
  (step "The counter is x: 10 CLS, 20 FOR X = 0 TO 319 STEP 40.")
  (step (choice (ask "What is line 30?")
    (right "30 LINE X, 0, X, 239")
    (wrong "30 LINE 0, X, 239, X" "Here X is the y of each end, so the lines go across, not down.")
    (wrong "30 LINE X, 0, 319, 239" "These lines all end at the bottom right corner, so they slope.")))
  (step "40 NEXT")
  (answer "8 lines down the screen, at x = 0, 40 ... 280"))
```

---

## Practice

```check
(number
  (ask "FOR X = 40 TO 280 STEP 60 draws circles at x = 40, 100, 160, 220 and one more. What is the last x?")
  (answer 280) (from "220 + 60")
  (hint "Add 60 to 220."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the fan program and run it. Then change it to make it your own: change the STEP, or where the lines start. Run it, and come back.")
  (check (choice
    (ask "You changed line 30 to 30 LINE 0, 239, X, 0. Where do all the lines start now?")
    (right "At the bottom left corner")
    (wrong "At the bottom middle" "The start is now x = 0, y = 239: the bottom left corner.")
    (wrong "At the top left corner" "y = 239 is the bottom row, so it is the bottom left corner.")
    (hint "The start is x = 0, y = 239."))))
```

So: a loop can draw many shapes when its counter changes the size or the place of each one.
