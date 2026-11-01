# Diffraction

```lesson
(objective "Explain diffraction, and predict that it is strongest when a gap is about the size of the wavelength.")
(standards "HS-PS4-1")
(minutes 20)
(keywords "diffraction")
```

You learn why waves spread out through gaps and around corners, and
when they spread the most.

Ocean waves pass through a gap in a harbor wall. Behind the wall, they
do not just go straight on in a beam the width of the gap: they spread
out into the water on either side. The spreading of a wave as it passes
through a gap or around the edge of an obstacle is **diffraction**.

```sources
(source "OpenStax, College Physics 2e (2022), section 27.2, Huygens's Principle: Diffraction, and section 27.5, Single Slit Diffraction")
```

```check
(choice
  (ask "Which of these is diffraction?")
  (right "Water waves spreading out after they pass through a narrow gap in a wall")
  (wrong "A wave bouncing back from a wall"
    "That is reflection. Diffraction is spreading out through a gap or around an edge.")
  (wrong "A wave bending as it slows down in shallow water"
    "That is refraction, which comes from a change of speed. Diffraction happens in one medium, at a gap or an edge.")
  (hint "Diffraction is about gaps and edges."))
```

---

## Gap and wavelength

How much a wave spreads depends on the gap compared with the
wavelength. Water waves come from the left; the lines are crests, seen
from above. Change the wavelength and the gap.

```figure
(define L (slider 'L 10 60 30 "Wavelength" 10))
(define a (slider 'a 20 120 60 "Gap" 20))
(define th (if (>= L a) 90 (rad->deg (asin (/ L a)))))
(define off (modulo (* 30 (seconds)) L))
(define y1 (- 120 (/ a 2)))
(define y2 (+ 120 (/ a 2)))
(rect 136 20 8 (- y1 20) 'grey)
(rect 136 y2 8 (- 220 y2) 'grey)
(for-range 0 (+ 1 (floor (/ 120 L)))
  (lambda (k)
    (let ((x (- 136 (* k L) (- L off))))
      (if (> x 20) (line x 24 x 216 'ink 1.5)))))
(for-range 0 (+ 1 (floor (/ 166 L)))
  (lambda (k)
    (let ((r (+ (* k L) off 4)))
      (if (and (< r 166) (< (* r (sin (deg->rad th))) (- y1 4)))
          (begin
            (line (+ 144 r) y1 (+ 144 r) y2 'ink 1.5)
            (arc (+ 144 0) y1 r 0 th 'ink 1.5)
            (arc (+ 144 0) y2 r (- th) 0 'ink 1.5))))))
(caption (string-append "Wavelength / gap = " (fmt (/ L a) 2) ". Slowed down."))
```

Diffraction is strongest when the gap is about one wavelength or
smaller: the waves spread out in half-circles. Through a gap many
wavelengths wide, they go on almost straight, spreading only a little
at the edges.

```check
(choice
  (ask "Set the gap to 120 and the wavelength to 10, then the gap to 20 and the wavelength to 20. When do the waves spread most?")
  (right "When the gap is about the size of the wavelength")
  (wrong "When the gap is much wider than the wavelength"
    "A wide gap lets the wave through almost straight. Spreading is strongest when the gap is close to one wavelength.")
  (wrong "They spread the same in both cases"
    "Look at the crests behind the wall: half-circles in one case, almost straight lines in the other.")
  (hint "Compare the wavelength / gap number in each case."))
```

---

## Hearing round corners

You can hear someone talking in the next room through an open door,
even when you cannot see them. The sound of a voice has wavelengths
from a few centimeters to a few meters, about the size of a door, so
it diffracts strongly round the door frame. Light has wavelengths of
less than a thousandth of a millimeter, so it passes a door almost
straight.

```sources
(source "OpenStax, College Physics 2e (2022), section 17.2, Speed of Sound, Frequency, and Wavelength, and section 27.1, The Wave Aspect of Light: Interference")
```

```check
(choice
  (ask "Why do you hear a band playing around the corner of a building, but cannot see it?")
  (right "Sound's wavelengths are about the size of the building's corners and doors, so it diffracts much more than light")
  (wrong "Sound travels faster than light, so it reaches you first"
    "Light is far faster than sound. The difference is wavelength: long wavelengths spread round corners.")
  (wrong "Light cannot diffract at all"
    "Light does diffract, but its wavelengths are so short that it bends very little round everyday objects.")
  (hint "Compare each wave's wavelength with the size of a doorway."))
```

---

## Worked example

```example
(example
  (problem "Ocean waves 15 m long reach a harbor entrance 20 m wide. Will they spread out much inside the harbor?")
  (step "Compare: wavelength / gap = 15 / 20 = 0.75.")
  (step "The gap is about one wavelength.")
  (answer "Yes: they diffract strongly and spread through the harbor"))
```

```example
(example
  (problem "Sound in air at 20 °C travels at 343 m/s. A 343 Hz tone comes through a doorway 0.9 m wide. Will it spread out much?")
  (step "Wavelength: lambda = v / f = 343 / 343 = 1.0 m.")
  (step (choice (ask "Compared with the 0.9 m door, the wavelength is...")
    (right "about the same size, so the sound spreads strongly")
    (wrong "much smaller, so the sound goes straight"
      "1.0 m is a little more than the 0.9 m door, not much smaller.")))
  (answer "Yes: it spreads widely beyond the door"))
```

---

## Practice

```check
(choice
  (ask "A harbor designer wants waves to pass through an entrance with as little spreading as possible. Which entrance is better?")
  (right "One many wavelengths wide")
  (wrong "One about one wavelength wide"
    "That is the width that spreads the waves the most.")
  (wrong "The width does not matter"
    "How much a wave diffracts depends on the gap compared with the wavelength.")
  (hint "Which gap lets waves through almost straight?"))
```

```check
(choice
  (ask "Water waves pass a gap 0.10 m wide. Which wavelength diffracts most?")
  (right "0.10 m")
  (wrong "0.01 m"
    "A wavelength 10 times smaller than the gap goes through almost straight.")
  (wrong "0.001 m"
    "A wavelength 100 times smaller than the gap barely spreads at all.")
  (hint "Diffraction is strongest when the gap is about one wavelength."))
```

So: diffraction is the spreading of a wave through a gap or round an
edge, and it is strongest when the gap is about one wavelength.
