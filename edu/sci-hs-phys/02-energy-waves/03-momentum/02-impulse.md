# Impulse

```lesson
(objective "Use impulse, F Delta t = Delta p, to relate a force and its time to a change in momentum.")
(standards "HS-PS2-2" "HSA-CED.A.4")
(minutes 25)
(keywords "impulse")
```

You learn how a force acting for a time changes an object's momentum.

Newton's second law says $F = m a$, and acceleration is the change in
velocity over the time, $a = Delta v / Delta t$. So

$$ F Delta t = m Delta v = Delta p $$

A force times the time it acts is the **impulse** it gives. The impulse
equals the change in momentum it causes. Impulse is measured in newton
seconds, N s, which is the same as kg m/s.

```sources
(source "OpenStax, College Physics 2e (2022), section 8.2, Impulse")
```

```check
(number
  (ask "A bat pushes on a ball with an average force of 50 N for 0.20 s. What impulse does it give the ball, in N s?")
  (answer 10) (unit "N s") (from "50 * 0.20")
  (wrong-if 250 "That is 50 / 0.20. Impulse is force times time.")
  (hint "Impulse = F Delta t."))
```

---

## The area under a force-time graph

On a graph of force against time, the impulse is the area under the
line. Here a steady net force pushes a 2.0 kg cart from rest. Change
the force and the time it acts.

```figure
(define F (slider 'F 0 20 10 "Force (N)" 2))
(define dt (slider 'dt 0 2 1 "Time (s)" 0.25))
(define J (* F dt))
(graph 60 30 220 140 0 2.5 0 25)
(graph-axes 0.5 5 "t (s)" "F (N)")
(if (and (> J 0)) (rect (gx 0) (gy F) (- (gx dt) (gx 0)) (- (gy 0) (gy F)) 'warm))
(if (> F 0) (path (list (gx 0) (gy F) (gx dt) (gy F) (gx dt) (gy 0)) 'ink 2))
(text 160 210 (string-append "impulse = " (fmt J 1) " N s") 'centre 'small 'bold)
(text 160 228 (string-append "2.0 kg cart from rest: v = " (fmt (/ J 2) 1) " m/s") 'centre 'small)
```

```check
(number
  (ask "A net force of 8.0 N acts on the 2.0 kg cart, at rest, for 1.5 s. How fast is it then moving, in m/s?")
  (answer 6) (unit "m/s") (from "8.0 * 1.5 / 2.0")
  (wrong-if 12 "12 N s is the impulse, which is the change in momentum. Divide by the mass to get the change in velocity.")
  (wrong-if 24 "That multiplies by the mass. Delta v = impulse / m.")
  (hint "Impulse = 8.0 * 1.5 = 12 N s = Delta p.")
  (hint "Delta v = 12 / 2.0."))
```

---

## A bounce takes more impulse

Momentum is a vector, so its change must count direction. A ball that
hits a wall at 5 m/s and stops has $Delta p = -m * 5$. A ball that
bounces straight back at 5 m/s goes from $+5$ to $-5$:
$Delta p = -m * 10$. The bounce takes twice the impulse.

```check
(number
  (ask "A 0.50 kg ball hits a wall at +6.0 m/s and bounces straight back at -6.0 m/s. What is its change in momentum, in kg m/s? Give the sign.")
  (answer -6) (unit "kg m/s") (from "0.50 * (-6.0) - 0.50 * 6.0")
  (wrong-if 0 "The speed is the same, but the direction reversed. Momentum went from +3.0 to -3.0 kg m/s.")
  (wrong-if -3 "That is the change for a ball that stops. A bounce goes on to -3.0, so the change is -3.0 - 3.0.")
  (hint "Delta p = p_after - p_before.")
  (hint "p_before = +3.0, p_after = -3.0."))
```

---

## Worked example

```example
(example
  (problem "A 0.058 kg tennis ball leaves the racket at 50 m/s after being in contact for 0.0050 s. It started almost at rest. What average force did the racket exert?")
  (step "Delta p = 0.058 * 50 - 0 = 2.9 kg m/s.")
  (step "F = Delta p / Delta t = 2.9 / 0.0050 = 580 N.")
  (answer "about 580 N, about 130 lb"))
```

```example
(example
  (problem "A 1,000 kg car speeds up from 10 m/s to 20 m/s in 5.0 s. What is the average net force on it?")
  (step "Delta p = 1,000 * 20 - 1,000 * 10 = 10,000 kg m/s.")
  (step (number (ask "F, in newtons?") (answer 2000) (unit "N") (from "10000 / 5.0")
    (wrong-if 50000 "That multiplies by the time. F = Delta p / Delta t.")
    (hint "10,000 / 5.0.")))
  (answer "2,000 N"))
```

---

## Practice

```check
(number
  (ask "A 0.45 kg soccer ball at rest is kicked with an average force of 900 N for 0.010 s. How fast does it leave the foot, in m/s?")
  (answer 20) (unit "m/s") (from "900 * 0.010 / 0.45")
  (wrong-if 9 "9 N s is the impulse. The ball's speed is impulse divided by its mass.")
  (hint "Impulse = 900 * 0.010 = 9.0 N s.")
  (hint "v = 9.0 / 0.45."))
```

```check
(choice
  (ask "Two forces give a cart the same impulse. Force A is 100 N. Force B is 10 N. What else must be true?")
  (right "Force B acts 10 times as long" (true "10 * 10 = 100 * 1"))
  (wrong "Force B changes the momentum less"
    "The same impulse means the same change in momentum. A smaller force simply has to act for longer.")
  (wrong "Force A acts 10 times as long"
    "F Delta t is the same for both. The bigger force needs the shorter time, not the longer one.")
  (hint "F Delta t is the same for both."))
```

So: impulse is force times time, $F Delta t$, and it equals the change
in momentum, $Delta p$.
