# Periodic motion

```lesson
(objective "Describe an oscillation by its amplitude, period and frequency, and use f = 1/T.")
(standards "HSF-TF.B.5" "HSA-CED.A.4")
(minutes 20)
(keywords "oscillation" "equilibrium position" "amplitude")
```

You learn to describe a motion that repeats, with three numbers.

Pull a block on a spring to one side and let go. It moves back and
forth, over and over. A motion that repeats back and forth about one
place is an **oscillation**. The place where the object would rest,
with no net force on it, is its **equilibrium position**.

The greatest distance the object moves from its equilibrium position
is the **amplitude**. A block that swings from 10 cm left to 10 cm right
of equilibrium has an amplitude of 10 cm, not 20 cm.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.2, Period and Frequency in Oscillations")
```

```check
(number
  (ask "A block on a spring moves between 6 cm left and 6 cm right of its equilibrium position. What is its amplitude, in cm?")
  (answer 6) (unit "cm")
  (wrong-if 12 "12 cm is the whole distance from one end to the other. The amplitude is measured from the equilibrium position to one end.")
  (hint "Measure from the middle to one end."))
```

---

## Period and frequency

As in circular motion, the period $T$ is the time of one whole cycle,
there and back again, and the frequency $f$ is the number of cycles
each second, in hertz. Each is one over the other:

$$ f = 1/T $$

Move the sliders. The graph shows the block's position against time,
and the dot is where it is now.

```figure
(define A (slider 'A 2 10 8 "Amplitude (cm)" 1))
(define T (slider 'T 0.5 2 1 "Period (s)" 0.25))
(still
  (wv-wall 20 20 70)
  (line 155 14 155 76 'grey 1)
  (text 155 10 "equilibrium" 'centre 'tiny)
  (graph 50 100 250 100 0 4 -10 10)
  (graph-axes 1 5 "t (s)" "x (cm)")
  (plot (lambda (s) (* A (cos (/ (* 2 pi s) T)))) 'ink 1.5)
  (text 160 232 (string-append "f = 1/T = " (fmt (/ 1 T) 2) " Hz") 'centre 'small 'bold))
(define t (seconds))
(define x (* A (cos (/ (* 2 pi t) T))))
(define bx (+ 140 (* 4 x)))
(graph 50 100 250 100 0 4 -10 10)
(wv-spring 20 bx 45 6)
(wv-block bx 30 30 30 'grey #f)
(plot-point (modulo t 4) x 'warm)
```

```check
(number
  (ask "A block takes 0.50 s for each whole cycle. What is its frequency, in hertz?")
  (answer 2) (unit "Hz") (from "1/0.50")
  (wrong-if 0.5 "0.50 s is the period, the time for one cycle. The frequency is how many cycles fit in one second: 1/T.")
  (hint "f = 1/T."))
```

---

## What the amplitude does not change

Try a small amplitude and a large one with the same period setting:
the block goes farther, and faster, but each cycle takes the same time.
For a block on a spring, the period does not depend on the amplitude.
The graph's peaks get taller, but they stay the same distance apart.

```check
(choice
  (ask "You pull a block on a spring twice as far before letting go. What happens to its period?")
  (right "It stays the same")
  (wrong "It doubles, because the block has twice as far to go"
    "It has twice as far to go, but the spring pulls it twice as hard, so it moves faster. The two effects cancel exactly.")
  (wrong "It halves, because the spring pulls harder"
    "The stronger pull is matched by the longer path. A spring's period does not depend on the amplitude.")
  (hint "Watch the graph: does the time between peaks change with the amplitude?"))
```

---

## Worked example

```example
(example
  (problem "A child on a swing makes 10 whole swings, there and back, in 25 s. What are the period and the frequency?")
  (step "Period: time for one cycle = 25 s / 10 = 2.5 s.")
  (step "Frequency: f = 1/T = 1/2.5 = 0.40 Hz.")
  (answer "T = 2.5 s, f = 0.40 Hz"))
```

```example
(example
  (problem "A machine part vibrates at 50 Hz. What is its period?")
  (step "T = 1/f.")
  (step (number (ask "T, in seconds?") (answer 0.02) (unit "s") (from "1/50")
    (wrong-if 50 "50 is the frequency, cycles per second. The period is the time of one cycle: 1/50 s.")
    (hint "1 / 50.")))
  (answer "0.020 s"))
```

---

## Practice

```check
(number
  (ask "You count 30 cycles of a block on a spring in 15 s. What is its frequency, in hertz?")
  (answer 2) (unit "Hz") (from "30 / 15")
  (wrong-if 0.5 "That is the period, 15 s / 30 cycles. The frequency is cycles per second: 30 / 15.")
  (hint "Frequency = cycles / time."))
```

```check
(choice
  (ask "A pendulum takes 1 s to swing from its far left to its far right. What is its period?")
  (right "2 s" (true "2 * 1 = 2"))
  (wrong "1 s"
    "Left to right is only half a cycle. A whole cycle comes back to the start: left to right and back again.")
  (wrong "0.5 s"
    "Half a cycle takes 1 s, so a whole cycle takes longer, not shorter.")
  (hint "A period is there and back again."))
```

So: an oscillation is described by its amplitude, measured from
equilibrium, its period $T$, and its frequency $f = 1/T$.
