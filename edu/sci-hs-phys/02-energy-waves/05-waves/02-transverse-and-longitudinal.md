# Transverse and longitudinal waves

```lesson
(objective "Tell transverse from longitudinal waves by how the medium moves.")
(standards "HS-PS4-1")
(minutes 20)
(keywords "transverse wave" "longitudinal wave")
```

You learn to sort waves into two kinds by the way their medium moves.

Waves differ in the direction the medium moves, compared with the
direction the wave travels:

- In a **transverse wave**, the medium moves at right angles to the direction the wave travels. Shake a rope up and down: the wave runs along it, and the rope moves up and down.
- In a **longitudinal wave**, the medium moves back and forth along the direction the wave travels. Push and pull the end of a long, loose spring: bunched-up and spread-out places run along it.

Choose a kind and watch the marked particle.

```figure
(define k (choice 'kind '("transverse" "longitudinal") "Wave"))
(define ph (* 0.5 (seconds)))
(define (d x) (* 18 (sin (* 2 pi (- (/ (- x 20) 140) ph)))))
(arrow 110 30 210 30 'ink 1.5)
(text 160 22 "the wave travels this way" 'centre 'small)
(for-range 0 24
  (lambda (i)
    (let ((x (+ 24 (* 12 i))))
      (if (= k 0)
          (circle x (- 120 (d x)) (if (= i 11) 6 3.5) (if (= i 11) 'warm 'ink))
          (line (+ x (d x)) 95 (+ x (d x)) 145 (if (= i 11) 'warm 'ink) (if (= i 11) 3 1.2))))))
(if (= k 0) (arrow 156 190 156 160 'ink 1) (arrow 140 175 180 175 'ink 1))
(text 160 205 (if (= k 0) "each particle moves up and down" "each part moves back and forth") 'centre 'small)
(caption "Real time. The wave moves; each part stays near its place.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 16.9, Waves")
```

```check
(choice
  (ask "You push and pull one end of a long, loose spring along its length. What kind of wave runs along it?")
  (right "Longitudinal: the coils move back and forth along the spring")
  (wrong "Transverse: the wave moves along the spring"
    "Every wave moves along its medium. What decides the kind is how the coils move: here, back and forth along the spring.")
  (wrong "Neither: a spring cannot carry a wave"
    "A loose spring carries waves very well. The bunched-up places you see running along it are a wave.")
  (hint "Compare how the coils move with where the wave goes."))
```

---

## Examples

- A wave on a guitar string or a rope is transverse.
- Sound in air is longitudinal: the air is squeezed together and spread apart, along the direction the sound travels.
- An earthquake sends out both kinds through the ground. The longitudinal ones travel faster and arrive first.

Waves on the surface of water are neither kind exactly: the water near
the surface moves round in circles.

```sources
(source "USGS Earthquake Hazards Program, Seismic waves (P waves and S waves)")
(source "OpenStax, College Physics 2e (2022), section 16.9, Waves, and section 17.2, Speed of Sound, Frequency, and Wavelength")
```

```check
(choice
  (ask "A long line of people stands shoulder to shoulder. The person at one end bumps into the next person, and each person in turn bumps the next one down the line. What kind of wave is this?")
  (right "Longitudinal: each person moves along the line, the way the bump travels")
  (wrong "Transverse: the bump travels sideways"
    "The bump travels along the line, and so does each person's motion. Motion along the direction of travel makes it longitudinal.")
  (wrong "Not a wave, because people are not a medium"
    "Anything that passes a disturbance from part to part can be a medium, even a line of people.")
  (hint "Does each person move along the line or across it?"))
```

---

## Practice

```check
(choice
  (ask "Which statement is true of both kinds of wave?")
  (right "The medium moves about its place while energy travels on")
  (wrong "The medium moves at right angles to the wave"
    "That is true only of transverse waves. In a longitudinal wave the medium moves along the direction of travel.")
  (wrong "The medium travels along with the wave"
    "In neither kind does the medium travel with the wave. Each part only moves about its place.")
  (hint "Think about the marked particle in both kinds."))
```

```check
(choice
  (ask "A rope is shaken up and down to send a wave east. Which way does a point on the rope move?")
  (right "Up and down")
  (wrong "East, with the wave"
    "The wave travels east, but the rope does not. On a transverse wave, each point moves at right angles to the travel.")
  (wrong "Back and forth, east and west"
    "That would be a longitudinal wave. A rope shaken up and down carries a transverse wave.")
  (hint "Which way did the hand shake the rope?"))
```

So: in a transverse wave the medium moves across the wave's path, and
in a longitudinal wave it moves back and forth along it.
