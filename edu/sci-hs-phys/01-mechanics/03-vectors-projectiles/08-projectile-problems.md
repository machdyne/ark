# Projectile problems

```lesson
(objective "Solve projectile problems and test each prediction against a simulation.")
(standards "HSN-VM.A.3" "HSA-CED.A.4")
(minutes 30)
```

You can solve projectile problems step by step, then test each answer against a simulation.

Every projectile problem, ignoring the air, comes down to the same plan:

1. Split the launch velocity: $v_(0x) = v_0 cos(theta)$, $v_(0y) = v_0 sin(theta)$.
2. Use the vertical motion to find the time: $y = h + v_(0y) t - 1/2 g t^2$.
3. Use the time in the horizontal motion: $x = v_(0x) t$.

The simulation below follows exactly these equations. Use it to test your answers.

```figure
(define v0 (slider 'v0 0 20 12 "Speed (m/s)" 1))
(define th (slider 'th 0 45 0 "Angle (°)" 5))
(define h (slider 'h 0 15 5 "Height (m)" 1))
(define T (mc-tland v0 th 9.8 h))
(still
  (graph 30 40 260 130 0 54 0 27)
  (if (> h 0) (rect 12 (gy h) 16 (- (gy 0) (gy h)) 'earth))
  (mc-ground 0 54)
  (for-range 1 6 (lambda (k) (text (gx (* 10 k)) (+ (gy 0) 14) (* 10 k) 'centre 'tiny)))
  (if (> T 0) (mc-path v0 th 9.8 h 'cool))
  (text 30 24 (string-append "lands at " (fmt (* v0 (cos (deg->rad th)) T) 1) " m after " (fmt T 2) " s") 'small 'bold)
  (caption "Real time, no air; meters, same scale both ways"))
(if (> T 0) (mc-ball v0 th 9.8 h (mc-mod (seconds) (+ T 1)) 'warm))
```

```check
(number
  (ask "Predict first, then test: a ball is thrown horizontally at 12 m/s from a 5 m wall. How far from the wall does it land? Round to the nearest tenth.")
  (answer 12.1) (within 0.06) (unit "m") (from "12 * sqrt(2 * 5 / 9.8)")
  (wrong-if 60 "That multiplies 12 by 5, as if the fall took 5 s. Find the time first: t = sqrt(2h/g) = 1.01 s.")
  (wrong-if 12 "That assumes a fall time of exactly 1 s. It is sqrt(2 x 5 / 9.8) = 1.01 s.")
  (hint "Time to fall 5 m: sqrt(2 x 5 / 9.8).")
  (hint "Then x = 12 x 1.01. Set the sliders to 12 m/s, 0° and 5 m to check."))
```

---

## Clearing a fence

A ball is kicked at 18 m/s and 35° from the ground. A fence 3 m tall stands 20 m away. Does the ball clear it?

Find when the ball is 20 m away, then how high it is then.

- $v_(0x)$ = 18 cos 35° = 14.7 m/s, so it reaches the fence at $t = 20 / 14.7 = 1.36$ s.
- $v_(0y)$ = 18 sin 35° = 10.3 m/s.

```check
(number
  (ask "How high is the ball at t = 1.36 s? Use y = 10.3 t - 4.9 t^2, and round to the nearest meter.")
  (answer 5) (within 0.5) (unit "m") (from "10.3 * 1.36 - 4.9 * 1.36^2")
  (wrong-if 14 "That is 10.3 x 1.36 alone. Gravity has pulled it down 4.9 t^2 = 9.1 m from where it would be.")
  (wrong-if -9.1 "That leaves out the rising part, 10.3 t. The ball was launched upward too.")
  (hint "10.3 x 1.36 = 14.0.")
  (hint "4.9 x 1.36² = 9.1."))
```

```check
(choice
  (ask "So, does the ball clear the 3 m fence?")
  (right "Yes, by about 2 m")
  (wrong "No, it hits the fence"
    "At the fence the ball is about 5 m up, which is higher than 3 m.")
  (hint "Compare 5 m with 3 m."))
```

---

## Launched up from a height

A ball is thrown at 10 m/s and 30° up from the top of a 15 m cliff. The vertical equation is a quadratic:

$$ 0 = 15 + 5 t - 4.9 t^2 $$

since $v_(0y)$ = 10 sin 30° = 5 m/s. The quadratic formula gives the positive root, $t = 2.33$ s.

```check
(number
  (ask "How far from the foot of the cliff does the ball land? Use t = 2.33 s and v_0x = 8.66 m/s, and round to the nearest tenth.")
  (answer 20.2) (within 0.06) (unit "m") (from "8.66 * 2.33")
  (wrong-if 23.3 "That uses all 10 m/s across. The horizontal part is 10 cos(30°) = 8.66 m/s.")
  (hint "x = v_0x t.")
  (hint "Check it: set the sliders to 10 m/s, 30° and 15 m."))
```

---

## A worked example

```example
(example
  (problem "A ball rolls off a 1.8 m shelf at 2.5 m/s. How fast is it moving when it lands?")
  (step "Fall time: t = sqrt(2 x 1.8 / 9.8) = 0.606 s.")
  (step "Vertical velocity then: v_y = g t = 9.8 x 0.606 = 5.94 m/s, downward.")
  (step "Horizontal velocity: still 2.5 m/s.")
  (step "Speed: sqrt(2.5² + 5.94²) = 6.4 m/s.")
  (answer "About 6.4 m/s"))
```

Now you finish one.

```check
(number
  (ask "A stone is thrown horizontally at 6 m/s from a 20 m cliff. It falls for 2.02 s. How fast is it moving when it lands? Round to the nearest tenth.")
  (answer 20.7) (within 0.06) (unit "m/s") (from "sqrt(6^2 + (9.8 * 2.02)^2)")
  (wrong-if 25.8 "That adds 6 and 19.8. The two velocities are at a right angle: use the Pythagorean theorem.")
  (wrong-if 19.8 "That is only the vertical part. The stone still moves 6 m/s across.")
  (hint "v_y = 9.8 x 2.02 = 19.8 m/s.")
  (hint "Speed = sqrt(6² + 19.8²)."))
```

---

## Practice

```check
(number
  (ask "A ball is kicked at 16 m/s, 45° up from level ground. How far does it go? Round to the nearest tenth. Then test it in the simulation with height 0.")
  (answer 26.1) (within 0.06) (unit "m") (from "16^2 / 9.8")
  (wrong-if 13.1 "That divides by 2g. At 45°, R = v_0^2 / g.")
  (hint "At 45°, R = v_0^2 / g."))
```

```check
(number
  (ask "A ball is thrown horizontally from 10 m up and lands 15 m away. What was its launch speed? Round to the nearest tenth.")
  (answer 10.5) (within 0.06) (unit "m/s") (from "15 / sqrt(2 * 10 / 9.8)")
  (wrong-if 1.5 "That divides 15 by 10, as if the fall took 10 s. Find the fall time from the height first.")
  (hint "Fall time: sqrt(2 x 10 / 9.8) = 1.43 s.")
  (hint "v_0 = 15 / 1.43."))
```

```check
(choice
  (ask "A prediction says a ball lands 30 m away, but the simulation shows 12 m. What is the best next step?")
  (right "Recheck each step, especially the time and which component goes where")
  (wrong "Trust the prediction: simulations are often wrong"
    "This simulation follows the same equations you used. A big difference means a step went wrong, often a sine and cosine swapped or a missing square root.")
  (wrong "Average the two answers"
    "Averaging a right and a wrong answer gives a wrong one. Find the mistake instead.")
  (hint "The simulation uses the same equations as you."))
```

---

So a projectile problem splits into a horizontal motion at steady velocity and a vertical motion under gravity, joined by the time, and a simulation built on the same equations can test each answer.
