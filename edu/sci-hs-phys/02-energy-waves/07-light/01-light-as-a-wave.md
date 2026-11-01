# Light as a wave

```lesson
(objective "Describe light as an electromagnetic wave that crosses empty space at the speed of light.")
(standards "HS-PS4-1" "HS-PS4-3")
(minutes 20)
(keywords "electromagnetic wave" "speed of light")
```

You learn what kind of wave light is, and how fast it travels.

Sound cannot cross empty space, but light does: it reaches us from the
Sun and from stars across nearly empty space. So light is not a
mechanical wave. It needs no medium at all.

Light is an **electromagnetic wave**: a wave of linked fields, one
electric and one magnetic, which change together and carry each other
along. As in a transverse wave, the fields change at right angles to
the direction the wave travels. Part 3 of this course shows how such
fields work.

```figure
(define ph (* 0.4 (seconds)))
(still
  (line 20 120 300 120 'grey 1)
  (text 300 112 "direction of travel" 'right 'tiny))
(wv-wave 20 300 120 50 140 ph 46 'ink 2)
(for-range 0 8
  (lambda (i)
    (let ((x (+ 34 (* 35 i))))
      (line x 120 x (wv-y x 20 120 50 140 ph) 'warm 1))))
(caption "Greatly slowed: one field's strength along the wave.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 24.1, Maxwell's Equations: Electromagnetic Waves Predicted and Observed, and section 24.2, Production of Electromagnetic Waves")
```

```check
(choice
  (ask "What does light need to travel through?")
  (right "Nothing: it can cross empty space")
  (wrong "Air, as sound does"
    "Light reaches us from the Sun across nearly empty space, where there is no air. It needs no medium.")
  (wrong "A clear solid, such as glass"
    "Light passes through glass, but it does not need it. It travels best of all through empty space.")
  (hint "How does sunlight reach Earth?"))
```

---

## The speed of light

All electromagnetic waves travel through empty space at the same
speed, the **speed of light**:

$$ c = 3.00 * 10^8 $$

in meters per second: about 300,000 km each second, or about 186,000
miles per second. Nothing travels faster. In air light is only a little
slower; in water and glass it is clearly slower, as a later lesson
shows.

```sources
(source "BIPM, The International System of Units (SI Brochure), 9th edition (2019), section 2.3.1: c = 299,792,458 m/s exactly")
```

```check
(number
  (ask "The Moon is about 3.84 * 10^8 m from Earth. How long does light take to travel from the Moon to Earth, to the nearest hundredth of a second?")
  (answer 1.28) (within 0.005) (unit "s") (from "3.84 * 10^8 / (3.00 * 10^8)")
  (wrong-if 0.78 "That is c divided by the distance, upside down. Time = distance / speed.")
  (hint "t = d / c."))
```

---

## Worked example

```example
(example
  (problem "The Sun is about 1.50 * 10^11 m from Earth. How long does its light take to reach us?")
  (step "t = d / c = 1.50 * 10^11 / 3.00 * 10^8.")
  (step "t = 500 s.")
  (step "500 s / 60 = about 8.3 minutes.")
  (answer "about 500 s, a little over 8 minutes"))
```

```example
(example
  (problem "A radio message to a spacecraft travels 6.0 * 10^11 m. How long does it take?")
  (step "Radio messages travel as electromagnetic waves, at c.")
  (step (number (ask "t, in seconds?") (answer 2000) (unit "s") (from "6.0 * 10^11 / (3.00 * 10^8)")
    (wrong-if 0.0005 "That is c / d. Time is distance divided by speed.")
    (hint "6.0 * 10^11 / 3.00 * 10^8.")))
  (answer "2,000 s, about 33 minutes"))
```

```sources
(source "NASA Solar System Exploration, Sun: Facts (mean distance 1 astronomical unit, about 150 million km)")
```

---

## Practice

```check
(choice
  (ask "A star blows up. Astronomers on Earth see the flash, but hear nothing. Why?")
  (right "Light can cross empty space, but sound needs a medium")
  (wrong "The sound is too faint to hear at that distance"
    "Distance is not the reason. Between the stars there is almost no matter for sound to travel through at all.")
  (wrong "Sound travels so slowly that it has not arrived yet"
    "Sound is slow, but here it cannot travel at all: space is nearly empty. Light needs no medium.")
  (hint "Which wave is mechanical?"))
```

```check
(number
  (ask "How far does light travel in empty space in 1 microsecond (10^-6 s), in meters?")
  (answer 300) (unit "m") (from "3.00 * 10^8 * 10^-6")
  (wrong-if 3 "Check the powers of 10: 10^8 * 10^-6 = 10^2.")
  (hint "d = c t."))
```

So: light is an electromagnetic wave that needs no medium, and it
crosses empty space at $c = 3.00 * 10^8$ m/s.
