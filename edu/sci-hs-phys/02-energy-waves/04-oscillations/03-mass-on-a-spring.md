# A mass on a spring

```lesson
(objective "Use T = 2 pi sqrt(m/k) to predict how mass and stiffness change a spring's period.")
(standards "HSA-CED.A.4" "HSF-TF.B.5")
(minutes 25)
```

You learn to predict how long a block on a spring takes for each
cycle, from its mass and the spring's stiffness.

A heavy block is harder to speed up and slow down, so it oscillates
more slowly. A stiff spring pulls harder, so the block oscillates
faster. For simple harmonic motion on a spring, the period is

$$ T = 2 pi sqrt(m/k) $$

with $m$ in kilograms and $k$ in newtons per meter. The amplitude is
not in the formula: as you saw, it does not change the period.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.3, Simple Harmonic Motion: A Special Periodic Motion")
```

```check
(number
  (ask "A 0.50 kg block oscillates on a spring with k = 50 N/m. What is its period, to the nearest hundredth of a second?")
  (answer 0.63) (within 0.005) (unit "s") (from "2 pi sqrt(0.50/50)")
  (wrong-if 62.83 "That uses k/m instead of m/k. A heavier block should take longer, so m goes on top.")
  (wrong-if 0.1 "That is sqrt(m/k) alone. Multiply by 2 pi.")
  (hint "m/k = 0.50/50 = 0.010.")
  (hint "sqrt(0.010) = 0.10; then 2 pi * 0.10."))
```

---

## Try it

The block slides on a smooth track. Change its mass and the spring
constant, and time a cycle against the period shown.

```figure
(define m (slider 'm 0.5 4 1 "Mass (kg)" 0.5))
(define k (slider 'k 10 80 40 "k (N/m)" 10))
(define T (* 2 pi (sqrt (/ m k))))
(define w (+ 20 (* 6 m)))
(still
  (wv-wall 20 60 130)
  (wv-surface 20 310 130 #f)
  (line 180 50 180 136 'grey 1)
  (text 180 44 "equilibrium" 'centre 'tiny)
  (text 160 180 (string-append "T = 2 pi sqrt(m/k) = " (fmt T 2) " s") 'centre 'body 'bold)
  (text 160 200 (string-append "f = " (fmt (/ 1 T) 2) " Hz") 'centre 'small))
(define x (* 40 (cos (/ (* 2 pi (seconds)) T))))
(wv-spring 20 (- (+ 180 x) (/ w 2)) 110 7)
(wv-block (- (+ 180 x) (/ w 2)) (- 130 w) w w 'grey #f)
(caption "Real time. Amplitude 10 cm, no friction.")
```

```check
(choice
  (ask "Set k = 40 N/m. Change the mass from 1.0 kg to 4.0 kg. What happens to the period?")
  (right "It doubles" (true "sqrt(4) = 2"))
  (wrong "It becomes 4 times as long"
    "The mass is inside a square root. 4 times the mass gives sqrt(4) = 2 times the period.")
  (wrong "It halves"
    "A heavier block is slower to speed up and slow down, so the period gets longer, not shorter.")
  (hint "T grows with sqrt(m)."))
```

---

## Stiffness

$k$ is under the square root in the bottom of the fraction. A spring 4
times as stiff gives half the period: twice the frequency.

```check
(choice
  (ask "A block oscillates on a spring. You swap in a spring 9 times as stiff. What happens to the period?")
  (right "It becomes 1/3 as long" (true "1/sqrt(9) = 1/3"))
  (wrong "It becomes 3 times as long"
    "A stiffer spring pulls harder and makes the block move faster. k is in the bottom of the fraction, so the period gets shorter.")
  (wrong "It becomes 1/9 as long"
    "k is under the square root. 9 times the stiffness gives 1/sqrt(9) = 1/3 of the period.")
  (hint "T = 2 pi sqrt(m/k). What is sqrt(1/9)?"))
```

---

## Worked example

```example
(example
  (problem "A 2.0 kg block on a spring has a period of 0.50 s. What is the spring constant?")
  (step "Square both sides: T^2 = 4 pi^2 m / k.")
  (step "Solve for k: k = 4 pi^2 m / T^2 = 4 pi^2 * 2.0 / 0.25.")
  (step "k = 316 N/m.")
  (answer "about 316 N/m"))
```

```example
(example
  (problem "A spring with k = 100 N/m should give a period of 1.0 s. What mass is needed?")
  (step "From T^2 = 4 pi^2 m / k: m = k T^2 / (4 pi^2).")
  (step (number (ask "m, in kilograms, to the nearest hundredth?") (answer 2.53) (within 0.005) (unit "kg") (from "100 * 1.0^2 / (4 pi^2)")
    (wrong-if 15.92 "That is k T / (2 pi), without squaring. Square both sides first: m = k T^2 / (4 pi^2).")
    (hint "100 / 39.48.")))
  (answer "about 2.53 kg"))
```

---

## Practice

```check
(number
  (ask "A car's body, 1,000 kg, rests on springs with a total k of 40,000 N/m. If the car bounces freely on them, what is its period, to the nearest hundredth of a second?")
  (answer 0.99) (within 0.005) (unit "s") (from "2 pi sqrt(1000/40000)")
  (wrong-if 0.16 "That is sqrt(m/k) without the 2 pi.")
  (wrong-if 39.74 "That uses k/m. Mass goes on top: m/k = 0.025.")
  (hint "m/k = 1,000/40,000 = 0.025.")
  (hint "2 pi sqrt(0.025)."))
```

```check
(choice
  (ask "An astronaut's mass is measured in orbit by strapping her to a chair on a spring and timing its oscillations. Why does this work where a bathroom scale does not?")
  (right "The period depends on mass, not on weight, so it works without apparent weight")
  (wrong "Gravity is stronger in orbit, so the spring stretches more"
    "Gravity in orbit is a little weaker, not stronger. The spring's period depends only on m and k, and needs no gravity at all.")
  (wrong "The spring makes the astronaut heavier"
    "A spring cannot change a mass. It works because T = 2 pi sqrt(m/k) has no g in it.")
  (hint "Is there a g in T = 2 pi sqrt(m/k)?"))
```

```sources
(source "NASA, Skylab experiment M172, Body Mass Measurement (1973)")
```

So: a mass on a spring has $T = 2 pi sqrt(m/k)$: more mass makes it
slower, a stiffer spring makes it faster, each by a square root.
