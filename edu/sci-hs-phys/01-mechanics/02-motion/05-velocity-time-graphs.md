# Velocity-time graphs

```lesson
(objective "Read a velocity-time graph: the acceleration is its slope and the displacement is the area under it.")
(standards "HS-PS2-1" "HSF-IF.B.6")
(minutes 25)
(keywords "velocity-time graph")
```

You can read both an object's acceleration and its displacement from one graph of its velocity.

A **velocity-time graph** shows an object's velocity (up the side) at each time (along the bottom). A flat line means a steady velocity. A line that slopes means the velocity is changing.

```figure
(define a (slider 'a -1 2 1 "a (m/s²)" 0.5))
(graph 50 20 250 170 0 8 -10 20)
(graph-axes 1 5 "t (s)" "v (m/s)")
(plot (lambda (t) (+ 4 (* a t))) 'ink 2)
(text 160 36 (string-append "v = 4 + (" (fmt a 1) ") t") 'small 'bold)
(caption "Starts at 4 m/s")
```

```check
(choice
  (ask "On a velocity-time graph, a line slopes down and crosses the time axis. What happens where it crosses?")
  (right "The object stops for an instant and then moves the other way")
  (wrong "The object returns to its starting point"
    "This graph shows velocity, not position. Crossing the axis means the velocity is 0 there: the object stops and turns around, wherever it is.")
  (wrong "The object's acceleration becomes 0"
    "The line keeps the same slope as it crosses, so the acceleration does not change. Only the velocity passes through 0.")
  (hint "What is read up the side of this graph?"))
```

---

## The slope is the acceleration

On a velocity-time graph the rise is a change in velocity and the run is a change in time. So:

$$ (Delta v)/(Delta t) = a $$

A steeper line means a larger acceleration. A line sloping down means a negative acceleration.

```check
(number
  (ask "A velocity-time line goes from (0 s, 3 m/s) to (5 s, 13 m/s). What is the acceleration?")
  (answer 2) (unit "m/s²") (from "(13 - 3) / (5 - 0)")
  (wrong-if 2.6 "That divides 13 by 5, one point's velocity by its time. Use the change: 13 - 3 = 10 m/s.")
  (wrong-if 0.5 "That is run over rise. Acceleration is the change in velocity over the change in time.")
  (hint "Rise: 13 - 3. Run: 5 - 0."))
```

---

## The area is the displacement

At a steady 5 m/s for 4 s, an object moves 5 x 4 = 20 m. On the graph, that is the area of a rectangle 4 s wide and 5 m/s tall.

The same holds when the velocity changes: **the area between the line and the time axis is the displacement.** Move the time slider.

```figure
(define t1 (slider 't1 0 8 4 "Time (s)" 1))
(graph 50 20 250 170 0 8 0 12)
(define (v t) (+ 2 t))
(if (> t1 0) (poly (list (gx 0) (gy 0) (gx 0) (gy 2) (gx t1) (gy (v t1)) (gx t1) (gy 0)) 'cool))
(graph-axes 1 2 "t (s)" "v (m/s)")
(plot v 'ink 2)
(text 110 48 (string-append "area = " (fmt (+ (* 2 t1) (* 0.5 t1 t1)) 1) " m") 'small 'bold)
(caption "v = 2 + 1 t: a trapezoid under the line")
```

The shape is a rectangle with a triangle on top: $2 t + 1/2 t * t$.

```check
(number
  (ask "Use the slider. How far has the object moved after 6 s?")
  (answer 30) (unit "m") (from "2 * 6 + 0.5 * 6 * 6")
  (wrong-if 8 "8 m/s is the velocity at 6 s, read up the side. The displacement is the area under the line.")
  (wrong-if 48 "That is 8 x 6, a rectangle as tall as the final velocity. The velocity was smaller earlier, so take the triangle's half.")
  (hint "Rectangle: 2 m/s x 6 s. Triangle: 1/2 x 6 s x 6 m/s.")
  (hint "12 m + 18 m."))
```

---

## Area below the axis

Where the line is below the time axis, the velocity is negative and the object moves in the - direction. That area counts as negative displacement.

A cart moves at +3 m/s for 4 s, then at -2 m/s for 3 s. Its displacement is 12 m - 6 m = +6 m. Its distance traveled is 12 m + 6 m = 18 m.

```check
(number
  (ask "An object moves at -4 m/s for 5 s. What is its displacement?")
  (answer -20) (unit "m") (from "-4 * 5")
  (wrong-if 20 "The area is below the time axis, so the displacement is negative: the object moved in the - direction.")
  (hint "Velocity times time, with the sign."))
```

---

## A worked example

```example
(example
  (problem "A car starts at 10 m/s and slows steadily to 0 in 5 s. Use the graph to find its acceleration and how far it goes.")
  (step "The line falls from (0 s, 10 m/s) to (5 s, 0 m/s).")
  (step "Slope: (0 - 10) / 5 = -2 m/s². That is the acceleration.")
  (step "The area under the line is a triangle: 1/2 x 5 s x 10 m/s.")
  (answer "a = -2 m/s², and it goes 25 m"))
```

Now you finish one.

```check
(number
  (ask "A runner speeds up steadily from 0 to 8 m/s in 4 s. How far does she run in that time?")
  (answer 16) (unit "m") (from "0.5 * 4 * 8")
  (wrong-if 32 "That is the rectangle 4 s x 8 m/s. Under a line rising from 0, the area is a triangle: half of that.")
  (wrong-if 2 "2 m/s² is the slope, her acceleration. The distance is the area under the line.")
  (hint "The area is a triangle.")
  (hint "1/2 x base x height."))
```

---

## Practice

```check
(number
  (ask "A velocity-time line falls from 20 m/s at 0 s to 5 m/s at 3 s. What is the acceleration?")
  (answer -5) (unit "m/s²") (from "(5 - 20) / 3")
  (wrong-if 5 "The velocity goes down, so the slope, the acceleration, is negative.")
  (hint "Slope = (5 - 20) / 3."))
```

```check
(number
  (ask "For the same line, from 20 m/s to 5 m/s in 3 s, what is the displacement?")
  (answer 37.5) (unit "m") (from "5 * 3 + 0.5 * 3 * 15")
  (wrong-if 60 "That is a rectangle 20 m/s tall. The velocity fell, so the area is a rectangle 5 m/s tall plus a triangle.")
  (wrong-if 15 "That is only the rectangle under 5 m/s. Add the triangle above it: 1/2 x 3 s x 15 m/s.")
  (hint "Rectangle 3 s x 5 m/s, plus triangle 1/2 x 3 s x 15 m/s."))
```

```check
(choice
  (ask "Two velocity-time lines are both flat, one at 4 m/s and one at 6 m/s. Which is true?")
  (right "Both have 0 acceleration; the second goes farther in the same time")
  (wrong "The second has the larger acceleration"
    "Both lines are flat, so both slopes are 0. Neither velocity changes.")
  (wrong "Both go the same distance"
    "The area under the 6 m/s line is larger, so that object goes farther.")
  (hint "Slope gives acceleration; area gives displacement."))
```

---

So on a velocity-time graph, the slope is the acceleration and the area between the line and the time axis is the displacement.
