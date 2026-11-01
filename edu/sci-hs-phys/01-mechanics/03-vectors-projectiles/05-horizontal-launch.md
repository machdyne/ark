# Horizontal launch

```lesson
(objective "Predict the path of an object launched horizontally: a steady horizontal velocity and free fall downward, at the same time.")
(standards "HSN-VM.A.3" "HSA-CED.A.4")
(minutes 25)
(keywords "projectile" "trajectory")
```

You can predict where a ball launched sideways off a cliff will land, by treating its sideways and downward motions separately.

A **projectile** is an object moving through the air after it is launched, with gravity alone changing its motion. In this unit we ignore the air. The path a projectile follows is its **trajectory**.

Here one ball is launched sideways off a 20 m cliff while another is dropped beside it. Move the slider.

```figure
(define v0 (slider 'v0 0 15 8 "Launch (m/s)" 1))
(still
  (graph 40 30 256 160 0 40 0 25)
  (rect 16 (gy 20) 18 (- (gy 0) (gy 20)) 'earth)
  (frame 16 (gy 20) 18 (- (gy 0) (gy 20)) 'ink 1)
  (mc-ground 0 40)
  (for-range 1 5 (lambda (k) (text (gx (* 10 k)) (+ (gy 0) 14) (* 10 k) 'centre 'tiny)))
  (if (> v0 0) (mc-path v0 0 9.8 20 'cool))
  (caption "Real time, no air; scale in meters, the same both ways"))
(define t (mc-mod (seconds) 3))
(mc-ball 0 0 9.8 20 t 'ink)
(mc-ball v0 0 9.8 20 t 'warm)
```

```check
(choice
  (ask "Watch both balls. Which lands first?")
  (right "They land at the same time")
  (wrong "The dropped ball"
    "The launched ball also starts with no downward velocity, and falls with the same g. So it falls the 20 m in the same time, about 2 s.")
  (wrong "The launched ball"
    "Moving sideways does not make a ball fall faster. Both fall from rest with the same acceleration, so they land together.")
  (hint "Look at the two balls' heights at each moment."))
```

---

## Two motions at once

A horizontally launched projectile does two things at the same time, independently:

- **across:** it keeps its launch velocity, $v_0$, because nothing speeds it up or slows it down sideways;
- **down:** it falls exactly like a dropped object, starting from rest, with $g = 9.8$ m/s².

The marks show the ball every 0.25 s. The horizontal gaps are equal; the vertical gaps grow.

```figure
(graph 40 30 256 160 0 40 0 25)
(mc-ground 0 40)
(mc-path 8 0 9.8 20 'cool)
(for-range 0 9 (lambda (k) (let ((t (* 0.25 k)))
  (circle (gx (* 8 t)) (gy (- 20 (* 4.9 t t))) 3.5 'ink)
  (line (gx (* 8 t)) (gy 0) (gx (* 8 t)) (+ (gy 0) 5) 'ink 1)
  (line 34 (gy (- 20 (* 4.9 t t))) 40 (gy (- 20 (* 4.9 t t))) 'ink 1))))
(caption "8 m/s off a 20 m cliff, one mark every 0.25 s")
```

```check
(choice
  (ask "What is the horizontal velocity of the ball halfway down?")
  (right "Still 8 m/s, the same as at launch")
  (wrong "Less than 8 m/s, because it is slowing down"
    "Ignoring the air, nothing acts on the ball sideways, so its horizontal velocity stays 8 m/s. The equal gaps across show it.")
  (wrong "0 m/s, because it is now falling"
    "Falling adds a downward velocity, but the sideways velocity stays. The ball moves across and down at once.")
  (hint "Look at the gaps along the ground."))
```

---

## The equations

Take the launch point as $x = 0$ and the ground as $y = 0$, with the launch at height $h$:

$$ x = v_0 t $$

$$ y = h - 1/2 g t^2 $$

The ball lands when $y = 0$, at $t = sqrt((2 h)/g)$. The horizontal distance it covers is then $x = v_0 t$.

```check
(number
  (ask "A ball leaves a 20 m cliff horizontally. How long does it take to land? Round to the nearest hundredth of a second.")
  (answer 2.02) (within 0.006) (unit "s") (from "sqrt(2 * 20 / 9.8)")
  (wrong-if 4.08 "That is t^2. Take the square root: t = sqrt(2h/g).")
  (hint "The time to fall does not depend on the sideways velocity.")
  (hint "t = sqrt(2 x 20 / 9.8)."))
```

```check
(number
  (ask "It leaves at 8 m/s. How far from the foot of the cliff does it land? Use 2.02 s, and round to the nearest tenth.")
  (answer 16.2) (within 0.06) (unit "m") (from "8 * 2.02")
  (wrong-if 20 "20 m is the cliff's height. The horizontal distance is the sideways velocity times the time in the air.")
  (hint "x = v_0 t."))
```

---

## A worked example

```example
(example
  (problem "A marble rolls off a table 1.25 m high at 3.0 m/s. How far from the table does it land?")
  (step "Time to fall 1.25 m: t = sqrt(2 x 1.25 / 9.8) = sqrt(0.255) = 0.505 s.")
  (step "Across, at a steady 3.0 m/s: x = 3.0 x 0.505.")
  (step "x = 1.52 m.")
  (answer "About 1.5 m from the table"))
```

Now you finish one.

```check
(number
  (ask "A second marble rolls off the same 1.25 m table at 6.0 m/s. How far from the table does it land? Round to the nearest tenth.")
  (answer 3) (within 0.06) (unit "m") (from "6 * sqrt(2 * 1.25 / 9.8)")
  (wrong-if 1.5 "It is in the air for the same 0.505 s, but goes twice as fast across, so it goes twice as far.")
  (hint "The fall time is the same: 0.505 s.")
  (hint "x = 6.0 x 0.505."))
```

---

## Practice

```check
(choice
  (ask "Two balls roll off the same table, one at 2 m/s and one at 4 m/s. Which is true?")
  (right "They land at the same time; the faster one lands twice as far away")
  (wrong "The faster ball lands later because it goes farther"
    "The time in the air depends only on the height. Going faster sideways means landing farther away, not later.")
  (wrong "The faster ball lands sooner"
    "Both start with no downward velocity and fall the same height with the same g, so they take the same time.")
  (hint "What sets the time to fall?"))
```

```check
(number
  (ask "A package is dropped from a plane flying level at 50 m/s, 180 m up. How long does it fall, ignoring the air? Round to the nearest tenth.")
  (answer 6.1) (within 0.06) (unit "s") (from "sqrt(2 * 180 / 9.8)")
  (wrong-if 3.6 "That is 180 / 50: the plane's speed does not set the fall time. Use t = sqrt(2h/g).")
  (hint "t = sqrt(2 x 180 / 9.8)."))
```

```check
(number
  (ask "How far ahead of the drop point does that package land? Use 6.06 s, and round to the nearest meter.")
  (answer 303) (within 0.6) (unit "m") (from "50 * 6.06")
  (wrong-if 0 "The package leaves the plane moving at 50 m/s sideways, and it keeps that velocity as it falls.")
  (hint "x = v_0 t = 50 m/s x 6.06 s."))
```

---

So a horizontally launched projectile keeps its horizontal velocity while it falls freely, and the time to fall depends only on the height.
