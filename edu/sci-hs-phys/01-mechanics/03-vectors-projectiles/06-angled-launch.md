# Angled launch

```lesson
(objective "Split a launch velocity into components, and find the time of flight and the highest point.")
(standards "HSG-SRT.C.8" "HSN-VM.A.3")
(minutes 30)
(keywords "time of flight")
```

You can predict how long a ball launched at an angle stays up, and how high it goes.

A ball launched at speed $v_0$ and angle $theta$ above level ground has two components of velocity:

$$ v_(0x) = v_0 cos(theta) $$

$$ v_(0y) = v_0 sin(theta) $$

As before, the horizontal part stays the same the whole flight. The vertical part changes by 9.8 m/s every second, exactly as for a ball thrown straight up.

```figure
(define v0 (slider 'v0 5 25 20 "Speed (m/s)" 1))
(define th (slider 'th 15 75 45 "Angle (°)" 5))
(define T (mc-tland v0 th 9.8 0))
(define vy (* v0 (sin (deg->rad th))))
(still
  (graph 40 40 256 128 0 70 0 35)
  (mc-ground 0 70)
  (for-range 1 7 (lambda (k) (text (gx (* 10 k)) (+ (gy 0) 14) (* 10 k) 'centre 'tiny)))
  (mc-path v0 th 9.8 0 'cool)
  (angle-mark (gx 0) (gy 0) 20 0 th)
  (text 40 24 (string-append "flight " (fmt T 2) " s, top " (fmt (/ (* vy vy) 19.6) 1) " m") 'small 'bold)
  (caption "Real time, no air; meters, same scale both ways"))
(mc-ball v0 th 9.8 0 (mc-mod (seconds) (+ T 1)) 'warm)
```

```check
(choice
  (ask "At the highest point of the flight, what is the ball's velocity?")
  (right "Horizontal only: v_0 cos(theta), with no vertical part")
  (wrong "Zero"
    "Only the vertical part is 0 at the top. The horizontal part, v_0 cos(theta), never changes, so the ball is still moving across.")
  (wrong "The same as at launch"
    "The vertical part has fallen to 0 by the top, so the ball is slower there than at launch.")
  (hint "Which part of the velocity changes during the flight?"))
```

---

## Up to the top

The vertical motion is the same as a ball thrown straight up at $v_(0y)$. It rises until its vertical velocity is 0:

$$ t_(top) = v_(0y) / g $$

and its highest point is

$$ H = v_(0y)^2 / (2 g) $$

```check
(number
  (ask "A ball is launched with a vertical velocity of 14.7 m/s. How long until it reaches the top?")
  (answer 1.5) (within 0.001) (unit "s") (from "14.7 / 9.8")
  (wrong-if 144.06 "That multiplies. Gravity takes away 9.8 m/s every second, so divide 14.7 by 9.8.")
  (hint "t_top = v_0y / g."))
```

---

## Time of flight

On level ground the fall from the top takes as long as the rise. So the whole time in the air, the **time of flight**, is

$$ T = (2 v_(0y)) / g = (2 v_0 sin(theta)) / g $$

Use the sliders: a steeper angle gives a larger vertical part, and a longer flight.

```check
(number
  (ask "A ball is kicked at 20 m/s and 30° above level ground. What is its time of flight? Round to the nearest hundredth.")
  (answer 2.04) (within 0.006) (unit "s") (from "2 * 20 * sin(30 * pi / 180) / 9.8")
  (wrong-if 1.02 "That is only the time to the top. On level ground it takes as long again to come down.")
  (wrong-if 4.08 "That uses all 20 m/s as if it were vertical. Only the vertical part, 20 sin(30°) = 10 m/s, sets the flight time.")
  (hint "v_0y = 20 x sin(30°) = 10 m/s.")
  (hint "T = 2 x 10 / 9.8."))
```

---

## A worked example

```example
(example
  (problem "A ball is launched at 20 m/s, 30° above level ground. Find its components, its highest point and how far it goes.")
  (step "Components: v_0x = 20 cos(30°) = 17.3 m/s; v_0y = 20 sin(30°) = 10 m/s.")
  (step "Highest point: H = 10^2 / (2 x 9.8) = 5.1 m.")
  (step "Time of flight: T = 2 x 10 / 9.8 = 2.04 s.")
  (step "Across: x = 17.3 m/s x 2.04 s = 35.3 m.")
  (answer "Up 5.1 m, in the air 2.04 s, lands 35.3 m away"))
```

Now you finish one.

```check
(number
  (ask "A ball is launched at 20 m/s, 60° above level ground. How high does it go? Round to the nearest tenth.")
  (answer 15.3) (within 0.06) (unit "m") (from "(20 * sin(60 * pi / 180))^2 / (2 * 9.8)")
  (wrong-if 20.4 "That uses all 20 m/s as vertical. Only v_0y = 20 sin(60°) = 17.3 m/s rises against gravity.")
  (wrong-if 1.77 "That is 17.3 / 9.8, the time to the top in seconds. The height is v_0y^2 / (2g).")
  (hint "v_0y = 20 x sin(60°) = 17.3 m/s.")
  (hint "H = 17.3² / 19.6."))
```

---

## Practice

```check
(number
  (ask "A ball leaves the ground at 15 m/s, 40° up. What is the horizontal component of its velocity? Round to the nearest tenth.")
  (answer 11.5) (within 0.06) (unit "m/s") (from "15 * cos(40 * pi / 180)")
  (wrong-if 9.6 "That is the vertical component, 15 sin(40°). The horizontal one is next to the angle: the cosine.")
  (hint "v_0x = v_0 cos(theta)."))
```

```check
(choice
  (ask "Two balls are launched at the same speed, one at 30° and one at 60°. Which stays in the air longer?")
  (right "The one at 60°")
  (wrong "The one at 30°"
    "The time of flight depends on the vertical part, v_0 sin(theta). At 60° the vertical part is larger, so the flight is longer.")
  (wrong "Both stay up the same time"
    "They would land together only if their vertical parts were equal. sin(60°) is larger than sin(30°).")
  (hint "Which angle gives the larger vertical part?"))
```

```check
(number
  (ask "A ball is launched with v_0y = 4.9 m/s. What is its time of flight on level ground?")
  (answer 1) (unit "s") (from "2 * 4.9 / 9.8")
  (wrong-if 0.5 "0.5 s is the time to the top. The way down takes as long.")
  (hint "T = 2 v_0y / g."))
```

---

So an angled launch splits into a steady horizontal velocity, $v_0 cos(theta)$, and a vertical one, $v_0 sin(theta)$, that sets the highest point and a time of flight of $2 v_0 sin(theta) / g$.
