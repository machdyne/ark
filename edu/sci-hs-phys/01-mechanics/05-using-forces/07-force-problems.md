# Force problems

```lesson
(objective "Solve mixed force problems, from the free-body diagram to the answer.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 30)
```

You can solve force problems of every kind with one method, from a free-body diagram to the answer.

The method:

1. Choose the object, or the system.
2. Draw its free-body diagram: every force on it, labeled.
3. Choose axes. On a slope, put x along the slope.
4. Write Newton's second law along each axis: the sum of the force components equals $m a$ along that axis.
5. Solve, then check units, sign and size.

```check
(choice
  (ask "A crate slides down a ramp. Why choose the x axis along the slope?")
  (right "The acceleration is along the slope, so the perpendicular axis has a = 0")
  (wrong "Because gravity points along the slope"
    "Gravity points straight down. Tilting the axes splits gravity but keeps the acceleration on one axis, which makes the equations simpler.")
  (wrong "The axes must always be level and upright"
    "You may choose any axes at right angles. Choosing them along the motion is usually easiest.")
  (hint "Which way does the crate accelerate?"))
```

---

## Speeding up a car

```example
(example
  (problem "A 1,200 kg car speeds up from rest to 20 m/s in 10 s on a level road. The air and the road's rolling drag push back with 600 N in all. How large is the forward force from the road on the tires?")
  (step "Acceleration: a = (20 - 0) / 10 = 2 m/s².")
  (step "Free-body diagram along the road: forward force F, backward 600 N.")
  (step "Newton's second law: F - 600 = 1,200 x 2 = 2,400.")
  (step "F = 3,000 N. Check: forward, newtons, more than the drag: sensible.")
  (answer "3,000 N forward"))
```

```check
(number
  (ask "The same car then cruises at a steady 20 m/s, with the same 600 N pushing back. What forward force does it need now?")
  (answer 600) (unit "N") (from "600")
  (wrong-if 3000 "That was for speeding up. At a steady velocity a = 0, so the forward force only balances the 600 N.")
  (wrong-if 0 "Without a forward force, the 600 N would slow the car. It needs 600 N forward to keep its velocity.")
  (hint "Steady velocity: equilibrium."))
```

---

## A sign on two cables

A 20 kg sign hangs from two cables, each at the same angle $theta$ above level. Each cable's upward component is $T sin(theta)$, and together they hold the weight:

$$ 2 T sin(theta) = m g $$

Move the slider to flatten the cables.

```figure
(define th (slider 'th 10 80 45 "Cable angle (°)" 5))
(define T (/ (* 20 9.8) (* 2 (sin (deg->rad th)))))
(define hx (* 110 (cos (deg->rad th))))
(define sy (+ 40 (* 110 (sin (deg->rad th)))))
(line 20 40 300 40 'ink 3)
(line (- 160 hx) 40 160 sy 'ink 1.5)
(line (+ 160 hx) 40 160 sy 'ink 1.5)
(rect 130 sy 60 30 'paper)
(frame 130 sy 60 30 'ink 2)
(label 160 (+ sy 20) "20 kg")
(line 160 sy 200 sy 'ink 1)
(angle-mark 160 sy 30 0 th)
(text 300 28 (string-append "T = " (fmt T 0) " N each") 'right 'small 'bold)
(caption "The weight is 196 N")
```

```check
(number
  (ask "Set the cables to 30°. What is the tension in each? Round to the nearest newton.")
  (answer 196) (within 0.6) (unit "N") (from "20 * 9.8 / (2 * sin(30 * pi / 180))")
  (wrong-if 98 "That shares the weight between the cables as if they were upright. At 30°, each holds up only T sin(30°), so T must be larger.")
  (hint "2 T sin(30°) = 196.")
  (hint "sin(30°) = 0.5."))
```

```check
(choice
  (ask "What happens to the tension as the cables get flatter?")
  (right "It grows very large, because only a small part of each pull is upward")
  (wrong "It shrinks, because the cables hang more loosely"
    "Flatter cables point mostly sideways. To hold up the same weight, they must pull harder: T = m g / (2 sin(theta)).")
  (wrong "It stays the same, because the weight is the same"
    "The weight is the same, but the upward part of each pull, T sin(theta), must supply it.")
  (hint "Try 10° with the slider."))
```

---

## Stopping with friction

A car at 25 m/s skids to a stop with its wheels locked, on a level road with $mu_k = 0.7$. The only force along the road is kinetic friction, $mu_k m g$, so $a = mu_k g$, against the motion. The mass cancels.

```check
(number
  (ask "How far does the car skid before stopping? Round to the nearest tenth of a meter.")
  (answer 45.6) (within 0.06) (unit "m") (from "25^2 / (2 * 0.7 * 9.8)")
  (wrong-if 91.1 "You left out the 2 in v^2 = 2 a d.")
  (wrong-if 3.6 "That is the stopping time in seconds, 25 / 6.86. The question asks for a distance.")
  (hint "a = 0.7 x 9.8 = 6.86 m/s².")
  (hint "d = 25² / (2 x 6.86)."))
```

---

## A box held on a ramp

A rope parallel to a smooth 30° ramp holds a 12 kg box still.

```check
(number
  (ask "What is the tension in the rope? Round to the nearest tenth.")
  (answer 58.8) (within 0.06) (unit "N") (from "12 * 9.8 * sin(30 * pi / 180)")
  (wrong-if 117.6 "That is the box's whole weight. Along the slope the rope only balances m g sin(30°).")
  (wrong-if 101.8 "That is m g cos(30°), the part pressing into the ramp. The rope is along the slope.")
  (hint "Along the slope: T = m g sin(theta)."))
```

---

## Practice

```check
(number
  (ask "A 3 kg book is pushed across a table at a steady speed with 9 N. What is mu_k between the book and the table? Round to the nearest hundredth.")
  (answer 0.31) (within 0.006) (from "9 / (3 * 9.8)")
  (wrong-if 3 "That divides 9 by the mass. mu_k = f_k / F_N, with F_N = m g = 29.4 N.")
  (hint "Steady speed: friction = 9 N.")
  (hint "mu_k = 9 / 29.4."))
```

```check
(number
  (ask "A 500 kg elevator speeds up upward at 0.6 m/s². What is the tension in its cable?")
  (answer 5200) (unit "N") (from "500 * (9.8 + 0.6)")
  (wrong-if 4900 "That is the weight alone. Speeding up upward needs m a = 300 N more.")
  (hint "T = m (g + a)."))
```

```check
(number
  (ask "A 0.5 kg ball hangs at rest from a spring with k = 49 N/m. How far is the spring stretched?")
  (answer 0.1) (within 0.001) (unit "m") (from "0.5 * 9.8 / 49")
  (wrong-if 0.0102 "That divides the mass by k. The spring holds the weight, m g = 4.9 N.")
  (hint "k x = m g."))
```

---

So every force problem follows one path: choose the object, draw its free-body diagram, write Newton's second law along well-chosen axes, solve, and check.
