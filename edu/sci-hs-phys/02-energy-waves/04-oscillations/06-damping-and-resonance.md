# Damping and resonance

```lesson
(objective "Explain damping, and resonance when a push matches the natural frequency.")
(standards "HS-PS3-1")
(minutes 25)
(keywords "damping" "natural frequency" "resonance")
```

You learn why real oscillations die away, and why pushes at just the
right rhythm can build a large one.

A real pendulum or spring does not swing for ever. Friction and the
push of the air do negative work on it, and its mechanical energy turns into
thermal energy. The loss of energy that makes an oscillation die away
is **damping**. As the energy goes, the amplitude shrinks; the period
stays almost the same.

Choose the damping and watch the block on its spring.

```figure
(define d (choice 'damp '("none" "light" "heavy") "Damping"))
(define b (if (= d 0) 0 (if (= d 1) 0.25 1)))
(define (xa s) (* 8 (exp (* (- b) s)) (cos (* 2 pi s))))
(still
  (wv-wall 20 20 70)
  (wv-surface 20 300 70 #f)
  (graph 40 100 260 100 0 8 -10 10)
  (graph-axes 1 5 "t (s)" "x (cm)")
  (plot xa 'ink 1.5))
(define t (modulo (seconds) 8))
(define x (xa t))
(define bx (+ 140 (* 4 x)))
(graph 40 100 260 100 0 8 -10 10)
(wv-spring 20 bx 50 6)
(wv-block bx 40 30 30 'grey #f)
(plot-point t x 'warm)
(text 250 30 (string-append "energy left: " (fmt (* 100 (exp (* -2 b t))) 0) "%") 'centre 'small)
(caption "Real time; it starts again every 8 s.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 16.7, Damped Harmonic Motion, and section 16.8, Forced Oscillations and Resonance")
```

```check
(choice
  (ask "A swing is left to itself and slowly comes to rest. Where did its energy go?")
  (right "Air resistance and friction at the hinges turned it into thermal energy")
  (wrong "It was used up and no longer exists"
    "Energy is never destroyed. The swing's mechanical energy became thermal energy in the air and the hinges.")
  (wrong "It turned into potential energy, which the swing keeps"
    "At rest at the bottom, the swing has its least potential energy. The energy left the swing as thermal energy.")
  (hint "Damping is the loss of mechanical energy. Where does it go?"))
```

---

## Natural frequency

Pull a system aside and let it go, and it oscillates at its own
frequency: the **natural frequency**. For a spring it is
$f = 1 / (2 pi sqrt(m/k))$; for a pendulum, $f = 1 / (2 pi sqrt(L/g))$.

A swing, a bridge, a building and a guitar string each have natural
frequencies set by their masses and stiffness.

```check
(number
  (ask "A 1.0 kg block hangs on a spring with k = 39.5 N/m, so its period is about 1.0 s. What is its natural frequency, to the nearest tenth of a hertz?")
  (answer 1) (within 0.05) (unit "Hz") (from "1 / (2 pi sqrt(1.0/39.5))")
  (wrong-if 6.3 "That is sqrt(k/m), in radians per second. The frequency in hertz is 1/T.")
  (hint "f = 1/T, and T is about 1.0 s."))
```

---

## Resonance

Push a swing once, and it swings at its natural frequency. Push it
again each time it comes back, and every push adds energy: the swings
grow. When a repeated push has the system's natural frequency, the
amplitude builds up until damping removes energy as fast as the pushes
add it. That is **resonance**.

The graph shows how large the swings become for pushes of each
frequency, on a system whose natural frequency is 1.0 Hz.

```figure
(define fd (slider 'f 0.2 2 1 "Push freq. (Hz)" 0.1))
(define q (choice 'q '("light" "heavy") "Damping"))
(define Q (if (= q 0) 8 2))
(define (amp r) (/ 1 (sqrt (+ (expt (- 1 (* r r)) 2) (expt (/ r Q) 2)))))
(graph 50 30 240 160 0 2 0 9)
(graph-axes 0.5 2 "" "size")
(text (gx 2) (+ (gy 0) 28) "push frequency (Hz)" 'right 'tiny)
(plot amp 'ink 2)
(plot-point fd (min 9 (amp fd)) 'warm)
(line (gx 1) (gy 0) (gx 1) (gy 9) 'grey 1)
(text (+ (gx 1) 4) 40 "natural f" 'small)
(caption "Swing size compared with a very slow push.")
```

```check
(choice
  (ask "Set the push frequency to 1.0 Hz, then to 1.5 Hz. When are the swings largest?")
  (right "At 1.0 Hz, the natural frequency")
  (wrong "At the highest push frequency, since faster pushes add more energy"
    "Pushes out of step with the swinging sometimes push against the motion and take energy away. Only pushes in step keep adding energy.")
  (wrong "They are the same size at every frequency"
    "Look at the graph: the peak is at the natural frequency, and the swings are far smaller elsewhere.")
  (hint "Find the peak of the graph."))
```

---

## Damping limits resonance

With light damping, the resonance peak is tall and narrow. With heavy
damping, it is low and wide. Engineers add damping where resonance
would be dangerous: a car's shock absorbers damp the bouncing of its
springs.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.7, Damped Harmonic Motion, and section 16.8, Forced Oscillations and Resonance")
```

```check
(choice
  (ask "A car's shock absorbers wear out. What do you expect after it hits a bump?")
  (right "The car bounces up and down many times before it settles")
  (wrong "The car does not bounce at all"
    "The shock absorbers are what stop the bouncing. Without their damping, the springs keep the car oscillating longer.")
  (wrong "The car bounces faster, at a higher frequency"
    "The natural frequency depends on the car's mass and its springs, which have not changed. What changes is how fast the bouncing dies away.")
  (hint "Shock absorbers supply damping."))
```

---

## Practice

```check
(choice
  (ask "To push a child on a swing as high as possible with small pushes, when should you push?")
  (right "Once each swing, in step with the swing's natural frequency")
  (wrong "As often as you can, as fast as you can"
    "Pushes out of step with the swing often push against its motion. Only pushes at the natural frequency keep adding energy.")
  (wrong "Once only, as hard as you can"
    "One push gives one dose of energy, which damping then removes. Repeated pushes in step build the swing up.")
  (hint "Resonance needs repeated pushes at the natural frequency."))
```

```check
(number
  (ask "A pendulum 0.25 m long is pushed gently at its natural frequency. What frequency is that, to the nearest tenth of a hertz?")
  (answer 1) (within 0.05) (unit "Hz") (from "1 / (2 pi sqrt(0.25/9.8))")
  (wrong-if 6.3 "That is sqrt(g/L), which is not in hertz. f = 1 / (2 pi sqrt(L/g)).")
  (hint "T = 2 pi sqrt(0.25/9.8) is about 1.0 s.")
  (hint "f = 1/T."))
```

So: damping drains an oscillation's energy as thermal energy, and pushes
at the natural frequency build large oscillations by resonance.
