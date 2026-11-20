# Axes and the origin

```lesson
(objective "Describe the coordinate plane as two perpendicular number lines, the axes, that cross at their 0s, the origin.")
(standards "5.G.A.1")
(minutes 20)
(keywords "coordinate plane" "axis (of a graph)" "origin (of a graph)")
```

You can make a map for numbers from two number lines.

Take a number line that goes across. Draw a second number line that goes straight up, perpendicular to the first.

```figure
(number-line 60 260 200 0 10 1 1)
(line 60 200 60 20 'ink 1.5)
(for-range 1 10 (lambda (j) (line 56 (- 200 (* j 20)) 64 (- 200 (* j 20)) 'ink 1) (text 50 (- 204 (* j 20)) j 'right 'tiny)))
(caption "Two number lines, perpendicular")
```

Each number line is called an **axis**. The two together are the axes.

```check
(choice
  (ask "How do the two axes meet?")
  (right "They are perpendicular: they meet at a right angle.")
  (wrong "They are parallel." "Parallel lines never meet. The axes cross, one across and one straight up.")
  (wrong "They meet at an acute angle." "One axis goes across and the other straight up: that is a right angle.")
  (hint "One goes across, one goes straight up."))
```

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 5, 5.G.A.1: a pair of perpendicular number lines, called axes, to define a coordinate system")
```

---

## The origin

The axes cross at the 0 of each number line. That point is the **origin**.

```figure
(m5p4-plane 60 20 20 10 10 1 "" "")
(circle (gx 0) (gy 0) 5 'warm)
(ring (gx 0) (gy 0) 5 'ink 1)
(arrow 128 160 (+ (gx 0) 5) (- (gy 0) 5) 'ink 1.5)
(rect 128 146 80 18 'paper)
(text 132 160 "the origin" 'small)
```

```check
(choice
  (ask "Which number is at the origin on each axis?")
  (right "0 on both")
  (wrong "1 on both" "The first mark after the origin is 1. The axes cross at their 0s.")
  (wrong "10 on both" "10 is at the far end of each axis. They cross at 0.")
  (hint "Where does each number line start?"))
```

---

## The coordinate plane

With grid lines through every number, the axes make a **coordinate plane**: a flat grid where every point can be found from the numbers on the axes.

The grid lines are evenly spaced, like the marks on a number line.

```figure
(m5p4-plane 60 20 20 10 10 1 "" "")
```

```check
(choice
  (ask "On this coordinate plane, how far apart are the grid lines?")
  (right "1 unit, the same everywhere")
  (wrong "Closer near the origin" "The lines are evenly spaced, like a number line. Each step is 1 unit.")
  (wrong "2 units" "The numbers go 1, 2, 3...: each line is 1 more than the last.")
  (hint "Read the numbers along an axis."))
```

---

## Practice

```check
(choice
  (ask "What is the origin?")
  (right "the point where the axes cross, at 0 on each")
  (wrong "the top of the up axis" "The origin is where the two number lines cross, at their 0s.")
  (wrong "any point on the grid" "Only one point is the origin: where the axes cross.")
  (hint "Where do the two number lines meet?"))
```

```check
(number
  (ask "How many axes does a coordinate plane have?")
  (answer 2) (unit "axes") (from "2")
  (wrong-if 4 "A square of the grid has 4 sides, but there are only 2 axes: one across and one up.")
  (hint "One across, one up."))
```

A coordinate plane is made of two perpendicular axes that cross at the origin, 0 on each.
