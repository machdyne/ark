# Range

```lesson
(objective "Find the range on level ground, and show that 45 degrees gives the longest range when the air is ignored.")
(standards "HSN-VM.A.3" "HSA-CED.A.4")
(minutes 25)
(keywords "range (of a projectile)")
```

You can predict how far a projectile goes on level ground, and which launch angle sends it farthest.

The **range** of a projectile is the horizontal distance it travels before it comes back down to the level it started from. It is the horizontal velocity times the time of flight:

$$ R = v_0 cos(theta) * (2 v_0 sin(theta))/g $$

A rule from trigonometry, $2 sin(theta) cos(theta) = sin(2 theta)$, makes this shorter:

$$ R = (v_0^2 sin(2 theta))/g $$

```sources
(source "OpenStax, Physics (high school), 2020, chapter 5.3: projectile motion")
```

```check
(number
  (ask "A ball is launched at 20 m/s and 30° on level ground. What is its range? Round to the nearest tenth.")
  (answer 35.3) (within 0.06) (unit "m") (from "20^2 * sin(60 * pi / 180) / 9.8")
  (wrong-if 20.4 "That uses sin(30°). The formula has sin(2 theta): here sin(60°).")
  (wrong-if 40.8 "That leaves out the sine. Only at 45° is sin(2 theta) equal to 1.")
  (hint "2 theta = 60°.")
  (hint "R = 400 x sin(60°) / 9.8."))
```

---

## Which angle goes farthest?

Change the angle, keeping the speed at 20 m/s. The dashed path is the 45° launch, for comparison.

```figure
(define th (slider 'th 5 85 30 "Angle (°)" 5))
(still
  (graph 30 50 270 135 0 45 0 22.5)
  (mc-ground 0 45)
  (for-range 1 5 (lambda (k) (text (gx (* 10 k)) (+ (gy 0) 14) (* 10 k) 'centre 'tiny)))
  (mc-path 20 45 9.8 0 'cool)
  (mc-path 20 th 9.8 0 'ink)
  (text 30 30 (string-append "range at " (fmt th 0) "°: " (fmt (/ (* 400 (sin (deg->rad (* 2 th)))) 9.8) 1) " m") 'small 'bold)
  (caption "20 m/s, no air; meters, same scale both ways"))
```

```check
(choice
  (ask "Try 30° and then 60°. What do you notice?")
  (right "They give the same range, though 60° goes much higher")
  (wrong "60° goes twice as far as 30°"
    "A steeper launch stays up longer but moves across more slowly. At 30° and 60° the two effects balance, and the ranges are equal.")
  (wrong "30° goes farther, because it is aimed more forward"
    "Aimed more forward, it moves across faster, but it lands sooner. The two ranges come out equal.")
  (hint "Read the range for each angle."))
```

---

## 45 degrees is best

The range is largest when $sin(2 theta)$ is largest. The sine of an angle is never more than 1, and sin 90° = 1. So the longest range is when twice the angle is 90°, which is at 45°, when the air is ignored:

$$ R_(max) = v_0^2 / g $$

```figure
(define th (slider 'th 0 90 45 "Angle (°)" 5))
(graph 50 30 250 160 0 90 0 45)
(graph-axes 15 10 "angle (°)" "R (m)")
(plot (lambda (a) (/ (* 400 (sin (deg->rad (* 2 a)))) 9.8)) 'ink 2)
(plot-point th (/ (* 400 (sin (deg->rad (* 2 th)))) 9.8) 'warm)
(caption "Range against angle at 20 m/s")
```

Angles that add to 90°, such as 30° and 60°, or 20° and 70°, give the same range.

```check
(number
  (ask "What is the longest range for a launch speed of 14 m/s on level ground, ignoring the air?")
  (answer 20) (unit "m") (from "14^2 / 9.8")
  (wrong-if 1.43 "That is 14 / 9.8. The range goes with the speed squared: 196 / 9.8.")
  (wrong-if 10 "That divides by 2g. The longest range is v_0^2 / g, at 45°.")
  (hint "At 45°, R = v_0^2 / g."))
```

---

## Speed matters more

Because the range goes with $v_0^2$, doubling the launch speed makes the range 4 times as long, at the same angle.

```check
(choice
  (ask "A ball's launch speed doubles, at the same angle. What happens to its range on level ground?")
  (right "It becomes 4 times as long")
  (wrong "It doubles"
    "Doubling the speed doubles both the horizontal velocity and the time of flight. 2 x 2 = 4.")
  (wrong "It stays the same, because the angle is the same"
    "The angle sets the shape, but the speed sets the size. R = v_0^2 sin(2 theta) / g.")
  (hint "R goes with v_0 squared."))
```

---

## A worked example

```example
(example
  (problem "A fountain sends water out at 7 m/s at 45°. How far away does it land, at the same level?")
  (step "At 45°, sin(2 theta) = sin(90°) = 1.")
  (step "R = v_0^2 / g = 49 / 9.8.")
  (step "R = 5.0 m.")
  (answer "5.0 m"))
```

Now you finish one.

```check
(number
  (ask "The fountain is turned to 15°, still at 7 m/s. Where does the water land now? Round to the nearest tenth.")
  (answer 2.5) (within 0.06) (unit "m") (from "49 * sin(30 * pi / 180) / 9.8")
  (wrong-if 1.3 "That uses sin(15°). The formula needs sin(2 theta) = sin(30°) = 0.5.")
  (hint "sin(2 x 15°) = sin(30°) = 0.5.")
  (hint "R = 49 x 0.5 / 9.8."))
```

---

## Practice

```check
(number
  (ask "A ball is launched at 10 m/s, 45° up. What is its range on level ground? Round to the nearest tenth.")
  (answer 10.2) (within 0.06) (unit "m") (from "10^2 / 9.8")
  (wrong-if 5.1 "That divides by 2g. At 45° the range is v_0^2 / g.")
  (hint "R = 100 / 9.8."))
```

```check
(number
  (ask "Which other angle gives the same range as a 25° launch at the same speed? Give it in degrees.")
  (answer 65) (unit "°") (from "90 - 25")
  (true "sin(2 * 25 * pi / 180) = sin(2 * 65 * pi / 180)")
  (wrong-if 50 "Doubling the angle is part of the formula, but the matching launch is the one that adds to 90° with it.")
  (hint "The two angles add to 90°."))
```

```check
(choice
  (ask "Real balls in air land short of the range the formula gives. Why does the formula still help?")
  (right "It shows how speed and angle change the range, a starting point before the air is counted")
  (wrong "It does not help: a formula that ignores the air is useless"
    "A model that leaves something out can still predict well when that effect is small, as for a heavy ball at low speed, and it shows the main pattern.")
  (hint "When is the air's effect small?"))
```

---

So the range on level ground is $R = v_0^2 sin(2 theta) / g$, largest at 45° when the air is ignored, with angles that add to 90° landing at the same place.
