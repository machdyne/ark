# Free fall

```lesson
(objective "Describe free fall with g = 9.8 m/s^2 (32 ft/s^2), and compute falling times and speeds.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 25)
(keywords "free fall" "acceleration due to gravity")
```

You can predict how long a dropped object takes to fall and how fast it lands, when the air does not matter.

An object in **free fall** moves under gravity alone, with the effect of the air too small to matter. Near Earth's surface, every object in free fall has the same acceleration, straight down. This is the **acceleration due to gravity**, $g$:

$$ g = 9.8 m/s^2 $$

That is about 32 ft/s². A falling object gains about 9.8 m/s (about 22 mph) of downward velocity every second.

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019), Appendix 1: the standard acceleration of gravity, 9.80665 m/s², declared by the 3rd CGPM (1901)")
(source "OpenStax, Physics (high school), 2020")
```

```check
(number
  (ask "A rock is dropped from rest. Ignoring the air, how fast is it falling after 3 s?")
  (answer 29.4) (within 0.01) (unit "m/s") (from "9.8 * 3")
  (wrong-if 9.8 "9.8 m/s is what it gains in each second. After 3 s it has gained that 3 times.")
  (wrong-if 44.1 "That is how far it falls, 1/2 g t^2. The velocity is g t.")
  (hint "v = g t."))
```

---

## Watching a fall

The ball is dropped from 20 m. The marks show its height every 0.25 s. The gaps grow, because it falls faster and faster.

```figure
(still
  (graph 60 20 120 200 0 1 0 20)
  (line (gx 0) (gy 0) (gx 1) (gy 0) 'ink 2)
  (for-range 0 21 (lambda (k) (line 50 (gy k) (if (= 0 (modulo k 5)) 40 45) (gy k) 'ink 1)))
  (for-range 0 5 (lambda (k) (text 36 (+ (gy (* 5 k)) 4) (* 5 k) 'right 'tiny)))
  (text 20 14 "m" 'small)
  (for-range 0 9 (lambda (k) (let ((y (- 20 (* 4.9 (* 0.25 k) (* 0.25 k)))))
    (line 200 (gy y) 214 (gy y) 'ink 1)
    (if (or (= k 0) (= k 4) (= k 6) (= k 8))
        (text 220 (+ (gy y) 4) (string-append (fmt (* 0.25 k) 1) " s") 'tiny)))))
  (caption "Real time, no air; repeats every 3 s"))
(define t (min 2.02 (mc-mod (seconds) 3)))
(define y (max 0 (- 20 (* 4.9 t t))))
(circle (gx 0.5) (- (gy y) 6) 6 'warm)
(ring (gx 0.5) (- (gy y) 6) 6 'ink 1)
(text 300 120 (string-append (fmt (* 9.8 t) 1) " m/s") 'right 'small 'bold)
```

```check
(choice
  (ask "During the fall, which stays the same?")
  (right "The acceleration, 9.8 m/s² downward")
  (wrong "The velocity"
    "The velocity grows by 9.8 m/s every second; that is why the gaps between the marks grow.")
  (wrong "The distance fallen each second"
    "In each second the ball falls farther than in the one before, because it is moving faster.")
  (hint "Look at how the gaps between the marks change."))
```

---

## Heavy and light objects

Many people expect a heavy object to fall faster than a light one. When the air does not matter, they fall together: the acceleration due to gravity is the same for every mass.

In 1971, astronaut David Scott dropped a hammer and a falcon feather on the Moon, where there is no air. They landed at the same moment. On Earth, the air slows a feather much more than a hammer, which is why the two usually land apart.

```sources
(source "NASA, Apollo 15 Lunar Surface Journal: the hammer and feather drop (1971)")
```

```check
(choice
  (ask "With no air, a 10 kg ball and a 1 kg ball are dropped together from the same height. What happens?")
  (right "They land at the same time")
  (wrong "The 10 kg ball lands first"
    "With no air, every object falls with the same acceleration, g, whatever its mass. So both land together.")
  (wrong "The 1 kg ball lands first"
    "A lighter ball does not fall faster. Without air, both have the same acceleration, 9.8 m/s².")
  (hint "Does g depend on the mass?"))
```

---

## How long a fall takes

Take up as +. An object dropped from rest at height $h$ has $a = -g$, and it reaches the ground when it has fallen $h$:

$$ h = 1/2 g t^2 $$

so

$$ t = sqrt((2 h)/g) $$

and it lands at $v = g t$, downward.

```check
(number
  (ask "A ball is dropped from 20 m. How long does it take to land? Round to the nearest hundredth of a second.")
  (answer 2.02) (within 0.006) (unit "s") (from "sqrt(2 * 20 / 9.8)")
  (wrong-if 4.08 "That is 2h/g without the square root. t^2 = 4.08, so t is its square root.")
  (wrong-if 2.04 "That is h/g. The time is the square root of 2h/g: sqrt(40 / 9.8).")
  (hint "t = sqrt(2h/g).")
  (hint "sqrt(40 / 9.8)."))
```

---

## Thrown straight up

A ball thrown up slows down by 9.8 m/s each second, stops for an instant at the top, then falls. Its acceleration is 9.8 m/s² downward the whole time, even at the top.

A ball thrown up at 19.6 m/s stops after $19.6 / 9.8 = 2$ s.

```check
(number
  (ask "A ball is thrown straight up at 14.7 m/s. How long until it reaches the top?")
  (answer 1.5) (within 0.001) (unit "s") (from "14.7 / 9.8")
  (wrong-if 144.06 "That multiplies. It loses 9.8 m/s each second, so divide 14.7 by 9.8.")
  (hint "At the top its velocity is 0.")
  (hint "0 = 14.7 - 9.8 t."))
```

---

## A worked example

```example
(example
  (problem "A stone is dropped from a 45 m cliff. Ignoring the air, how fast is it going when it lands?")
  (step "Time: t = sqrt(2h/g) = sqrt(90 / 9.8) = 3.03 s.")
  (step "Speed: v = g t = 9.8 x 3.03.")
  (step "Or, with no time: v^2 = 2 g h = 2 x 9.8 x 45 = 882.")
  (answer "About 29.7 m/s (about 66 mph)"))
```

Now you finish one.

```check
(number
  (ask "A key falls from rest from a balcony 4.9 m up. How fast does it land? Round to the nearest tenth.")
  (answer 9.8) (within 0.06) (unit "m/s") (from "sqrt(2 * 9.8 * 4.9)")
  (wrong-if 96.04 "That is v^2. Take the square root.")
  (hint "v^2 = 2 g h.")
  (hint "2 x 9.8 x 4.9 = 96.04."))
```

---

## Practice

```check
(number
  (ask "In feet: a ball is dropped and falls for 2 s, ignoring the air. With g = 32 ft/s², how far does it fall?")
  (answer 64) (unit "ft") (from "0.5 * 32 * 2^2")
  (wrong-if 128 "You left out the 1/2: the distance is 1/2 g t^2.")
  (wrong-if 32 "That is 1/2 x 32 x 2, without squaring the time.")
  (hint "d = 1/2 g t^2."))
```

```check
(choice
  (ask "A ball thrown straight up is at its highest point. What are its velocity and acceleration there?")
  (right "Velocity 0; acceleration 9.8 m/s² downward")
  (wrong "Velocity 0; acceleration 0"
    "If the acceleration were 0 at the top, the ball would stay there. Its velocity keeps changing, from up to down, so g still acts.")
  (wrong "Velocity 9.8 m/s; acceleration 0"
    "At the very top the ball stops for an instant, so its velocity is 0. The acceleration is still g, downward.")
  (hint "Does the ball stay at the top?"))
```

```check
(number
  (ask "A pebble falls from rest for 1.5 s. How far does it fall? Round to the nearest tenth of a meter.")
  (answer 11) (within 0.06) (unit "m") (from "0.5 * 9.8 * 1.5^2")
  (wrong-if 14.7 "That is g t, the velocity in m/s. The distance is 1/2 g t^2.")
  (hint "d = 1/2 g t^2 = 4.9 x 2.25."))
```

---

So in free fall, with the air ignored, everything accelerates downward at g = 9.8 m/s² (32 ft/s²) whatever its mass, and the kinematic equations give the times and speeds.
