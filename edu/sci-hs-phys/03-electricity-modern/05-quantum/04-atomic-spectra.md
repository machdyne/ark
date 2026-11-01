# Atomic spectra

```lesson
(objective "Explain emission and absorption spectra by electrons moving between energy levels and giving out or taking in photons.")
(standards "HS-PS4-3")
(minutes 25)
(keywords "energy level" "emission spectrum" "absorption spectrum")
```

You can explain why each kind of atom gives out and takes in only
certain colors of light.

An electron in an atom cannot have just any energy. It can have only
certain values, the atom's **energy levels**. When the electron drops
from a higher level to a lower one, the atom gives out one photon whose
energy is exactly the difference. From a level of energy $E_2$ down to
a lower level $E_1$:

$$ E = E_2 - E_1 $$

The figure shows the lowest energy levels of hydrogen. The energies are
negative because it takes energy to pull the electron away from the
atom.

```figure
(define k (choice 'j '("3 to 2" "4 to 2" "2 to 1" "3 to 1") "Jump"))
(define lv '(-13.6 -3.40 -1.51 -0.85 -0.54))
(define (ly e) (- 30 (* 12.5 e)))
(for-each (lambda (e) (line 40 (ly e) 200 (ly e) 'ink 1.5)) lv)
(text 206 (+ (ly -13.6) 4) "n = 1: -13.6 eV" 'small)
(text 206 (+ (ly -3.40) 4) "n = 2: -3.40 eV" 'small)
(text 206 (+ (ly -1.51) 8) "n = 3: -1.51 eV" 'small)
(text 206 32 "n = 4, 5 ..." 'tiny)
(define hi (list-ref '(-1.51 -0.85 -3.40 -1.51) k))
(define lo (list-ref '(-3.40 -3.40 -13.6 -13.6) k))
(define de (- hi lo))
(arrow 110 (ly hi) 110 (ly lo) 'ink 2.5)
(path (let loop ((i 0) (pts '()))
        (if (> i 16) pts
            (loop (+ i 1) (append pts (list (+ 116 (* 3 i)) (+ (ly lo) -8 (* 4 (sin (* i 1.6))))))))) 'ink 1)
(text 40 225 (string-append "photon: " (fmt de 2) " eV, " (fmt (/ 1243 de) 0) " nm") 'small 'bold)
```

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
```

```check
(number
  (ask "A hydrogen atom's electron drops from n = 2, at -3.40 eV, to n = 1, at -13.6 eV. What is the energy of the photon, in eV?")
  (answer 10.2) (within 0.05) (from "-3.40 - (-13.6)") (unit "eV")
  (wrong-if 17 "That adds the sizes, 3.40 + 13.6. The photon carries the difference: -3.40 - (-13.6).")
  (wrong-if -10.2 "The photon carries away a positive amount of energy: the higher level minus the lower.")
  (hint "E = E_high - E_low."))
```

---

## Emission spectra

Heat a gas of one element, or pass a current through it, and its atoms
are lifted to higher levels. As they drop back, they give out photons
of only the energies of their gaps. Spread out by a prism, the light is
a set of bright lines on a dark background: the element's
**emission spectrum**.

Every element has its own set of levels, and so its own set of lines:
a fingerprint that identifies it.

```check
(choice
  (ask "Why does glowing hydrogen give out only a few colors, not a full rainbow?")
  (right "Its photons can only have energies equal to the gaps between its energy levels")
  (wrong "The other colors are absorbed by the glass tube"
    "The gas itself makes only those colors. Only drops between its fixed levels are possible.")
  (wrong "Hydrogen is too cold to make other colors"
    "Even very hot hydrogen gas gives the same lines. They come from its fixed energy levels.")
  (hint "Which photon energies can a drop between levels make?"))
```

---

## Absorption spectra

Shine white light, with every color, through a cool gas. An atom can
take in a photon only if its energy exactly matches a gap that lifts an
electron to a higher level. Those photons are removed, leaving dark
lines in the rainbow: the gas's **absorption spectrum**. The dark lines
are at the same energies as the bright lines of its emission spectrum.

```check
(choice
  (ask "White light passes through cool hydrogen. Which photons does the gas take in?")
  (right "Only those whose energy matches a gap between two of its energy levels")
  (wrong "All photons with more than 10.2 eV"
    "A photon is taken in only if its energy exactly matches a gap (or is enough to free the electron completely). Others pass through.")
  (wrong "All of them, a little each"
    "An atom cannot take part of a photon. It takes the whole photon, and only if the energy fits a gap.")
  (hint "Absorption is emission run backward."))
```

---

## Reading starlight

The light of the sun and stars has dark absorption lines, made by the
gases in their outer layers. Matching the lines to elements tells
astronomers what a star is made of. Helium was first found this way, in
the sun's spectrum in 1868, before it was found on Earth.

```sources
(source "NASA Science, Imagine the Universe: Spectra")
(source "Royal Society of Chemistry, Periodic Table: Helium (discovery)")
```

```check
(choice
  (ask "How can astronomers tell that a distant star contains sodium?")
  (right "Its spectrum has dark lines at exactly the energies of sodium's lines")
  (wrong "Sodium makes the star look yellow"
    "Many stars look yellow for other reasons. The proof is the exact pattern of lines, a fingerprint.")
  (wrong "They collect samples of the star"
    "No probe can reach a star. Its light carries the fingerprint of its gases.")
  (hint "Every element has its own pattern of lines."))
```

---

## A red line

```example
(example
  (problem "Hydrogen's electron drops from n = 3 (-1.51 eV) to n = 2 (-3.40 eV). Find the photon's energy and wavelength.")
  (step "E = -1.51 - (-3.40) = 1.89 eV.")
  (step "lambda = hc / E. With hc = 1,243 eV nm, lambda = 1,243 / 1.89.")
  (answer "About 660 nm: red light, the brightest visible line of hydrogen."))
```

```check
(number
  (ask "Hydrogen's electron drops from n = 4 (-0.85 eV) to n = 2 (-3.40 eV). What is the photon's energy, in eV? Give it to the nearest hundredth.")
  (answer 2.55) (within 0.005) (from "-0.85 - (-3.40)") (unit "eV")
  (wrong-if 4.25 "That adds 0.85 and 3.40. The photon carries the difference: -0.85 - (-3.40).")
  (hint "E = E_high - E_low."))
```

---

## Practice

```check
(choice
  (ask "Which drop in a hydrogen atom gives out the photon with the shortest wavelength?")
  (right "From n = 3 to n = 1")
  (wrong "From n = 3 to n = 2"
    "That gap is only 1.89 eV. Drops to n = 1 cross a much bigger gap, giving more energetic photons with shorter wavelengths.")
  (wrong "From n = 4 to n = 2"
    "That gap is 2.55 eV. From n = 3 to n = 1 is 12.09 eV, far bigger, so the wavelength is far shorter.")
  (hint "Biggest energy gap, shortest wavelength."))
```

```check
(choice
  (ask "Compare a gas's absorption lines with its emission lines.")
  (right "They are at the same energies")
  (wrong "The absorption lines are at higher energies"
    "Taking in a photon to go up a gap, and giving one out to come down the same gap, use the same energy.")
  (wrong "They have nothing to do with each other"
    "Both come from the same gaps between the same energy levels.")
  (hint "The gaps between the levels are the same either way."))
```

---

An atom's electrons have only certain energy levels, so the atom gives
out and takes in only photons whose energy matches a gap: bright
emission lines and dark absorption lines at the same energies.
