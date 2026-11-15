# Perpendicular and parallel lines

```lesson
(objective "Draw and find perpendicular lines, which meet at right angles, and parallel lines, which never meet.")
(standards "4.G.A.1")
(minutes 20)
(keywords "perpendicular" "parallel")
```

You can find pairs of lines that meet at square corners, and pairs that never meet.

Lines that cross can make right angles. Lines are **perpendicular** when they meet at right angles.

```figure
(arrow 160 120 300 120 'ink 2)
(arrow 160 120 20 120 'ink 2)
(arrow 160 120 160 20 'ink 2)
(arrow 160 120 160 220 'ink 2)
(m4p4-right 160 120 0)
(caption "Perpendicular lines: 4 right angles")
```

```check
(number
  (ask "2 perpendicular lines cross. How many right angles do they make?")
  (answer 4) (from "4")
  (wrong-if 1 "Look at all 4 corners where the lines cross. Each is a right angle.")
  (wrong-if 2 "There are 4 corners around the crossing, and all are right angles.")
  (hint "Count the corners around the crossing."))
```

---

## Parallel

Lines are **parallel** when they are always the same distance apart. They never meet, however far they go.

```figure
(arrow 160 80 300 50 'ink 2)
(arrow 160 80 20 110 'ink 2)
(arrow 160 160 300 130 'ink 2)
(arrow 160 160 20 190 'ink 2)
(caption "Parallel lines: always the same distance apart")
```

The rails of a straight train track are parallel.

```check
(choice
  (ask "2 lines on a page do not cross yet. They get closer to the right. Are they parallel?")
  (right "No: they will meet if you make them longer.")
  (wrong "Yes: they do not cross." "Lines go on without end. If they get closer, they cross somewhere. Parallel lines stay the same distance apart.")
  (hint "Do they stay the same distance apart?"))
```

---

## Which is which?

```figure
(define k (choice 'k '("A" "B" "C") "Pair"))
(cond ((= k 0) (line 40 60 280 60 'ink 2) (line 40 160 280 160 'ink 2))
      ((= k 1) (line 40 180 280 40 'ink 2) (line 80 40 230 180 'ink 2))
      (else (line 60 120 280 120 'ink 2) (line 160 30 160 210 'ink 2) (m4p4-right 160 120 0)))
```

```check
(choice
  (ask "Choose pair C. What are the lines?")
  (right "perpendicular")
  (wrong "parallel" "These lines cross. Parallel lines never meet.")
  (wrong "neither" "They meet at a square corner, so they are perpendicular.")
  (hint "Look for the right angle mark."))
```

---

## Neither

Lines can cross without square corners. Then they are neither parallel nor perpendicular.

```figure
(define k (choice 'k '("A" "B" "C") "Pair"))
(cond ((= k 0) (line 40 60 280 60 'ink 2) (line 40 160 280 160 'ink 2))
      ((= k 1) (line 40 180 280 40 'ink 2) (line 80 40 230 180 'ink 2))
      (else (line 60 120 280 120 'ink 2) (line 160 30 160 210 'ink 2) (m4p4-right 160 120 0)))
```

```check
(choice
  (ask "Choose pair B. The lines cross, but not at square corners. What are they?")
  (right "neither parallel nor perpendicular")
  (wrong "perpendicular" "Perpendicular lines meet at right angles. These make acute and obtuse angles.")
  (wrong "parallel" "Parallel lines never meet. These cross.")
  (hint "Do they cross? At square corners?"))
```

---

## A worked example

```example
(example
  (problem "Draw a line perpendicular to a line across the page.")
  (step "Pick a point on the line.")
  (step "Put a square corner, like a page corner, on the line at that point.")
  (step (choice (ask "Then draw along:") (right "the other edge of the corner")
          (wrong "any slanted direction" "A slant makes acute and obtuse angles. Follow the square corner.")))
  (answer "The new line meets the first at right angles."))
```

---

## Practice

```check
(choice
  (ask "Look at a rectangle window frame. The top edge and a side edge meet at a corner. What are they?")
  (right "perpendicular")
  (wrong "parallel" "They meet at a corner, so they cannot be parallel. The corner is square.")
  (hint "They meet at a square corner."))
```

```check
(choice
  (ask "The top edge and the bottom edge of the window frame. What are they?")
  (right "parallel")
  (wrong "perpendicular" "They never meet: they stay the same distance apart. That is parallel.")
  (hint "Do they ever meet?"))
```

Perpendicular lines meet at right angles; parallel lines never meet.
