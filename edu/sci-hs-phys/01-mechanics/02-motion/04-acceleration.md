# Acceleration

```lesson
(objective "Compute average acceleration as the change in velocity over time, and tell speeding up from slowing down by the signs.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 25)
(keywords "acceleration")
```

You can measure how quickly a velocity changes, and tell from the signs whether an object speeds up or slows down.

**Acceleration** is the rate at which velocity changes: the change in velocity divided by the time it took.

$$ a = (Delta v)/(Delta t) = (v_f - v_i)/(Delta t) $$

Its unit is meters per second, per second: m/s². A car that goes from 0 to 27 m/s (about 60 mph) in 9 s has an average acceleration of 27 / 9 = 3 m/s²: it gains 3 m/s every second.

```check
(number
  (ask "A bike goes from 2 m/s to 10 m/s in 4 s. What is its average acceleration?")
  (answer 2) (unit "m/s²") (from "(10 - 2) / 4")
  (wrong-if 2.5 "That divides the final velocity, 10 m/s, by the time. Acceleration uses the change in velocity: 10 - 2 = 8 m/s.")
  (wrong-if 32 "That multiplies the change by the time. Acceleration is the change divided by the time.")
  (hint "First find the change in velocity.")
  (hint "8 m/s in 4 s."))
```

---

## Seeing acceleration

The dots show where a cart is every second. It starts at 0 moving at +4 m/s. Move the acceleration slider and watch the spacing.

```figure
(define a (slider 'a -2 2 1 "a (m/s²)" 0.5))
(number-line 20 300 190 0 32 1 4)
(for-range 0 5
  (lambda (t)
    (let ((x (+ (* 4 t) (* 0.5 a t t))) (y (- 190 (* 26 (+ t 1)))))
      (circle (nl-x x) y 4 'ink)
      (text 300 (+ y 4) (string-append (fmt t 0) " s: " (fmt (+ 4 (* a t)) 1) " m/s") 'right 'tiny))))
(caption "x in meters; one dot a second")
```

When the gaps grow, the cart speeds up; when they shrink, it slows down; equal gaps mean a steady velocity.

```check
(choice
  (ask "Set the acceleration to -1 m/s². What happens to the cart?")
  (right "It keeps moving in the + direction but slows down")
  (wrong "It moves in the - direction"
    "The cart still moves to the right: its velocity is still positive, 4, 3, 2, 1, 0 m/s. The negative acceleration only makes it slow down.")
  (wrong "It speeds up"
    "The gaps between the dots shrink, so it covers less distance each second: it is slowing down.")
  (hint "Look at the velocities at the right of each row."))
```

---

## Signs: speeding up or slowing down

The sign of an acceleration is a direction, not "faster" or "slower". Compare it with the velocity's sign:

| velocity | acceleration | the object |
|---|---|---|
| + | + | speeds up |
| - | - | speeds up |
| + | - | slows down |
| - | + | slows down |

Same signs: speeding up. Opposite signs: slowing down.

```check
(choice
  (ask "A car moves at -12 m/s, and its acceleration is -2 m/s². What is it doing?")
  (right "Speeding up in the - direction")
  (wrong "Slowing down, because the acceleration is negative"
    "A negative acceleration does not always mean slowing down. Here the velocity is negative too, so the car gains speed in the - direction.")
  (wrong "Moving at a steady speed"
    "Any acceleration that is not 0 changes the velocity. With the same signs, the speed grows.")
  (hint "Do the velocity and the acceleration have the same sign?"))
```

---

## Slowing down

A cyclist moving at +8 m/s brakes and stops in 4 s.

$$ a = (0 - 8)/4 = -2 $$

So her acceleration is -2 m/s². Each second she loses 2 m/s.

```check
(number
  (ask "A train at +30 m/s brakes to a stop in 60 s. What is its average acceleration?")
  (answer -0.5) (unit "m/s²") (from "(0 - 30) / 60")
  (wrong-if 0.5 "The train slows down while moving in the + direction, so the acceleration is negative.")
  (wrong-if -2 "That divides 60 by 30. Acceleration is the change in velocity, -30 m/s, divided by the time, 60 s.")
  (hint "Final velocity 0, starting velocity 30 m/s.")
  (hint "-30 / 60."))
```

---

## A worked example

```example
(example
  (problem "A ball rolls at -6 m/s. 3 s later it rolls at +3 m/s. Find its average acceleration.")
  (step "Delta v = v_f - v_i = 3 - (-6) = 9 m/s.")
  (step "a = Delta v / Delta t = 9 m/s / 3 s.")
  (step "a = +3 m/s². It slowed down, stopped, then sped up the other way.")
  (answer "+3 m/s²"))
```

Now you finish one.

```check
(number
  (ask "A puck moves at +5 m/s. 2 s later it moves at -3 m/s. What is its average acceleration?")
  (answer -4) (unit "m/s²") (from "(-3 - 5) / 2")
  (wrong-if -1 "That uses -3 + 5 = 2 m/s as the change. The change is final minus start: -3 - 5 = -8 m/s.")
  (wrong-if 4 "The velocity changed from + to -, so the change is negative.")
  (hint "Delta v = -3 - 5.")
  (hint "-8 m/s in 2 s."))
```

---

## Practice

```check
(number
  (ask "A rocket's velocity grows from 0 to 150 m/s in 5 s. What is its average acceleration?")
  (answer 30) (unit "m/s²") (from "150 / 5")
  (wrong-if 750 "Divide the change in velocity by the time; do not multiply.")
  (hint "a = Delta v / Delta t."))
```

```check
(number
  (ask "A car accelerates at 2.5 m/s² from 10 m/s for 4 s. What is its final velocity?")
  (answer 20) (unit "m/s") (from "10 + 2.5 * 4")
  (wrong-if 10 "10 m/s is how much velocity it gains. Add that to the 10 m/s it started with.")
  (hint "Each second it gains 2.5 m/s.")
  (hint "Gain: 2.5 x 4 = 10 m/s."))
```

```check
(choice
  (ask "A ball is momentarily at rest, with velocity 0. Can its acceleration be something other than 0 at that moment?")
  (right "Yes: its velocity can be changing even while it is 0")
  (wrong "No: an object at rest has no acceleration"
    "Acceleration is how fast the velocity changes, not how big it is. A ball thrown up stops at the top for an instant, yet its velocity keeps changing.")
  (hint "Think of a ball thrown straight up, at its highest point."))
```

---

So acceleration is the change in velocity divided by the time, in m/s², and an object speeds up when its velocity and acceleration have the same sign.
