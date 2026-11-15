# Lines

```lesson
(objective "Draw lines between two points, and shapes made of lines.")
(standards "1B-AP-10")
(minutes 20)
```

In this lesson you draw lines and shapes.

`LINE` draws a straight line from one point to another. It takes 4
numbers: x and y of the start, then x and y of the end.

```basic
10 CLS
20 LINE 0, 0, 319, 239
```

This draws a line from the top left corner to the bottom right corner.

```figure
(cs1-screen)
(cs1-line 0 0 319 239)
(text 44 208 "start: 0, 0" 'small)
(text 280 208 "end: 319, 239" 'small 'right)
```

```check
(choice
  (ask "Which line goes straight across the middle of the screen?")
  (right "LINE 0, 120, 319, 120")
  (wrong "LINE 120, 0, 120, 239"
    "Here x stays 120 and y goes from 0 to 239. That line goes straight down.")
  (wrong "LINE 0, 0, 319, 120"
    "This starts at the top left and ends half way down, so it slopes.")
  (hint "Across means y stays the same at both ends."))
```

```sources
(source "docs/basic_app.md, Beyond BASIC 1: LINE")
```

---

## A triangle

3 lines make a triangle. Each line starts where the last one ended.

```basic
10 CLS
20 LINE 160, 40, 60, 200
30 LINE 60, 200, 260, 200
40 LINE 260, 200, 160, 40
```

```figure
(cs1-screen)
(cs1-line 160 40 60 200)
(cs1-line 60 200 260 200)
(cs1-line 260 200 160 40)
(caption "3 lines make a triangle")
```

```check
(choice
  (ask "Which of the 3 lines is the flat bottom of the triangle?")
  (right "Line 30")
  (wrong "Line 20"
    "Line 20 goes from y = 40 to y = 200, so it slopes up to the top point.")
  (wrong "Line 40"
    "Line 40 goes from y = 200 back up to y = 40, so it slopes.")
  (hint "A flat line has the same y at both ends."))
```

---

## A shape that does not close

If one line ends somewhere else, the shape has a gap. Look for the
mistake here:

```basic
10 CLS
20 LINE 100, 50, 200, 50
30 LINE 200, 50, 200, 150
40 LINE 200, 150, 100, 150
50 LINE 100, 150, 100, 60
```

```figure
(cs1-screen)
(cs1-line 100 50 200 50)
(cs1-line 200 50 200 150)
(cs1-line 200 150 100 150)
(cs1-line 100 150 100 60)
(caption "A square with a gap")
```

```check
(choice
  (ask "How do you fix line 50 so the square closes?")
  (right "50 LINE 100, 150, 100, 50")
  (wrong "50 LINE 100, 150, 100, 150"
    "This line starts and ends at the same point, so it is just a dot. The side must go up to y = 50.")
  (wrong "50 LINE 100, 60, 100, 150"
    "This is the same line, drawn the other way. It still stops at y = 60.")
  (hint "The last line must end where the first line started: 100, 50."))
```

---

## Worked example

```example
(example
  (problem "Draw a line straight down the middle of the screen.")
  (step "Down the middle means x stays 160, half of 320.")
  (step "It starts at the top, y = 0, and ends at the bottom, y = 239.")
  (step "LINE 160, 0, 160, 239")
  (answer "LINE 160, 0, 160, 239"))
```

```example
(example
  (problem "Draw a big X across the whole screen.")
  (step "One line from the top left to the bottom right: LINE 0, 0, 319, 239.")
  (step (choice (ask "What is the other line?")
    (right "LINE 319, 0, 0, 239")
    (wrong "LINE 0, 239, 0, 0" "This goes straight up the left edge. The other line of the X goes from the top right to the bottom left.")
    (wrong "LINE 0, 0, 319, 239" "That is the first line again.")))
  (answer "LINE 0, 0, 319, 239 and LINE 319, 0, 0, 239"))
```

---

## Practice

```check
(number
  (ask "How many numbers does a LINE need?")
  (answer 4)
  (wrong-if 2 "2 numbers find one point. A line needs 2 points: x and y of the start, and x and y of the end.")
  (hint "A start point and an end point, each with x and y."))
```

```try
(try (app "basic")
  (task "In BASIC, type NEW. Type the triangle program and run it. Then add a line 50 that draws a line from the top point straight down to the bottom. Come back.")
  (check (choice
    (ask "Which line did you add?")
    (right "50 LINE 160, 40, 160, 200")
    (wrong "50 LINE 40, 160, 200, 160" "x comes first. The top point is x = 160, y = 40.")
    (wrong "50 LINE 160, 40, 260, 200" "That is the right side of the triangle, which is there already.")
    (hint "x stays 160. y goes from 40 to 200."))))
```

So: LINE draws from one point to another, and lines that meet end to end make shapes.
