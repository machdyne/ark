# Conservation of energy

```lesson
(objective "Use the conservation of mechanical energy, with energy bar charts, to find speeds and heights.")
(standards "HS-PS3-1")
(minutes 30)
(keywords "conservation of energy" "mechanical energy" "isolated system")
```

You learn to use the fact that energy is kept, to find how fast
something goes and how high it rises.

The law of **conservation of energy** says that energy is never made
and never destroyed. It only changes form, or passes from one object
to another. No exception to it is known.

A system that no energy enters or leaves is an **isolated system**. Its
total energy stays the same. The kinetic energy plus the potential
energy of a system is its **mechanical energy**. When friction and the
air do not matter, a ball and Earth make a system whose mechanical
energy stays the same:

$$ KE_i + PE_i = KE_f + PE_f $$

```sources
(source "OpenStax, College Physics 2e (2022), section 7.6, Conservation of Energy")
(source "R. Feynman, R. Leighton, M. Sands, The Feynman Lectures on Physics, vol. 1 (1963), chapter 4, Conservation of Energy")
```

```check
(choice
  (ask "A ball rolls down a smooth hill where friction and the air can be ignored. What happens to its mechanical energy?")
  (right "It stays the same: potential energy turns into kinetic energy")
  (wrong "It grows, because the ball speeds up"
    "The ball gains kinetic energy, but it loses exactly as much potential energy. The sum stays the same.")
  (wrong "It shrinks, because the ball loses height"
    "The ball loses potential energy, but that energy becomes kinetic energy. Nothing takes it out of the system.")
  (hint "Mechanical energy is KE + PE. What happens to each?"))
```

---

## A ball thrown up

A 1.0 kg ball is thrown straight up at 7.0 m/s, with no air. Watch the
energy bars as it rises and falls. The animation is in real time, and
the ball is thrown again each time it lands.

```figure
(still
  (wv-surface 20 130 200 #f)
  (line 30 50 30 200 'ink 1)
  (for-range 0 3 (lambda (i) (line 27 (- 200 (* 60 i)) 33 (- 200 (* 60 i)) 'ink 1)
                              (text 24 (- 204 (* 60 i)) (fmt i 0) 'right 'tiny)))
  (text 36 44 "height (m)" 'tiny)
  (text 230 30 "Energy (J)" 'centre 'small))
(define tf (/ 14 9.8))
(define t (modulo (seconds) tf))
(define h (- (* 7 t) (* 4.9 t t)))
(define v (- 7 (* 9.8 t)))
(define ke (* 0.5 v v))
(define pe (* 9.8 h))
(circle 80 (- 194 (* 60 h)) 6 'warm)
(ring 80 (- 194 (* 60 h)) 6 'ink 1)
(wv-bars 176 200 140 24.5 (list (list "KE" ke 'cool) (list "PE" pe 'warm) (list "total" (+ ke pe) 'grey)))
(caption "Real time. Mass 1.0 kg, no air.")
```

```check
(choice
  (ask "At the top of its flight, how is the ball's mechanical energy stored?")
  (right "All as potential energy: the ball is still for an instant")
  (wrong "Half kinetic and half potential"
    "The energy is split evenly halfway up. At the top the speed is 0, so KE = 0 and all 24.5 J are potential energy.")
  (wrong "It has no energy at the top"
    "The ball is still for an instant, so its KE is 0, but it is at its highest: its potential energy is the greatest there.")
  (hint "Pause the figure (P) when the ball is highest and read the bars."))
```

---

## Finding a speed from a height

When an object falls from rest through a height $h$, the potential
energy it loses becomes kinetic energy:

$$ m g h = 1/2 m v^2 $$

The mass is on both sides, so it cancels: $v = sqrt(2 g h)$. A child
and an adult reach the same speed at the bottom of a smooth slide.

Here a 20 kg child slides down a smooth slide whose top is 5.0 m high.
Move the child.

```figure
(define h (slider 'h 0 5 5 "Height (m)" 0.5))
(define pe (* 20 9.8 h))
(define ke (- 980 pe))
(line 160 60 160 200 'grey 1)
(line 160 60 300 200 'ink 2)
(wv-surface 150 315 200 #f)
(circle (- 305 (* 28 h)) (- 195 (* 28 h)) 7 'warm)
(ring (- 305 (* 28 h)) (- 195 (* 28 h)) 7 'ink 1)
(wv-bars 24 200 120 980 (list (list "KE" ke 'cool) (list "PE" pe 'warm) (list "total" 980 'grey)))
(text 160 30 (string-append "speed = " (fmt (sqrt (/ (* 2 ke) 20)) 1) " m/s") 'centre 'body)
(caption "No friction. Zero level: the bottom.")
```

```check
(number
  (ask "How fast is the child moving at the bottom of the slide, from the top 5.0 m up, to the nearest tenth of a m/s?")
  (answer 9.9) (within 0.05) (unit "m/s") (from "sqrt(2 * 9.8 * 5.0)")
  (wrong-if 98 "98 is v^2, from v^2 = 2 g h. Take its square root.")
  (wrong-if 980 "980 J is the energy, not the speed. Use m g h = 1/2 m v^2 to turn it into a speed.")
  (hint "v = sqrt(2 g h).")
  (hint "2 * 9.8 * 5.0 = 98. Now the square root."))
```

---

## Worked example

```example
(example
  (problem "A roller coaster car starts from rest at the top of a 20 m hill. Ignoring friction and the air, how fast is it going at the bottom?")
  (step "Bars before: all PE, m g (20). Bars after: all KE, 1/2 m v^2.")
  (step "m g h = 1/2 m v^2, so v = sqrt(2 g h) = sqrt(2 * 9.8 * 20) = sqrt(392).")
  (step "v = 19.8 m/s, about 44 mph.")
  (answer "about 19.8 m/s"))
```

```example
(example
  (problem "A ball is thrown straight up at 14 m/s. Ignoring the air, how high does it rise?")
  (step "Bars before: all KE. Bars at the top: all PE, since the ball is still.")
  (step "1/2 m v^2 = m g h, so h = v^2 / (2 g).")
  (step (number (ask "h, in meters?") (answer 10) (unit "m") (from "14^2 / (2 * 9.8)")
    (wrong-if 20 "That is v^2 / g. The 1/2 in 1/2 m v^2 makes it v^2 / (2 g).")
    (hint "14^2 = 196, and 2 * 9.8 = 19.6.")))
  (answer "10 m"))
```

---

## Practice

```check
(number
  (ask "A roller coaster car moves at 5.0 m/s at the top of a 15 m hill. Ignoring friction, how fast is it moving at the bottom, to the nearest tenth of a m/s?")
  (answer 17.9) (within 0.05) (unit "m/s") (from "sqrt(5.0^2 + 2 * 9.8 * 15)")
  (wrong-if 17.1 "That leaves out the kinetic energy it already had at the top. KE_i + PE_i = KE_f: v^2 = 5.0^2 + 2 * 9.8 * 15.")
  (wrong-if 22.1 "Speeds do not add. Energies do: v_f^2 = v_i^2 + 2 g h.")
  (hint "Divide every term of 1/2 m v_i^2 + m g h = 1/2 m v_f^2 by m.")
  (hint "v_f^2 = 25 + 294 = 319."))
```

```check
(choice
  (ask "A heavy ball and a light ball are dropped from the same height, with no air. Which reaches the ground faster?")
  (right "Neither: both have the same speed" (true "sqrt(2 * 9.8 * 1) = sqrt(2 * 9.8 * 1)"))
  (wrong "The heavy ball"
    "The heavy ball has more potential energy, but it also needs more energy for each m/s. The mass cancels: v = sqrt(2 g h) for both.")
  (wrong "The light ball"
    "A light ball has less to move, but it also has less potential energy. The mass cancels, so both reach the same speed.")
  (hint "Look at m g h = 1/2 m v^2. What happens to m?"))
```

So: when no energy enters or leaves, $KE + PE$ stays the same, so a
loss of height gives a gain of speed, and the reverse.
