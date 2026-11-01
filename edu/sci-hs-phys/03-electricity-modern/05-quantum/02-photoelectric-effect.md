# The photoelectric effect

```lesson
(objective "Explain the photoelectric effect, and why it needs the photon model and not the wave model.")
(standards "HS-PS4-3")
(minutes 25)
(keywords "photoelectric effect" "threshold frequency")
```

You can explain how light knocks electrons out of a metal, and why
that shows light comes in photons.

Light falling on a clean metal can free electrons from its surface.
This is the **photoelectric effect**. In the simulated metal below, an
electron needs at least 2.3 eV of energy to escape.

Change the light's frequency and its brightness.

```figure
(define f (slider 'f 3 15 4 "f, 10^14 Hz" 0.5))
(define b (slider 'b 1 5 3 "Brightness" 1))
(define ev (/ (* 6.63 f) 16))
(define ke (- ev 2.3))
(define n (if (> ke 0) (* 2 b) 0))
(rect 30 150 260 20 'grey) (frame 30 150 260 20 'ink 1)
(text 160 190 "metal" 'centre 'small)
(for-range 0 b (lambda (k) (arrow (+ 40 (* 22 k)) 30 (+ 80 (* 22 k)) 140 'cool 1.5)))
(text 40 24 "light" 'small)
(for-range 0 n
  (lambda (k)
    (let ((x (+ 170 (* 12 k))) (len (* 30 (sqrt (max ke 0)))))
      (dot x 144)
      (arrow x 140 (+ x 6) (- 140 len) 'ink 1))))
(text 160 210 (string-append "photon: " (fmt ev 2) " eV") 'centre 'small)
(text 160 226 (if (> ke 0) (string-append "electrons freed, up to " (fmt ke 2) " eV each") "no electrons freed") 'centre 'small 'bold)
```

```sources
(source "OpenStax, Physics (2020), chapter 21, The Quantum Nature of Light")
(source "A. Einstein, Über einen die Erzeugung und Verwandlung des Lichtes betreffenden heuristischen Gesichtspunkt, Annalen der Physik 17 (1905)")
```

```check
(choice
  (ask "In the figure, set the frequency to 4 x 10^14 Hz. What happens as you make the light brighter?")
  (right "Still no electrons are freed")
  (wrong "Electrons start to come out once it is bright enough"
    "Each photon of this light carries only about 1.7 eV, less than the 2.3 eV an electron needs. More such photons do not help.")
  (wrong "Electrons come out faster"
    "No electrons come out at all at this frequency, however bright the light.")
  (hint "Compare the photon's energy with the 2.3 eV needed."))
```

---

## The threshold frequency

For each metal there is a lowest frequency of light that frees any
electrons at all: its **threshold frequency**. Below it, no electrons
leave, however bright the light. Above it, electrons leave at once,
even in very dim light.

The wave model cannot explain this. In it, brighter light carries more
energy, so it should free electrons at any frequency, given time. The
photon model can: one photon gives all its energy to one electron, so
what matters is whether each photon, $h f$, carries enough.

```check
(number
  (ask "Electrons need 2.3 eV to escape this metal. A photon's energy is hf. What is the threshold frequency, in units of 10^14 Hz? Give it to the nearest tenth. (Use" (math "1 eV = 1.60 * 10^-19") "J.)")
  (answer 5.6) (within 0.05) (from "2.3 * 1.60 * 10^-19 / (6.63 * 10^-34) / 10^14")
  (wrong-if 3.5 "That uses 2.3 x 10^-19 J, not 2.3 eV. First change 2.3 eV to joules: 2.3 x 1.60 x 10^-19 J.")
  (hint "Set h f = 2.3 eV, with 2.3 eV changed to joules.")
  (hint "f = 2.3 x 1.60 x 10^-19 / 6.63 x 10^-34."))
```

---

## How fast do they leave?

A photon with more than enough energy gives the extra to the electron
as kinetic energy. The fastest electrons have a kinetic energy

$$ KE = h f - W $$

where $W$ is the least energy needed to free an electron from that
metal. Raise the frequency in the figure, and the arrows grow longer.

```check
(number
  (ask "Photons of 4.1 eV fall on the metal, where W = 2.3 eV. What is the greatest kinetic energy of the freed electrons, in eV?")
  (answer 1.8) (within 0.05) (from "4.1 - 2.3") (unit "eV")
  (wrong-if 6.4 "That adds. The electron uses 2.3 eV to escape and keeps what is left: 4.1 - 2.3.")
  (hint "KE = hf - W."))
```

---

## Brighter light

Above the threshold, brighter light means more photons each second.
Each photon frees at most one electron, so more electrons leave, but
each photon has the same energy, so they are no faster.

```check
(choice
  (ask "Light above the threshold frequency is made twice as bright. What happens?")
  (right "About twice as many electrons are freed, with the same greatest speed")
  (wrong "The same number of electrons, moving faster"
    "Brighter light has more photons, not bigger ones. Each photon still gives the same energy, so the speed does not change.")
  (wrong "Twice as many electrons, moving faster too"
    "The number goes up, but the photon energy, hf, is the same. So the greatest speed stays the same.")
  (hint "Does brighter light change the photon's energy, or the number of photons?"))
```

---

## Evidence for photons

Einstein explained the photoelectric effect with photons in 1905, and
he was awarded the 1921 Nobel Prize in Physics for it. Robert Millikan's
careful measurements in 1916 matched his equation.

```sources
(source "The Nobel Prize in Physics 1921, nobelprize.org: Albert Einstein, for his discovery of the law of the photoelectric effect")
(source "R. A. Millikan, A Direct Photoelectric Determination of Planck's h, Physical Review 7 (1916)")
```

```check
(choice
  (ask "Which observation shows most clearly that light comes in photons?")
  (right "Below a certain frequency, even very bright light frees no electrons")
  (wrong "Light can pass through two slits and make bands"
    "That pattern is evidence for the wave model. The threshold frequency is the evidence for photons.")
  (wrong "Bright light warms a metal"
    "Both models explain warming. The photon model is needed for the threshold frequency.")
  (hint "Which result did the wave model fail to explain?"))
```

---

## Practice

```check
(choice
  (ask "Red light frees no electrons from a metal, but blue light does. Why?")
  (right "Each blue photon carries enough energy to free an electron; each red photon does not")
  (wrong "The blue light is brighter"
    "Brightness does not decide whether electrons leave. Even bright red light frees none; it is the energy of each photon that matters.")
  (wrong "Blue light is a wave and red light is not"
    "Both are electromagnetic waves, and both come in photons. Blue photons carry more energy.")
  (hint "Compare hf for red and for blue."))
```

```check
(number
  (ask "Photons of 3.0 eV free electrons with up to 0.8 eV of kinetic energy. How much energy, W, does it take to free an electron from this metal, in eV?")
  (answer 2.2) (within 0.05) (from "3.0 - 0.8") (unit "eV")
  (wrong-if 3.8 "The electron leaves with what is left after escaping. W = hf - KE = 3.0 - 0.8.")
  (hint "KE = hf - W, so W = hf - KE."))
```

---

In the photoelectric effect, each photon frees at most one electron
and only if $h f$ is enough: below the threshold frequency nothing
happens, which only the photon model explains.
