# Wave speed

```lesson
(objective "Use v = f lambda to find a wave's speed, frequency or wavelength.")
(standards "HS-PS4-1" "HSA-CED.A.4")
(minutes 25)
(keywords "wave speed")
```

You learn to connect how fast a wave travels with its frequency and
its wavelength.

In one period, each point of the medium makes one whole cycle, and the
wave moves on by one wavelength. So the speed at which a crest
travels, the **wave speed**, is

$$ v = lambda / T = f lambda $$

With $f$ in hertz and $lambda$ in meters, $v$ is in meters per second.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.9, Waves")
```

```check
(number
  (ask "A wave on a rope has a frequency of 2.0 Hz and a wavelength of 0.75 m. What is its speed, in m/s?")
  (answer 1.5) (unit "m/s") (from "2.0 * 0.75")
  (wrong-if 2.67 "That is f divided by lambda. The speed is f times lambda: each second, 2.0 wavelengths of 0.75 m go by.")
  (wrong-if 0.375 "That is lambda divided by f. v = f lambda.")
  (hint "v = f lambda."))
```

---

## The medium sets the speed

The speed of a wave depends on the medium: how tight and how heavy a
rope is, or what a gas is and how warm. It does not depend on how fast
you shake the end. So in one medium, a higher frequency gives a shorter
wavelength, and $f lambda$ stays the same.

Change the frequency, and choose the rope. The dot rides on one crest.

```figure
(define f (slider 'f 0.5 2 1 "Frequency (Hz)" 0.25))
(define r (choice 'rope '("rope A" "rope B") "Medium"))
(define v (if (= r 0) 0.8 0.4))
(define L (/ v f))
(define ph (* f (seconds)))
(wv-wave 20 300 110 30 (* 100 L) ph 50 'ink 2)
(define xc (+ 20 (* 100 L (+ 0.25 (- ph (floor ph))))))
(circle xc 80 5 'warm)
(text 160 30 (string-append "v = " (fmt v 1) " m/s, wavelength = " (fmt L 2) " m") 'centre 'small 'bold)
(text 160 190 (string-append "f lambda = " (fmt f 2) " * " (fmt L 2) " = " (fmt (* f L) 1) " m/s") 'centre 'small)
(caption "Real time; the rope shown is 2.8 m long.")
```

```check
(choice
  (ask "On rope A, you change the frequency from 1.0 Hz to 2.0 Hz. What happens?")
  (right "The wavelength halves; the speed stays the same" (true "0.8 / 2.0 = (0.8 / 1.0) / 2"))
  (wrong "The speed doubles"
    "The speed is set by the rope. Shaking faster makes more crests each second, so they must be closer together.")
  (wrong "The wavelength doubles"
    "More crests each second at the same speed must be closer together, not farther apart.")
  (hint "v = f lambda, and v stays the same on one rope."))
```

---

## Worked example

```example
(example
  (problem "Ocean waves have crests 20 m apart. A crest passes a pier every 4.0 s. How fast are the waves moving?")
  (step "The wavelength is 20 m and the period is 4.0 s.")
  (step "v = lambda / T = 20 / 4.0 = 5.0 m/s.")
  (answer "5.0 m/s, about 16 ft/s"))
```

```example
(example
  (problem "Sound in air at 20 °C travels at 343 m/s. What is the wavelength of a 686 Hz note?")
  (step "Rearrange v = f lambda: lambda = v / f.")
  (step (number (ask "lambda, in meters?") (answer 0.5) (unit "m") (from "343 / 686")
    (wrong-if 2 "That is f / v, upside down. lambda = v / f.")
    (hint "343 / 686.")))
  (answer "0.50 m"))
```

```sources
(source "OpenStax, College Physics 2e (2022), section 17.2, Speed of Sound, Frequency, and Wavelength")
```

---

## Practice

```check
(number
  (ask "A wave travels at 12 m/s with a wavelength of 3.0 m. What is its frequency, in Hz?")
  (answer 4) (unit "Hz") (from "12 / 3.0")
  (wrong-if 36 "That is v times lambda. Rearrange: f = v / lambda.")
  (wrong-if 0.25 "That is lambda / v, the period in seconds. The frequency is v / lambda.")
  (hint "f = v / lambda."))
```

```check
(number
  (ask "Sound travels at 343 m/s in air at 20 °C. What is the wavelength of a 20 Hz sound, to the nearest hundredth of a meter?")
  (answer 17.15) (within 0.005) (unit "m") (from "343 / 20")
  (wrong-if 6860 "That is v times f. Divide: lambda = v / f.")
  (hint "lambda = 343 / 20."))
```

```check
(choice
  (ask "Two waves travel on the same rope. Wave A has twice the frequency of wave B. Which is true?")
  (right "A has half the wavelength of B, and the same speed")
  (wrong "A travels twice as fast as B"
    "On the same rope the speed is the same. A's crests come twice as often, so they are half as far apart.")
  (wrong "A has twice the wavelength of B"
    "At the same speed, more crests each second means less room for each: a shorter wavelength.")
  (hint "Same medium, same speed: v = f lambda."))
```

So: a wave's speed is $v = f lambda$, set by its medium, so in one
medium a higher frequency means a shorter wavelength.
