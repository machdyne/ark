# Position-time graphs

```lesson
(objective "Read a position-time graph and find the velocity as the slope of the line.")
(standards "HS-PS2-1" "HSF-IF.B.6")
(minutes 25)
(keywords "position-time graph" "instantaneous velocity")
```

You can read how an object moves from a graph of its position, and find its velocity as the slope.

A **position-time graph** shows an object's position (up the side) at each time (along the bottom). Each point says: at this time, the object was here.

This cart starts at +10 m and moves with a steady velocity. Move the slider.

```figure
(define v (slider 'v -3 3 2 "Velocity (m/s)" 0.5))
(graph 50 20 250 170 0 10 -20 40)
(graph-axes 1 10 "t (s)" "x (m)")
(plot (lambda (t) (+ 10 (* v t))) 'ink 2)
(plot-point 0 10 'warm)
(text 180 36 (string-append "v = " (fmt v 1) " m/s") 'small 'bold)
(caption "Steady velocity: a straight line")
```

```check
(choice
  (ask "Set the velocity to 0. What does the graph look like?")
  (right "A flat line: the position does not change")
  (wrong "A line that goes up steeply"
    "A steep line means the position changes quickly. At 0 m/s the cart stays at +10 m, so the line is flat.")
  (wrong "No line at all"
    "The cart still has a position at every time: +10 m. So there is a line, a flat one.")
  (hint "Where is the cart at each time when it does not move?"))
```

---

## The slope is the velocity

The slope of a line is its rise over its run. On a position-time graph the rise is a change in position and the run is a change in time:

$$ (Delta x)/(Delta t) = v $$

So the slope is the velocity. Steeper means faster; a line sloping down means a negative velocity.

```figure
(graph 50 20 250 170 0 8 0 40)
(graph-axes 1 10 "t (s)" "x (m)")
(plot (lambda (t) (+ 5 (* 4 t))) 'ink 2)
(path (list (gx 2) (gy 13) (gx 6) (gy 13) (gx 6) (gy 29)) 'cool 1.5)
(label (gx 4) (+ (gy 13) 14) "run 4 s")
(text (+ (gx 6) 5) (gy 21) "rise 16 m" 'small)
(plot-point 2 13 'warm)
(plot-point 6 29 'warm)
(caption "slope = 16 m / 4 s = 4 m/s")
```

```check
(number
  (ask "A position-time line goes through (1 s, 3 m) and (5 s, 23 m). What is the velocity?")
  (answer 5) (unit "m/s") (from "(23 - 3) / (5 - 1)")
  (wrong-if 0.2 "That is run over rise. The slope is the change in position over the change in time.")
  (wrong-if 4.6 "That divides 23 by 5, one point's position by its time. Use the changes between the two points.")
  (hint "Rise: 23 m - 3 m. Run: 5 s - 1 s.")
  (hint "20 m in 4 s."))
```

---

## Reading the direction

```figure
(graph 50 20 250 170 0 10 0 40)
(graph-axes 1 10 "t (s)" "x (m)")
(plot (lambda (t) (- 35 (* 3 t))) 'ink 2)
(caption "A line sloping down")
```

When the line slopes down, the position is decreasing, so the object moves in the negative direction. Here the slope is $(5 - 35)/10 = -3$ m/s.

```check
(choice
  (ask "On a position-time graph, line A is steeper than line B, and both slope up. What does that tell you?")
  (right "A moves faster than B, both in the + direction")
  (wrong "A is farther from the reference point than B"
    "Steepness is about how fast the position changes, not where the object is. A line can be steep and still be near 0.")
  (wrong "A moves in the - direction"
    "Both lines slope up, so both positions increase: both move in the + direction.")
  (hint "Steepness is slope, and slope is velocity."))
```

---

## A curved line

When the line curves, the velocity is changing. Then the velocity at one moment, the **instantaneous velocity**, is the slope of the straight line that just touches the curve at that point, called the tangent line.

This car starts from rest and speeds up steadily: $x = 0.5 t^2$ (x in meters, t in seconds). Move the slider to move the tangent.

```figure
(define t0 (slider 't0 1 9 3 "Time (s)" 1))
(graph 50 20 250 170 0 10 0 50)
(graph-axes 1 10 "t (s)" "x (m)")
(plot (lambda (t) (* 0.5 t t)) 'ink 2)
(define ta (max (/ t0 2) (- t0 2)))
(define tb (min 10 (+ t0 2)))
(line (gx ta) (gy (+ (* 0.5 t0 t0) (* t0 (- ta t0)))) (gx tb) (gy (min 50 (+ (* 0.5 t0 t0) (* t0 (- tb t0))))) 'ink 1)
(plot-point t0 (* 0.5 t0 t0) 'warm)
(text 110 48 (string-append "slope at " (fmt t0 0) " s = " (fmt t0 0) " m/s") 'small 'bold)
(caption "The tangent touches the curve at one point")
```

```check
(number
  (ask "Use the figure. What is the car's instantaneous velocity at t = 6 s?")
  (answer 6) (unit "m/s") (from "6")
  (wrong-if 18 "18 m is the car's position at 6 s, not its velocity. The velocity is the tangent's slope.")
  (wrong-if 3 "3 m/s is the average velocity from 0 to 6 s (18 m / 6 s). At 6 s itself the car is going faster.")
  (hint "Set the slider to 6 and read the slope."))
```

---

## A worked example

```example
(example
  (problem "A walker's position-time graph is a straight line from (0 s, 40 m) to (20 s, 10 m). Find her velocity.")
  (step "Rise: Delta x = 10 m - 40 m = -30 m.")
  (step "Run: Delta t = 20 s - 0 s = 20 s.")
  (step "Slope: v = -30 m / 20 s.")
  (answer "v = -1.5 m/s: she walks toward the reference point"))
```

Now you finish one.

```check
(number
  (ask "A line goes from (2 s, 50 m) to (7 s, 20 m). What is the velocity?")
  (answer -6) (unit "m/s") (from "(20 - 50) / (7 - 2)")
  (wrong-if 6 "The position goes down from 50 m to 20 m, so the velocity is negative.")
  (hint "Rise: 20 - 50. Run: 7 - 2."))
```

---

## Practice

```check
(choice
  (ask "A position-time graph is a flat line at x = -5 m from 0 s to 10 s. What is the object doing?")
  (right "Standing still at -5 m")
  (wrong "Moving at -5 m/s"
    "-5 m is the position, read up the side. The slope is 0, so the velocity is 0.")
  (wrong "Moving backward slowly"
    "The line is flat, so the position never changes. The object is at rest.")
  (hint "What is the slope of a flat line?"))
```

```check
(number
  (ask "A bike's position-time line rises 45 m in 9 s. What is its velocity?")
  (answer 5) (unit "m/s") (from "45 / 9")
  (wrong-if 405 "Velocity is the rise divided by the run, not multiplied.")
  (hint "Slope = rise / run."))
```

```check
(choice
  (ask "A position-time graph curves upward, getting steeper and steeper. What is happening?")
  (right "The object is speeding up")
  (wrong "The object is slowing down"
    "A steeper line means a larger slope, so a larger velocity. Getting steeper means getting faster.")
  (wrong "The object is moving at a steady velocity"
    "A steady velocity gives a straight line. A curve means the slope, the velocity, is changing.")
  (hint "Slope is velocity. What happens to the slope?"))
```

---

So on a position-time graph, the slope is the velocity: a straight line means a steady velocity, and on a curve the tangent's slope gives the instantaneous velocity.
