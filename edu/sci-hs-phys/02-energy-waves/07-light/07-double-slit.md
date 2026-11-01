# The double-slit experiment

```lesson
(objective "Explain how the bright and dark bands of the double-slit experiment are evidence for the wave model of light.")
(standards "HS-PS4-3")
(minutes 25)
(keywords "double-slit experiment")
```

You learn how light passing through two narrow slits shows that light
behaves as a wave.

In the early 1800s, Thomas Young shone light of one color through two
narrow slits, close together, onto a screen. If light were a stream of
tiny objects flying in straight lines, you would expect two bright
strips, one behind each slit. Instead the screen showed many evenly
spaced bright and dark bands. This is the
**double-slit experiment**.

```sources
(source "OpenStax, College Physics 2e (2022), section 27.3, Young's Double Slit Experiment")
```

```check
(choice
  (ask "What did the screen show in Young's double-slit experiment?")
  (right "Many evenly spaced bright and dark bands")
  (wrong "Two bright strips, one behind each slit"
    "That is what straight-flying objects would give. The light made many bands, which a wave model explains.")
  (wrong "An even glow with no pattern"
    "The light made a clear pattern of bright and dark bands.")
  (hint "The pattern had more than two bright places."))
```

---

## Why waves make bands

Each slit diffracts the light, so the waves from the two slits spread
and overlap on the screen. At some places the two waves arrive in step:
constructive interference, a bright band. At others they arrive half a
cycle out of step: destructive interference, a dark band.

The bands depend on the difference in distance from the two slits. A
bright band is where it is a whole number of wavelengths: 0, $lambda$,
$2 lambda$... A dark band is where it is a half number: $lambda / 2$,
$3 lambda / 2$...

```figure
(define lam (slider 'lam 400 700 550 "Wavelength (nm)" 50))
(define d (slider 'd 0.1 0.4 0.2 "Slit gap (mm)" 0.05))
(define sp (/ (* lam 0.001) d))
(graph 30 40 260 140 -6 6 0 1.1)
(graph-axes 2 0.5 "y (mm)" "brightness")
(plot (lambda (y) (expt (cos (/ (* pi y) sp)) 2)) 'ink 1.5)
(text 160 220 (string-append "bright bands " (fmt sp 2) " mm apart") 'centre 'small 'bold)
(caption "Screen 1.0 m from very narrow slits.")
```

```check
(choice
  (ask "Make the wavelength longer. What happens to the bands?")
  (right "They spread farther apart")
  (wrong "They come closer together"
    "A longer wavelength needs a larger difference in distance for each band, so the bands move farther out.")
  (wrong "They do not change"
    "The pattern depends on the wavelength. Red light and blue light give different spacings.")
  (hint "Watch the spacing as you move the wavelength slider."))
```

---

## The spacing of the bands

For a screen a distance $L$ from slits a distance $d$ apart, with $L$
much larger than $d$, the bright bands are spaced

$$ Delta y = lambda L / d $$

Measuring the spacing lets you find the wavelength of light, too small
to measure any other simple way: Young did just that.

```check
(number
  (ask "Light of 600 nm passes slits 0.20 mm apart onto a screen 1.0 m away. How far apart are the bright bands, in millimeters?")
  (answer 3) (within 0.01) (unit "mm") (from "600 * 10^-9 * 1.0 / (0.20 * 10^-3) * 1000")
  (wrong-if 0.003 "That is right in meters. Multiply by 1,000 for millimeters.")
  (wrong-if 333 "That is d L / lambda, upside down. Delta y = lambda L / d.")
  (hint "Delta y = lambda L / d, with every length in meters.")
  (hint "6.0 * 10^-7 * 1.0 / 2.0 * 10^-4 = 0.003 m."))
```

---

## Evidence for waves

Dark bands are the key. At a dark band, light from each slit alone
would light the screen, yet with both slits open the place goes dark.
Light plus light makes darkness only if light is a wave whose crests
and troughs can cancel. So the experiment is strong evidence for the
wave model of light.

```check
(choice
  (ask "Why do the dark bands support the wave model?")
  (right "Light from two slits can cancel there, which only waves do")
  (wrong "They show that light runs out before reaching the screen"
    "Bright bands lie farther out than some dark ones, so light reaches there. The dark comes from the two waves cancelling.")
  (wrong "They are shadows of the slits"
    "Shadows would leave two bright strips. The many bands come from interference.")
  (hint "Cover one slit, and a dark band gets light. Why?"))
```

---

## Worked example

```example
(example
  (problem "Bright bands are 2.0 mm apart on a screen 1.5 m from slits 0.40 mm apart. What is the wavelength?")
  (step "Rearrange: lambda = Delta y d / L.")
  (step "lambda = 0.0020 * 0.00040 / 1.5 = 5.3 * 10^-7 m.")
  (answer "about 530 nm, green light"))
```

```example
(example
  (problem "Red light of 700 nm passes slits 0.35 mm apart onto a screen 2.0 m away. How far apart are the bright bands?")
  (step "Delta y = lambda L / d = 7.0 * 10^-7 * 2.0 / 3.5 * 10^-4.")
  (step (number (ask "Delta y, in millimeters?") (answer 4) (within 0.01) (unit "mm") (from "700 * 10^-9 * 2.0 / (0.35 * 10^-3) * 1000")
    (wrong-if 0.004 "That is in meters. 1 m = 1,000 mm.")
    (hint "The answer in meters is 0.004.")))
  (answer "4.0 mm"))
```

---

## Practice

```check
(choice
  (ask "The slits are moved closer together. What happens to the bands?")
  (right "They spread farther apart")
  (wrong "They come closer together"
    "d is in the bottom of lambda L / d. A smaller d gives a larger spacing.")
  (wrong "They vanish"
    "The bands remain while both slits are open; they only change spacing.")
  (hint "Delta y = lambda L / d."))
```

```check
(choice
  (ask "One slit is covered. What happens to the pattern?")
  (right "The evenly spaced bands disappear, since there is nothing to interfere with")
  (wrong "The bands get twice as bright"
    "The bands come from two waves adding and cancelling. With one slit there is only one wave.")
  (wrong "Nothing changes"
    "The bands need light from both slits to interfere. With one covered, they go.")
  (hint "Interference needs two waves."))
```

So: the bright and dark bands of the double-slit experiment come from
interference, so light behaves as a wave, with band spacing
$lambda L / d$.
