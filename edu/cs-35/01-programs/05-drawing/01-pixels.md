# Points on the screen

```lesson
(objective "Find a point on the screen by its x and y, and light it with PLOT.")
(standards "1B-AP-10")
(minutes 20)
(keywords "pixel (on the screen)" "coordinates (on the screen)")
```

In this lesson you start to draw.

BASIC's screen is made of tiny dots: 320 across and 240 down. Each dot
is a **pixel**. A pixel can be lit or dark.

Two numbers find a pixel. They are its **coordinates**:

- x: how far across from the left edge;
- y: how far down from the top edge.

Both count from 0. So x goes from 0 to 319, and y from 0 to 239.

Drag the point on the screen below and watch its coordinates.

```figure
(cs1-screen)
(define p (drag 'p 160 104))
(define x (cs1-px (car p)))
(define y (cs1-py (car (cdr p))))
(circle (cs1-sx x) (cs1-sy y) 3 'ink)
(text 40 208 "0, 0 is the top left corner" 'small)
(text 160 230 (string-append "x = " (cs1-n x) "   y = " (cs1-n y)) 'body 'centre)
```

```sources
(source "docs/basic_app.md, The screen; Beyond BASIC 1")
```

```check
(choice
  (ask "Where is the pixel with x = 0 and y = 0?")
  (right "The top left corner")
  (wrong "The bottom left corner"
    "On this screen, y counts down from the top. So y = 0 is the top row.")
  (wrong "The middle of the screen"
    "x counts from the left edge and y from the top edge. 0 and 0 is where those edges meet.")
  (hint "x counts from the left edge, y from the top edge."))
```

---

## Down is more

On this screen, a bigger y is lower down. That is the one surprise.

```check
(choice
  (ask "Which pixel is nearest the bottom of the screen?")
  (right "x = 10, y = 200")
  (wrong "x = 200, y = 10"
    "x tells how far across. y tells how far down, and y = 10 is near the top.")
  (wrong "x = 100, y = 100"
    "y = 100 is less than half way down. y = 200 is lower.")
  (hint "Look at y. A bigger y is lower."))
```

---

## PLOT

`PLOT x, y` lights one pixel. `CLS` clears the screen first.

```basic
10 CLS
20 PLOT 160, 120
```

The screen is 320 wide, and half of 320 is 160. It is 240 high, and
half of 240 is 120. So this lights the pixel in the middle.

```check
(number
  (ask "What y is half way down the screen?")
  (answer 120) (from "240 / 2")
  (wrong-if 160 "160 is half way across. The screen is 240 pixels high, so half way down is 120.")
  (hint "The screen is 240 pixels high."))
```

```sources
(source "docs/basic_app.md, Beyond BASIC 1: CLS and PLOT")
```

---

## A row of points

A loop can plot many points. Here x goes up by 8, and y stays 60:

```basic
10 CLS
20 FOR X = 0 TO 319 STEP 8
30 PLOT X, 60
40 NEXT
```

```figure
(cs1-screen)
(for-range 0 40 (lambda (i) (cs1-plot (* 8 i) 60)))
(caption "A dotted line across the screen")
```

```check
(choice
  (ask "Line 30 is changed to 30 PLOT 60, X. What does the program draw?")
  (right "A dotted line going down")
  (wrong "A dotted line going across"
    "Now x stays 60, and y changes. When only y changes, the points go down the screen.")
  (wrong "One point"
    "The loop still plots many points. Only their direction changes.")
  (hint "In PLOT 60, X, which number changes?"))
```

---

## Worked example

```example
(example
  (problem "Light the pixel 10 across from the left and 30 down from the top.")
  (step "Across is x: x = 10.")
  (step "Down is y: y = 30.")
  (step "x comes first: PLOT 10, 30.")
  (answer "PLOT 10, 30"))
```

```example
(example
  (problem "Light the pixel in the bottom right corner.")
  (step "The last pixel across is x = 319, since x counts from 0.")
  (step (number (ask "What is y at the bottom?") (answer 239) (from "240 - 1")
    (wrong-if 240 "y counts from 0, so the 240 rows are 0 to 239.")))
  (answer "PLOT 319, 239"))
```

---

## Practice

```check
(choice
  (ask "Which line lights a pixel near the top right corner?")
  (right "PLOT 310, 5")
  (wrong "PLOT 5, 310"
    "x comes first. PLOT 5, 310 has x = 5, near the left. And y = 310 is past the bottom.")
  (wrong "PLOT 310, 230"
    "y = 230 is near the bottom. Near the top, y is small.")
  (hint "Right means a big x. Top means a small y."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the row of points program and run it. Then change STEP 8 to STEP 2. Run it again and come back.")
  (check (choice
    (ask "What changed?")
    (right "The points are closer together")
    (wrong "The points are farther apart" "STEP 2 moves x by 2, not 8, so the points are closer.")
    (wrong "The line moved down" "y is still 60, so the line is at the same height.")
    (hint "STEP sets how far apart the points are."))))
```

So: a pixel is found by its coordinates x and y, counted from the top left corner, and PLOT lights it.
