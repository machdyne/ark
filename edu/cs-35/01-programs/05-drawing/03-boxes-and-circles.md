# Boxes and circles

```lesson
(objective "Draw boxes, filled boxes and circles, and pick ink colors.")
(standards "1B-AP-10")
(minutes 25)
(keywords "center (of a circle)" "radius (of a circle)")
```

In this lesson you draw boxes and circles, and put them together into
pictures.

`BOX` draws a rectangle. Like LINE, it takes 2 points: one corner, then
the opposite corner.

```basic
10 CLS
20 BOX 100, 120, 220, 200
```

Put a 1 at the end, and the box is filled in: `BOX 145, 160, 175, 200, 1`.

```figure
(cs1-screen)
(cs1-box 100 120 220 200)
(cs1-fill 145 160 175 200)
(text 40 208 "BOX 100, 120, 220, 200 and a filled BOX" 'small)
```

```check
(choice
  (ask "How do you make a BOX filled in?")
  (right "Put , 1 after the 4 numbers")
  (wrong "Draw it twice"
    "Drawing the same box twice still draws only its edges. The 1 at the end fills it.")
  (wrong "Use 2 points close together"
    "Points close together make a small box, not a filled one. The 1 at the end fills it.")
  (hint "There is a fifth number."))
```

```sources
(source "docs/basic_app.md, Beyond BASIC 1: BOX")
```

---

## A house

Put shapes together to make a picture. A box, 2 lines for a roof, and
a filled box for a door:

```basic
10 CLS
20 BOX 100, 120, 220, 200
30 LINE 100, 120, 160, 60
40 LINE 160, 60, 220, 120
50 BOX 145, 160, 175, 200, 1
```

```figure
(cs1-screen)
(cs1-box 100 120 220 200)
(cs1-line 100 120 160 60)
(cs1-line 160 60 220 120)
(cs1-fill 145 160 175 200)
(caption "A house of 4 shapes")
```

```check
(number
  (ask "What is the y of the top of the roof?")
  (answer 60)
  (wrong-if 160 "160 is the x of the top of the roof: half way across the house. Its y is the second number.")
  (hint "Look at the point where line 30 ends and line 40 starts."))
```

---

## Circles

`CIRCLE x, y, r` draws a circle. x and y are its **center**: the point
in the middle. r is its **radius**: how far the circle is from its
center, in pixels.

Move the slider to change the radius.

```figure
(define r (slider 'r 10 110 50 "Radius" 10))
(cs1-screen)
(cs1-circle 160 120 r)
(circle (cs1-sx 160) (cs1-sy 120) 2 'ink)
(cs1-line 160 120 (+ 160 r) 120)
(text 160 208 (string-append "CIRCLE 160, 120, " (cs1-n r)) 'body 'centre)
```

```check
(choice
  (ask "What does the 50 in CIRCLE 160, 120, 50 tell?")
  (right "The radius: the circle is 50 pixels from its center")
  (wrong "Where the circle is across the screen"
    "x, the first number, tells where it is across. The third number is the radius.")
  (wrong "How many circles to draw"
    "CIRCLE draws one circle. The third number is its radius.")
  (hint "It is the third number."))
```

```sources
(source "docs/basic_app.md, Beyond BASIC 1: CIRCLE")
```

---

## A face

Circles and a line make a face:

```basic
10 CLS
20 CIRCLE 160, 120, 80
30 CIRCLE 130, 100, 10
40 CIRCLE 190, 100, 10
50 LINE 130, 150, 190, 150
```

```figure
(cs1-screen)
(cs1-circle 160 120 80)
(cs1-circle 130 100 10)
(cs1-circle 190 100 10)
(cs1-line 130 150 190 150)
(caption "A face")
```

```check
(choice
  (ask "Which line draws the left eye?")
  (right "30: its center is at x = 130, left of the middle")
  (wrong "40"
    "Line 40 has x = 190, which is right of the middle, 160.")
  (wrong "20"
    "Line 20 draws the big circle, the head: radius 80.")
  (hint "A smaller x is more to the left."))
```

---

## Colors

`INK` picks a color number for what is drawn and printed next: 0 is
black, 1 is white, 2 is red, 7 is yellow, and more up to 15.

```basic
10 CLS
20 INK 2
30 CIRCLE 160, 120, 50
```

Some screens show the colors. Many show every color but black as
white, in BASIC's window. On a computer that can, F11 shows BASIC full
screen, in color.

```check
(choice
  (ask "You use INK 2, and your circle shows white, not red. What does that mean?")
  (right "Your screen shows colors as white in the window; the program is fine")
  (wrong "The program has a bug"
    "The program is right. Many screens show every color but black as white in BASIC's window.")
  (wrong "INK 2 means white"
    "INK 2 is red. INK 1 is white. Your screen just shows red as white here.")
  (hint "Not every screen shows colors in the window."))
```

```sources
(source "docs/basic_app.md, Colour and Where the colours show")
```

---

## Worked example

```example
(example
  (problem "Draw a sun: a circle of radius 30 near the top right corner.")
  (step "Near the right means a big x: 270.")
  (step "Near the top means a small y: 50.")
  (step "The radius is 30: CIRCLE 270, 50, 30.")
  (answer "CIRCLE 270, 50, 30"))
```

```example
(example
  (problem "Draw a filled box from 20, 200 to 300, 230 for the ground.")
  (step "The 2 corners are 20, 200 and 300, 230.")
  (step (choice (ask "Which line draws it filled?")
    (right "BOX 20, 200, 300, 230, 1")
    (wrong "BOX 20, 200, 300, 230" "Without the 1 at the end, only the edges are drawn.")
    (wrong "BOX 200, 20, 230, 300, 1" "x comes first in each corner: 20, 200, then 300, 230.")))
  (answer "BOX 20, 200, 300, 230, 1"))
```

---

## Practice

```check
(number
  (ask "A circle has its center at 160, 120 and radius 40. What x is its right edge at?")
  (answer 200) (from "160 + 40")
  (wrong-if 120 "120 is the center's y. The right edge is 40 pixels right of x = 160.")
  (hint "Go 40 pixels right from the center."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the face program. Add a line 60 that draws a nose: a small circle at 160, 125 with radius 5. Run it, then come back.")
  (check (choice
    (ask "Which line did you add?")
    (right "60 CIRCLE 160, 125, 5")
    (wrong "60 CIRCLE 5, 160, 125" "The center comes first, then the radius: CIRCLE 160, 125, 5.")
    (wrong "60 BOX 160, 125, 5" "BOX needs 2 corners. A circle needs CIRCLE.")
    (hint "CIRCLE x, y, radius."))))
```

So: BOX draws rectangles, filled with a 1 at the end, and CIRCLE draws a circle from its center and radius.
