# Interference

```lesson
(objective "Add two waves by superposition, and tell constructive from destructive interference.")
(standards "HS-PS4-1")
(minutes 25)
(keywords "superposition" "constructive interference" "destructive interference")
```

You learn what happens when two waves meet in the same place.

Two balls that meet bounce off each other. Two waves that meet do not:
they pass through each other and go on unchanged. While they overlap,
the medium does both things at once. Its displacement at each point is
the sum of the two waves' displacements. This adding of waves is
**superposition**.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.10, Superposition and Interference")
```

```check
(number
  (ask "At one point on a rope, one wave alone would lift the rope 3 cm and a second wave alone would lift it 2 cm. Both pass at once. How high is the rope there, in cm?")
  (answer 5) (unit "cm") (from "3 + 2")
  (wrong-if 3 "Superposition does not keep only the bigger wave. The displacements add: 3 + 2.")
  (wrong-if 1 "Both waves lift the rope, so both displacements are positive. They add to 5 cm.")
  (hint "Add the two displacements, with their signs."))
```

---

## In step and out of step

When two waves meet in step, crest on crest and trough on trough, they
add to a larger wave. That is **constructive interference**. When they
meet out of step, crest on trough, they cancel, partly or wholly. That
is **destructive interference**.

Slide the second wave along, and change its amplitude.

```figure
(define sh (slider 'shift 0 1 0 "Shift (cycles)" 0.125))
(define a2 (slider 'a2 0.5 1 1 "Amplitude 2" 0.25))
(define (w1 x) (sin (* 2 pi x)))
(define (w2 x) (* a2 (sin (* 2 pi (- x sh)))))
(graph 40 14 260 50 0 2.5 -2 2)
(line (gx 0) (gy 0) (gx 2.5) (gy 0) 'grey 1)
(plot w1 'ink 1.5)
(text 300 20 "wave 1" 'right 'tiny)
(graph 40 74 260 50 0 2.5 -2 2)
(line (gx 0) (gy 0) (gx 2.5) (gy 0) 'grey 1)
(plot w2 'ink 1.5)
(text 300 80 "wave 2" 'right 'tiny)
(graph 40 134 260 80 0 2.5 -2 2)
(line (gx 0) (gy 0) (gx 2.5) (gy 0) 'grey 1)
(plot (lambda (x) (+ (w1 x) (w2 x))) 'warm 2.5)
(text 300 140 "sum" 'right 'tiny)
(caption (cond ((< (abs (- sh 0.5)) 0.01) "out of step: destructive")
               ((or (< sh 0.01) (> sh 0.99)) "in step: constructive")
               (else "partly in step")))
```

```check
(choice
  (ask "Set the shift to 0.5 cycles, with both amplitudes equal. What is the sum?")
  (right "A flat line: the waves cancel")
  (wrong "A wave twice as tall"
    "That happens at a shift of 0: crest on crest. At half a cycle, each crest lands on a trough.")
  (wrong "Two waves, one above the other"
    "The medium can only be in one place at each point. Superposition adds the two into one shape, here zero.")
  (hint "Half a cycle puts each crest of one on a trough of the other."))
```

---

## How big the sum gets

Two waves of the same frequency, with amplitudes $A_1$ and $A_2$:

- in step, the sum has amplitude $A_1 + A_2$;
- out of step by half a cycle, it has amplitude $A_1 - A_2$ (the larger minus the smaller).

The energy is not destroyed where waves cancel: it shows up where they
add, so it is moved around, not lost.

```check
(number
  (ask "Two waves with amplitudes 5.0 cm and 3.0 cm meet exactly out of step. What is the amplitude of their sum, in cm?")
  (answer 2) (unit "cm") (from "5.0 - 3.0")
  (wrong-if 8 "8 cm is the in-step sum. Out of step, a crest of one meets a trough of the other, so they subtract.")
  (wrong-if 0 "They cancel wholly only if the amplitudes are equal. Here 5.0 - 3.0 is left over.")
  (hint "Out of step: subtract."))
```

---

## Worked example

```example
(example
  (problem "Two pulses travel toward each other on a rope. One is a crest 4 cm high; the other is a trough 4 cm deep. What do you see when they overlap exactly, and after?")
  (step "Superposition: 4 cm + (-4 cm) = 0 at every point of the overlap.")
  (step "For an instant the rope is flat there: destructive interference.")
  (step "The pulses pass through each other and go on unchanged.")
  (answer "A flat rope for an instant, then both pulses again"))
```

```example
(example
  (problem "Two crests, 2 cm and 6 cm high, overlap exactly. How high is the rope at the peak?")
  (step "Both displacements are upward, so they add.")
  (step (number (ask "Height, in cm?") (answer 8) (unit "cm") (from "2 + 6")
    (wrong-if 4 "Both are crests, upward. They add rather than cancel.")
    (hint "2 + 6.")))
  (answer "8 cm: constructive interference"))
```

---

## Practice

```check
(choice
  (ask "Two water waves with the same amplitude cross. At one spot the water hardly moves at all. Why?")
  (right "Crests of one keep meeting troughs of the other there: destructive interference")
  (wrong "The waves destroyed each other's energy"
    "Energy is not destroyed. It is larger at the spots where the waves add, and smaller where they cancel.")
  (wrong "The waves bounced off each other at that spot"
    "Waves do not bounce off each other. They pass through, and their displacements add.")
  (hint "Think about crest meeting trough."))
```

```check
(choice
  (ask "After two pulses on a rope pass through each other, what are they like?")
  (right "Just as they were before they met")
  (wrong "Smaller, because they lost energy interfering"
    "Interference changes the shape only while they overlap. Afterwards each pulse goes on as before.")
  (wrong "Joined into one larger pulse"
    "Waves add only while they overlap, then separate again unchanged.")
  (hint "Superposition holds only while they overlap."))
```

So: overlapping waves add by superposition; in step they make a larger
wave (constructive), out of step they cancel (destructive).
