# Photons

```lesson
(objective "Compute a photon's energy with E = hf, in joules and electronvolts.")
(standards "HS-PS4-3" "HSA-CED.A.4")
(minutes 25)
(keywords "photon" "Planck's constant" "electronvolt")
```

You can work out the energy that light carries in each of its smallest
packets.

Light is an electromagnetic wave, yet it gives up its energy only in
whole packets. Each packet of light is a **photon**. The energy of one
photon depends only on the light's frequency:

$$ E = h f $$

Here $h$ is **Planck's constant**, $h = 6.63 * 10^-34$ J s. Max Planck
introduced it in 1900; in 1905 Albert Einstein proposed that light
itself comes in such packets.

```sources
(source "OpenStax, Physics (2020), chapter 21, The Quantum Nature of Light")
(source "NIST, CODATA Recommended Values of the Fundamental Physical Constants (2018): Planck constant, 6.62607015 x 10^-34 J s, exact")
```

```check
(number
  (ask "Green light has a frequency of" (math "5.0 * 10^14") "Hz. A photon's energy is some number times" (math "10^-19") "J. What is that number, to the nearest tenth?")
  (answer 3.3) (within 0.05) (from "6.63 * 10^-34 * 5.0 * 10^14 / 10^-19")
  (wrong-if 1.3 "That divides 6.63 by 5.0. E = h f: multiply.")
  (hint "E = 6.63 x 10^-34 x 5.0 x 10^14.")
  (hint "6.63 x 5.0 = 33.15, and 10^-34 x 10^14 = 10^-20. So E = 33.15 x 10^-20 J."))
```

---

## Shorter waves, bigger packets

Since $c = f lambda$, the frequency is $f = c / lambda$, and

$$ E = h c / lambda $$

The shorter the wavelength, the higher the frequency and the more
energy each photon carries. A photon of blue light carries more energy
than a photon of red light; an X-ray photon carries far more.

```check
(choice
  (ask "Which carries the most energy per photon?")
  (right "Ultraviolet light")
  (wrong "Red light"
    "Red light has the longest wavelength of the three, so the lowest frequency and the least energy per photon.")
  (wrong "Infrared light"
    "Infrared has an even longer wavelength than red light, so its photons carry even less energy.")
  (hint "E = h f: which has the highest frequency?"))
```

---

## The electronvolt

Joules are huge for single photons, so physicists often use a smaller
unit. One **electronvolt** (eV) is the energy an electron gains moving
across 1 V: 1 eV = $1.60 * 10^-19$ J.

Change the wavelength of the light.

```figure
(define lam (slider 'lam 250 1000 550 "Wavelength (nm)" 10))
(define ev (/ 1243 lam))
(number-line 30 290 120 0 5 0.5 1)
(rect (nl-x 1.65) 92 (- (nl-x 3.26) (nl-x 1.65)) 20 'grey)
(frame (nl-x 1.65) 92 (- (nl-x 3.26) (nl-x 1.65)) 20 'ink 1)
(text (nl-x 2.45) 84 "visible" 'centre 'small)
(text (nl-x 0.8) 84 "infrared" 'centre 'small)
(text (nl-x 4.2) 84 "ultraviolet" 'centre 'small)
(nl-mark ev 'warm)
(text 160 168 "photon energy (eV)" 'centre 'small)
(text 160 200 (string-append "E = " (fmt ev 2) " eV = " (fmt (* ev 1.6) 2) " x 10^-19 J") 'centre 'body 'bold)
(caption "E = hc / lambda, with hc = 1,243 eV nm.")
```

```check
(number
  (ask "A photon has an energy of" (math "3.2 * 10^-19") "J. What is that in electronvolts?")
  (answer 2) (from "3.2 * 10^-19 / (1.60 * 10^-19)") (unit "eV")
  (wrong-if 5.12 "That multiplies. Each eV is 1.60 x 10^-19 J, so divide the joules by that.")
  (hint "Divide by 1.60 x 10^-19 J per eV."))
```

---

## Visible light

Photons of visible light have energies from about 1.7 eV (red) to about
3.1 eV (violet). Your eyes respond only to photons in about that
range.

```sources
(source "OpenStax, Physics (2020), chapter 21, The Quantum Nature of Light")
```

```check
(number
  (ask "Use the figure: what is the energy of a photon of 700 nm red light, in eV? Give it to the nearest tenth.")
  (answer 1.8) (within 0.05) (from "1243 / 700") (unit "eV")
  (wrong-if 0.6 "That divides 700 by 1,243. The shorter the wavelength the bigger the energy: E = 1,243 / 700.")
  (hint "Move the slider to 700, or work out 1,243 / 700."))
```

---

## Counting photons

```example
(example
  (problem "A lamp gives out 1 W of green light, with photons of 3.3 x 10^-19 J. How many photons does it give out each second?")
  (step "1 W is 1 J each second.")
  (step "Number = 1 / (3.3 x 10^-19).")
  (answer "About 3 x 10^18 photons each second."))
```

That is why light looks smooth: the packets are tiny and there are
enormous numbers of them.

```check
(choice
  (ask "A red lamp and a blue lamp each give out 1 W of light. Which gives out more photons each second?")
  (right "The red lamp")
  (wrong "The blue lamp"
    "Each blue photon carries more energy. For the same 1 J each second, the blue lamp needs fewer of them.")
  (wrong "Both the same"
    "The same energy each second, but red photons are smaller packets. So there must be more of them.")
  (hint "Which photons carry less energy each?"))
```

---

## Practice

```check
(number
  (ask "A photon has a frequency of" (math "1.0 * 10^15") "Hz. What is its energy in eV, to the nearest tenth?")
  (answer 4.1) (within 0.05) (from "6.63 * 10^-34 * 1.0 * 10^15 / (1.60 * 10^-19)") (unit "eV")
  (wrong-if 6.6 "That is E in units of 10^-19 J. Divide by 1.60 to get eV.")
  (hint "E = h f = 6.63 x 10^-19 J. Then divide by 1.60 x 10^-19 J per eV."))
```

```check
(choice
  (ask "The frequency of some light is doubled. What happens to the energy of each photon?")
  (right "It doubles")
  (wrong "It is 4 times as big"
    "E = h f: energy is proportional to frequency, not to its square.")
  (wrong "It halves"
    "Higher frequency means more energy per photon, not less.")
  (hint "E = h f."))
```

---

Light comes in photons of energy $E = h f$, more for higher
frequencies; $h = 6.63 * 10^-34$ J s, and 1 eV is $1.60 * 10^-19$ J.
