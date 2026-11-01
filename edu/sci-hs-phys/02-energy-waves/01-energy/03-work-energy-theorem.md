# The work-energy theorem

```lesson
(objective "Use the work-energy theorem: the net work on an object equals its change in kinetic energy.")
(standards "HS-PS3-1")
(minutes 25)
(keywords "work-energy theorem")
```

You learn how the work done on an object changes its kinetic energy.

Add up the work that every force on an object does. That total is the
net work, and it is also the work the net force does. The
**work-energy theorem** says the net work equals the change in the
object's kinetic energy. With $W$ for the net work, and $i$ and $f$ for
the first and final values:

$$ W = KE_f - KE_i $$

Positive net work speeds the object up. Negative net work slows it
down. Zero net work leaves its speed the same.

```sources
(source "OpenStax, College Physics 2e (2022), section 7.2, Kinetic Energy and the Work-Energy Theorem")
```

```check
(number
  (ask "A cart has 20 J of kinetic energy. The net force on it then does 50 J of work. What is its kinetic energy now?")
  (answer 70) (unit "J") (from "20 + 50")
  (wrong-if 30 "Positive net work adds energy; it does not take it away. 20 J + 50 J.")
  (wrong-if 50 "The cart already had 20 J. The net work is the change, so it is added to what was there.")
  (hint "KE_f = KE_i + W_net."))
```

---

## A push along a track

A 2.0 kg cart starts at 2.0 m/s, so it has 4 J of kinetic energy. A
steady net force pushes it along the track. Move the sliders and watch
the energy bars and the final speed.

```figure
(define F (slider 'force 0 10 5 "Force (N)" 1))
(define d (slider 'dist 0 5 2 "Distance (m)" 0.5))
(define W (* F d))
(define kf (+ 4 W))
(define vf (sqrt (/ (* 2 kf) 2)))
(wv-surface 10 310 70 #f)
(wv-cart 30 70 50 'grey "2 kg")
(arrow 30 32 (+ 30 (* 4 F)) 32 'ink 2)
(text 30 22 "net force" 'small)
(arrow 80 86 (+ 80 (* 40 d)) 86 'ink 1)
(text 80 100 "d" 'small)
(wv-bars 60 200 90 54 (list (list "KE i" 4 'cool) (list "W" W 'warm) (list "KE f" kf 'cool)))
(text 240 150 "final speed" 'centre 'small)
(text 240 170 (string-append (fmt vf 2) " m/s") 'centre 'body)
(caption "Net work W = F d is added to the kinetic energy.")
```

```check
(number
  (ask "A 2.0 kg cart starts at rest. A net force of 10 N pushes it 5.0 m. How fast is it then moving, to the nearest tenth of a m/s?")
  (answer 7.1) (within 0.05) (unit "m/s") (from "sqrt(2 * 10 * 5.0 / 2.0)")
  (wrong-if 50 "50 J is the kinetic energy it gains. Turn it into a speed: 50 = 1/2 * 2.0 * v^2.")
  (wrong-if 5 "That would give KE = 1/2 * 2.0 * 25 = 25 J. The cart gains 50 J, so v^2 = 50.")
  (hint "W_net = 10 N * 5.0 m = 50 J, and KE_i = 0.")
  (hint "50 = 1/2 * 2.0 * v^2, so v^2 = 50."))
```

---

## Negative net work: stopping

To stop a moving car, the brakes and the road must take away all its
kinetic energy. The friction on the tires points backward, so it does
negative work: $W = -F d$.

So the stopping distance is $d = KE / F$. With the same braking force,
a car going twice as fast has 4 times the kinetic energy, and needs 4
times the distance to stop.

```check
(choice
  (ask "A car stops in 10 m from 30 km/h. With the same braking force, about how far does it need to stop from 60 km/h?")
  (right "40 m" (true "10 * 2^2 = 40"))
  (wrong "20 m"
    "Twice the speed gives 4 times the kinetic energy. The same force must act over 4 times the distance to take it all away.")
  (wrong "10 m"
    "The car has more kinetic energy at 60 km/h. The same braking force needs more distance to remove it.")
  (hint "d = KE / F, and KE grows with v^2."))
```

```sources
(source "OpenStax, College Physics 2e (2022), section 7.2, Kinetic Energy and the Work-Energy Theorem")
```

---

## Worked example

```example
(example
  (problem "A 1,200 kg car moves at 15 m/s. Its brakes give a net backward force of 6,000 N. How far does it travel while stopping?")
  (step "KE_i = 1/2 * 1,200 * 15^2 = 135,000 J, and KE_f = 0.")
  (step "So the net work is W_net = 0 - 135,000 = -135,000 J.")
  (step "W_net = -F d, so d = 135,000 / 6,000 = 22.5 m.")
  (answer "22.5 m (about 74 ft)"))
```

```example
(example
  (problem "A 0.50 kg hockey puck slides at 8.0 m/s. Friction of 2.0 N slows it. How far does it slide before it stops?")
  (step "KE_i = 1/2 * 0.50 * 8.0^2 = 16 J, and KE_f = 0.")
  (step (number (ask "Distance, in meters?") (answer 8) (unit "m") (from "16 / 2.0")
    (wrong-if 32 "That is 16 * 2.0. The work friction does is F d = 16 J, so d = 16 / 2.0.")
    (hint "F d = 16 J, with F = 2.0 N.")))
  (answer "8.0 m"))
```

---

## Practice

```check
(number
  (ask "A 60 kg skater moving at 4.0 m/s is pushed so that she reaches 6.0 m/s. What net work was done on her, in joules?")
  (answer 600) (unit "J") (from "1/2 * 60 * 6.0^2 - 1/2 * 60 * 4.0^2")
  (wrong-if 1080 "1,080 J is her final kinetic energy. The net work is the change: final minus first.")
  (wrong-if 120 "That uses the change in speed, 2.0 m/s, squared. Work goes by the change in KE: 1/2 m (6^2) - 1/2 m (4^2).")
  (hint "KE_i = 1/2 * 60 * 16 = 480 J.")
  (hint "KE_f = 1/2 * 60 * 36 = 1,080 J. Subtract."))
```

```check
(choice
  (ask "A box slides across a floor at a steady speed while you push it. What is the net work on it?")
  (right "Zero: its kinetic energy does not change")
  (wrong "Positive: you push it forward"
    "Your push does positive work, but friction does the same amount of negative work. The speed is steady, so the net work is zero.")
  (wrong "Negative: friction slows it"
    "Friction does negative work, but your push does as much positive work. The kinetic energy stays the same.")
  (hint "The theorem: net work = change in kinetic energy. Does the speed change?"))
```

So: the net work on an object equals its change in kinetic energy,
$W = KE_f - KE_i$.
