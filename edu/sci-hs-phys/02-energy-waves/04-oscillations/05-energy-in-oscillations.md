# Energy in oscillations

```lesson
(objective "Follow kinetic and potential energy through one swing, and find the greatest speed from the amplitude.")
(standards "HS-PS3-1")
(minutes 25)
```

You learn how energy passes back and forth in an oscillation, and how
to find the greatest speed from it.

A block on a smooth track, joined to a spring, has two kinds of energy:
kinetic energy $1/2 m v^2$ and the spring's elastic potential energy
$1/2 k x^2$. With no friction, their sum stays the same:

- At each end, the block stops: all the energy is in the spring, $1/2 k A^2$.
- At equilibrium, the spring is relaxed: all the energy is kinetic, and the block moves fastest.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.5, Energy and the Simple Harmonic Oscillator")
```

```check
(choice
  (ask "A block on a spring passes through its equilibrium position. Where is its energy?")
  (right "All kinetic: the spring is relaxed and the block is at its fastest")
  (wrong "All in the spring, because the block is at the middle"
    "At equilibrium x = 0, so the spring stores 1/2 k (0)^2 = 0. All the energy is in the motion.")
  (wrong "There is none: the force is zero there"
    "The force is zero at equilibrium, but the block is moving fastest. Its energy is all kinetic.")
  (hint "What is x at equilibrium? What is v?"))
```

---

## Watching the energy

A 1.0 kg block on a spring with $k = 40$ N/m. Change the amplitude.
The bars show the energy now, in millijoules (mJ, thousandths of a
joule); the graph shows it over time.

```figure
(define A (slider 'A 0.04 0.12 0.10 "Amplitude (m)" 0.02))
(define E (* 0.5 40 A A 1000))
(define T (* 2 pi (sqrt (/ 1 40))))
(still
  (wv-wall 20 20 70)
  (wv-surface 20 300 70 #f)
  (graph 40 100 140 95 0 1 0 300)
  (graph-axes 0.5 100 "" "mJ")
  (text 180 210 "t (s)" 'right 'tiny)
  (plot (lambda (s) (* E (expt (sin (/ (* 2 pi s) T)) 2))) 'cool 1.5)
  (plot (lambda (s) (* E (expt (cos (/ (* 2 pi s) T)) 2))) 'warm 1.5)
  (text 110 92 "KE dashed, PE solid" 'centre 'tiny))
(define t (seconds))
(define c (cos (/ (* 2 pi t) T)))
(define x (* A c))
(define pe (* E c c))
(define bx (+ 145 (* 400 x)))
(graph 40 100 140 95 0 1 0 300)
(wv-spring 20 bx 50 6)
(wv-block bx 40 30 30 'grey #f)
(plot-point (modulo t T) pe 'warm)
(wv-bars 196 200 100 300 (list (list "KE" (- E pe) 'cool) (list "PE" pe 'warm) (list "total" E 'grey)))
(caption "Real time. No friction.")
```

```check
(number
  (ask "Set the amplitude to 0.10 m. What is the total energy, in millijoules?")
  (answer 200) (unit "mJ") (from "1/2 * 40 * 0.10^2 * 1000")
  (wrong-if 400 "That is k A^2, without the 1/2. 1/2 * 40 * 0.010 = 0.20 J = 200 mJ.")
  (wrong-if 0.2 "0.20 is right in joules. The question asks for millijoules: 1 J = 1,000 mJ.")
  (hint "Total energy = 1/2 k A^2, all in the spring at the end."))
```

---

## The greatest speed

The energy at an end, all in the spring, equals the energy at the
middle, all kinetic:

$$ 1/2 k A^2 = 1/2 m v_m^2 $$

so the greatest speed is $v_m = A sqrt(k/m)$.

For a pendulum, the same idea uses gravity: the bob at the end of its
swing is a height $h$ above the lowest point, so $v_m = sqrt(2 g h)$.

```check
(number
  (ask "A 1.0 kg block on a spring with k = 40 N/m has an amplitude of 0.10 m. What is its greatest speed, to the nearest hundredth of a m/s?")
  (answer 0.63) (within 0.005) (unit "m/s") (from "0.10 * sqrt(40/1.0)")
  (wrong-if 4 "That is k A / m, the greatest acceleration. Set the energies equal: v = A sqrt(k/m).")
  (wrong-if 0.02 "That uses sqrt(m/k). Solve 1/2 k A^2 = 1/2 m v^2 for v: v = A sqrt(k/m).")
  (hint "v_m = A sqrt(k/m).")
  (hint "sqrt(40) is about 6.32."))
```

---

## Worked example

```example
(example
  (problem "A pendulum's bob is let go 5.0 cm above its lowest point. How fast is it moving at the bottom?")
  (step "All the potential energy m g h becomes kinetic energy 1/2 m v^2; the mass cancels.")
  (step "v = sqrt(2 g h) = sqrt(2 * 9.8 * 0.050) = sqrt(0.98).")
  (step "v = 0.99 m/s.")
  (answer "about 0.99 m/s"))
```

```example
(example
  (problem "A 0.50 kg block on a spring with k = 200 N/m is pulled 0.050 m from equilibrium and let go. What is its greatest speed?")
  (step "v_m = A sqrt(k/m) = 0.050 * sqrt(200 / 0.50) = 0.050 * sqrt(400).")
  (step (number (ask "v_m, in m/s?") (answer 1) (unit "m/s") (from "0.050 * sqrt(200/0.50)")
    (wrong-if 20 "sqrt(400) = 20. Now multiply by the amplitude, 0.050 m.")
    (hint "0.050 * 20.")))
  (answer "1.0 m/s"))
```

---

## Practice

```check
(number
  (ask "A block on a spring stores 0.36 J at each end of its swing. Its mass is 2.0 kg. What is its greatest speed, in m/s?")
  (answer 0.6) (unit "m/s") (from "sqrt(2 * 0.36 / 2.0)")
  (wrong-if 0.36 "0.36 is v^2. Take the square root.")
  (wrong-if 0.18 "That is the energy divided by the mass. Solve 0.36 = 1/2 * 2.0 * v^2 for v.")
  (hint "0.36 = 1/2 * 2.0 * v^2."))
```

```check
(choice
  (ask "You double the amplitude of a block on a spring. What happens to its greatest speed?")
  (right "It doubles" (true "2 * 1 = 2"))
  (wrong "It becomes 4 times as large"
    "The energy becomes 4 times as large, but speed grows with the square root of the energy: sqrt(4) = 2.")
  (wrong "It stays the same, because the period stays the same"
    "The period stays the same, but the block covers twice the distance in that time, so it must move twice as fast.")
  (hint "v_m = A sqrt(k/m)."))
```

So: in an oscillation, energy passes between kinetic and potential, its
total stays $1/2 k A^2$, and the greatest speed is $A sqrt(k/m)$.
