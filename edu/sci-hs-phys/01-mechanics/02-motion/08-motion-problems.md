# Motion problems

```lesson
(objective "Solve motion problems with several steps, using graphs and equations, and check the units and the size of the answer.")
(standards "HSN-Q.A.1" "HSA-CED.A.4")
(minutes 30)
```

You can solve a motion problem in parts, one stage at a time, and check that the answer makes sense.

A good plan for any motion problem:

1. Sketch it: choose a reference point and which way is +.
2. Split the motion into stages where the acceleration is constant.
3. For each stage, list what you know and what you want, and choose an equation.
4. Check the units, the sign and the size of the answer.

```check
(choice
  (ask "A car drives at a steady speed, then brakes to a stop. Why treat it as two stages?")
  (right "The acceleration changes when braking starts, and each equation needs a constant acceleration")
  (wrong "Because the car moves in two directions"
    "The car moves forward the whole time. The stages differ in acceleration: 0, then negative.")
  (wrong "There is no reason; one equation covers the whole trip"
    "The kinematic equations hold only while the acceleration is constant. Here it changes, so each part needs its own equation.")
  (hint "What do the kinematic equations assume?"))
```

---

## Reading a graph in stages

A cart's velocity-time graph has three stages.

```figure
(graph 50 30 250 150 0 14 0 10)
(poly (list (gx 0) (gy 0) (gx 4) (gy 8) (gx 10) (gy 8) (gx 14) (gy 0)) 'cool)
(graph-axes 2 2 "t (s)" "v (m/s)")
(path (list (gx 0) (gy 0) (gx 4) (gy 8) (gx 10) (gy 8) (gx 14) (gy 0)) 'ink 2)
(label (gx 2) (gy 2) "A")
(label (gx 7) (gy 4) "B")
(label (gx 12) (gy 2) "C")
(caption "Area under the line = displacement")
```

In A it speeds up from 0 to 8 m/s in 4 s. In B it keeps 8 m/s for 6 s. In C it slows to 0 in 4 s.

```check
(number
  (ask "What is the cart's acceleration in stage A?")
  (answer 2) (unit "m/s²") (from "8 / 4")
  (wrong-if 32 "Acceleration is the slope: the change in velocity divided by the time, 8 / 4.")
  (hint "Slope = rise / run."))
```

```check
(number
  (ask "What is the cart's total displacement, from 0 s to 14 s?")
  (answer 80) (unit "m") (from "0.5 * 4 * 8 + 6 * 8 + 0.5 * 4 * 8")
  (wrong-if 112 "That is 14 s x 8 m/s, as if the cart went 8 m/s the whole time. In A and C the areas are triangles.")
  (wrong-if 48 "That is only stage B. Add the triangles of A and C, 16 m each.")
  (hint "Find the area of each stage and add them.")
  (hint "Triangle 16 m, rectangle 48 m, triangle 16 m."))
```

---

## Stopping a car

A driver at 15 m/s sees a hazard. It takes her 1.5 s to react, while the car keeps going at 15 m/s. Then she brakes at -6 m/s².

```example
(example
  (problem "How far does the car go from the moment she sees the hazard until it stops?")
  (step "Stage 1, steady: d_1 = v t = 15 m/s x 1.5 s = 22.5 m.")
  (step "Stage 2, braking: 0 = 15^2 + 2(-6) d_2, so d_2 = 225 / 12 = 18.75 m.")
  (step "Total: 22.5 m + 18.75 m = 41.25 m.")
  (step "Check: the unit is meters, the distance is positive, and 41 m is about 9 car lengths: a sensible size.")
  (answer "About 41 m"))
```

```check
(number
  (ask "On the same road the driver is tired, and her reaction time is 2.5 s. How far does the car go now? Round to the nearest tenth.")
  (answer 56.25) (within 0.06) (unit "m") (from "15 * 2.5 + 15^2 / 12")
  (wrong-if 37.5 "That is only the reaction distance. Add the braking distance, which is still 18.75 m.")
  (wrong-if 41.25 "That uses the old reaction time, 1.5 s. Now she travels 15 m/s x 2.5 s before braking.")
  (hint "Reaction distance: 15 x 2.5.")
  (hint "Add the braking distance, 18.75 m."))
```

---

## Up and down

A ball is thrown straight up at 12 m/s. Take up as +, so $a = -9.8$ m/s².

At the top, $v = 0$. With no time given, use $v^2 = v_0^2 + 2 a (y - y_0)$:

$$ 0 = 12^2 - 2 * 9.8 * h $$

```check
(number
  (ask "How high does the ball rise? Round to the nearest hundredth of a meter.")
  (answer 7.35) (within 0.006) (unit "m") (from "12^2 / (2 * 9.8)")
  (wrong-if 1.22 "That is 12 / 9.8, the time to reach the top in seconds, not the height.")
  (wrong-if 14.69 "That is 144 / 9.8. You left out the 2 in 2 a (y - y_0).")
  (hint "h = v_0^2 / (2g).")
  (hint "144 / 19.6."))
```

---

## Checking the size

Before you trust an answer, ask whether it is about the right size, with the right units and sign.

```check
(choice
  (ask "A student finds that a ball dropped from a 2 m shelf takes 20 s to land. What should she do?")
  (right "Recheck her steps: a 2 m drop takes well under 1 s")
  (wrong "Accept it, because the units are seconds"
    "Right units are not enough. From everyday life, a ball dropped from a shelf lands in a moment: sqrt(2 x 2 / 9.8) is about 0.64 s.")
  (wrong "Round it to 2 significant figures"
    "Rounding does not fix a wrong answer. Something went wrong in the steps, perhaps a missing square root.")
  (hint "How long does it take a dropped ball to hit the floor in real life?"))
```

---

## Practice

```check
(number
  (ask "A bus at 20 m/s brakes at -4 m/s². How far does it go while stopping?")
  (answer 50) (unit "m") (from "20^2 / (2 * 4)")
  (wrong-if 5 "5 s is the time to stop, from 20 / 4. The question asks for a distance.")
  (wrong-if 100 "You left out the 2: d = v_0^2 / (2a) = 400 / 8.")
  (hint "0 = 20^2 + 2(-4)d."))
```

```check
(number
  (ask "A sprinter speeds up from rest at 4 m/s² for 2.5 s, then runs at a steady speed for 8 s. How far does she run in all?")
  (answer 92.5) (within 0.01) (unit "m") (from "0.5 * 4 * 2.5^2 + 4 * 2.5 * 8")
  (wrong-if 80 "80 m is only the steady part. Add the 12.5 m she ran while speeding up.")
  (wrong-if 12.5 "12.5 m is only the first stage. Her speed after it is 4 x 2.5 = 10 m/s, kept for 8 s.")
  (hint "Stage 1: 1/2 a t^2. Her speed then is a t.")
  (hint "Stage 2: 10 m/s x 8 s."))
```

```check
(number
  (ask "For that sprinter, 92.5 m in 10.5 s, what is her average velocity? Round to the nearest tenth.")
  (answer 8.8) (within 0.06) (unit "m/s") (from "92.5 / 10.5")
  (wrong-if 10 "10 m/s is her top speed. The average includes the start, when she was slower.")
  (wrong-if 5 "That is the average of 0 and 10 m/s, which holds only in stage 1. Use total displacement over total time.")
  (hint "Total displacement / total time."))
```

---

So a motion problem is solved in stages of constant acceleration, each with its own equation, and every answer is checked for its units, sign and size.
