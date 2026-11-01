# The speed of sound

```lesson
(objective "Compute with the speed of sound in air, water and steel, and find a distance from an echo.")
(standards "HS-PS4-1" "HSA-CED.A.4")
(minutes 25)
(keywords "echo")
```

You learn how fast sound travels in different materials, and how to
measure a distance with a sound that bounces back.

The speed of sound depends on the medium. In dry air at 20 °C it is
343 m/s, about 1,125 ft/s. It is faster in warmer air, and much faster
in liquids and solids, where the particles are closely linked:

| Medium | speed of sound |
|---|---|
| air, 0 °C | 331 m/s |
| air, 20 °C | 343 m/s |
| fresh water | 1,480 m/s |
| steel | 5,960 m/s |

Sound covers a distance $d$ in a time $t = d / v$.

```sources
(source "OpenStax, College Physics 2e (2022), section 17.2, Speed of Sound, Frequency, and Wavelength, table 17.1")
```

```check
(number
  (ask "Thunder is heard 3.0 s after a lightning flash. The light arrives almost at once. About how far away was the strike, in meters? Use 343 m/s.")
  (answer 1029) (within 1) (unit "m") (from "343 * 3.0")
  (wrong-if 114 "That is 343 / 3.0. Distance is speed times time.")
  (hint "d = v t."))
```

---

## Echoes

Sound reflects from hard surfaces such as cliffs and walls. A
reflected sound that you hear back is an **echo**. The sound goes to
the wall and back, so it travels twice the distance to the wall:

$$ d = v t / 2 $$

Change the distance to the cliff and watch the sound go out and come
back.

```figure
(define D (slider 'd 50 300 150 "Cliff (m)" 25))
(define x1 (+ 30 (* 0.9 D)))
(define tt (/ (* 2 D) 343))
(define t (modulo (seconds) (+ tt 1)))
(define r (* 0.9 343 t))
(still
  (wv-surface 10 310 170 #f)
  (circle 30 150 7 'warm)
  (rect x1 50 16 120 'grey)
  (text (/ (+ 30 x1) 2) 200 (string-append (fmt D 0) " m") 'centre 'small)
  (text 160 30 (string-append "there and back: " (fmt tt 2) " s") 'centre 'small 'bold))
(define (half r) (min 40 (rad->deg (asin (min 1 (/ 70 (max r 1)))))))
(define rb (* 0.9 D))
(if (and (> r 1) (< r rb)) (arc 30 150 r (- (half r)) (half r) 'ink 2))
(if (and (>= r rb) (< r (* 2 rb)))
    (let ((h (min (half r) (rad->deg (acos (min 1 (/ rb r)))))))
      (if (> h 0.5) (arc (+ x1 rb) 150 r (- 180 h) (+ 180 h) 'ink 2))))
(caption "Real time. Sound at 343 m/s.")
```

```check
(number
  (ask "You shout toward a cliff and hear the echo 2.0 s later. How far away is the cliff, in meters? Use 343 m/s.")
  (answer 343) (unit "m") (from "343 * 2.0 / 2")
  (wrong-if 686 "That is the whole path, there and back. The cliff is half that distance away.")
  (hint "The sound goes there and back in 2.0 s.")
  (hint "d = 343 * 2.0 / 2."))
```

---

## Worked example

```example
(example
  (problem "A hammer strikes one end of a steel rail 1,000 m long. How much sooner does the sound arrive at the far end through the steel than through the air at 20 °C?")
  (step "Through steel: t = 1,000 / 5,960 = 0.17 s.")
  (step "Through air: t = 1,000 / 343 = 2.92 s.")
  (step "Difference: 2.92 - 0.17 = 2.75 s.")
  (answer "about 2.75 s sooner"))
```

```example
(example
  (problem "A diver hears an echo from an underwater rock face 0.40 s after clapping two stones together. Use 1,480 m/s for fresh water. How far away is the rock?")
  (step "d = v t / 2.")
  (step (number (ask "d, in meters?") (answer 296) (unit "m") (from "1480 * 0.40 / 2")
    (wrong-if 592 "That is the whole path, there and back. Divide by 2.")
    (wrong-if 69 "That uses the speed in air. The sound travels through water, at 1,480 m/s.")
    (hint "1,480 * 0.40 / 2.")))
  (answer "296 m"))
```

---

## Practice

```check
(number
  (ask "Sound travels 1 mile (1,609 m) through air at 20 °C. How long does it take, to the nearest tenth of a second?")
  (answer 4.7) (within 0.05) (unit "s") (from "1609 / 343")
  (wrong-if 551887 "That multiplies. Time is distance divided by speed.")
  (hint "t = d / v."))
```

```check
(choice
  (ask "Why is sound faster in steel than in air?")
  (right "The particles of steel are tightly linked, so a push passes on very quickly")
  (wrong "Steel is denser, and denser things always carry sound faster"
    "Density alone does not decide it: the stiffness of the links matters most. Steel is very stiff, so it carries sound fast.")
  (wrong "Sound in steel has a higher frequency"
    "The frequency is set by the source, not the medium. The medium sets the speed.")
  (hint "Think about how a push passes from particle to particle."))
```

So: sound travels at 343 m/s in air at 20 °C and faster in water and
steel, and an echo's distance is $d = v t / 2$.
