# Describing a wave

```lesson
(objective "Read a wave's amplitude, wavelength, crests and troughs from a graph, and its period and frequency from how one point of the medium moves in time.")
(standards "HS-PS4-1")
(minutes 25)
(keywords "wavelength" "crest" "trough")
```

You learn to read the size and spacing of a wave from a graph of its
shape, and its timing from a graph of one point.

Freeze a transverse wave on a rope and graph the rope's displacement
against position. The highest points are **crests**; the lowest are
**troughs**. The **wavelength**, $lambda$ (lambda), is the distance
from one crest to the next, or between any two matching points one
cycle apart. The amplitude, as for any oscillation, is measured from
the rest position to a crest, not from trough to crest.

```figure
(define A (slider 'A 0.05 0.25 0.2 "Amplitude (m)" 0.05))
(define L (slider 'L 0.5 2 1.5 "Wavelength (m)" 0.25))
(graph 40 30 260 150 0 4 -0.3 0.3)
(graph-axes 1 0.1 "x (m)" "y (m)")
(plot (lambda (x) (* A (sin (* 2 pi (/ x L))))) 'ink 2)
(text (gx (* 1.25 L)) (- (gy A) 6) "crest" 'centre 'small)
(text (gx (* 0.75 L)) (+ (gy (- A)) 14) "trough" 'centre 'small)
(line (gx (* 0.25 L)) (gy 0.28) (gx (* 1.25 L)) (gy 0.28) 'warm 1.5)
(line (gx (* 0.25 L)) (gy 0.26) (gx (* 0.25 L)) (gy 0.3) 'warm 1.5)
(line (gx (* 1.25 L)) (gy 0.26) (gx (* 1.25 L)) (gy 0.3) 'warm 1.5)
(text (gx (* 0.75 L)) (- (gy 0.28) 4) "wavelength" 'centre 'tiny)
(caption "The rope's shape at one moment.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 16.9, Waves")
```

```check
(number
  (ask "On a wave's graph, the crests are at x = 0.5 m, 2.5 m and 4.5 m. What is the wavelength, in meters?")
  (answer 2) (unit "m") (from "2.5 - 0.5")
  (wrong-if 4 "That is the distance across two cycles, from the first crest to the third. The wavelength is from one crest to the next.")
  (wrong-if 1 "That is from a crest to the trough between them, half a wavelength.")
  (hint "Subtract neighboring crest positions."))
```

---

## Amplitude from the graph

A crest is at $y = +A$ and a trough at $y = -A$. The height from
trough to crest is $2A$.

```check
(number
  (ask "A water wave's crests are 0.60 m above its troughs. What is its amplitude, in meters?")
  (answer 0.3) (unit "m") (from "0.60 / 2")
  (wrong-if 0.6 "0.60 m is from trough to crest. The amplitude is from the rest level to a crest, half of that.")
  (hint "Trough to crest is 2A."))
```

---

## Timing from one point

Now watch one point of the rope as time passes, and graph its
displacement against time. It oscillates: the time of one cycle is the
wave's period $T$, and $f = 1/T$ is its frequency. Every point of the
medium oscillates with the wave's frequency.

```figure
(define T (slider 'T 0.5 2 1 "Period (s)" 0.25))
(graph 40 30 260 150 0 4 -0.3 0.3)
(graph-axes 1 0.1 "t (s)" "y (m)")
(plot (lambda (t) (* 0.2 (sin (* 2 pi (/ t T))))) 'ink 2)
(line (gx (* 0.25 T)) (gy 0.26) (gx (* 1.25 T)) (gy 0.26) 'warm 1.5)
(text (gx (* 0.75 T)) (- (gy 0.26) 4) "period" 'centre 'tiny)
(text 160 220 (string-append "f = 1/T = " (fmt (/ 1 T) 2) " Hz") 'centre 'small 'bold)
```

The two graphs look alike, but they say different things. On the
position graph, crest to crest is a distance, the wavelength. On the
time graph, peak to peak is a time, the period.

```check
(choice
  (ask "A graph has peaks 0.25 apart, and its horizontal axis is time in seconds. What can you find?")
  (right "The period is 0.25 s, so the frequency is 4 Hz" (true "1/0.25 = 4"))
  (wrong "The wavelength is 0.25 m"
    "A wavelength is a distance, read from a graph against position. Peaks 0.25 s apart on a time graph give the period.")
  (wrong "The amplitude is 0.25"
    "The amplitude is read up the vertical axis, not along the time axis.")
  (hint "What does the horizontal axis measure?"))
```

---

## Worked example

```example
(example
  (problem "A buoy bobs from its highest point to its lowest point in 2.0 s. What are the period and the frequency of the waves?")
  (step "Highest to lowest is half a cycle, so a whole cycle takes 4.0 s.")
  (step "f = 1/T = 1/4.0 = 0.25 Hz.")
  (answer "T = 4.0 s, f = 0.25 Hz"))
```

```example
(example
  (problem "A rope's photo shows 3 whole wavelengths in 4.5 m. What is the wavelength?")
  (step "3 wavelengths fit in 4.5 m.")
  (step (number (ask "Wavelength, in meters?") (answer 1.5) (unit "m") (from "4.5 / 3")
    (wrong-if 13.5 "That multiplies. 3 wavelengths share the 4.5 m, so divide.")
    (hint "4.5 / 3.")))
  (answer "1.5 m"))
```

---

## Practice

```check
(number
  (ask "A point on a rope goes up and down 10 times in 5.0 s. What is the frequency of the wave, in Hz?")
  (answer 2) (unit "Hz") (from "10 / 5.0")
  (wrong-if 0.5 "That is the period, 5.0 s / 10. The frequency is cycles per second.")
  (hint "Cycles divided by seconds."))
```

```check
(choice
  (ask "On a snapshot of a wave, how far is a crest from the nearest trough?")
  (right "Half a wavelength")
  (wrong "One wavelength"
    "One wavelength is from a crest to the next crest. The trough lies halfway between them.")
  (wrong "One amplitude"
    "The amplitude is a height, measured up and down. Crest to trough along the rope is a distance along the wave.")
  (hint "Look at the first figure: where is the trough between two crests?"))
```

So: on a snapshot, crest to crest is the wavelength and rest to crest
the amplitude; for one point over time, peak to peak is the period, and
$f = 1/T$.
