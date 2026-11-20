# Reading coordinates

```lesson
(objective "Read the coordinates of a point, name its x-coordinate and y-coordinate, and tell (2, 5) from (5, 2).")
(standards "5.G.A.1")
(minutes 20)
(keywords "coordinate (of a point)" "x-coordinate" "y-coordinate")
```

You can read the two numbers that name a point.

The two numbers of a point's ordered pair are its **coordinates**. Each one is a coordinate. Point P below has coordinates (4, 7).

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(line (gx 4) (gy 0) (gx 4) (gy 7) 'cool 1.5)
(line (gx 0) (gy 7) (gx 4) (gy 7) 'cool 1.5)
(plot-point 4 7 'ink "P")
```

```check
(number
  (ask "Point P is at (4, 7). What is its first coordinate?")
  (answer 4) (from "4")
  (wrong-if 7 "7 is the second coordinate, how far up. The first is how far across: 4.")
  (hint "The first number of (4, 7)."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.A.1: a given point is located by an ordered pair of numbers, called its coordinates")
```

---

## The x-coordinate

The first coordinate is the **x-coordinate**. It tells how far across the point is: read it straight down on the x-axis.

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(line (gx 6) (gy 0) (gx 6) (gy 3) 'cool 1.5)
(plot-point 6 3 'ink "Q")
```

```check
(number
  (ask "What is the x-coordinate of Q?")
  (answer 6) (from "6")
  (wrong-if 3 "3 is how far up Q is. The x-coordinate is how far across: 6.")
  (hint "Follow the thin line down to the x-axis."))
```

---

## The y-coordinate

The second coordinate is the **y-coordinate**. It tells how far up the point is: read it straight across on the y-axis.

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(line (gx 0) (gy 3) (gx 6) (gy 3) 'cool 1.5)
(plot-point 6 3 'ink "Q")
```

```check
(number
  (ask "What is the y-coordinate of Q?")
  (answer 3) (from "3")
  (wrong-if 6 "6 is how far across. The y-coordinate is how far up: 3.")
  (hint "How many units up is Q?"))
```

---

## (2, 5) is not (5, 2)

The order matters. (2, 5) and (5, 2) are different points.

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(plot-point 2 5 'ink "(2, 5)")
(plot-point 5 2 'ink "(5, 2)")
```

```check
(choice
  (ask "Which point is farther up: (2, 5) or (5, 2)?")
  (right "(2, 5)" (true "5 > 2"))
  (wrong "(5, 2)" "(5, 2) is farther right, but only 2 up. (2, 5) has y-coordinate 5, so it is higher.")
  (wrong "They are the same point" "They use the same numbers, but in a different order. They are 2 different points.")
  (hint "Compare the y-coordinates."))
```

---

## A worked example

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(plot-point 8 5 'ink "R")
(plot-point 3 9 'ink "S")
```

```example
(example
  (problem "Read the coordinates of R.")
  (step "Go straight down from R to the x-axis: 8. The x-coordinate is 8.")
  (step "Go straight across from R to the y-axis: 5.")
  (step (choice (ask "So R is at which ordered pair?") (right "(8, 5)")
          (wrong "(5, 8)" "The x-coordinate comes first: across 8, then up 5.")))
  (answer "R = (8, 5)."))
```

---

## Practice

```figure
(m5p4-plane 60 20 20 10 10 1 "x" "y")
(plot-point 8 5 'ink "R")
(plot-point 3 9 'ink "S")
```

```check
(number
  (ask "What is the x-coordinate of S?")
  (answer 3) (from "3")
  (wrong-if 9 "9 is how far up S is. The x-coordinate is how far across.")
  (hint "Go straight down from S."))
```

```check
(number
  (ask "What is the y-coordinate of S?")
  (answer 9) (from "9")
  (wrong-if 3 "3 is the x-coordinate. The y-coordinate is how far up: 9.")
  (hint "Go straight across from S to the y-axis."))
```

---

```check
(text
  (ask "Write the ordered pair for a point 0 across and 6 up.")
  (accept "(0, 6)") (accept "(0,6)") (accept "0, 6") (accept "0,6")
  (wrong-if "(6, 0)" "(6, 0) is 6 across and 0 up, on the x-axis. The x-coordinate comes first: 0.")
  (hint "x-coordinate first, then y-coordinate."))
```

A point's coordinates are its x-coordinate, how far across, then its y-coordinate, how far up.
