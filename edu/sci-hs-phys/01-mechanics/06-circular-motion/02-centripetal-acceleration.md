# Centripetal acceleration

```lesson
(objective "Explain why the velocity changes in a circle, and compute the acceleration toward the center, a = v^2/r.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 25)
(keywords "centripetal acceleration")
```

You can explain why an object going around a circle at a steady speed is still accelerating, and find how much.

In uniform circular motion the speed stays the same, but the direction of motion keeps turning. Velocity is a vector, so a change of direction is a change of velocity, and any change of velocity is an acceleration.

The velocity always points along the circle, at right angles to the radius.

```check
(choice
  (ask "A car drives around a circular track at a steady 20 m/s. Is it accelerating?")
  (right "Yes: its direction, and so its velocity, keeps changing")
  (wrong "No: its speed is steady"
    "Acceleration is any change in velocity, and velocity includes direction. Turning is accelerating.")
  (hint "Is the velocity, with its direction, the same from moment to moment?"))
```

---

## Which way is the acceleration?

Take the velocity at two nearby points on the circle and put them tail to tail. The change between them, $Delta v$, points toward the center of the circle. So the acceleration points toward the center.

```figure
(define d (slider 'd 10 60 40 "Angle apart (°)" 10))
(ring 110 120 70 'ink 1)
(circle 110 120 3 'ink)
(mc-vec 110 50 50 180 'ink "v1")
(define a (deg->rad (+ 90 d)))
(define px (+ 110 (* 70 (cos a))))
(define py (- 120 (* 70 (sin a))))
(mc-vec px py 50 (+ 180 d) 'ink "v2")
(mc-vec 270 60 50 180 'ink)
(mc-vec 270 60 50 (+ 180 d) 'ink)
(arrow 220 60 (- 270 (* 50 (cos (deg->rad d)))) (+ 60 (* 50 (sin (deg->rad d)))) 'cool 1.5)
(text 200 36 "tails together" 'small)
(text 196 150 "the change points" 'small)
(text 196 166 "toward the center" 'small)
(caption "Dashed: the change in velocity")
```

That inward acceleration is called **centripetal acceleration**, from Latin words for "seeking the center".

```check
(choice
  (ask "An object moves counter-clockwise around a circle at a steady speed. At the top of the circle, which way is its acceleration?")
  (right "Straight down, toward the center")
  (wrong "To the left, along its motion"
    "Along the motion is the velocity's direction. At a steady speed there is no acceleration along the path, only toward the center.")
  (wrong "Straight up, away from the center"
    "The change in velocity points inward, so the acceleration points toward the center, not away from it.")
  (hint "Centripetal means toward the center."))
```

---

## How large?

The centripetal acceleration of an object moving at speed $v$ on a circle of radius $r$ is

$$ a_c = v^2 / r $$

Faster means much more acceleration, because of the square; a tighter circle means more too. Watch the arrows: $v$ along the circle, $a$ toward the center.

```figure
(define T (slider 'T 2 6 4 "Period T (s)" 0.5))
(define v (/ (* 2 pi 2) T))
(define ac (/ (* v v) 2))
(still
  (ring 110 120 80 'ink 1)
  (circle 110 120 3 'ink)
  (text 210 40 (string-append "v = " (fmt v 2) " m/s") 'small)
  (text 210 62 (string-append "a = " (fmt ac 2) " m/s²") 'small 'bold)
  (caption "Real time; radius 2 m; arrows to scale"))
(mc-round 110 120 80 (* 360 (/ (mc-mod (seconds) T) T)) (* 12 v) (* 4 ac) 'warm)
```

```check
(number
  (ask "A runner goes around a curve of radius 25 m at 5 m/s. What is her centripetal acceleration?")
  (answer 1) (unit "m/s²") (from "5^2 / 25")
  (wrong-if 0.2 "That is v / r. The speed is squared: a_c = v^2 / r.")
  (wrong-if 125 "That multiplies by r. a_c = v^2 / r.")
  (hint "a_c = v^2 / r."))
```

---

## A worked example

```example
(example
  (problem "A car takes a curve of radius 50 m at 20 m/s (about 45 mph). Find its centripetal acceleration.")
  (step "a_c = v^2 / r = 20^2 / 50.")
  (step "= 400 / 50 = 8 m/s².")
  (step "Compare with g: 8 / 9.8 is about 0.8 g.")
  (answer "8 m/s² toward the center of the curve"))
```

Now you finish one.

```check
(number
  (ask "The same car takes the same curve at 10 m/s. What is its centripetal acceleration now?")
  (answer 2) (unit "m/s²") (from "10^2 / 50")
  (wrong-if 4 "Half the speed is not half the acceleration. The speed is squared: (1/2)² = 1/4 of 8 m/s².")
  (hint "a_c = 100 / 50."))
```

---

## Practice

```check
(choice
  (ask "An object's speed on the same circle doubles. What happens to its centripetal acceleration?")
  (right "It becomes 4 times as large")
  (wrong "It doubles"
    "a_c = v^2 / r: the speed is squared. Double the speed, 4 times the acceleration.")
  (wrong "It stays the same"
    "A faster object turns its velocity more quickly, so its acceleration grows.")
  (hint "v is squared."))
```

```check
(number
  (ask "A point on a spinning wheel has speed 6 m/s on a circle of radius 0.4 m. What is its centripetal acceleration?")
  (answer 90) (unit "m/s²") (from "6^2 / 0.4")
  (wrong-if 15 "That is v / r. Square the speed first: 36 / 0.4.")
  (hint "36 / 0.4."))
```

```check
(number
  (ask "A stone on a string of radius 1.5 m goes around once every 2 s. What is its centripetal acceleration? Round to the nearest tenth.")
  (answer 14.8) (within 0.06) (unit "m/s²") (from "(2 * pi * 1.5 / 2)^2 / 1.5")
  (wrong-if 4.7 "That is its speed, 2 pi r / T. Now use a_c = v^2 / r.")
  (hint "First v = 2 pi x 1.5 / 2 = 4.71 m/s.")
  (hint "a_c = 4.71² / 1.5."))
```

---

So in uniform circular motion the velocity keeps turning, which is an acceleration toward the center, the centripetal acceleration $a_c = v^2 / r$.
