# Orbits

```lesson
(objective "Explain an orbit as falling around a planet, and compute a circular orbit's speed and period.")
(standards "HS-PS2-4" "HS-ESS1-4")
(minutes 30)
(keywords "orbit" "satellite")
```

You can explain why the Moon and the space station do not fall down, and compute how fast they must go.

Newton imagined a cannon on a very tall mountain, firing balls sideways. A slow ball falls to the ground nearby. A faster one lands farther away. Earth's surface curves away below a fast enough ball as quickly as the ball falls, so it falls all the way around and never lands.

Move the slider to change the launch speed. The paths follow Newton's law of gravitation exactly, ignoring the air.

```figure
(define v (slider 'v 1 8 6 "Launch (km/s)" 0.5))
(define u (/ (* v v) 54.3))
(define p (* 69 u))
(define e (- u 1))
(define (rr f) (/ p (+ 1 (* e (cos f)))))
(mc-planet 160 130 60 "Earth")
(poly '(154 72 166 72 160 61) 'ink)
(define pts
  (let loop ((i 0) (acc '()))
    (if (> i 60) acc
        (let* ((f (* i (/ (* 2 pi) 60))) (r (rr f))
               (acc2 (cons (+ 160 (* r (sin f))) (cons (- 130 (* r (cos f))) acc))))
          (if (< r 60) acc2 (loop (+ i 1) acc2))))))
(path pts 'ink 1.5)
(text 10 20 (if (< v 7.4) "falls back to Earth" "goes all the way around") 'small 'bold)
(caption "Mountain drawn about 950 km tall so the paths show")
```

```check
(choice
  (ask "Set the speed to 7.5 km/s. Why doesn't the ball hit the ground?")
  (right "It falls the whole time, but the ground curves away beneath it as fast as it falls")
  (wrong "Gravity does not reach it up there"
    "Gravity pulls it the whole way round; it is what bends the path into a circle. Without gravity it would fly off in a straight line.")
  (wrong "It is too fast for gravity to pull on it"
    "Gravity pulls on it at any speed. A fast enough ball still falls, but it moves sideways far enough that it keeps missing Earth.")
  (hint "Is the ball's path bending toward Earth?"))
```

---

## Orbits and satellites

The path of an object that falls around a planet or star under its gravity is an **orbit**. An object in orbit around a larger one is a **satellite**. The Moon is Earth's natural satellite; the International Space Station is a satellite people built.

```check
(choice
  (several)
  (ask "Which of these are satellites? Choose all that are.")
  (right "The Moon, going around Earth")
  (right "A weather satellite going around Earth")
  (wrong "A ball thrown across a field, which lands"
    "It falls back to the ground instead of going around Earth, so it is not in orbit.")
  (wrong "Earth's surface"
    "The ground turns with Earth, but it is part of the planet, not an object falling around it.")
  (hint "Does it fall around a larger body without landing?"))
```

---

## The speed of a circular orbit

For a circular orbit of radius $r$, gravity is the centripetal force:

$$ G M m / r^2 = m v^2 / r $$

The satellite's mass $m$ cancels, so every satellite at that radius has the same speed:

$$ v = sqrt(G M / r) $$

A higher orbit has a larger $r$, so a lower speed. Its period is the circumference over the speed, $T = 2 pi r / v$.

```check
(number
  (ask "The International Space Station orbits about 6.77 x 10^6 m from Earth's center. What is its speed, in km/s? Round to the nearest tenth.")
  (answer 7.7) (within 0.06) (unit "km/s") (from "sqrt(6.67 * 10^-11 * 5.97 * 10^24 / (6.77 * 10^6)) / 1000")
  (wrong-if 58.8 "That is v squared in units of 10^6 m²/s². Take the square root of G M / r.")
  (hint "G M = 6.67 x 10^-11 x 5.97 x 10^24 = 3.98 x 10^14.")
  (hint "v = sqrt(3.98 x 10^14 / 6.77 x 10^6)."))
```

---

## Watch an orbit

Change the orbit's height above Earth's surface. The satellite is shown sped up, so that each orbit takes 6 s.

```figure
(define hk (slider 'hk 200 6000 400 "Height (km)" 200))
(define r (+ 6370 hk))
(define vs (sqrt (/ 398200 r)))
(define T (/ (* 2 pi r) vs))
(define rs (* 54 (/ r 6370)))
(still
  (mc-planet 160 120 54 "Earth")
  (ring 160 120 rs 'grey 1)
  (text 10 20 (string-append "v = " (fmt vs 2) " km/s") 'small 'bold)
  (text 10 38 (string-append "T = " (fmt (/ T 60) 0) " min") 'small 'bold)
  (caption (string-append "Sped up about " (fmt (/ T 6) 0) " times")))
(mc-round 160 120 rs (* 60 (seconds)) 0 0 'warm)
```

```check
(choice
  (ask "Raise the orbit. What happens to the satellite's speed and period?")
  (right "Its speed falls and its period grows")
  (wrong "Its speed grows, because it is higher"
    "Gravity is weaker farther out, so less speed is needed to stay in a circle: v = sqrt(G M / r).")
  (wrong "Both stay the same"
    "Both depend on r. Farther out means slower, and a longer path, so a longer period.")
  (hint "Read v and T as you move the slider."))
```

---

## A worked example

```example
(example
  (problem "Find the period of the International Space Station, 6.77 x 10^6 m from Earth's center, moving at 7.67 km/s.")
  (step "Circumference: 2 pi r = 2 x 3.14 x 6.77 x 10^6 = 4.25 x 10^7 m.")
  (step "T = 4.25 x 10^7 m / 7,670 m/s = 5,540 s.")
  (step "5,540 s / 60 = 92 minutes.")
  (answer "About 92 minutes: about 16 orbits a day"))
```

```sources
(source "NASA, International Space Station facts and figures: altitude about 400 km; it circles Earth about every 90 minutes")
```

Now you finish one.

```check
(number
  (ask "The Moon's orbit has radius 3.84 x 10^8 m, and its speed is about 1,020 m/s. What is its period in days? Round to the nearest tenth.")
  (answer 27.4) (within 0.06) (unit "days") (from "2 * pi * 3.84 * 10^8 / 1020 / 86400")
  (wrong-if 4.4 "That leaves out the 2 pi: the distance in one orbit is the circumference, 2 pi r.")
  (hint "T = 2 pi r / v, in seconds.")
  (hint "Then divide by 86,400 s per day."))
```

---

## Practice

```check
(choice
  (ask "A large satellite and a small one share the same circular orbit. Which moves faster?")
  (right "They move at the same speed")
  (wrong "The large one"
    "The satellite's mass cancels in G M m / r^2 = m v^2 / r, so v = sqrt(G M / r) for both.")
  (wrong "The small one"
    "Being light does not change the needed speed. v depends only on the planet's mass and the radius.")
  (hint "Does the satellite's mass appear in v = sqrt(G M / r)?"))
```

```check
(number
  (ask "A satellite orbits 4.22 x 10^7 m from Earth's center. What is its speed, in km/s? Round to the nearest hundredth.")
  (answer 3.07) (within 0.006) (unit "km/s") (from "sqrt(6.67 * 10^-11 * 5.97 * 10^24 / (4.22 * 10^7)) / 1000")
  (wrong-if 9.43 "That is v squared, in units of 10^6 m²/s². Take the square root.")
  (hint "v = sqrt(3.98 x 10^14 / 4.22 x 10^7)."))
```

```check
(choice
  (ask "What would happen to the Moon if Earth's gravity suddenly vanished?")
  (right "It would move off in a straight line along its path's tangent")
  (wrong "It would stay where it is"
    "The Moon is moving at about 1 km/s. With no force, it keeps that velocity in a straight line.")
  (wrong "It would fly straight away from Earth"
    "No outward force acts. It would continue in the direction it was moving at that instant, along the tangent.")
  (hint "Newton's first law."))
```

---

So an orbit is a fall that keeps missing the planet: in a circular orbit, gravity is the centripetal force, giving $v = sqrt(G M / r)$ and $T = 2 pi r / v$, the same for any satellite's mass.
