# Simple harmonic motion

```lesson
(objective "Explain simple harmonic motion by a restoring force that grows with displacement, and graph position against time as a sine curve.")
(standards "HS-PS2-1" "HSF-TF.B.5")
(minutes 25)
(keywords "restoring force" "simple harmonic motion" "radian")
```

You learn why a block on a spring oscillates, and why its position
against time is a smooth sine curve.

Move the block to the right of equilibrium, and the spring pulls it
left. Move it left, and the spring pushes it right. A force that always
points back toward the equilibrium position is a **restoring force**.

For a spring, Hooke's law gives the restoring force: $F = -k x$. The
minus sign says the force points opposite to the displacement $x$, and
the force grows in step with $x$.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.1, Hooke's Law: Stress and Strain Revisited, and section 16.3, Simple Harmonic Motion: A Special Periodic Motion")
```

```check
(choice
  (ask "A block on a spring is 5 cm to the left of equilibrium. Which way does the spring's force on it point?")
  (right "To the right, back toward equilibrium")
  (wrong "To the left, the way it was moved"
    "A restoring force points back toward equilibrium, opposite to the displacement. The block is left of equilibrium, so the force points right.")
  (wrong "There is no force until the block moves"
    "The spring is squeezed or stretched whenever the block is away from equilibrium, so it pushes even while the block is still for an instant.")
  (hint "F = -k x. The displacement is to the left."))
```

---

## Watching the motion

When the restoring force is in proportion to the displacement, the
motion is **simple harmonic motion**. Watch the arrows: the force is
largest at the ends and zero in the middle; the velocity is zero at the
ends and largest in the middle.

```figure
(still
  (wv-wall 20 20 70)
  (line 155 14 155 76 'grey 1)
  (graph 50 120 250 90 0 4 -10 10)
  (graph-axes 1 5 "t (s)" "x (cm)")
  (plot (lambda (s) (* 8 (cos (* pi s)))) 'ink 1.5))
(define t (seconds))
(define x (* 8 (cos (* pi t))))
(define v (* -8 pi (sin (* pi t))))
(define bx (+ 140 (* 4 x)))
(graph 50 120 250 90 0 4 -10 10)
(wv-spring 20 bx 45 6)
(wv-block bx 30 30 30 'grey #f)
(if (> (abs x) 0.3) (arrow (+ bx 15) 82 (- (+ bx 15) (* 4 x)) 82 'warm 2))
(text 30 86 "force" 'tiny)
(if (> (abs v) 0.6) (arrow (+ bx 15) 100 (+ bx 15 (* 1.2 v)) 100 'cool 2))
(text 30 104 "velocity" 'tiny)
(plot-point (modulo t 4) x 'warm)
(caption "Real time. Amplitude 8 cm, period 2.0 s.")
```

```check
(choice
  (ask "Where is the block moving fastest?")
  (right "At the equilibrium position")
  (wrong "At the ends, where the force is greatest"
    "At the ends the block stops for an instant and turns around. The force is greatest there, but the speed is zero.")
  (wrong "It moves at the same speed everywhere"
    "Watch the velocity arrow: it shrinks to nothing at the ends and is longest in the middle.")
  (hint "Pause the figure (P) in the middle and at an end."))
```

---

## A cosine of time

The graph of position against time is a cosine curve. If the block
starts at $x = A$ when $t = 0$:

$$ x = A cos(2 pi t / T) $$

The angle in the cosine is in **radians**, a measure of angle in which
a whole turn, 360 degrees, is $2 pi$ radians. After a quarter period, $t = T/4$,
the angle is $pi/2$ and $x = 0$; after half a period, $x = -A$; after a
whole period, the block is back at $x = A$.

```check
(number
  (ask "A block oscillates with amplitude 10 cm and period 2.0 s, starting at x = +10 cm. Where is it at t = 1.0 s, in cm? Give the sign.")
  (answer -10) (unit "cm") (from "10 * cos(2 pi * 1.0 / 2.0)")
  (wrong-if 10 "At t = 1.0 s, half a period has passed. Half a cycle takes the block to the other end, -10 cm.")
  (wrong-if 0 "x = 0 is a quarter period in, at 0.5 s. At 1.0 s, half a period, it is at the far end.")
  (hint "1.0 s is what fraction of the period?"))
```

---

## Worked example

```example
(example
  (problem "A block has A = 0.20 m and T = 4.0 s, starting at x = +0.20 m. Where is it at t = 0.50 s?")
  (step "The angle is 2 pi * 0.50 / 4.0 = pi/4 radians.")
  (step "cos(pi/4) is about 0.707.")
  (step "x = 0.20 * 0.707 = 0.141 m.")
  (answer "about 0.14 m"))
```

```example
(example
  (problem "The same block, at t = 1.5 s. Where is it?")
  (step "The angle is 2 pi * 1.5 / 4.0 = 3 pi/4 radians, and cos(3 pi/4) is about -0.707.")
  (step (number (ask "x, in meters, to the nearest hundredth? Give the sign.") (answer -0.14) (within 0.005) (unit "m") (from "0.20 * cos(3 pi / 4)")
    (wrong-if 0.14 "The cosine of 3 pi/4 is negative: the block has passed equilibrium and is on the other side.")
    (hint "0.20 * (-0.707).")))
  (answer "about -0.14 m"))
```

---

## Practice

```check
(choice
  (ask "Which force could NOT give simple harmonic motion?")
  (right "A force of the same size at every position, always pointing right")
  (wrong "F = -k x, from a spring"
    "This is the restoring force of simple harmonic motion itself: back toward equilibrium, in proportion to the displacement.")
  (wrong "A force twice as large at twice the displacement, pointing back to the middle"
    "That is a restoring force in proportion to the displacement, exactly what simple harmonic motion needs.")
  (hint "The force must point back to equilibrium and grow with the displacement."))
```

```check
(number
  (ask "A block with A = 5.0 cm and T = 1.2 s starts at x = +5.0 cm. Where is it at t = 0.30 s, in cm?")
  (answer 0) (within 0.01) (unit "cm") (from "5.0 * cos(2 pi * 0.30 / 1.2)")
  (wrong-if 5 "0.30 s is a quarter of the period. The block has moved from the end to the middle.")
  (wrong-if -5 "That is half a period. 0.30 s is a quarter of 1.2 s.")
  (hint "0.30 s / 1.2 s = 1/4 of a period."))
```

So: a restoring force in proportion to the displacement, $F = -k x$,
gives simple harmonic motion, with $x = A cos(2 pi t / T)$.
