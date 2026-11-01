# The Doppler effect

```lesson
(objective "Explain the Doppler effect, and compute the frequency heard from a moving source.")
(standards "HS-PS4-1" "HSA-CED.A.4")
(minutes 25)
(keywords "Doppler effect")
```

You learn why a siren sounds higher as it comes toward you and lower as
it goes away, and how much.

A source of sound sends out a compression with every cycle. If the
source moves, it chases the compressions it sends ahead, and runs away
from those it sends behind. Ahead, the compressions crowd together:
shorter wavelength, higher frequency. Behind, they spread out: longer
wavelength, lower frequency. This change in the frequency heard, caused
by motion of the source or the listener, is the **Doppler effect**.

The rings are compressions, seen from above. Change the source's
speed.

```figure
(define s (slider 's 0 0.8 0.5 "Speed / v" 0.1))
(define T 0.6)
(define t (modulo (seconds) 4))
(wv-fronts 100 120 (* 40 s) 40 T t 4)
(circle (+ 100 (* 40 s t)) 120 4 'warm)
(text 300 30 "ahead: higher" 'right 'small)
(text 20 30 "behind: lower" 'small)
(caption "Greatly slowed: each ring is one compression.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 17.4, Doppler Effect and Sonic Booms")
```

```check
(choice
  (ask "An ambulance with its siren on drives past you. What do you hear?")
  (right "A higher pitch as it comes toward you, then a lower pitch as it moves away")
  (wrong "A sound that gets higher the whole time it is near"
    "The pitch is higher only while the ambulance comes toward you. As it moves away, the compressions spread out and the pitch drops.")
  (wrong "The same pitch, only louder as it comes closer"
    "It does get louder, but the pitch changes too: the compressions crowd together ahead of a moving source.")
  (hint "Look at the rings ahead of and behind the moving source."))
```

---

## How much it changes

For a source moving at speed $v_s$ in still air, with sound speed $v$:

$$ f_L = f v / (v - v_s) $$

when it comes toward you, and

$$ f_L = f v / (v + v_s) $$

when it goes away. Here $f$ is the frequency the source sends out and
$f_L$ the frequency you, the listener, hear.

```check
(number
  (ask "A siren sends out 700 Hz on an ambulance moving toward you at 30 m/s. Sound travels at 343 m/s. What frequency do you hear, to the nearest hertz?")
  (answer 767) (within 0.5) (unit "Hz") (from "700 * 343 / (343 - 30)")
  (wrong-if 644 "That is the frequency as it moves away. Coming toward you, divide by v - v_s, a smaller number, so the frequency goes up.")
  (wrong-if 730 "The frequency does not go up by the speed. Use f_L = f v / (v - v_s).")
  (hint "343 - 30 = 313.")
  (hint "700 * 343 / 313."))
```

---

## Worked example

```example
(example
  (problem "The same 700 Hz siren moves away from you at 30 m/s. What frequency do you hear?")
  (step "Moving away: f_L = f v / (v + v_s).")
  (step "f_L = 700 * 343 / 373 = 644 Hz.")
  (answer "about 644 Hz"))
```

```example
(example
  (problem "A train's 500 Hz horn approaches at 20 m/s. What do you hear?")
  (step "Approaching: f_L = 500 * 343 / (343 - 20) = 500 * 343 / 323.")
  (step (number (ask "f_L, to the nearest hertz?") (answer 531) (within 0.5) (unit "Hz") (from "500 * 343 / (343 - 20)")
    (wrong-if 472 "That is the frequency as the train moves away. It approaches, so the frequency is higher.")
    (hint "171,500 / 323.")))
  (answer "about 531 Hz"))
```

---

## Practice

```check
(number
  (ask "A car's 400 Hz horn moves away from you at 25 m/s. Sound travels at 343 m/s. What frequency do you hear, to the nearest hertz?")
  (answer 373) (within 0.5) (unit "Hz") (from "400 * 343 / (343 + 25)")
  (wrong-if 431 "That is for a car coming toward you. Moving away, divide by v + v_s.")
  (hint "f_L = 400 * 343 / 368."))
```

```check
(choice
  (ask "What does the driver of the ambulance hear from her own siren?")
  (right "The steady frequency the siren sends out")
  (wrong "A higher frequency, because she moves forward"
    "She moves with the siren, so it is not moving toward or away from her. She hears the siren's own frequency.")
  (wrong "A lower frequency, because the sound must catch up"
    "The Doppler effect needs the source and the listener to move toward or away from each other. Here they move together.")
  (hint "Is the siren moving relative to the driver?"))
```

So: a source moving toward you is heard at a higher frequency,
$f v / (v - v_s)$, and one moving away at a lower one,
$f v / (v + v_s)$.
