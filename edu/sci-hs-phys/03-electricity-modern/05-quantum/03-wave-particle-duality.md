# Waves and particles

```lesson
(objective "Decide which model of light, wave or particle, explains an experiment better, and say that electrons diffract too.")
(standards "HS-PS4-3")
(minutes 25)
(keywords "wave-particle duality")
```

You can decide which model of light explains an experiment, and see
that matter behaves the same double way.

Some experiments show light acting as a wave: the bright and dark bands
of the double-slit experiment come from interference, and light
diffracts around edges. Others show it acting as a stream of particles:
the photoelectric effect needs photons.

Neither model alone explains everything. Light shows both kinds of
behavior, and so, it turns out, does matter. This is
**wave-particle duality**.

```sources
(source "OpenStax, Physics (2020), chapter 21, The Quantum Nature of Light")
```

```check
(choice
  (ask "Which experiment is best explained by the wave model of light?")
  (right "Light through two narrow slits makes bright and dark bands")
  (wrong "Light below a threshold frequency frees no electrons from a metal"
    "That needs photons: each one must carry enough energy alone. The wave model cannot explain it.")
  (wrong "Light frees electrons at once, even when very dim"
    "In the wave model, dim light would take time to build up enough energy. Electrons leaving at once fits the photon model.")
  (hint "Which result comes from waves adding and canceling?"))
```

---

## One photon at a time

Make light so dim that photons go through two slits one at a time. Each
photon lands on the screen at a single spot, like a particle, at a
place you cannot predict. But as more arrive, the spots build up the
bright and dark bands of interference, like a wave.

```figure
(define n (slider 'n 10 400 20 "Photons arrived" 10))
(define (fr u) (- u (floor u)))
(frame 20 30 280 160 'ink 1)
(let loop ((k 1) (got 0))
  (if (and (< got n) (< k 3000))
      (let* ((u (fr (* 43758.5453 (sin (* 12.9898 k)))))
             (v (fr (* 24634.6345 (sin (* 78.233 k)))))
             (x (+ 22 (* 276 u)))
             (d (- x 160))
             (c (cos (/ d 13)))
             (ok (< v (* c c (exp (- (/ (* d d) 9000)))))))
        (if ok (dot x (+ 36 (* 148 (fr (* 7.31 k u)))) 'ink))
        (loop (+ k 1) (if ok (+ got 1) got)))))
(caption "Each dot is one photon's arrival on the screen.")
```

```sources
(source "G. I. Taylor, Interference Fringes with Feeble Light, Proceedings of the Cambridge Philosophical Society 15 (1909)")
```

```check
(choice
  (ask "With only 20 photons, the dots look scattered. With 400, bands appear. What does that show?")
  (right "Each photon arrives as a particle, but where photons land follows the wave's interference pattern")
  (wrong "The photons collide with each other to make the bands"
    "The photons went through one at a time, so they could not meet. The pattern builds up anyway.")
  (wrong "Light is a wave only, and the dots are a mistake"
    "Each photon really does land at one spot. That is particle behavior; the pattern is wave behavior.")
  (hint "Look at one dot, and then at all of them together."))
```

---

## Electrons diffract too

In 1924 Louis de Broglie proposed that matter has a wavelength too:
$lambda = h / p$, where $p$ is momentum. In 1927 Clinton Davisson and
Lester Germer, and separately George Paget Thomson, fired electrons at
crystals and saw the patterns of diffraction that waves make, with just
the wavelengths he predicted.

Electron microscopes use the short wavelength of fast electrons to see
details far smaller than visible light can show.

```sources
(source "C. Davisson and L. H. Germer, Diffraction of Electrons by a Crystal of Nickel, Physical Review 30 (1927)")
(source "The Nobel Prize in Physics 1937, nobelprize.org: Clinton Joseph Davisson and George Paget Thomson, for their experimental discovery of the diffraction of electrons by crystals")
```

```check
(choice
  (ask "Electrons fired at a crystal make a pattern of diffraction rings. What does that show?")
  (right "Electrons, which are particles of matter, also behave as waves")
  (wrong "Electrons are really photons"
    "Electrons have mass and charge; photons do not. Both show wave and particle behavior.")
  (wrong "The crystal gives off light"
    "The pattern is made by the electrons themselves, spreading and interfering like waves.")
  (hint "Diffraction is behavior of what kind of thing?"))
```

---

## Choosing a model

Physicists use the model that explains the experiment in front of them:

- **how light travels**, through slits, lenses and around edges: the
  wave model;
- **how light gives or takes energy**, as when it frees an electron or
  is absorbed by an atom: the photon model.

```check
(choice
  (ask "A camera's sensor counts the light falling on each pixel by the electrons the light frees. Which model explains that best?")
  (right "The photon model")
  (wrong "The wave model"
    "Freeing electrons is light giving up energy, one photon to one electron. That is the photon model's job.")
  (hint "Is this about how light travels, or how it gives up energy?"))
```

```check
(choice
  (ask "A thin layer of oil on water shows colored bands, because light reflected from its top and bottom surfaces adds and cancels. Which model explains that best?")
  (right "The wave model")
  (wrong "The photon model"
    "Adding and canceling is interference, which is wave behavior.")
  (hint "Adding and canceling: what is that called?"))
```

---

## Practice

```check
(choice
  (ask "Which statement is true?")
  (right "Light and electrons each show both wave and particle behavior")
  (wrong "Light is a wave and electrons are particles, with no overlap"
    "Photons show light's particle side; electron diffraction shows matter's wave side.")
  (wrong "Light is a wave only when it is bright"
    "Even one photon at a time builds up an interference pattern. Brightness does not decide the model.")
  (hint "Think of the photoelectric effect and electron diffraction."))
```

---

Light and matter both show wave-particle duality: waves explain how
they travel and interfere, and particles explain how energy is given
and taken.
