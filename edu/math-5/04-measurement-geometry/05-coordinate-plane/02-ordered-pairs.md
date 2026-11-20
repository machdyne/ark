# Ordered pairs

```lesson
(objective "Plot a point from an ordered pair such as (3, 5): from the origin, 3 along the x-axis, then 5 in the direction of the y-axis.")
(standards "5.G.A.1")
(minutes 25)
(keywords "ordered pair" "x-axis" "y-axis")
```

You can find a point on the coordinate plane from two numbers.

The axis that goes across is the **x-axis**. Its numbers grow to the right.

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "")
```

```check
(choice
  (ask "Which way does the x-axis go?")
  (right "across, from the origin to the right")
  (wrong "straight up" "The axis that goes up is the other one. The x-axis goes across.")
  (hint "Look at the label x."))
```

---

## The y-axis

The axis that goes straight up is the **y-axis**. Its numbers grow upward.

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
```

```check
(choice
  (ask "On the y-axis, where is 7?")
  (right "7 units up from the origin")
  (wrong "7 units right of the origin" "That is 7 on the x-axis. The y-axis goes up.")
  (hint "The y-axis goes up."))
```

---

## Two numbers, in order

An **ordered pair** is two numbers in parentheses, like (3, 5). The order matters.

- The first number says how far to go along the x-axis.
- The second says how far to go in the direction of the y-axis.

To plot (3, 5): start at the origin, go 3 to the right, then 5 up.

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(arrow (gx 0) (gy 0) (gx 3) (gy 0) 'warm 2.5)
(arrow (gx 3) (gy 0) (gx 3) (gy 5) 'warm 2.5)
(plot-point 3 5 'ink "(3, 5)")
```

```check
(choice
  (ask "To plot (6, 2), what do you do first from the origin?")
  (right "Go 6 to the right.")
  (wrong "Go 6 up." "The first number is along the x-axis, which goes across. Go 6 right, then 2 up.")
  (wrong "Go 2 to the right." "2 is the second number: it says how far up. The first number, 6, is across.")
  (hint "The first number goes with the x-axis."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.A.1: the first number indicates how far to travel from the origin in the direction of one axis, and the second number in the direction of the second axis")
```

---

## Find the point

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(plot-point 2 6 'ink "A")
(plot-point 6 2 'ink "B")
(plot-point 4 4 'ink "C")
(plot-point 7 8 'ink "D")
```

```check
(choice
  (ask "Which point is at (6, 2)?")
  (right "B")
  (wrong "A" "A is 2 across and 6 up: that is (2, 6). For (6, 2), go 6 across first.")
  (wrong "C" "C is 4 across and 4 up.")
  (wrong "D" "D is 7 across and 8 up.")
  (hint "Go 6 to the right, then 2 up."))
```

---

## A worked example

```example
(example
  (problem "Plot (0, 4).")
  (step "Start at the origin.")
  (step "The first number is 0: do not move across.")
  (step (choice (ask "Then go 4 up. Where is the point?") (right "on the y-axis, at 4")
          (wrong "on the x-axis, at 4" "You moved 0 across and 4 up, so you are on the y-axis.")))
  (answer "(0, 4) is on the y-axis, 4 up from the origin."))
```

---

## Practice

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(plot-point 2 6 'ink "A")
(plot-point 6 2 'ink "B")
(plot-point 4 4 'ink "C")
(plot-point 7 8 'ink "D")
```

```check
(choice
  (ask "Which point is at (2, 6)?")
  (right "A")
  (wrong "B" "B is (6, 2): 6 across, 2 up. For (2, 6), go 2 across, then 6 up.")
  (wrong "D" "D is 7 across and 8 up.")
  (hint "2 to the right, then 6 up."))
```

```check
(choice
  (ask "Where is the point (5, 0)?")
  (right "on the x-axis, 5 right of the origin")
  (wrong "on the y-axis, 5 up" "The second number, 0, means you do not go up. The point is on the x-axis.")
  (wrong "at the origin" "The origin is (0, 0). (5, 0) is 5 to the right of it.")
  (hint "5 across, 0 up."))
```

To plot an ordered pair, go along the x-axis by the first number, then up by the second.
