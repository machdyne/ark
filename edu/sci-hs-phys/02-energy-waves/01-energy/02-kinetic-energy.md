# Kinetic energy

```lesson
(objective "Compute kinetic energy as KE = 1/2 m v^2, and predict how it changes when the speed doubles.")
(standards "HS-PS3-1" "HS-PS3-2")
(minutes 20)
(keywords "kinetic energy")
```

You learn to compute the energy an object has because it moves, and to
predict what happens to it when the speed doubles.

A moving object can do work: a rolling ball pushes a pin over, a moving
hammer drives a nail. The energy an object has because of its motion is
its **kinetic energy**:

$$ KE = 1/2 m v^2 $$

with the mass $m$ in kilograms and the speed $v$ in meters per second.
The answer is in joules, since $1 kg * m^2/s^2 = 1 J$.

```sources
(source "OpenStax, College Physics 2e (2022), section 7.2, Kinetic Energy and the Work-Energy Theorem")
```

```check
(number
  (ask "A 2.0 kg ball rolls at 3.0 m/s. What is its kinetic energy?")
  (answer 9) (unit "J") (from "1/2 * 2.0 * 3.0^2")
  (wrong-if 3 "That is 1/2 m v, without squaring the speed. The speed is squared: 3.0^2 = 9.")
  (wrong-if 18 "That is m v^2 without the 1/2. KE = 1/2 m v^2.")
  (wrong-if 6 "That is m times v. Kinetic energy grows with the square of the speed: 1/2 * 2.0 * 3.0^2.")
  (hint "Square the speed first: 3.0^2 = 9.")
  (hint "Then 1/2 * 2.0 * 9."))
```

---

## Speed counts twice

Because the speed is squared, it matters more than the mass. Move the
sliders. The curve is the kinetic energy of the car at every speed; the
dot is the speed you chose.

```figure
(define m (slider 'mass 500 2000 1000 "Mass (kg)" 250))
(define v (slider 'speed 0 30 10 "Speed (m/s)" 1))
(define ke (* 0.5 m v v))
(graph 60 30 230 150 0 30 0 900)
(graph-axes 10 300 "v (m/s)" "KE (kJ)")
(plot (lambda (s) (/ (* 0.5 m s s) 1000)) 'ink 1.5)
(plot-point v (/ ke 1000) 'warm)
(text 160 222 (string-append "KE = " (fmt (/ ke 1000) 1) " kJ = " (fmt ke 0) " J") 'centre 'small 'bold)
```

A kilojoule (kJ) is 1,000 J. Try 10 m/s, then 20 m/s: the speed
doubles, and the kinetic energy becomes 4 times as large.

```check
(choice
  (ask "A bicycle's speed doubles. What happens to its kinetic energy?")
  (right "It becomes 4 times as large" (true "(2)^2 = 4"))
  (wrong "It doubles" (false "(2)^2 = 2")
    "That would be true if KE grew with v. It grows with v^2, so twice the speed gives 2^2 = 4 times the energy.")
  (wrong "It stays the same"
    "The bicycle's mass is the same, but its speed is not. Kinetic energy depends on the speed, squared.")
  (hint "KE has v^2 in it. What is 2^2?"))
```

---

## Mass counts once

The mass is not squared. Twice the mass at the same speed has twice the
kinetic energy. A loaded truck at highway speed has far more kinetic
energy than a car at the same speed, because its mass is many times
larger.

Kinetic energy is a scalar: it has no direction, and it is never
negative, since $v^2$ is never negative.

```check
(choice
  (ask "Car A has twice the mass of car B. Car B goes twice as fast as car A. Which has more kinetic energy?")
  (right "Car B" (true "1/2 * 1 * 2^2 > 1/2 * 2 * 1^2"))
  (wrong "Car A"
    "Doubling the mass doubles KE, but doubling the speed makes it 4 times as large. Car B wins, 4 to 2.")
  (wrong "They are the same"
    "Mass and speed do not count the same way. The speed is squared, so car B's speed counts for 4 and car A's mass for only 2.")
  (hint "Try numbers: A has m = 2, v = 1. B has m = 1, v = 2."))
```

---

## Worked example

```example
(example
  (problem "A 1,000 kg car travels at 20 m/s (about 45 mph). What is its kinetic energy?")
  (step "Square the speed: 20^2 = 400 m²/s².")
  (step "KE = 1/2 * 1,000 * 400 = 200,000 J.")
  (answer "200,000 J, or 200 kJ"))
```

```example
(example
  (problem "The same 1,000 kg car slows to 10 m/s. What is its kinetic energy now?")
  (step "Square the speed: 10^2 = 100 m²/s².")
  (step (number (ask "KE, in joules?") (answer 50000) (unit "J") (from "1/2 * 1000 * 10^2")
    (wrong-if 100000 "That is half the speed, so you may have halved the energy. Half the speed gives (1/2)^2 = 1/4 of the energy: 200,000 / 4.")
    (hint "1/2 * 1,000 * 100.")))
  (answer "50,000 J: half the speed, a quarter of the energy"))
```

---

## Practice

```check
(number
  (ask "A 0.145 kg baseball is pitched at 40 m/s (about 90 mph). What is its kinetic energy, in joules?")
  (answer 116) (within 0.5) (unit "J") (from "1/2 * 0.145 * 40^2")
  (wrong-if 232 "That is m v^2 without the 1/2.")
  (wrong-if 2.9 "That is 1/2 m v, without squaring the speed. Square 40 first: 1,600.")
  (hint "40^2 = 1,600.")
  (hint "1/2 * 0.145 * 1,600."))
```

```check
(number
  (ask "A 4.0 kg cart has 72 J of kinetic energy. How fast is it moving, in m/s?")
  (answer 6) (unit "m/s") (from "sqrt(2 * 72 / 4.0)")
  (wrong-if 36 "36 is v^2. Take the square root to find v.")
  (wrong-if 18 "72 / 4.0 = 18 leaves out the 1/2 and the square. Solve 72 = 1/2 * 4.0 * v^2 for v.")
  (hint "Rearrange: v^2 = 2 KE / m.")
  (hint "v^2 = 2 * 72 / 4.0 = 36. Now take the square root."))
```

---

```check
(choice
  (ask "A runner speeds up from 3 m/s to 9 m/s. By what factor does the runner's kinetic energy grow?")
  (right "9 times" (true "(9/3)^2 = 9"))
  (wrong "3 times" (false "(9/3)^2 = 3")
    "The speed grows 3 times, but kinetic energy grows with the square of the speed: 3^2 = 9.")
  (wrong "6 times"
    "The speed went up by 6 m/s, but kinetic energy goes by the factor of the speed, squared: (9/3)^2.")
  (hint "The speed is multiplied by 9/3 = 3. Square that factor."))
```

So: $KE = 1/2 m v^2$, so twice the mass gives twice the kinetic energy,
and twice the speed gives 4 times as much.
