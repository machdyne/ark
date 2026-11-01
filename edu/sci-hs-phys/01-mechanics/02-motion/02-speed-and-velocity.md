# Speed and velocity

```lesson
(objective "Compute average speed and average velocity, and tell them apart by direction.")
(standards "HSN-Q.A.1" "HSA-CED.A.4")
(minutes 25)
(keywords "average speed" "velocity" "average velocity")
```

You can say how fast something moves on average, and which way, from a distance or a displacement and a time.

The **average speed** of a trip is the distance traveled divided by the time it took:

$$ s = d / t $$

Here $s$ is the average speed, $d$ the distance and $t$ the time. A cyclist rides 120 m in 15 s. Her average speed is 120 m / 15 s = 8 m/s. That is about 18 mph.

```check
(number
  (ask "A train travels 600 m in 40 s. What is its average speed?")
  (answer 15) (unit "m/s") (from "600 / 40")
  (wrong-if 24000 "That multiplies distance and time. Speed is distance divided by time: meters per second.")
  (wrong-if 0.067 "That is time divided by distance. Speed is meters per second, so the distance goes on top.")
  (hint "Divide the distance by the time."))
```

---

## Velocity

Speed says how fast. **Velocity** says how fast and in which direction. On a line, the sign gives the direction: +5 m/s to the right, -5 m/s to the left.

Two cars both doing 20 m/s on the same road, one each way, have the same speed but different velocities: +20 m/s and -20 m/s.

The dots show where each cart is every second.

```figure
(define v (slider 'v -4 4 3 "Velocity (m/s)" 1))
(number-line 20 300 170 -16 16 1 4)
(for-range 0 5 (lambda (t) (circle (nl-x (* v t)) (- 170 (* 14 (+ t 1))) 4 (if (= t 4) 'warm 'ink))
  (text 14 (- 166 (* 14 (+ t 1))) (string-append (fmt t 0) " s") 'tiny)))
(text 160 40 (string-append "after 4 s: x = " (fmt (* 4 v) 0) " m") 'centre 'body 'bold)
(caption "One dot a second, each row higher, from x = 0")
```

```check
(choice
  (ask "A ball rolls left at 3 m/s. Taking right as +, what is its velocity?")
  (right "-3 m/s")
  (wrong "+3 m/s"
    "+3 m/s would be rolling to the right. Moving left, the velocity is negative, though the speed is still 3 m/s.")
  (wrong "3 m/s with no sign"
    "With no sign, you have given only the speed. Velocity includes the direction, here the minus sign for left.")
  (hint "Which direction is negative?"))
```

---

## Average velocity

The **average velocity** is the displacement divided by the time:

$$ v = (Delta x)/(Delta t) $$

where $Delta t$ is the time it took. It can be negative, and it can be 0 even when the object moved a lot.

A runner does one lap of a 400 m track in 80 s and stops where she started. Her average speed is 400 m / 80 s = 5 m/s. Her displacement is 0, so her average velocity is 0 m/s.

```check
(number
  (ask "A car drives from +50 m to -250 m in 20 s. What is its average velocity?")
  (answer -15) (unit "m/s") (from "(-250 - 50) / 20")
  (wrong-if 15 "15 m/s is the speed. The car ends to the left of where it started, so its velocity is negative.")
  (wrong-if -10 "That divides -250 + 50 = -200 by 20. The displacement is -250 - 50 = -300 m.")
  (hint "First find the displacement: end minus start.")
  (hint "-300 m in 20 s."))
```

---

## Speed and velocity differ when you turn back

When an object moves in one direction only, its average speed is the size of its average velocity. When it turns back, the distance is larger than the displacement, so the average speed is larger.

```check
(choice
  (ask "A dog runs 30 m out and 30 m back in 12 s. Which is true?")
  (right "Average speed 5 m/s, average velocity 0 m/s")
  (wrong "Average speed 0 m/s, average velocity 5 m/s"
    "That is the wrong way round. Speed uses the distance, 60 m. Velocity uses the displacement, 0 m.")
  (wrong "Both are 5 m/s"
    "The dog ends where it began, so its displacement is 0, and so is its average velocity.")
  (hint "What is the dog's displacement?"))
```

---

## Solving for time or distance

You can rearrange $v = (Delta x)/(Delta t)$ to find the others:

$$ Delta x = v Delta t $$

$$ Delta t = (Delta x)/v $$

```example
(example
  (problem "A plane flies at 250 m/s. How long does it take to fly 90 km?")
  (step "Change the distance into meters: 90 km = 90,000 m.")
  (step "Delta t = Delta x / v = 90,000 m / 250 m/s.")
  (step "90,000 / 250 = 360 s.")
  (answer "360 s, which is 6 minutes"))
```

Now you finish one.

```check
(number
  (ask "A boat moves at 12 m/s for 45 s in one direction. How far does it go?")
  (answer 540) (unit "m") (from "12 * 45")
  (wrong-if 3.75 "That divides 45 by 12. Distance is velocity times time.")
  (wrong-if 57 "That adds 12 and 45. Each second the boat goes 12 m, so multiply.")
  (hint "Delta x = v Delta t."))
```

---

## Practice

```check
(number
  (ask "A snail crawls 0.6 m in 4 minutes. What is its average speed in m/s? Give the exact decimal.")
  (answer 0.0025) (unit "m/s") (from "0.6 / (4 * 60)")
  (wrong-if 0.15 "That is meters per minute. Change 4 minutes into 240 seconds first.")
  (hint "4 minutes = 240 s.")
  (hint "0.6 / 240."))
```

```check
(number
  (ask "An elevator goes from the 10th floor, 30 m up, to the ground, 0 m, in 15 s. What is its average velocity, with up as +?")
  (answer -2) (unit "m/s") (from "(0 - 30) / 15")
  (wrong-if 2 "That is the speed. The elevator moves down, which is the negative direction here.")
  (hint "Displacement = 0 m - 30 m."))
```

```check
(number
  (ask "A runner keeps 4 m/s. How long does she take to run 1,000 m?")
  (answer 250) (unit "s") (from "1000 / 4")
  (wrong-if 4000 "That multiplies. Time = distance / velocity.")
  (hint "Delta t = Delta x / v."))
```

---

So average speed is distance over time, while average velocity is displacement over time and carries a sign for the direction.
