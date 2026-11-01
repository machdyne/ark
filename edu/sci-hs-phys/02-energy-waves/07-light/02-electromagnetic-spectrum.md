# The electromagnetic spectrum

```lesson
(objective "Order the electromagnetic spectrum by wavelength and frequency, and compute with c = f lambda.")
(standards "HS-PS4-1" "HSA-CED.A.4")
(minutes 25)
(keywords "electromagnetic spectrum" "visible light" "radio wave" "microwave" "infrared" "ultraviolet" "X-ray" "gamma ray")
```

You learn the whole family of electromagnetic waves, in order, and how
to find the frequency of each from its wavelength.

Light is one member of a large family. All electromagnetic waves
travel at $c$ in empty space, so for every one of them

$$ c = f lambda $$

The longer the wavelength, the lower the frequency. The whole range of
electromagnetic waves, ordered by wavelength, is the
**electromagnetic spectrum**.

```sources
(source "NASA Science, Tour of the Electromagnetic Spectrum (2010)")
(source "OpenStax, College Physics 2e (2022), section 24.3, The Electromagnetic Spectrum")
```

```check
(number
  (ask "An electromagnetic wave has a wavelength of 3.0 m. What is its frequency, in megahertz (MHz, millions of hertz)?")
  (answer 100) (unit "MHz") (from "3.00 * 10^8 / 3.0 / 10^6")
  (wrong-if 900 "That is c times lambda. f = c / lambda.")
  (wrong-if 100000000 "That is right in hertz. A megahertz is a million hertz, so divide by 10^6.")
  (hint "f = c / lambda = 3.00 * 10^8 / 3.0."))
```

---

## The bands

From the longest wavelengths to the shortest:

- **radio waves**: longer than about 1 m; AM and FM radio, much of TV
- **microwaves**: about 1 mm to 1 m; ovens, radar, Wi-Fi, mobile phones
- **infrared**: about 700 nm to 1 mm; given off strongly by warm objects
- **visible light**: about 400 nm (violet) to 700 nm (red), the only band your eyes see
- **ultraviolet**: about 10 nm to 400 nm; causes sunburn
- **X-rays**: about 0.01 nm to 10 nm; pass through soft tissue
- **gamma rays**: shorter than about 0.01 nm; given off by radioactive materials and in violent events in space

A nanometer (nm) is $10^-9$ m. The boundaries between bands are not
sharp. Move the slider along the spectrum.

```figure
(define e (slider 'e -12 3 -7 "Power of 10" 0.5))
(define lam (expt 10 e))
(define (xx p) (+ 20 (* 18.5 (+ p 12))))
(still
  (line 20 120 300 120 'ink 1.5)
  (for-range 0 16 (lambda (i) (line (xx (- i 12)) 116 (xx (- i 12)) 124 'ink 1)))
  (for-each (lambda (p) (math (xx p) 145 (string-append "10^" (number->string p)) 12))
            '(-12 -9 -6 -3 0 3))
  (rect (xx -6.4) 100 (- (xx -6.15) (xx -6.4)) 40 'warm)
  (for-each (lambda (b) (text (xx (car b)) (cadr b) (caddr b) 'centre 'tiny))
            '((1.5 90 "radio") (-1.5 72 "micro-") (-1.5 82 "wave") (-4.7 90 "infrared")
              (-6.3 60 "visible") (-7.9 90 "ultra-") (-7.9 100 "violet") (-10 90 "X-ray") (-12 72 "gamma")))
  (text 160 172 "wavelength (m)" 'centre 'small))
(arrow (xx e) 40 (xx e) 112 'ink 1.5)
(math 130 205 (string-append "lambda = 10^" (fmt e 1)) 14)
(math 240 205 (string-append "f = 10^" (fmt (- 8.477 e) 1)) 14)
(text 160 222 "lambda in m, f in Hz" 'centre 'tiny)
(caption "Each tick is 10 times the one to its left.")
```

```check
(choice
  (ask "Which list goes from the longest wavelength to the shortest?")
  (right "radio, microwave, infrared, visible, ultraviolet, X-ray, gamma")
  (wrong "gamma, X-ray, ultraviolet, visible, infrared, microwave, radio"
    "That is from shortest to longest. Radio waves are the longest: meters or more.")
  (wrong "visible, infrared, ultraviolet, radio, microwave, X-ray, gamma"
    "Visible light sits in the middle, between infrared on its long side and ultraviolet on its short side.")
  (hint "Radio waves are longest; gamma rays are shortest."))
```

---

## Frequency order

Since $f = c / lambda$, the order by frequency is the reverse: radio
waves have the lowest frequencies and gamma rays the highest. Within
visible light, red has the longest wavelength and lowest frequency,
violet the shortest wavelength and highest frequency.

```check
(choice
  (ask "Which has the higher frequency, infrared or ultraviolet?")
  (right "Ultraviolet")
  (wrong "Infrared"
    "Infrared has longer wavelengths than visible light, ultraviolet shorter ones. Shorter wavelength means higher frequency.")
  (wrong "They are the same, since both travel at c"
    "The same speed does not mean the same frequency. f = c / lambda, and their wavelengths differ.")
  (hint "f = c / lambda: the shorter the wavelength, the higher the frequency."))
```

---

## Worked example

```example
(example
  (problem "Red light has a wavelength of 700 nm. What is its frequency?")
  (step "lambda = 700 nm = 7.00 * 10^-7 m.")
  (step "f = c / lambda = 3.00 * 10^8 / 7.00 * 10^-7 = 4.3 * 10^14 Hz.")
  (answer "about 4.3 * 10^14 Hz"))
```

```example
(example
  (problem "An FM radio station broadcasts at 100 MHz (1.00 * 10^8 Hz). What is the wavelength?")
  (step "lambda = c / f.")
  (step (number (ask "lambda, in meters?") (answer 3) (unit "m") (from "3.00 * 10^8 / (1.00 * 10^8)")
    (wrong-if 0.33 "That is f / c. lambda = c / f.")
    (hint "3.00 * 10^8 / 1.00 * 10^8.")))
  (answer "3.0 m"))
```

---

## Practice

```check
(number
  (ask "A microwave oven uses waves of 2.45 * 10^9 Hz. What is their wavelength, in centimeters, to the nearest tenth?")
  (answer 12.2) (within 0.05) (unit "cm") (from "3.00 * 10^8 / (2.45 * 10^9) * 100")
  (wrong-if 0.122 "That is right in meters. Multiply by 100 for centimeters.")
  (hint "lambda = c / f, in meters, then times 100."))
```

```check
(choice
  (ask "What do radio waves and gamma rays have in common?")
  (right "Both are electromagnetic waves that travel at c in empty space")
  (wrong "Both have the same frequency"
    "They are at opposite ends of the spectrum: radio waves have the lowest frequencies, gamma rays the highest.")
  (wrong "Both need air to travel through"
    "No electromagnetic wave needs a medium. Both cross empty space.")
  (hint "What is true of every electromagnetic wave?"))
```

So: the electromagnetic spectrum runs from long radio waves to short
gamma rays, all at speed $c$, with $c = f lambda$.
